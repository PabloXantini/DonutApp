import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconName;
  final String iconPath;
  
  const MyTab({
    super.key,
    required this.iconName,
    required this.iconPath
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            //Circular border
            borderRadius: BorderRadius.circular(16)
          ),
          child: Column(
            children: [
              Expanded(
                child: Image.asset(iconPath, color: Colors.grey[600],)
              ),
              Text(
                iconName,
                style: TextStyle(fontSize: 8),
              )
            ],
          ),
        )
      )
    );
  }
}