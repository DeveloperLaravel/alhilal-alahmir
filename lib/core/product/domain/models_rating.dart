import 'package:equatable/equatable.dart';

class ModelsRating extends Equatable {
  final double rate;
  final int count;

  const ModelsRating(this.rate, this.count);

  factory ModelsRating.fromJson(Map<String, dynamic> json) {
    return ModelsRating(json['rate'] as double, json['count'] as int);
  }

  Map<String, dynamic> toJson() {
    return {'rate': rate, 'count': count};
  }

  @override
  // TODO: implement props
  List<Object?> get props => [rate, count];
}
