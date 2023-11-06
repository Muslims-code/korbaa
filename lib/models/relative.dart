import 'package:equatable/equatable.dart';

import 'models.dart';

class Relative extends Equatable {
  final String? name;
  final String? phone;
  final String? address;
  final String? image;
  final DateTime? visitDate;
  final DateTime? startDate;
  final DateTime? endDate;
  final Frequency? visitFrequency;
  const Relative({
    this.name,
    this.startDate,
    this.endDate,
    this.visitDate,
    this.phone,
    this.address,
    this.image,
    this.visitFrequency,
  });

  List<Object?> get props => [
        name,
        phone,
        address,
        image,
        visitFrequency,
        visitDate,
        startDate,
        endDate
      ];

  Relative copyWith({
    String? name,
    String? phone,
    String? address,
    String? image,
    DateTime? visitDate,
    DateTime? startDate,
    DateTime? endDate,
    Frequency? visitFrequency,
  }) {
    return Relative(
      visitDate: visitDate ?? this.visitDate,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      image: image ?? this.image,
      visitFrequency: visitFrequency ?? this.visitFrequency,
    );
  }
}
