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
                appImagePath: "/assets/beauty-salon.png",
                appIconImagePath: "https://picsum.photos/250?image=9",
                appURL: "https://github.com/chankwokweng/my_apps_gallery_web/",
                ),
    ),
    Container(
      alignment: Alignment.center,
      color: Colors.red,
      child: const MyAppCard(appName: 'Featheries Club', 
                appIntro: 
'''
Welcome to Featheries Club, your ultimate destination for badminton enthusiasts! 
Our club offers a vibrant community, top-notch facilities, and organized games for players of all levels. 
Whether you're a casual player or a competitive athlete, we provide a fun and supportive environment to improve your skills, meet new friends, and enjoy the game you love. Join us for thrilling matches, interactive training sessions, and exciting events!
''',
                appDescription: 
'''
Introducing Featheries Club App - your ultimate badminton companion!

Features for customers:

- Book courts and schedule games effortlessly
- Find playing partners and join games with similar skill levels
- Track your performance, wins, and progress
- Receive updates on upcoming events, tournaments, and news
- Connect with fellow players and share tips

Features for the club:

- Manage court bookings, schedules, and player data
- Automate communication and notifications
- Track player performance and progress
- Analyze usage and revenue metrics
- Push notifications for events, promotions, and updates

Featheries Club App - where passion meets play! Download now and join the badminton revolution! 
''',
                appImagePath: "/assets/badminton.png",
                appIconImagePath: "https://picsum.photos/250?image=19",
                appURL: "https://github.com/chankwokweng/my_apps_gallery_web/",
      ),
    ),
    Container(
      alignment: Alignment.center,
      color: Colors.purple,
      child: const MyAppCard(appName: 'HabitBoost', 
                appIntro: 
'''
Introducing HabitBoost - your personalized habit coach!

Are you tired of struggling to build good habits? Do you want to improve your physical and mental well-being? HabitBoost is here to help! Our app empowers you to create positive habits and break unwanted ones, leading to a happier, healthier you!

With HabitBoost, you'll enjoy:

- Personalized habit plans tailored to your goals
- Interactive tracking and progress monitoring
- Motivational reminders and rewards
- Community support and accountability
- Insights and analytics to optimize your progress

Download HabitBoost now and start building the habits that will transform your life!
''',
                appDescription: 
'''
HabitBoost - Your Habit Coaching App

Features:

- Habit Assessment: Identify areas for improvement and set achievable goals
- Customized Plans: Receive personalized habit plans with actionable steps
- Tracking and Monitoring: Log progress, view statistics, and celebrate milestones
- Reminders and Rewards: Stay motivated with customizable reminders and rewards
- Community Support: Join groups, share progress, and get support from like-minded individuals
- Insights and Analytics: Gain valuable insights to refine your habit-building strategy

HabitBoost - where small changes lead to a better you! Download now and start habituating your way to success!
''', 
                appImagePath: "/assets/habits.jpeg",
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
        body: 
        CardSwiper(
          cardsCount: cards.length,
          cardBuilder: (context, index, horizontalOffsetPercentage, verticalOffsetPercentage) => cards[index],
        
        ),
      )
    );
  }
}
