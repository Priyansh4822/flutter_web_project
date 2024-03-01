import 'package:flutter/material.dart';
import 'package:flutter_web2/widgets/navbar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 80),
          child: NavBar(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Ivan',
                          style: TextStyle(fontSize: screenWidth * 0.05),
                        ),
                        Text(
                          'Vigilante',
                          style: TextStyle(fontSize: screenWidth * 0.05),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Software Developer',
                          style: TextStyle(fontSize: screenWidth * 0.016, color: Colors.green),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Occasionally watches movies,',
                          style: TextStyle(fontSize: screenWidth * 0.016),
                        ),
                        Text(
                          'shows, and plays games.',
                          style: TextStyle(fontSize: screenWidth * 0.016),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: screenWidth * 0.25,
                    height: screenWidth * 0.25,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/illustration1.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
