import 'package:flutter/material.dart';
import 'dart:math' as math show Random;
import 'homePage.dart';
//import 'package:bloc/bloc.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
//import 'cubit.dart';

void main() {
  runApp(
/*  const ProviderScope(
child: MyApp(),),*/

      const MyApp());
}

const name = [
  "foo",
  'bar',
  'baz',
];

extension RandomElement<T> on Iterable<T> {
  T getRandomElement() => elementAt(math.Random().nextInt(length));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true),
      home: HomePage(),
    );
  }
}
