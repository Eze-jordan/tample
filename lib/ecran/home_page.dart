import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:tample/ecran/galerie_page.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  bottomNavigationBar() => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Column(
            children: [
              Column(
                children: [
                  const Column(
                    children: [
                      SizedBox(
                        height: 300,
                        width: 500,
                        child: Image(
                            image: AssetImage(
                                'assets/images/Jumeirah_Burj_Al_Arab_Dubai.jpg')),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Text(
                          'Jumeirah Burj Al Arab Dubai',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Laissez-vous emporter par la beauté d’une icône. L’hospitalité comme vous ne l’avez jamais connue.',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const DecoratedBox(
                                    decoration: ShapeDecoration(
                                        shape:
                                            CircleBorder(eccentricity: 0.80))),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: const Color(0xF2F3E2C0),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Padding(
                                      padding: EdgeInsets.all(3.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.orange,
                                            size: 25,
                                          ),
                                          Text(
                                            '4.5',
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(0.8),
                                  child: Text(
                                    '(4.625 Reviews)',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                                const Text(
                                  '| 60K+ Booked',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Row(
                        children: [
                          Icon(
                            Iconsax.clock_1_bold,
                            size: 30,
                          ),
                          Text(
                            '  Available Today',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.flash_on,
                            size: 30,
                          ),
                          Text(
                            '  Instant Confirmation',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.currency_exchange_sharp,
                            size: 30,
                          ),
                          Text(
                            '  No Cancellation/Fee Cancellatio -24 \n Hours notice',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Row(
                        children: [
                          Icon(
                            HeroIcons.printer,
                            size: 30,
                          ),
                          Text(
                            '  Show Mobile Or Prinded Voucher',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.view_agenda,
                            size: 30,
                          ),
                          Text(
                            '  Open Date Ticket/Fixed Date Ticket',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.airplane_ticket,
                            size: 30,
                          ),
                          Text(
                            '  Collect Physical Ticket',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.car_repair_sharp,
                            size: 30,
                          ),
                          Text(
                            '  Meet Up At Location',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff018868),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const GaleriePage()),
              );
            },
            child: const Text(
              'View All',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
