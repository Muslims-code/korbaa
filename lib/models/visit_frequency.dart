// ignore_for_file: public_member_api_docs, sort_constructors_first
enum FrequencyUnit { weekly, monthly }


class VisitFrequency {
  FrequencyUnit unit;
  int frequencyCount; 
  
  VisitFrequency({
    required this.unit,
    required this.frequencyCount,
  });


  VisitFrequency copyWith({
    FrequencyUnit? unit,
    int? frequencyCount,
  }) {
    return VisitFrequency(
      unit: unit ?? this.unit,
      frequencyCount: frequencyCount ?? this.frequencyCount,
    );
  }
}
