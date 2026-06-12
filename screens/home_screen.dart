import 'package:flutter/material.dart';
import '../models/song.dart';
import '../services/song_service.dart';
import '../widgets/song_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Song> songs =
      SongService().getSongs();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Vibe Sync"),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: songs.length,
        itemBuilder: (context, index) {
          return SongCard(
            song: songs[index],
          );
        },
      ),
      bottomNavigationBar:
          BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.green,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: "Library",
          ),
        ],
      ),
    );
  }
}
