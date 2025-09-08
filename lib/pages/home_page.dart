import 'package:flutter/material.dart';
import '/models/item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    // Item lama 1
    Item(
      name: "Action Figure - Chitoge",
      price: 5000,
      image: "assets/chitoge.jpg",
      stock: 12,
      rating: 4.5,
      description: "Action figure cantik dari karakter Chitoge Kirisaki dalam anime Nisekoi, dengan detail wajah dan kostum yang memukau.",
    ),
    // Item lama 2
    Item(
      name: "Action Figure - Albedo",
      price: 2000,
      image: "assets/albedo.jpg",
      stock: 20,
      rating: 4.2,
      description: "Action figure elegan dari Albedo, penguasa lantai terdalam di Overlord, dengan desain gaun hitam yang ikonik.",
    ),
    // Item baru 1: Rem (dari Re:Zero)
    Item(
      name: "Action Figure - Ram",
      price: 4500,
      image: "assets/ram.jpg",
      stock: 15,
      rating: 4.7,
      description: "Action figure manis dari Ram, pelayan setia dari Re:Zero, lengkap dengan seragam maid dan ekspresi lembut.",
    ),
    // Item baru 2: Asuna (dari Sword Art Online)
    Item(
      name: "Action Figure - Asuna",
      price: 6000,
      image: "assets/asuna.jpg",
      stock: 18,
      rating: 4.6,
      description: "Action figure elegan dari Asuna Yuuki, heroine Sword Art Online, dengan detail pedang dan armor yang realistis.",
    ),
    // Item baru 3: Goku (dari Dragon Ball)
    Item(
      name: "Action Figure - Goku",
      price: 7000,
      image: "assets/goku.jpg",
      stock: 10,
      rating: 4.8,
      description: "Action figure epik dari Son Goku, pahlawan Dragon Ball, dalam pose Super Saiyan dengan aura energi yang menakjubkan.",
    ),
    // Item baru 4: Batman (dari DC Comics)
    Item(
      name: "Action Figure - Batman",
      price: 3500,
      image: "assets/erza.jpg",
      stock: 25,
      rating: 4.3,
      description: "Action figure keren dari Erza, Wanita Kuat dia adalah Mywaifu, lengkap dengan baju zirahnya darn juga pedang andalannya.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Shopping List"),
        backgroundColor: Colors.blue,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 kolom, sekarang menampilkan 6 item (3 baris)
          childAspectRatio: 0.75, // Rasio tetap sama
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: items.length, // Sekarang 6 item
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                '/item',
                arguments: item,
              );
            },
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Hero(
                      tag: item.name,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                        child: Image.asset(
                          item.image,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis, // Hindari overflow teks panjang
                        ),
                        Text("Rp ${item.price}"),
                        Text("Stok: ${item.stock}"),
                        Row(
                          children: [
                            const Icon(Icons.star, size: 16, color: Colors.amber),
                            Text(item.rating.toString()),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(8),
        color: Colors.blue[50],
        child: const Text(
          "Nama: [Ahmad Bachtiar Raflyanysyah] | NIM: [362458302141]",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}