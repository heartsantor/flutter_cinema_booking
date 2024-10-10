import 'package:flutter/material.dart';
import 'package:flutter_cinema_booking/consts.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      appBar: headerParts(),
      body: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          searchField(),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Padding searchField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 19),
          filled: true,
          fillColor: Colors.white.withOpacity(0.05),
          hintText: "Search",
          hintStyle: const TextStyle(
            color: Colors.white54,
          ),
          prefix: const Icon(
            Icons.search,
            size: 35,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(27),
              borderSide: BorderSide.none),
        ),
      ),
    );
  }

  AppBar headerParts() {
    return AppBar(
      backgroundColor: appBackgroundColor,
      title: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Welcome Angelina",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                            color: Colors.white54),
                      ),
                      TextSpan(
                        text: "👋",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Lets relax and watch movie!",
                  style: TextStyle(
                    height: 0.6,
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://t3.ftcdn.net/jpg/06/07/84/82/240_F_607848231_w5iFN4tMmtI2woJjMh7Q8mGvgARnzHgQ.jpg",
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
