// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'relative_cubit.dart';

class RelativeState extends Equatable {
  final String? name;
  final String? phone;
  final String? address;
  final String? image;
  final DateTime? visitDate;
  final DateTime? startDate;
  final DateTime? endDate;
  final Frequency? visitFrequency;
  RelativeState({
    this.name,
    this.startDate,
    this.endDate,
    this.visitDate,
    this.phone,
    this.address,
    this.image,
    this.visitFrequency,
  });

  @override
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

  RelativeState copyWith({
    String? name,
    String? phone,
    String? address,
    String? image,
    DateTime? visitDate,
    DateTime? startDate,
    DateTime? endDate,
    Frequency? visitFrequency,
  }) {
    return RelativeState(
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
