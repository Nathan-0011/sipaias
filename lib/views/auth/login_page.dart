import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),

            // JUDUL SISTEM
            Text(
              "Sistem Retribusi Sampah",
              style: TextStyle(
                fontSize: 22,
                color: Colors.green.shade700,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Login",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              "Silahkan login dengan username dan password anda.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 30),

            // USERNAME / NIK
            TextField(
              decoration: InputDecoration(
                labelText: "Username / NIK",
                filled: true,
                fillColor: Colors.white,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),

            const SizedBox(height: 20),

            // PASSWORD
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                suffixIcon: Icon(Icons.visibility),
                filled: true,
                fillColor: Colors.white,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),

            const SizedBox(height: 10),

            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Lupa Password?",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // BUTTON LOGIN
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade700),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
