import 'package:flutter/material.dart';
import 'package:restaurant/detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Digital Restaurant',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _RestaurantHomePageState();
}

class _RestaurantHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Digital Restaurant'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 48, vertical: 4),
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    style: const TextStyle(fontSize: 18),
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 228, 226, 226),
                      contentPadding: const EdgeInsets.all(1),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 160,
                child: PageView(
                  children: [
                    _buildFlashOfferCard(
                      title: 'Flash Offer',
                      description:
                          'We are here with the best deserts in Addis.',
                      imagePath: 'assets/kitfo.jpg',
                    ),
                    _buildFlashOfferCard(
                      title: 'Flash Offer',
                      description:
                          'We are here with the best deserts in Addis.',
                      imagePath: 'assets/dorowot.jpg',
                    ),
                    _buildFlashOfferCard(
                      title: 'Flash Offer',
                      description:
                          'We are here with the best deserts in Addis.',
                      imagePath: 'assets/shiro.jpg',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Today\'s Menu',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Text('Today\'s Specials'),
              const SizedBox(height: 10),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.7,
                children: [
                  _buildFoodItemCard(
                      title: 'DORO WOT',
                      imagePath: 'assets/dorowot.jpg',
                      price: '300',
                      rating: '4',
                      kind: 'luch',
                      type: 'nonfasting',
                      origin: 'ethiopia'),
                  _buildFoodItemCard(
                      title: 'GENFO',
                      imagePath: 'assets/genfo.jpg',
                      price: '300',
                      rating: '4',
                      kind: 'luch',
                      type: 'nonfasting',
                      origin: 'ethiopia'),
                  _buildFoodItemCard(
                      title: 'DULET',
                      imagePath: 'assets/dulet.jpg',
                      price: '300',
                      rating: '4',
                      kind: 'luch',
                      type: 'nonfasting',
                      origin: 'ethiopia'),
                  _buildFoodItemCard(
                      title: 'KITFO',
                      imagePath: 'assets/kitfo.jpg',
                      price: '300',
                      rating: '4',
                      kind: 'luch',
                      type: 'nonfasting',
                      origin: 'ethiopia'),
                  _buildFoodItemCard(
                      title: 'TIRE SEGA',
                      imagePath: 'assets/tire.jpg',
                      price: '300',
                      rating: '4',
                      kind: 'luch',
                      type: 'nonfasting',
                      origin: 'ethiopia'),
                  _buildFoodItemCard(
                      title: 'SHIRO',
                      imagePath: 'assets/shiro.jpg',
                      price: '300',
                      rating: '4',
                      kind: 'luch',
                      type: 'nonfasting',
                      origin: 'ethiopia'),
                  _buildFoodItemCard(
                      title: 'TIBS',
                      imagePath: 'assets/tibs.jpg',
                      price: '300',
                      rating: '4',
                      kind: 'luch',
                      type: 'nonfasting',
                      origin: 'ethiopia'),
                  _buildFoodItemCard(
                      title: 'CHEESE BURGER',
                      imagePath: 'assets/cheeseburger.jpg',
                      price: '300',
                      rating: '4',
                      kind: 'luch',
                      type: 'nonfasting',
                      origin: 'ethiopia'),
                  _buildFoodItemCard(
                      title: 'PIZZA',
                      imagePath: 'assets/pizza.jpg',
                      price: '300',
                      rating: '4',
                      kind: 'luch',
                      type: 'nonfasting',
                      origin: 'ethiopia'),
                  _buildFoodItemCard(
                      title: 'STEAK',
                      imagePath: 'assets/steak.jpg',
                      price: '300',
                      rating: '4',
                      kind: 'luch',
                      type: 'nonfasting',
                      origin: 'ethiopia'),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xFFF97350),
                    elevation: 0,
                    minimumSize: const Size(221, 37),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text('Order Now'),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFF97350),
              ),
              child: Text(
                'Filters',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              title: const Text('Origin'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Fasting'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Allergies'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFlashOfferCard({
    required String title,
    required String description,
    required String imagePath,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Card(
        child: Stack(
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color.fromARGB(255, 247, 179, 162).withOpacity(0.5),
                    const Color.fromARGB(255, 240, 169, 63),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    description,
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Order >',
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFoodItemCard(
      {required String title,
      required String imagePath,
      required String rating,
      required String kind,
      required String type,
      required String origin,
      required String price}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: const Color.fromARGB(255, 234, 228, 228),
      elevation: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 12),
            child: SizedBox(
              height: 120,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(15),
                        bottom: Radius.circular(15),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => FoodDetailPage(
                              imagePath: imagePath,
                              price: price,
                              origin: origin,
                              rating: rating,
                              type: type,
                              title: title,
                              kind: kind,
                            ),
                          ));
                        },
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF97350),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      minimumSize: const Size(221, 37),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: const Text('Select Order'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
