import 'package:bloc/bloc.dart';
import 'package:bloc_app/main.dart';

class NamesCubit extends Cubit<String?> {
  NamesCubit() : super(null);

  void pickRandomName() {
    emit(name.getRandomElement());
  }
}
