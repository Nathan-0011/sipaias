import 'package:flutter/material.dart';

class PilihPembayaranPage extends StatelessWidget {
  const PilihPembayaranPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Pilih Metode Pembayaran"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),

            Text(
              "Ayo Bayar Retribusi Sampah Anda :)",
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.green.shade700,
                  fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            // PEMBAYARAN TUNAI
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/pembayaran-tunai");
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.yellow.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.account_balance_wallet,
                        size: 40, color: Colors.black54),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Pembayaran Tunai",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                              "Pastikan anda sedang bersama petugas pemungut."),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // PEMBAYARAN NON-TUNAI -> nanti menyusul
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.green.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const Icon(Icons.qr_code_2, size: 40, color: Colors.black54),
                  const SizedBox(width: 20),
                  const Expanded(
                    child: Text(
                      "Pembayaran Non-Tunai",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
