import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:projectimagefirb/application/constants/const_routes.dart';
import 'package:projectimagefirb/core/games/bloc/games_data_bloc.dart';
import 'package:projectimagefirb/core/games/data/games_repo.dart';
import 'package:projectimagefirb/core/games/persentaion/screens/landing_page.dart';
// import 'package:projectimagefirb/route_generator.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // Repository().getUser();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GamesDataBloc>(
      create: (context) => GamesDataBloc(GamesRepo()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        // initialRoute: ConstRoutes.home,
        // onGenerateRoute: RouteGenerator.generate,
        home: const LandingPage(),
      ),
    );
  }
}
