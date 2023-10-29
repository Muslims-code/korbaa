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

  void generateUpcomingVisits(VisitsState visitsState) {
    final relatives = state.relatives ?? [];
    List<RelativeState> upcomingVisitsList = [];
    for (var relative in relatives) {
      final list = generateVisits(relative);
      // look up how to merge lists in dart
      upcomingVisitsList = upcomingVisitsList.followedBy(list).toList();
    }
    upcomingVisitsList.sort(
      (a, b) {
        return a.visitDate!.compareTo(b.visitDate!);
      },
    );
    emit(state.copyWith(upcomingVisits: upcomingVisitsList));
  }

  List<RelativeState> generateVisits(RelativeState relative) {
    var startDate = relative.startDate!;
    var duration = frequencyToDuration(relative.visitFrequency!);
    var endDate = startDate.add(duration);
    // TODO: test
    if (endDate.isBefore(DateTime.now())) {
      startDate = endDate;
      int index = state.relatives!.indexOf(relative);
      List<RelativeState> relatives = state.relatives!;
      relatives[index] =
          relative.copyWith(startDate: endDate, endDate: endDate.add(duration));
      emit(state.copyWith(relatives: relatives));
    }
    duration = divideDuration(duration, relative.visitFrequency!.visitCount);
    List<RelativeState> visitsDates = [];
    for (var i = 0; i < relative.visitFrequency!.visitCount; i++) {
      visitsDates.add(relative.copyWith(
          visitDate: startDate.add(multiplyDuration(duration, i)),
          endDate: endDate));
    }
    return visitsDates;
  }

  void addLog(RelativeState relative) {
    List<RelativeState> logs = state.logs!;
    logs.add(relative);
    emit(state.copyWith(logs: logs));
  }

  Duration frequencyToDuration(Frequency f) {
    switch (f.unit) {
      case FrequencyUnit.month:
        return Duration(days: 30 * f.frequencyVariable);
      case FrequencyUnit.week:
        return Duration(days: 7 * f.frequencyVariable);
      case FrequencyUnit.year:
        // don't forget to stop user from adding a frequencyVariable > 1
        // when adding year it's not reasonable
        return Duration(days: 365);
    }
  }

  Duration divideDuration(Duration d, int by) {
    int result = d.inMilliseconds ~/ by;
    return Duration(milliseconds: result);
  }

  Duration multiplyDuration(Duration d, int times) {
    int result = d.inMilliseconds * times;
    return Duration(milliseconds: result);
  }
}
