import 'package:flutter/material.dart';
import 'tujuan.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade100,
      appBar: AppBar(
        title: const Text(
          '🏠 Halaman Home',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.pink.shade300,
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 6,
        shadowColor: Colors.pink.shade200,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Banyak aplikasi memiliki beberapa layar untuk menampilkan informasi yang berbeda. Contohnya, ada layar untuk menampilkan daftar produk, layar untuk menampilkan detail produk, dan layar untuk menampilkan keranjang belanja.',
              style: TextStyle(fontSize: 15, color: Colors.pink.shade900),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 30),

            // Gambar dengan bayangan halus
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.pink.shade300.withValues(),
                    blurRadius: 10,
                    offset: const Offset(3, 6),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  'assets/icon/house.png',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.image_not_supported, size: 80, color: Colors.grey),
                ),
              ),
            ),

            const SizedBox(height: 30),
            Text(
              'Pertama kita perlu membuat dua halaman, yaitu halaman utama atau routes yang ingin kita tampilkan pertama kali saat aplikasi dijalankan, dan halaman tujuan yang akan dituju saat berpindah halaman. Selanjutnya kita gunakan method Navigator.push() pada tombol yang akan digunakan untuk berpindah halaman. Terakhir kita perlu kembali ke halaman pertama menggunakan method Navigator.pop().',
              style: TextStyle(fontSize: 15, color: Colors.pink.shade900),
              textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 30),

            // Tombol dengan efek gradien
            SizedBox(
              width: 220,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink.shade400,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  elevation: 5,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TujuanPage(),
                    ),
                  );
                },
                child: const Text(
                  '➡ Ke Halaman Tujuan',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
