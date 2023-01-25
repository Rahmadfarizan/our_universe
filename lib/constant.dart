import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Color
const Color kBackgroundColor = Color(0xFF1E1F22);
const Color kOrange = Color(0xFFFB6220);
Color kOrangeBright = Color.fromARGB(255, 248, 113, 55);
const Color kBlack = Colors.black;
const Color kGrey = Color(0xFFA3A3A3);
const Color kWhite = Colors.white;

// Text Color Animation
const colorizeWhite = [
  kWhite,
  kBlack,
];

final colorizeOrange = [
  kOrange,
  kBlack,
];

const colorizeGrey = [
  kGrey,
  kBlack,
];

const colorizeTextStyle = TextStyle(
  fontSize: 14.0,
  fontFamily: 'Horizon',
);

// Text Color
const Color kTextColor = Colors.white;

// Text Style
final kTurretRoadBold = GoogleFonts.turretRoad(
  fontWeight: FontWeight.w700,
  color: kWhite,
);
final kTurretRoadSemiBold = GoogleFonts.turretRoad(
  fontWeight: FontWeight.w600,
  color: kWhite,
);
final kTurretRoadMedium = GoogleFonts.turretRoad(
  fontWeight: FontWeight.w500,
  color: kWhite,
);
final kTurretRoadRegular = GoogleFonts.turretRoad(
  fontWeight: FontWeight.w400,
  color: kWhite,
);

// Padding
final double kDefaultPadding = 20.0;
