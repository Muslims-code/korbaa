import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:korbaa/models/visit_frequency.dart';

import '../relative/relative_cubit.dart';

part 'visits_state.dart';

class VisitsCubit extends Cubit<VisitsState> {
  VisitsCubit() : super(const VisitsState());

  void addRelative(RelativeState relative) {
    final relatives = state.relatives ?? [];
    relatives.add(relative);
    emit(state.copyWith(relatives: relatives));
  }
  
  void generateUpcomingVisits(VisitsState visitsState){
    void specifyDuration(){
      
    }

    final relatives = state.relatives ?? [];
    DateTime now = DateTime.now();
    for (var relative in relatives){
      if (relative.visitFrequency!.unit == FrequencyUnit.weekly){
        (30/4)/relative.visitFrequency!.frequencyCount;
        final upcomingVisits = state.upcomingVisits ?? [];
        upcomingVisits.add(relative);
        emit(state.copyWith(upcomingVisits: upcomingVisits));
      }
    }


  }

}
