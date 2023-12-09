import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class cardWidget1 extends StatelessWidget {
  const cardWidget1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 0, right: 14),
      width: 160,
      height: 210,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: NetworkImage(
              'https://images.pexels.com/photos/1624438/pexels-photo-1624438.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 24,
                  width: 52,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.18),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'New',
                    style: GoogleFonts.poppins(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                Container(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        left: 40,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/762020/pexels-photo-762020.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                          radius: 16,
                          backgroundColor: Colors.amber,
                        ),
                      ),
                      Positioned(
                        left: 20,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                          radius: 16,
                          backgroundColor: Colors.red,
                        ),
                      ),
                      Positioned(
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                          radius: 16,
                          backgroundColor: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 60),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Thailand',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      '18 Tours',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 10),
                    ),
                  ],
                ),
                SizedBox(
                  width: 27,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 70,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '4.5',
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 16,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
