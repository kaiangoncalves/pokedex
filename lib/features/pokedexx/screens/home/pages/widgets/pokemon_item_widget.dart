import 'package:flutter/material.dart';
import 'package:pokedex/common/models/pokemon.dart';

class PokemonItemWidget extends StatelessWidget {
  const PokemonItemWidget({ Key? key, required this.pokemon }) : super(key: key);
  final Pokemon pokemon; 

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(pokemon.id, style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),),
                Text(pokemon.name, style: TextStyle(
                  fontSize: 16,
                ),),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: Image.network(pokemon.image)
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

