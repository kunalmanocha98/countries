import 'package:countries/UI/CountryPage/Bloc/country_bloc.dart';
import 'package:countries/UI/CountryPage/Bloc/country_state.dart';
import 'package:countries/Utils/Components/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountryPage extends StatefulWidget {
  const CountryPage({super.key});

  @override
  CountryPageState createState() => CountryPageState();
}

class CountryPageState extends State<CountryPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      CountryBloc countryBloc = BlocProvider.of<CountryBloc>(context);
      countryBloc.fetchList();
      Future.delayed(const Duration(seconds: 5), () {
        countryBloc.loadedList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CountryAppBar(title: 'Country Page',),
        body: BlocBuilder<CountryBloc, CountryState>(
          builder: (context, state) {
            if(state is LoadingState){
              return const Center(child: Text("Loading State"));
            }else if(state is LoadedState){
              return const Center(child: Text("Loaded State"));
            }else {
              return const Center(child: Text("Initial State"));
            }
          },
        )
    );
  }

}