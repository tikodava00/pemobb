import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Masuk',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // INPUT EMAIL
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            // INPUT PW
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true, // untuk menyembunyikan teks password
            ),
            Align(
              // BUTTON LUPA PW
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {
                  // Aksi untuk lupa password
                },
                child: const Text(
                  'Lupa Password?',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            Align(
              // TEKS OPSI LOGIN
              alignment: Alignment.center,
              child: Text(
                'Atau Masuk Menggunakan :',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              // ICON BUTTON
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    //
                  },
                  icon: const Icon(
                    Icons.facebook,
                  ),
                  iconSize: 40,
                ),
                IconButton(
                  onPressed: () {
                    //
                  },
                  icon: const Icon(
                    Icons.email,
                  ),
                  iconSize: 40,
                ),
              ],
            ),
            const SizedBox(height: 10),
            // BUTTON LOGIN
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/booking');
              },
              child: const Text(
                'Masuk',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 150, vertical: 12),
                  backgroundColor: Colors.blue),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/daftar');
              },
              child: const Text(
                'Belum Memiliki Akun?',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
