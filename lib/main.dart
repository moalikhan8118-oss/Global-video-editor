import 'package:flutter/material.dart';

void main() {
  runApp(const GlobalEditor());
}

class GlobalEditor extends StatelessWidget {
  const GlobalEditor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Global Editor',
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🌍 Global Editor'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          children: [
            _tool(Icons.video_library, 'Video Editor'),
            _tool(Icons.image, 'Photo Editor'),
            _tool(Icons.picture_as_pdf, 'PDF Editor'),
            _tool(Icons.music_note, 'Audio'),
            _tool(Icons.auto_awesome, 'AI Auto Edit'),
            _tool(Icons.movie_creation, 'Reel Maker'),
          ],
        ),
      ),
    );
  }

  Widget _tool(IconData icon, String title) {
    return Card(
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(16),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 42),
              const SizedBox(height: 10),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
