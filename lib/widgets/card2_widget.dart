import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class cardWidget2 extends StatelessWidget {
  const cardWidget2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 14),
      height: 105,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue.shade100.withOpacity(0.5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        padding: EdgeInsets.only(right: 8),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                topLeft: Radius.circular(12),
              ),
              child: Image.network(
                'https://images.pexels.com/photos/1624438/pexels-photo-1624438.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                width: 110,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Thailand',
                    style: GoogleFonts.poppins(
                        color: Colors.black87,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '10 noches para dos/todo incluido mas una visita guiada',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                        color: Colors.black54,
                        fontSize: 12,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    '\$ 245.50',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Container(
              alignment: Alignment.center,
              height: 70,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.green.shade800,
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
    );
  }
}
