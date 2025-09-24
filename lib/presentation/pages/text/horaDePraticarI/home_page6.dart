import 'package:flutter/material.dart';

import 'package:myapp/core/theme/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Lista de artistas do Rock in Rio
  final List<Artist> artists = [
    Artist(
      name: 'Iron Maiden',
      tags: ['#Espetáculo', '#Fã'],
      initials: 'I',
      isFavorited: true,
    ),
    Artist(
      name: 'Alok',
      tags: ['#Influente', '#Top'],
      initials: 'A',
      isFavorited: false,
    ),
    Artist(
      name: 'Justin Bieber',
      tags: ['#Top Charts', '#Hits'],
      initials: 'J',
      isFavorited: false,
    ),
    Artist(
      name: 'Guns N\' Roses',
      tags: ['#Sucesso', '#Espetáculo'],
      initials: 'G',
      isFavorited: true,
    ),
    Artist(
      name: 'Capital Inicial',
      tags: ['#2024', '#Novo Álbum'],
      initials: 'C',
      isFavorited: false,
    ),
    Artist(
      name: 'Green Day',
      tags: ['#Sucesso'],
      initials: 'G',
      isFavorited: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      // AppBar com título "Rock in Rio - Atrações"
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColorAppBar,
        title: const Text(
          'Rock in Rio - Atrações',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: false,
        elevation: 0,
      ),

      // Conteúdo principal com lista de artistas
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: artists.length,
          itemBuilder: (context, index) {
            return ArtistCard(
              artist: artists[index],
              onFavoriteToggle: () {
                setState(() {
                  artists[index].isFavorited = !artists[index].isFavorited;
                });
              },
            );
          },
        ),
      ),
    );
  }
}

class Artist {
  final String name;
  final List<String> tags;
  final String initials;
  bool isFavorited;

  Artist({
    required this.name,
    required this.tags,
    required this.initials,
    required this.isFavorited,
  });
}

class ArtistCard extends StatelessWidget {
  final Artist artist;
  final VoidCallback onFavoriteToggle;

  const ArtistCard({
    super.key,
    required this.artist,
    required this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          // Avatar circular azul
          CircleAvatar(
            radius: 25,
            backgroundColor: AppColors.backgroundColorAppBar,
            child: Text(
              artist.initials,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(width: 16),

          // Conteúdo principal (nome e tags)
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Nome do artista
                Text(
                  artist.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),

                const SizedBox(height: 8),

                // Tags
                Wrap(
                  spacing: 6.0,
                  runSpacing: 4.0,
                  children:
                      artist.tags.map((tag) {
                        return Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 4.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Text(
                            tag,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        );
                      }).toList(),
                ),
              ],
            ),
          ),

          // Ícone de coração (favoritar)
          IconButton(
            onPressed: onFavoriteToggle,
            icon: Icon(
              artist.isFavorited ? Icons.favorite : Icons.favorite_border,
              color: artist.isFavorited ? Colors.red : Colors.grey,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
