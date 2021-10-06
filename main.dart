import 'package:chashy_app/pages/explore_page.dart';
import 'package:chashy_app/pages/home_page.dart';
import 'package:chashy_app/providers/villa_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>VillaProvider(),
    child: MaterialApp(
      home: ExplorePage(),
    ),
    );
  }
}