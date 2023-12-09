import 'package:discounttour/widgets/card1_widget.dart';
import 'package:discounttour/widgets/card2_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
              setState(() {});
            },
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          );
        }),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(HeroIcons.bolt, color: Colors.amber),
            SizedBox(width: 8),
            Text(
              'DiscountTour',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Country',
                style: GoogleFonts.poppins(
                    fontSize: 24, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 4,
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(
                    decelerationRate: ScrollDecelerationRate.normal),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    cardWidget1(),
                    cardWidget1(),
                    cardWidget1(),
                    cardWidget1(),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Popular Tours',
                style: GoogleFonts.poppins(
                    fontSize: 24, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 4,
              ),
              cardWidget2(),
              cardWidget2(),
              cardWidget2(),
              cardWidget2(),
              cardWidget2(),
              cardWidget2(),
            ],
          ),
        ),
      ),
    );
  }
}
