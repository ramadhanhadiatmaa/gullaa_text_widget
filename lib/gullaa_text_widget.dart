import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.title,
    required this.size,
    required this.color,
    required this.weight,
    this.align,
  });

  final String title;
  final double size;
  final Color color;
  final FontWeight weight;
  final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: align,
      style: GoogleFonts.fredoka(
        fontSize: size,
        color: color,
        fontWeight: weight,
      ),
    );
  }
}

class TextSelect extends StatelessWidget {
  const TextSelect({
    super.key,
    required this.title,
    required this.size,
    required this.color,
    required this.weight,
    this.align,
  });

  final String title;
  final double size;
  final Color color;
  final FontWeight weight;
  final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      title,
      textAlign: align,
      style: GoogleFonts.fredoka(
        fontSize: size,
        color: color,
        fontWeight: weight,
      ),
    );
  }
}

class TextWidgetLink extends StatelessWidget {
  const TextWidgetLink({
    super.key,
    required this.title,
    required this.size,
    required this.weight,
    required this.color,
    required this.press,
    this.align,
  });

  final String title;
  final double size;
  final FontWeight weight;
  final Color color;
  final TextAlign? align;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Text(
        title,
        textAlign: align,
        style: GoogleFonts.roboto(
          fontSize: size,
          fontWeight: weight,
          color: color,
        ),
        maxLines: 1,
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  final String text;
  final Gradient gradient;
  final double size;
  final FontWeight weight;

  const GradientText({
    super.key,
    required this.text,
    required this.gradient,
    required this.size,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: GoogleFonts.fredoka(
          color: Colors.white,
          fontSize: size,
          fontWeight: weight,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
