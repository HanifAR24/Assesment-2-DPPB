import 'package:flutter/material.dart';

class SecondLayout extends StatelessWidget {
  final List<String> data;
  const SecondLayout({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Data from Main Page:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            if (data.isNotEmpty) // Add this check
              Text(
                ' Nama : ${data[0]}',
                style: const TextStyle(fontSize: 16),
              ),
            if (data.length > 1) // Add this check
              Text(
                'Prodi : ${data[1]}',
                style: const TextStyle(fontSize: 16),
              ),
            if (data.length > 2) // Add this check
              Text(
                'Fakultas : ${data[2]}',
                style: const TextStyle(fontSize: 16),
              ),
            if (data.length > 3) // Add this check
              Text(
                'Keperluan peminjaman : ${data[3]}',
                style: const TextStyle(fontSize: 16),
              ),
            if (data.length > 4) // Add this check
              const Text(
                'Jenis kendaraan : Avanza', //untuk chechbox saya belum paham
                style: TextStyle(fontSize: 16),
              ),
            if (data.length > 5) // Add this check
              const Text(
                'Jenis kendaraan : 12 jam', //untuk chechbox saya belum paham
                style: TextStyle(fontSize: 16),
              ),
            const Text(
                "Dikerjakan oleh : 6701213019 - Muhammad Hanif Aulia Rasyid")
          ],
        ),
      ),
    );
  }
}
