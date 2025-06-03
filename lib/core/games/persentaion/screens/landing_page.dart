import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectimagefirb/core/games/bloc/games_data_bloc.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GamesDataBloc, GamesDataState>(
        builder: (context, state) {
          if (state is GamesDataInitialState) {
            context.read<GamesDataBloc>().add(LoadGamesDataEvent());
            return Center(child: const CircularProgressIndicator());
          } else if (state is GamesDataLoadingState) {
            return Center(child: const CircularProgressIndicator());
          } else if (state is GamesDataLoadedState) {
            return Center(child: const Text('data is loaded'));
          } else if (state is GamesDataErrorState) {
            return Center(child: const Text('Someting went wrong respone'));
          }
          return Center(child: Text('Error'));
        },
      ),
    );
  }
}
