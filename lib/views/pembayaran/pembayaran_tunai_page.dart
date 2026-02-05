import 'package:flutter/material.dart';

class PembayaranTunaiPage extends StatelessWidget {
  const PembayaranTunaiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Pembayaran Tunai"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 10),
            const Text(
              "Silahkan Scan Barcode anda untuk melakukan pembayaran tunai",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 30),

            // QR CODE (Dummy)
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.network(
                "https://api.qrserver.com/v1/create-qr-code/?size=200x200&data=USER-QR-DUMMY",
                width: 200,
                height: 200,
              ),
            ),

            const SizedBox(height: 20),

            // TOMBOL DOWNLOAD (UI Only)
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: () {},
              icon: const Icon(Icons.download, color: Colors.white),
              label: const Text(
                "Download QR",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
