import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:masakan/routing/name_routing.dart';

class Authcontrollers extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;

  Stream<User?> get streamauthstatus => auth.authStateChanges();

  void login(String email, String pass) async {
    try {
      UserCredential myatuh =
          await auth.signInWithEmailAndPassword(email: email, password: pass);
      if (myatuh.user!.emailVerified) {
        Get.toNamed(RouteName.home);
      } else {
        Get.defaultDialog(
            title: 'Verfikasi Email',
            textConfirm: 'Kirim Ulang Verfikasi',
            textCancel: 'Kembali',
            middleText: 'Akun Belum Terverfikasi, Silahkan cek Email',
            onConfirm: () async {
              await myatuh.user!.sendEmailVerification();
              Get.back();
            });
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.defaultDialog(
          title: 'Peringatan',
          middleText: 'Email tidak terdaftar',
        );
      } else if (e.code == 'wrong-password') {
        Get.defaultDialog(
          title: 'Peringatan',
          middleText: 'Password salah silahkan cek kembali',
        );
      }
    }
  }

  void logout() async {
    await FirebaseAuth.instance.signOut();
    Get.toNamed(RouteName.login);
  }

  void signup(String email, String pass) async {
    if (email != '' && GetUtils.isEmail(email)) {
      try {
        await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: pass);

        Get.defaultDialog(
          title: 'Information',
          middleText: "Registrasion Succesfull",
          onConfirm: () => Get.toNamed(RouteName.login),
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          Get.defaultDialog(
            title: 'Warning Password',
            middleText: "Password terlalu lemah",
          );
        } else if (e.code == 'email-already-in-use') {
          Get.defaultDialog(
            title: 'Warning Email',
            middleText: "Email sudah di gunakan",
          );
        } else if (email.isEmpty || pass.isEmail) {
          Get.defaultDialog(
            title: 'Peringatan',
            middleText: 'Data tidak boleh kosong',
          );
        }
      } catch (e) {
        print(e);
      }
    } else {
      Get.defaultDialog(
        title: "Terjadi Kesalahan",
        middleText: "Email Tidak Valid",
      );
    }
  }

  void resetpassword(String email) async {
    if (email != '' && GetUtils.isEmail(email)) {
      try {
        await auth.sendPasswordResetEmail(email: email);
        Get.defaultDialog(
          title: "Email",
          onConfirm: () {
            Get.back();
            Get.back();
          },
          textConfirm: 'Saya Mengerti.',
          middleText:
              "Kami telah mengirimkan ke $email , silahkan cek inbox/spam",
        );
      } catch (e) {
        Get.defaultDialog(
          title: "Terjadi Kesalahan",
          middleText: "Tidak dapat mengirimkan email reset password",
        );
      }
    } else {
      Get.defaultDialog(
        title: "Terjadi Kesalahan",
        middleText: "Email Tidak Valid",
      );
    }
  }
}
