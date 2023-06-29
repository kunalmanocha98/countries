import 'package:countries/DI/service_locator.dart';
import 'package:countries/UI/CountryPage/Bloc/country_bloc.dart';
import 'package:countries/UI/CountryPage/Bloc/country_state.dart';
import 'package:countries/UI/CountryPage/country_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Utils/Theme/custom_theme.dart';

void main() {
  setup();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<CountryBloc>(
        create: (c)=>CountryBloc(InitialState()),
        child: const CountryPage(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      themeMode: currentTheme.currentTheme,
      home: const CountryPage(),
    );
  }
}
