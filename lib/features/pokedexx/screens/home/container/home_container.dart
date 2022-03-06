import 'package:flutter/material.dart';
import 'package:pokedex/common/models/pokemon.dart';
import 'package:pokedex/common/models/repositories/pokemon_repository.dart';
import 'package:pokedex/features/pokedexx/screens/details/container/pages/detail_container.dart';
import 'package:pokedex/features/pokedexx/screens/home/pages/home_loading.dart';
import 'package:pokedex/features/pokedexx/screens/home/pages/home_page.dart';
import '../../../../../common/models/erro/failure.dart';
import '../pages/home_error.dart';


class HomeContainer extends StatelessWidget {
  const HomeContainer({ Key? key, required this.repository, required this.onItemTap }) : super(key: key);
  final IPokemonRepository repository;
  final Function(String, DetailArguments) onItemTap;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Pokemon>>(
      future: repository.getAllPokemons(),
      builder: (context, snapshot) {

      if(snapshot.connectionState == ConnectionState.waiting) {
        return HomeLoading();
      }


      if(snapshot.connectionState == ConnectionState.done && snapshot.hasData){
        return HomePage(list: snapshot.data!, onItemTap: onItemTap);
      }

      if(snapshot.hasError){
        return HomeError(
          error: (snapshot.error as Failure).message!,
        );
      }



      return Container();
    });
  }
}