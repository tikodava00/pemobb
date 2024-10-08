import 'package:flutter/material.dart';

class BayarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pembayaran',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // E-Wallet Section
              ExpansionTile(
                title: Text('E-Wallet'),
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade200,
                    ),
                    child: Column(
                      children: const [
                        ListTile(
                          title: Text('DANA'),
                        ),
                        ListTile(
                          title: Text('OVO'),
                        ),
                        ListTile(
                          title: Text('i.saku'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Bank Section
              ExpansionTile(
                title: Text('Bank'),
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade200,
                    ),
                    child: Column(
                      children: const [
                        ListTile(
                          title: Text('BCA'),
                        ),
                        ListTile(
                          title: Text('Mandiri'),
                        ),
                        ListTile(
                          title: Text('BRI'),
                        ),
                        ListTile(
                          title: Text('Permata Bank'),
                        ),
                        ListTile(
                          title: Text('CIMB Niaga'),
                        ),
                        ListTile(
                          title: Text('BNI'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // QRIS Section
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade200,
                ),
                child: ListTile(
                  title: Text('QRIS'),
                  trailing: Icon(Icons.qr_code),
                  onTap: () {
                    // Aksi untuk metode QRIS
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
