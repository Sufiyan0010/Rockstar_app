import 'package:flutter/material.dart';
import 'package:flutter_application_1/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 21, 21, 21),

      //-------------------AppBar-----------------\\

      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
          child: Text(
            'Rockstar Games',
            style: TextStyle(color: Colors.amber),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 5, 5, 5),
        actions: [
          Image.asset(
            'assets/images/logo.png',
            height: 60,
            width: 60,
          ),
        ],
        elevation: 20,
      ),

      //-------------------------Drawer-------------------\\

      drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 30, 29, 29),
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text(
                  'Sufiyan',
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: Text('Sufiyankarippol10@gmail.com',
                    style: TextStyle(color: Colors.black)),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(10, 99, 88, 88),
                  backgroundImage: AssetImage('assets/images/logo-min.jpg'),
                ),
                decoration: BoxDecoration(color: Colors.amber),
              ),
              ListTile(
                leading: const Icon(
                  Icons.person,
                  color: Colors.amber,
                ),
                title: const Text(
                  'Profile',
                  style: TextStyle(fontSize: 20),
                ),
                textColor: Colors.amber,
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.account_box,
                  color: Colors.amber,
                ),
                title: const Text(
                  'Mange Accounts',
                  style: TextStyle(fontSize: 20),
                ),
                textColor: Colors.amber,
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.settings,
                  color: Colors.amber,
                ),
                title: const Text(
                  'Settings',
                  style: TextStyle(fontSize: 20),
                ),
                textColor: Colors.amber,
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.help_center,
                  color: Colors.amber,
                ),
                title: const Text(
                  'Help Center',
                  style: TextStyle(fontSize: 20),
                ),
                textColor: Colors.amber,
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.logout,
                  color: Colors.amber,
                ),
                title: const Text(
                  'signOut',
                  style: TextStyle(fontSize: 20),
                ),
                textColor: Colors.amber,
                onTap: () {
                  signout(context);
                },
              ),
            ],
          )),

      //------------------cards-------------------\\

      body: SafeArea(
          child: ListView(
        children: const [
          //--------------GTA V-----------------\\

          GtaCard(
            title: 'GTA V',
            cricleImage: "assets/images/gta5.jpg",
            mainImage: 'assets/images/gta5image.jpg',
            descrption:
                "Experience entertaiment blockbusters,Grand Theft Auto Onlinle.",
          ),

          //---------------GTA4-----------------\\

          GtaCard(
            title: 'GTA IV',
            cricleImage: "assets/images/gta411.jpg",
            mainImage: 'assets/images/Screenshot (5).png',
            descrption:
                "What does the American Dream mean today? For Niko Bellic, fresh off the boat from Europe, it is the hope he can escape his past. For his cousin, Roman, it is the vision that together they can find fortune in Liberty City, gateway to the land of opportunity.",
          ),

          //--------------------------GTA 3--------------------\\

          GtaCard(
            title: 'GTA III',
            cricleImage: "assets/images/unnamed.png",
            mainImage: 'assets/images/gta3.jpeg',
            descrption:
                "Welcome to Liberty City. Where it all began. The critically acclaimed blockbuster Grand Theft Auto III brings to life the dark and seedy underworld of Liberty City. With a massive and diverse open world, a wild cast of characters from every walk of life, and the freedom to explore at will, Grand Theft Auto III puts the dark, intriguing, and ruthless world of crime at your fingertips.",
          ),

          //---------------------------SAN ANDREAS---------------\\
          GtaCard(
            title: 'GTA:San-Andreas',
            cricleImage: "assets/images/GTASA.jpg",
            mainImage: 'assets/images/gtasss.jpeg',
            descrption:
                "Five years ago Carl Johnson escaped from the pressures of life in Los Santos, San Andreas — a city tearing itself apart with gang trouble, drugs, and corruption. Where film stars and millionaires do their best to avoid the dealers and gangbangers.",
          ),

          //-----------------------VICE CITY------------------------\\
          GtaCard(
            title: 'GTA Vise City',
            cricleImage: "assets/images/gtavc.jpg",
            mainImage: 'assets/images/vice.jpg',
            descrption:
                "Welcome to the 1980s. From the decade of big hair, excess, and pastel suits comes a story of one man's rise to the top of the criminal pile as Grand Theft Auto returns.",
          ),
        ],
      )),
    );
  }

//--------------------Signout ----------------------------\\

  signout(BuildContext ctx) async {
    // ignore: no_leading_underscores_for_local_identifiers
    final _sharedPrefs = await SharedPreferences.getInstance();
    await _sharedPrefs.clear();
    // ignore: use_build_context_synchronously
    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx) => const SplashScreen()),
        (route) => false);
  }
//------alert dialog-------\
}

class GtaCard extends StatelessWidget {
  final String title;
  final String cricleImage;
  final String mainImage;
  final String descrption;
  const GtaCard({
    super.key,
    required this.title,
    required this.cricleImage,
    required this.mainImage,
    required this.descrption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Card(
        elevation: 20,
        color: const Color.fromARGB(255, 0, 0, 0),
        child: Column(
          children: [
            ListTile(
              title: Text(
                title,
                style: const TextStyle(color: Colors.white),
              ),
              subtitle: const Text(
                "Presented By Rockstar Games",
                style: TextStyle(color: Color.fromARGB(167, 240, 227, 227)),
              ),
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white70,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                  backgroundImage: AssetImage(cricleImage),
                ),
              ),
              trailing: const Icon(
                Icons.more_vert,
                color: Colors.white70,
              ),
            ),
            Image.asset(mainImage),
            ListTile(
              title: Text(
                descrption,
                style: const TextStyle(color: Colors.white),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.play_arrow,
                    color: Colors.black,
                  ),
                  label: const Text(
                    'Watch Trailor',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.amber)),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                  ),
                  label: const Text(
                    'Buy Now',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.amber)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
