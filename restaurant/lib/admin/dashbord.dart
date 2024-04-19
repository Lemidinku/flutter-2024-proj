import 'package:restaurant/admin/addfood.dart';

import 'package:restaurant/admin/component/dashbordhome.dart';
import 'package:restaurant/admin/orderlist.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project ',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: AdminHome(),
    );
  }
}

class AdminHome extends StatelessWidget {
  const AdminHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Digital resturant',
        style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: AutofillHints.language),
      )),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                ),
                child: Center(
                  child: Text(
                    'Digital resturant',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),

              ListTile(
                title: Text('Dashbord',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                leading: Icon(
                  Icons.home,
                  color: Colors.deepOrange,
                ),
                onTap: () {
                  // Navigate to the dashboard page
                },
              ),
              ListTile(
                title: Text(
                  'Add Food',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.add,
                  color: Colors.deepOrange,
                ),
                onTap: () {
                  // Navigate to the add food page
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Addpage(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text('Order List',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                leading: Icon(
                  Icons.delivery_dining,
                  color: Colors.deepOrange,
                ),
                onTap: () {
                  // Navigate to the order list page
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => OrderList(),
                    ),
                  );
                },
              ),
              // Add more list items for other navigable components
            ],
          ),
        ),
      ),
      body: AddedFoodsPage(),
    );
  }
}
