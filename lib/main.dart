
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp_interface/sliverAppBar.dart';

void main (){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: HomePage(),
    home: SliverAppBarWithTabBar(),
    
  )
  );
}