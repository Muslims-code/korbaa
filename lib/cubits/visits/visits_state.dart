// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'visits_cubit.dart';

class VisitsState extends Equatable {
  final List<RelativeState>? upcomingVisits;
  final List<RelativeState>? relatives;
  final List<RelativeState>? logs;
  const VisitsState({
    this.upcomingVisits,
    this.relatives,
    this.logs,
  });

  @override
  List<Object?> get props => [upcomingVisits, relatives, logs];

  VisitsState copyWith({
    List<RelativeState>? upcomingVisits,
    List<RelativeState>? relatives,
    List<RelativeState>? logs,
  }) {
    return VisitsState(
      upcomingVisits: upcomingVisits ?? this.upcomingVisits,
      relatives: relatives ?? this.relatives,
      logs: logs ?? this.logs,
    );
  }
}
