// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'count_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountData _$CountdataFromJson(Map<String, dynamic> json) {
  return _Countdata.fromJson(json);
}

/// @nodoc
mixin _$CountData {
  int get count => throw _privateConstructorUsedError;
  int get countUp => throw _privateConstructorUsedError;
  int get countDown => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountdataCopyWith<CountData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountdataCopyWith<$Res> {
  factory $CountdataCopyWith(CountData value, $Res Function(CountData) then) =
      _$CountdataCopyWithImpl<$Res>;
  $Res call({int count, int countUp, int countDown});
}

/// @nodoc
class _$CountdataCopyWithImpl<$Res> implements $CountdataCopyWith<$Res> {
  _$CountdataCopyWithImpl(this._value, this._then);

  final CountData _value;
  // ignore: unused_field
  final $Res Function(CountData) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? countUp = freezed,
    Object? countDown = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      countUp: countUp == freezed
          ? _value.countUp
          : countUp // ignore: cast_nullable_to_non_nullable
              as int,
      countDown: countDown == freezed
          ? _value.countDown
          : countDown // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_CountdataCopyWith<$Res> implements $CountdataCopyWith<$Res> {
  factory _$$_CountdataCopyWith(
          _$_Countdata value, $Res Function(_$_Countdata) then) =
      __$$_CountdataCopyWithImpl<$Res>;
  @override
  $Res call({int count, int countUp, int countDown});
}

/// @nodoc
class __$$_CountdataCopyWithImpl<$Res> extends _$CountdataCopyWithImpl<$Res>
    implements _$$_CountdataCopyWith<$Res> {
  __$$_CountdataCopyWithImpl(
      _$_Countdata _value, $Res Function(_$_Countdata) _then)
      : super(_value, (v) => _then(v as _$_Countdata));

  @override
  _$_Countdata get _value => super._value as _$_Countdata;

  @override
  $Res call({
    Object? count = freezed,
    Object? countUp = freezed,
    Object? countDown = freezed,
  }) {
    return _then(_$_Countdata(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      countUp: countUp == freezed
          ? _value.countUp
          : countUp // ignore: cast_nullable_to_non_nullable
              as int,
      countDown: countDown == freezed
          ? _value.countDown
          : countDown // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Countdata with DiagnosticableTreeMixin implements _Countdata {
  const _$_Countdata(
      {required this.count, required this.countUp, required this.countDown});

  factory _$_Countdata.fromJson(Map<String, dynamic> json) =>
      _$$_CountdataFromJson(json);

  @override
  final int count;
  @override
  final int countUp;
  @override
  final int countDown;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Countdata(count: $count, countUp: $countUp, countDown: $countDown)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Countdata'))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('countUp', countUp))
      ..add(DiagnosticsProperty('countDown', countDown));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Countdata &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.countUp, countUp) &&
            const DeepCollectionEquality().equals(other.countDown, countDown));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(countUp),
      const DeepCollectionEquality().hash(countDown));

  @JsonKey(ignore: true)
  @override
  _$$_CountdataCopyWith<_$_Countdata> get copyWith =>
      __$$_CountdataCopyWithImpl<_$_Countdata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountdataToJson(this);
  }
}

abstract class _Countdata implements CountData {
  const factory _Countdata(
      {required final int count,
      required final int countUp,
      required final int countDown}) = _$_Countdata;

  factory _Countdata.fromJson(Map<String, dynamic> json) =
      _$_Countdata.fromJson;

  @override
  int get count => throw _privateConstructorUsedError;
  @override
  int get countUp => throw _privateConstructorUsedError;
  @override
  int get countDown => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CountdataCopyWith<_$_Countdata> get copyWith =>
      throw _privateConstructorUsedError;
}
