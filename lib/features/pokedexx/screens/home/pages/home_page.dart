import 'package:flutter/material.dart';
import 'package:pokedex/features/pokedexx/screens/details/container/pages/detail_container.dart';
import '../../../../../common/models/pokemon.dart';
import 'widgets/pokemon_item_widget.dart';


class HomePage extends StatelessWidget {
  const HomePage({ Key? key, required this.list, required this.onItemTap }) : super(key: key);
  final List<Pokemon> list;
  final Function(String, DetailArguments) onItemTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.red,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text('Blinctek Pokedex', style: TextStyle(
            color: Colors.white,
          ),),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 24,
          mainAxisSpacing: 24,
          children: list.map((e) => PokemonItemWidget(pokemon: e)).toList(),
          ),
      ),
      );
    }
  }