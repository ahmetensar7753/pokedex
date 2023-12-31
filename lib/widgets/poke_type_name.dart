import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constant/constants.dart';
import 'package:flutter_pokedex/model/pokemon_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokeNameType extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeNameType({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  pokemon.name ?? '',
                  style: Constanst.getPokemonNameTextStyle(),
                ),
              ),
              Text(
                '#${pokemon.num}',
                style: Constanst.getPokemonNameTextStyle(),
              ),
            ],
          ),
          SizedBox(
            height: 0.01.sh,
          ),
          Chip(
            label: Text(
              pokemon.type?.join(' , ') ?? '',
              style: Constanst.getTypeChipTextStyle(),
            ),
          ),
        ],
      ),
    );
  }
}
