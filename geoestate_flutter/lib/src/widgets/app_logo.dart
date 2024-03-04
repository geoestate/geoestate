import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppLogo extends StatelessWidget {
  final double size;
  const AppLogo({
    super.key,
    this.size = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'GeoEstate 0.0.8',
      style: GoogleFonts.kdamThmorPro(
        textStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: const Color.fromARGB(255, 90, 90, 90),
          fontSize: size,
          // letterSpacing: .5,
        ),
      ),
    );
  }
}
