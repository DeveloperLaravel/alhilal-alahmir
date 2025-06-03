// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DataModel {

 int get id; String get title; String get worth; String get thumbnail; String get image; String get description; String get instructions;// ignore: non_constant_identifier_names
 String get open_giveaway_url;// ignore: non_constant_identifier_names
 String get published_dat; String get type; String get platforms;// ignore: non_constant_identifier_names
 String get end_data; int get users; String get status;// ignore: non_constant_identifier_names
 String get gamerpower_url;
/// Create a copy of DataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataModelCopyWith<DataModel> get copyWith => _$DataModelCopyWithImpl<DataModel>(this as DataModel, _$identity);

  /// Serializes this DataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.worth, worth) || other.worth == worth)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.image, image) || other.image == image)&&(identical(other.description, description) || other.description == description)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.open_giveaway_url, open_giveaway_url) || other.open_giveaway_url == open_giveaway_url)&&(identical(other.published_dat, published_dat) || other.published_dat == published_dat)&&(identical(other.type, type) || other.type == type)&&(identical(other.platforms, platforms) || other.platforms == platforms)&&(identical(other.end_data, end_data) || other.end_data == end_data)&&(identical(other.users, users) || other.users == users)&&(identical(other.status, status) || other.status == status)&&(identical(other.gamerpower_url, gamerpower_url) || other.gamerpower_url == gamerpower_url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,worth,thumbnail,image,description,instructions,open_giveaway_url,published_dat,type,platforms,end_data,users,status,gamerpower_url);

@override
String toString() {
  return 'DataModel(id: $id, title: $title, worth: $worth, thumbnail: $thumbnail, image: $image, description: $description, instructions: $instructions, open_giveaway_url: $open_giveaway_url, published_dat: $published_dat, type: $type, platforms: $platforms, end_data: $end_data, users: $users, status: $status, gamerpower_url: $gamerpower_url)';
}


}

/// @nodoc
abstract mixin class $DataModelCopyWith<$Res>  {
  factory $DataModelCopyWith(DataModel value, $Res Function(DataModel) _then) = _$DataModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, String worth, String thumbnail, String image, String description, String instructions, String open_giveaway_url, String published_dat, String type, String platforms, String end_data, int users, String status, String gamerpower_url
});




}
/// @nodoc
class _$DataModelCopyWithImpl<$Res>
    implements $DataModelCopyWith<$Res> {
  _$DataModelCopyWithImpl(this._self, this._then);

  final DataModel _self;
  final $Res Function(DataModel) _then;

/// Create a copy of DataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? worth = null,Object? thumbnail = null,Object? image = null,Object? description = null,Object? instructions = null,Object? open_giveaway_url = null,Object? published_dat = null,Object? type = null,Object? platforms = null,Object? end_data = null,Object? users = null,Object? status = null,Object? gamerpower_url = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,worth: null == worth ? _self.worth : worth // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,instructions: null == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String,open_giveaway_url: null == open_giveaway_url ? _self.open_giveaway_url : open_giveaway_url // ignore: cast_nullable_to_non_nullable
as String,published_dat: null == published_dat ? _self.published_dat : published_dat // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,platforms: null == platforms ? _self.platforms : platforms // ignore: cast_nullable_to_non_nullable
as String,end_data: null == end_data ? _self.end_data : end_data // ignore: cast_nullable_to_non_nullable
as String,users: null == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,gamerpower_url: null == gamerpower_url ? _self.gamerpower_url : gamerpower_url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _DataModel implements DataModel {
   _DataModel({required this.id, required this.title, required this.worth, required this.thumbnail, required this.image, required this.description, required this.instructions, required this.open_giveaway_url, required this.published_dat, required this.type, required this.platforms, required this.end_data, required this.users, required this.status, required this.gamerpower_url});
  factory _DataModel.fromJson(Map<String, dynamic> json) => _$DataModelFromJson(json);

@override final  int id;
@override final  String title;
@override final  String worth;
@override final  String thumbnail;
@override final  String image;
@override final  String description;
@override final  String instructions;
// ignore: non_constant_identifier_names
@override final  String open_giveaway_url;
// ignore: non_constant_identifier_names
@override final  String published_dat;
@override final  String type;
@override final  String platforms;
// ignore: non_constant_identifier_names
@override final  String end_data;
@override final  int users;
@override final  String status;
// ignore: non_constant_identifier_names
@override final  String gamerpower_url;

/// Create a copy of DataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataModelCopyWith<_DataModel> get copyWith => __$DataModelCopyWithImpl<_DataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DataModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.worth, worth) || other.worth == worth)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.image, image) || other.image == image)&&(identical(other.description, description) || other.description == description)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.open_giveaway_url, open_giveaway_url) || other.open_giveaway_url == open_giveaway_url)&&(identical(other.published_dat, published_dat) || other.published_dat == published_dat)&&(identical(other.type, type) || other.type == type)&&(identical(other.platforms, platforms) || other.platforms == platforms)&&(identical(other.end_data, end_data) || other.end_data == end_data)&&(identical(other.users, users) || other.users == users)&&(identical(other.status, status) || other.status == status)&&(identical(other.gamerpower_url, gamerpower_url) || other.gamerpower_url == gamerpower_url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,worth,thumbnail,image,description,instructions,open_giveaway_url,published_dat,type,platforms,end_data,users,status,gamerpower_url);

@override
String toString() {
  return 'DataModel(id: $id, title: $title, worth: $worth, thumbnail: $thumbnail, image: $image, description: $description, instructions: $instructions, open_giveaway_url: $open_giveaway_url, published_dat: $published_dat, type: $type, platforms: $platforms, end_data: $end_data, users: $users, status: $status, gamerpower_url: $gamerpower_url)';
}


}

/// @nodoc
abstract mixin class _$DataModelCopyWith<$Res> implements $DataModelCopyWith<$Res> {
  factory _$DataModelCopyWith(_DataModel value, $Res Function(_DataModel) _then) = __$DataModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String worth, String thumbnail, String image, String description, String instructions, String open_giveaway_url, String published_dat, String type, String platforms, String end_data, int users, String status, String gamerpower_url
});




}
/// @nodoc
class __$DataModelCopyWithImpl<$Res>
    implements _$DataModelCopyWith<$Res> {
  __$DataModelCopyWithImpl(this._self, this._then);

  final _DataModel _self;
  final $Res Function(_DataModel) _then;

/// Create a copy of DataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? worth = null,Object? thumbnail = null,Object? image = null,Object? description = null,Object? instructions = null,Object? open_giveaway_url = null,Object? published_dat = null,Object? type = null,Object? platforms = null,Object? end_data = null,Object? users = null,Object? status = null,Object? gamerpower_url = null,}) {
  return _then(_DataModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,worth: null == worth ? _self.worth : worth // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,instructions: null == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String,open_giveaway_url: null == open_giveaway_url ? _self.open_giveaway_url : open_giveaway_url // ignore: cast_nullable_to_non_nullable
as String,published_dat: null == published_dat ? _self.published_dat : published_dat // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,platforms: null == platforms ? _self.platforms : platforms // ignore: cast_nullable_to_non_nullable
as String,end_data: null == end_data ? _self.end_data : end_data // ignore: cast_nullable_to_non_nullable
as String,users: null == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,gamerpower_url: null == gamerpower_url ? _self.gamerpower_url : gamerpower_url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
