import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 80, // Adjust the height as needed
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {
                    // Handle button press
                  },
                ),
                SizedBox(width: 48), // Adjust the size of the center button
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    // Handle button press
                  },
                ),
                SizedBox(width: 48), // Adjust the size of the center button
                IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () {
                    // Handle button press
                  },
                ),
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {
                    // Handle button press
                  },
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: (MediaQuery.of(context).size.width / 2) -
              32, // Adjust to center the middle button
          bottom: 0,
          child: Container(
            height: 64, // Adjust the size of the center button
            width: 64, // Adjust the size of the center button
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.add, color: Colors.white),
              onPressed: () {
                // Handle button press
              },
            ),
          ),
        ),
      ],
    );
  }
}
