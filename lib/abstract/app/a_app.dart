import 'package:flutter/material.dart';


abstract class AApp extends StatelessWidget{
  const AApp({super.key, required this.app, required this.homePage});

  final Widget app;

  final Scaffold homePage;



  @override
  build(BuildContext context)=>app;



}