import 'package:flutter/material.dart';
import 'package:my_apps_gallery/components/app_card.dart';

const String longString = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "go2cloud apps portfolio",
      theme: ThemeData( 
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        primarySwatch: Colors.indigo),
      home: Scaffold(
        body: ListView(
          children: const [
            MyAppCard(appName: 'My App  1', 
                              appDescription: longString, 
                              appImagePath: "https://picsum.photos/250?image=8",
                              appIconImagePath: "https://picsum.photos/250?image=9",
                              appURL: "https://github.com/chankwokweng/my_apps_gallery_web/",
                              ),
            MyAppCard(appName: 'My App  2', 
                              appDescription: longString, 
                              appImagePath: "https://picsum.photos/250?image=18",
                              appIconImagePath: "https://picsum.photos/250?image=19",
                              appURL: "https://github.com/chankwokweng/my_apps_gallery_web/",
                              ),
            MyAppCard(appName: 'My App  3', 
                              appDescription: longString, 
                              appImagePath: "https://picsum.photos/250?image=28",
                              appIconImagePath: "https://picsum.photos/250?image=29",
                              appURL: "https://github.com/chankwokweng/my_apps_gallery_web/",
                              ),

          ]
          ),
        ),
      );
  }
}
