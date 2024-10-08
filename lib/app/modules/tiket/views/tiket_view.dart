import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TiketView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Daftar Tiket',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          tiketCard(context, 'Turangga', 'Ekonomi', '07.00', 'Rp 70.000'),
          tiketCard(context, 'Turangga', 'Ekonomi', '12.00', 'Rp 70.000'),
          tiketCard(context, 'Turangga', 'Ekonomi', '16.00', 'Rp 70.000'),
        ],
      ),
    );
  }

  // Metode tiketCard sekarang menggunakan GestureDetector agar dapat diklik
  Widget tiketCard(BuildContext context, String kereta, String kelas,
      String jam, String harga) {
    return GestureDetector(
      onTap: () {
        // Aksi saat tiket diklik, contoh: pindah ke halaman lain
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => InputData(
                  kereta: kereta, kelas: kelas, jam: jam, harga: harga)),
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Kereta: $kereta', style: TextStyle(fontSize: 16)),
              SizedBox(height: 4),
              Text('Kelas: $kelas'),
              Text('Jam: $jam'),
              SizedBox(height: 8),
              Text(harga, style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}

class InputData extends StatelessWidget {
  final String kereta;
  final String kelas;
  final String jam;
  final String harga;

  InputData(
      {required this.kereta,
      required this.kelas,
      required this.jam,
      required this.harga});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Input Data',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            tiketInfo(kereta, kelas, jam, harga),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(labelText: 'Nama Penumpang'),
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(labelText: 'NIK'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/bayar');
              },
              child: Text(
                'Bayar',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 150, vertical: 12),
                  backgroundColor: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }

  Widget tiketInfo(String kereta, String kelas, String jam, String harga) {
    return Card(
      child: ListTile(
        title: Text('Kereta: $kereta'),
        subtitle: Text('Kelas: $kelas\nJam: $jam'),
        trailing: Text(harga),
      ),
    );
  }
}
