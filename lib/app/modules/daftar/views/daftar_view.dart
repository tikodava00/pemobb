import 'package:demo/app/modules/daftar/controllers/daftar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DaftarView extends GetView<DaftarController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Daftar',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // INPUT NAMA
              TextField(
                decoration: InputDecoration(
                  labelText: 'Nama',
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 20),

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

              const SizedBox(height: 20),

              // INPUT PW
              TextField(
                decoration: InputDecoration(
                  labelText: 'Konfirmasi',
                  border: OutlineInputBorder(),
                ),
                obscureText: true, // untuk menyembunyikan teks password
              ),

              const SizedBox(height: 50),

              // BUTTON LOGIN
              ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text(
                  'Daftar',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 150, vertical: 12),
                    backgroundColor: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
