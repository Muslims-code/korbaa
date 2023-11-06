import 'package:flutter/material.dart';
import 'package:korbaa/screens/screens.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubits/visits/visits_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VisitsCubit(),
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: "El Messiri",
        ),
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ),
    );
  }
}
