import 'package:flutter/material.dart';

class TujuanPage extends StatelessWidget {
  const TujuanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        title: const Text(
          '🎯 Halaman Tujuan',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue.shade400,
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 6,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Untuk berpindah halaman baru, gunakan metode Navigator.push(). Metode ini menambahkan Route baru ke dalam tumpukan navigator sehingga kita dapat menampilkan halaman lain tanpa menutup halaman sebelumnya.',
              style: TextStyle(fontSize: 15, color: Colors.blue.shade900),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 30),

            // Gambar dengan efek shadow halus
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.shade300.withValues(),
                    blurRadius: 10,
                    offset: const Offset(3, 6),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  'assets/icon/marks.png',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.flag, size: 80, color: Colors.grey),
                ),
              ),
            ),

            const SizedBox(height: 30),
            Text(
              'Untuk menutup halaman kedua dan kembali ke halaman sebelumnya, gunakan metode Navigator.pop(). Metode ini akan menghapus Route teratas dari tumpukan dan menampilkan halaman sebelumnya.',
              style: TextStyle(fontSize: 15, color: Colors.blue.shade900),
              textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 30),

            // Tombol kembali
            SizedBox(
              width: 240,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink.shade300,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  elevation: 5,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  '⬅ Kembali ke Halaman Home',
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
