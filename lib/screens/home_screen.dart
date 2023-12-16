import 'package:flutter/material.dart';
import 'package:trip_app/utils/page.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  late PageController _pageController;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const [
          makePage(
            page: 1,
            image: 'assets/one.jpg',
            title: 'Lalibela',
            description: 'Lalibela is a UNESCO World Heritage site located in the Amhara region of Ethiopia. It is famous for its remarkable rock-hewn churches, which were carved out of solid rock in the 12th century. The 11 monolithic structures are a testament to the architectural genius of the time and are considered one of the wonders of the world.',
          ),
          makePage(
            page: 2,
            image: 'assets/two.jpg',
            title: 'Simien Mountains',
            description: 'Simien Mountains National Park, located in the northern part of Ethiopia, is a breathtaking highland plateau known for its dramatic landscapes and unique biodiversity.',
          ),
          makePage(
            page: 3,
            image: 'assets/three.jpg',
            title: 'Danakil',
            description: 'The Danakil Depression, located in the northeastern part of Ethiopia, is one of the most extreme and fascinating landscapes on the planet. Known as the hottest place on Earth, this geological wonder is a combination of active volcanoes, sulfur lakes, salt flats, and colorful mineral deposits.',
          ),
          makePage(
            page: 4,
            image: 'assets/four.jpg',
            title: 'Axum',
            description: 'Axum, located in the Tigray region of Ethiopia, was once the capital of the powerful Aksumite Empire and is now a significant archaeological site. Steeped in history and mythology, Axum is believed to be the resting place of the Ark of the Covenant.',
          ),
        ],
      ),
    );
  }
}
