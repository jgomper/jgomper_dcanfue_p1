import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final perfumes = [
      {'nombre': 'Bloom Essence', 'precio': '45€'},
      {'nombre': 'Ocean Breeze', 'precio': '50€'},
      {'nombre': 'Velvet Rose', 'precio': '60€'},
      {'nombre': 'Citrus Light', 'precio': '42€'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Catálogo de Colonias'),
        backgroundColor: const Color(0xFFB8860B),
      ),
      body: Column(
        children: [
          // Imagen de portada (fotocolonia.jpg)
          Container(
            width: double.infinity,
            height: 180,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/fotocolonia.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
          ),

          const SizedBox(height: 10),
          const Text(
            'Nuestras fragancias más destacadas',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF8B4513),
            ),
          ),
          const SizedBox(height: 10),

          // Lista de colonias
          Expanded(
            child: ListView.builder(
              itemCount: perfumes.length,
              itemBuilder: (context, index) {
                final perfume = perfumes[index];
                return Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFE4B5),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        perfume['nombre']!,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        perfume['precio']!,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          // Botón para volver
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton.icon(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back),
              label: const Text('Volver a inicio'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFB8860B),
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
