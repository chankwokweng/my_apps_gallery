import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:my_apps_gallery/components/app_card.dart';

const String longString = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final List<Container> cards = [
    Container(
      alignment: Alignment.center,
      color: Colors.blue,
      child: const MyAppCard(appName: 'Hair Salon', 
                appIntro: 
'''Welcome to Hair Haven, a cozy and vibrant salon where our talented team of stylists and colorists are dedicated to providing exceptional hair experiences. Our intimate setting ensures personalized attention, and our passion for hair artistry guarantees stunning results. From precision cuts to vibrant colors, we cater to all your hair needs. Come indulge in a relaxing atmosphere, enjoy a refreshing beverage, and let us transform your tresses into a work of art!''',
                appDescription: 
'''
Introducing our innovative mobile app designed to streamline operations and enhance customer engagement!

Features:

- Book appointments easily with real-time availability
- Receive personalized notifications and reminders
- Access exclusive promotions and loyalty rewards
- View our services, pricing, and portfolio
- Rate and review your experiences
- Virtual consultations and e-consultations
- Integrated payment processing for seamless transactions

For the salon:

- Manage bookings, staff schedules, and inventory
- Track customer history and preferences
- Analyze sales and performance metrics
- Push notifications for promotions and updates

Hair Haven Hub - where convenience meets style! Download now and experience the ultimate hair care journey!''', 
                appImagePath: "https://picsum.photos/250?image=8",
                appIconImagePath: "https://picsum.photos/250?image=9",
                appURL: "https://github.com/chankwokweng/my_apps_gallery_web/",
                ),
    ),
    Container(
      alignment: Alignment.center,
      color: Colors.red,
      child: const MyAppCard(appName: 'My App  2', 
                appIntro: 
'''Welcome to Hair Haven, a cozy and vibrant salon where our talented team of stylists and colorists are dedicated to providing exceptional hair experiences. Our intimate setting ensures personalized attention, and our passion for hair artistry guarantees stunning results. From precision cuts to vibrant colors, we cater to all your hair needs. Come indulge in a relaxing atmosphere, enjoy a refreshing beverage, and let us transform your tresses into a work of art!''',
                appDescription: longString, 
                appImagePath: "https://picsum.photos/250?image=18",
                appIconImagePath: "https://picsum.photos/250?image=19",
                appURL: "https://github.com/chankwokweng/my_apps_gallery_web/",
      ),
    ),
    Container(
      alignment: Alignment.center,
      color: Colors.purple,
      child: const MyAppCard(appName: 'My App  3', 
                appIntro: 
'''Welcome to Hair Haven, a cozy and vibrant salon where our talented team of stylists and colorists are dedicated to providing exceptional hair experiences. Our intimate setting ensures personalized attention, and our passion for hair artistry guarantees stunning results. From precision cuts to vibrant colors, we cater to all your hair needs. Come indulge in a relaxing atmosphere, enjoy a refreshing beverage, and let us transform your tresses into a work of art!''',
                appDescription: longString, 
                appImagePath: "https://picsum.photos/250?image=18",
                appIconImagePath: "https://picsum.photos/250?image=19",
                appURL: "https://github.com/chankwokweng/my_apps_gallery_web/",
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "go2cloud apps portfolio",
      theme: ThemeData( 
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        primarySwatch: Colors.indigo),
      home: Scaffold(
        body: Flexible(
          child: CardSwiper(
            cardsCount: cards.length,
            cardBuilder: (context, index, horizontalOffsetPercentage, verticalOffsetPercentage) => cards[index],

          ),)
          ),
        );
  }
}
