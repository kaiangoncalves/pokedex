import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/common/models/repositories/pokemon_repository.dart';
import 'package:pokedex/features/pokedexx/route.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex BlincTek Academy',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: PokedexRoute(
        repository: PokemonRepository(
        dio: Dio(),
        ),
      ),
    );
  }
}

