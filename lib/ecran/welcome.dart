import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:tample/ecran/galerie_page.dart';
import 'package:tample/ecran/home_page.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final TextEditingController _textController = TextEditingController();

  // Liste d'images et de titres pour la galerie
  final List<Map<String, String>> destinations = [
    {
      'image': 'assets/images/Jumeirah_Burj_Al_Arab_Dubai.jpg',
      'title': 'Abu Dhabi',
      'country': 'Dubai',
    },
    {
      'image': 'assets/images/turkey_tour_vacation.jpg',
      'title': 'Turkey (Value Tour)',
      'country': 'Turkey',
    },
    {
      'image': 'assets/images/tample_chine.jpg',
      'title': 'Temple of Heaven',
      'country': 'China',
    },
    {
      'image': 'assets/images/Sumeru_ temple.jpg',
      'title': 'Sumeru Temple',
      'country': 'Thailand',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff018868),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 80),
                  child: Row(
                    children: [
                      Text(
                        'Holiday destination \n on your mind?',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/joi.jpg'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          AnimSearchBar(
            width: 400,
            textController: _textController,
            onSuffixTap: () {
              _textController.clear();
            },
            onSubmitted: (String query) {},
          ),
          const SizedBox(height: 1),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 40),
                            child: Text(
                              'Countries',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => const GaleriePage()),
                              );
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(top: 40),
                              child: Text(
                                'View All',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount:
                                2, // Nombre de colonnes dans la galerie
                            crossAxisSpacing: 10, // Espacement horizontal
                            mainAxisSpacing: 8, // Espacement vertical
                            childAspectRatio:
                                0.85, // Ajuster la taille des cartes
                          ),
                          itemCount: destinations.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                if (destinations[index]['title'] ==
                                    'Abu Dhabi') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const HomePage(),
                                    ),
                                  );
                                }
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              destinations[index]['image']!),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Text(
                                    destinations[index]['title']!,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    destinations[index]['country']!,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF0A0909),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_online),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
      ),
    );
  }
}
