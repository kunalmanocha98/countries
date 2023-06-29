import 'package:countries/UI/CountryPage/Bloc/country_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountryBloc extends Cubit<CountryState>{
  CountryBloc(super.initialState);

  void fetchList(){
    emit(LoadingState());
  }
  void loadedList(){
    emit(LoadedState());
  }
}