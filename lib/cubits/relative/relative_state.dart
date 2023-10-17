// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'relative_cubit.dart';

class RelativeState extends Equatable {
  final String? name;
  final String? phone;
  final String? address;
  final String? image;
  final DateTime? visitDate;
  final VisitFrequency? visitFrequency;
  RelativeState({
     this.name,
    this.visitDate,
    this.phone,
    this.address,
    this.image,
     this.visitFrequency,
  });



  @override
  List<Object?> get props => [name, phone, address, image, visitFrequency,visitDate];
 

  RelativeState copyWith({
    String? name,
    String? phone,
    String? address,
    String? image,
    DateTime? visitDate,
    VisitFrequency? visitFrequency,
  }) {
    return RelativeState(
      visitDate: visitDate ?? this.visitDate,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      image: image ?? this.image,
      visitFrequency: visitFrequency ?? this.visitFrequency,
    );
  }
}
