import 'package:flutter/material.dart';

class AllWallpaper extends StatefulWidget {
  const AllWallpaper({Key? key}) : super(key: key);

  @override
  State<AllWallpaper> createState() => _AllWallpaperState();
}

class _AllWallpaperState extends State<AllWallpaper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('All Wallpapers'),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed:() {}, label: const Text('Upload'),),
    );
  }
}
