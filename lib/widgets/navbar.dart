import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: MobileNavbar,
      desktop: DesktopNavbar,
    );
  }

  Widget MobileNavbar(BuildContext context){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu),
          navLogo()
        ],
      ),
    );
  }

Widget DesktopNavbar(BuildContext context) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    height: 120,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(width: 25),
                  FaIcon(FontAwesomeIcons.eye, color: Colors.white),
                  SizedBox(width: 5),
                  FaIcon(FontAwesomeIcons.vanShuttle,color: Colors.red,),
                  FaIcon(FontAwesomeIcons.heart, color: Colors.red,),
                  FaIcon(FontAwesomeIcons.laptop,),
                ],
              ),
              SizedBox(height: 5),
              Text(
                'Eye-Van Loves Tech',
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              navButton('Home'),
              navButton('Social'),
              navButton('About'),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric( horizontal: 25,vertical: 4),
          decoration: BoxDecoration(
          color: const Color.fromARGB(255, 29, 78, 30),
          borderRadius: BorderRadius.circular(40),
          ),
          child: const Text(
          'Projects',
          style: TextStyle(
            fontSize: 14,
          ),
          ),
        ),
      ],
    ),
  );
}




  Widget navLogo(){
    return Container(
      width: 100,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/logo.png'),
        )
      ),
    );
  }

  Widget navButton(String text){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: TextButton(
        onPressed: (){},
        child: Text(text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,

        ),),),
    );
  }
}