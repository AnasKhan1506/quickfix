// categories.dart
import 'package:flutter/material.dart';
import 'package:quickfix/models/category.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Row(
        children: [
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    String route;
                    switch (categories[index].title) {
                      case 'Wheels & Tires':
                        route = '/shoes';
                        break;
                      case 'Brake':
                        route = '/beauty';
                        break;
                      case 'Drivetrain':
                        route = '/pc';
                        break;
                      case 'Electrical':
                        route = '/mobile';
                        break;
                      default:
                        route = '/';
                    }
                    Navigator.pushNamed(context, route);
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 60, // Container size
                        width: 60, // Container size
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 42, 115,
                              80), // Background color of the container
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(
                              8.0), // Padding for the image
                          child: Image.asset(
                            categories[index].image,
                            fit: BoxFit
                                .contain, // Ensure the image fits within the container
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        categories[index].title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(width: 20),
              itemCount: categories.length,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/all_categories');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'View All',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
