import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingView extends StatefulWidget {
  @override
  _BookingViewState createState() => _BookingViewState();
}

class _BookingViewState extends State<BookingView> {
  // Penambahan variabel untuk dropdown dan input lainnya
  String? _selectedFrom;
  String? _selectedTo;
  int _passengerCount = 0;
  String? _selectedClass;
  DateTime? _selectedDate;

  final List<String> _locations = ['Jakarta', 'Surabaya', 'Banyuwangi'];
  final List<String> _classes = ['Ekonomi', 'Bisnis', 'Eksekutif'];

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020, 1),
      lastDate: DateTime(2030),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GO-LEN',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        // Tambahkan SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Dropdown untuk "Asal"
              DropdownButtonFormField<String>(
                value: _selectedFrom,
                decoration: InputDecoration(
                    labelText: 'Isi Stasiun Asal',
                    border: OutlineInputBorder()),
                items: _locations.map((String location) {
                  return DropdownMenuItem<String>(
                    value: location,
                    child: Text(location),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _selectedFrom = newValue;
                  });
                },
              ),
              const SizedBox(height: 20),

              // Dropdown untuk "Tujuan"
              DropdownButtonFormField<String>(
                value: _selectedTo,
                decoration: InputDecoration(
                    labelText: 'Isi Stasiun Tujuan',
                    border: OutlineInputBorder()),
                items: _locations.map((String location) {
                  return DropdownMenuItem<String>(
                    value: location,
                    child: Text(location),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _selectedTo = newValue;
                  });
                },
              ),
              const SizedBox(height: 20),

              // Penumpang (jumlah)
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Penumpang',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                initialValue: _passengerCount.toString(),
                onChanged: (value) {
                  setState(() {
                    _passengerCount = int.tryParse(value) ?? 1;
                  });
                },
              ),
              const SizedBox(height: 20),

              // Dropdown untuk Kelas
              DropdownButtonFormField<String>(
                value: _selectedClass,
                decoration: InputDecoration(
                    labelText: 'Kelas Kursi', border: OutlineInputBorder()),
                items: _classes.map((String kelas) {
                  return DropdownMenuItem<String>(
                    value: kelas,
                    child: Text(kelas),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _selectedClass = newValue;
                  });
                },
              ),
              const SizedBox(height: 20),

              // Pilih Tanggal dengan Border
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.grey), // Border untuk input tanggal
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(_selectedDate == null
                          ? 'Pilih Tanggal'
                          : '${_selectedDate!.toLocal()}'.split(' ')[0]),
                    ),
                    TextButton(
                      onPressed: () => _selectDate(context),
                      child: Text('Pilih Tanggal'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Tombol Cari
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/tiket');
                },
                child: const Text(
                  'Cari',
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
