// ignore_for_file: public_member_api_docs, sort_constructors_first
enum FrequencyUnit { week, month, year }

class Frequency {
  // X {frequencyVariable} per {unit}
  // examples:
  // 3 times per month
  final FrequencyUnit unit;
  // we might add the idea of two times per two weeks for example
  final int frequencyVariable;
  // determines how many times you want to visit your relative
  
  final int visitCount;
  Frequency({
    required this.unit,
    required this.frequencyVariable,
    required this.visitCount,
  });


  Frequency copyWith({
    FrequencyUnit? unit,
    int? frequencyVariable,
    int? visitCount,
  }) {
    return Frequency(
      unit: unit ?? this.unit,
      frequencyVariable: frequencyVariable ?? this.frequencyVariable,
      visitCount: visitCount ?? this.visitCount,
    );
  }
}
