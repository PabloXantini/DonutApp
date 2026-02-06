import 'package:donut_app/utils/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    //donut tab
    const MyTab(iconName: 'Donut', iconPath: 'lib/icons/donut.png'),
    //burger tab
    const MyTab(iconName: 'Burger', iconPath: 'lib/icons/burger.png'),
    //smoothie tab
    const MyTab(iconName: 'Smoothie', iconPath: 'lib/icons/smoothie.png'),
    //pancake tab
    const MyTab(iconName: 'Pancake', iconPath: 'lib/icons/pancakes.png'),
    //pizza tab
    const MyTab(iconName: 'Pizza', iconPath: 'lib/icons/pizza.png')
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.menu, color: Colors.grey[800]),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Icon(Icons.person, color: Colors.grey[800],),
              )
            ],
          ),
        body: Column(
          //1. Main text
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('I want to ', style: TextStyle(fontSize: 24)),
                  Text('Eat', style: TextStyle(
                    //Font size
                    fontSize: 24,
                    //Bold
                    fontWeight: FontWeight.bold,
                    //Underline 
                    decoration: TextDecoration.underline)
                  )
                ],
              ), 
            ),  
            //2. Tabs (TabBar)
            TabBar(
              tabs: myTabs,
            )
            //3. Content (TabBarView)
            //4. Cart
          ],
        ),    
      )
    );
  }
}