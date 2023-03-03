import 'package:flutter/material.dart';
import 'package:my_wallpaper/screens/bottom_nav_pages/all_wallpaper_page.dart';
import 'package:my_wallpaper/screens/bottom_nav_pages/download_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;

  List<Map> bottomNavItems = [
    {'icon' : Icons.home, 'title' : 'Home'},
    {'icon' : Icons.download, 'title' : 'Download'}
  ];

  List<Widget> bottomNavPages = [
    const AllWallpaper(),
    const DownloadPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WallPaper App"),
        actions: [
          IconButton(
          onPressed: () {},
              icon: const Icon(Icons.exit_to_app))
        ],
      ),
      body: bottomNavPages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        currentIndex: pageIndex,
        items: List.generate(bottomNavItems.length, (index) {
          final data = bottomNavItems[index];
          return BottomNavigationBarItem(
              icon: Icon(data['icon']),
              label: data['title']);
        }),
      ),
    );
  }
}
