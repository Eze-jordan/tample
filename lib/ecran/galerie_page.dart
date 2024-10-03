import 'package:flutter/material.dart';
import 'package:tample/ecran/welcome.dart';

class GaleriePage extends StatelessWidget {
  const GaleriePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Liste de chemins d'images
    final List<String> imagePaths = [
      'assets/images/Jumeirah_Burj_Al_Arab_Dubai_2.jpg',
      'assets/images/Jumeirah_Burj_Al_Arab_Dubai_3.jpg',
      'assets/images/Jumeirah_Burj_Al_Arab_Dubai_4.jpg',
      'assets/images/Jumeirah_Burj_Al_Arab_Dubai_5.jpg',
      'assets/images/Jumeirah_Burj_Al_Arab_Dubai_6.jpg',
      'assets/images/Jumeirah_Burj_Al_Arab_Dubai_7.jpg',
      'assets/images/Jumeirah_Burj_Al_Arab_Dubai_8.jpg',
      'assets/images/Jumeirah_Burj_Al_Arab_Dubai_9.jpg',
      'assets/images/Jumeirah_Burj_Al_Arab_Dubai_10.jpg',
      'assets/images/Jumeirah_Burj_Al_Arab_Dubai_11.jpg',
      'assets/images/Jumeirah_Burj_Al_Arab_Dubai_12.jpg',
      'assets/images/Jumeirah_Burj_Al_Arab_Dubai_13.jpg',
      'assets/images/Jumeirah_Burj_Al_Arab_Dubai_14.jpg',
      'assets/images/Jumeirah_Burj_Al_Arab_Dubai_15.jpg',
      'assets/images/Jumeirah_Burj_Al_Arab_Dubai_16.jpg',
      'assets/images/Jumeirah_Burj_Al_Arab_Dubai_17.jpg',
      'assets/images/Jumeirah_Burj_Al_Arab_Dubai_18.jpg',
      'assets/images/Jumeirah_Burj_Al_Arab_Dubai_19.jpg',
      'assets/images/Jumeirah_Burj_Al_Arab_Dubai_20.jpg',
    ];

    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 244, 244, 1),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Header avec icône cancel et titre centré
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.cancel,
                      size: 50,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const Welcome()),
                      );
                    },
                  ),
                  const Text(
                    'All Photos',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(width: 50), // Pour équilibrer l'espace
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Onglets pour "Official Photos" et "Customer Photos"
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: 30,
                    color: const Color.fromARGB(255, 8, 2, 2),
                    alignment: Alignment.center,
                    child: const Text(
                      'Official Photos (14)',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 30,
                    color: const Color(0xFFFFFFFF),
                    alignment: Alignment.center,
                    child: const Text(
                      'Customer Photos (9617)',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // GridView pour afficher les photos
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Nombre de colonnes
                  crossAxisSpacing:
                      8.0, // Espacement horizontal entre les images
                  mainAxisSpacing: 8.0, // Espacement vertical entre les images
                ),
                itemCount: imagePaths.length, // Nombre d'images dans la liste
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage(imagePaths[
                            index]), // Affiche chaque image de la liste
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
