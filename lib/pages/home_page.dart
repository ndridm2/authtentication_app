import 'package:authtentication_app/pages/signin_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Home Page'),
        actions: [
          PopupMenuButton(
            iconColor: Colors.black,
            onSelected: (value) {},
            itemBuilder: (context) => <PopupMenuItem<String>>[
              PopupMenuItem<String>(
                value: 'logout',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SigninPage()));
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.logout, color: Colors.black),
                    SizedBox(width: 5),
                    Text('logout', style: TextStyle(color: Colors.black87)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            child: Column(
              children: [
                Image.asset(
                  "assets/login.png",
                  width: 220,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
