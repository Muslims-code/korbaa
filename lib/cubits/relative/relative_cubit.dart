import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:korbaa/models/visit_frequency.dart';
part 'relative_state.dart';

class RelativeCubit extends Cubit<RelativeState> {
  RelativeCubit() : super(RelativeState());

  void changeName(String name) {
    emit(state.copyWith(name: name));
  }
  
}
