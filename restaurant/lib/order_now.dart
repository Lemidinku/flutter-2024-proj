import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'plus_minus_input.dart';

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
      home: const OrderNowPage(),
    );
  }
}

class OrderNowPage extends StatefulWidget {
  const OrderNowPage({super.key});

  @override
  State<OrderNowPage> createState() => _RestaurantHomePageState();
}

class _RestaurantHomePageState extends State<OrderNowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Digital Restaurant'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
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
                height: 35,
                color: const Color(0xFFF97350),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Starter",
                        style: TextStyle(fontSize: 13, color: Colors.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Breakfast",
                        style: TextStyle(fontSize: 13, color: Colors.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Lunch",
                        style: TextStyle(fontSize: 13, color: Colors.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Dinner",
                        style: TextStyle(fontSize: 13, color: Colors.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Desserts",
                        style: TextStyle(fontSize: 13, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 3,
                        minimumSize: const Size(150, 37),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Text(
                        'Selected Order',
                        style: TextStyle(color: Color(0xFFF97350)),
                      ),
                    ),
                  ),
                ],
              ),
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
                  ),
                  _buildFoodItemCard(
                    title: 'GENFO',
                    imagePath: 'assets/genfo.jpg',
                  ),
                  _buildFoodItemCard(
                    title: 'KITFO',
                    imagePath: 'assets/kitfo.jpg',
                  ),
                  _buildFoodItemCard(
                    title: 'SHIRO',
                    imagePath: 'assets/shiro.jpg',
                  ),
                  _buildFoodItemCard(
                    title: 'TIBS',
                    imagePath: 'assets/tibs.jpg',
                  ),
                  _buildFoodItemCard(
                    title: 'KITFO',
                    imagePath: 'assets/kitfo.jpg',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFFF97350),
        unselectedItemColor: Colors.black,
        iconSize: 34,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }

  Widget _buildFoodItemCard({
    required String title,
    required String imagePath,
  }) {
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
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
            child: SizedBox(
              height: 100,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(15),
                        bottom: Radius.circular(15),
                      ),
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.cover,
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      "200 ETB",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const PlusMinusInput(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
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
