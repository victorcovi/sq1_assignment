// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_searcher_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CitySearcherState {
  CitySearcherStatus get status => throw _privateConstructorUsedError;
  List<City> get cities => throw _privateConstructorUsedError;
  PaginationMeta get meta => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Create a copy of CitySearcherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CitySearcherStateCopyWith<CitySearcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitySearcherStateCopyWith<$Res> {
  factory $CitySearcherStateCopyWith(
          CitySearcherState value, $Res Function(CitySearcherState) then) =
      _$CitySearcherStateCopyWithImpl<$Res, CitySearcherState>;
  @useResult
  $Res call(
      {CitySearcherStatus status,
      List<City> cities,
      PaginationMeta meta,
      String? message});
}

/// @nodoc
class _$CitySearcherStateCopyWithImpl<$Res, $Val extends CitySearcherState>
    implements $CitySearcherStateCopyWith<$Res> {
  _$CitySearcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CitySearcherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? cities = null,
    Object? meta = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CitySearcherStatus,
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as PaginationMeta,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CitySearcherStateImplCopyWith<$Res>
    implements $CitySearcherStateCopyWith<$Res> {
  factory _$$CitySearcherStateImplCopyWith(_$CitySearcherStateImpl value,
          $Res Function(_$CitySearcherStateImpl) then) =
      __$$CitySearcherStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CitySearcherStatus status,
      List<City> cities,
      PaginationMeta meta,
      String? message});
}

/// @nodoc
class __$$CitySearcherStateImplCopyWithImpl<$Res>
    extends _$CitySearcherStateCopyWithImpl<$Res, _$CitySearcherStateImpl>
    implements _$$CitySearcherStateImplCopyWith<$Res> {
  __$$CitySearcherStateImplCopyWithImpl(_$CitySearcherStateImpl _value,
      $Res Function(_$CitySearcherStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CitySearcherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? cities = null,
    Object? meta = null,
    Object? message = freezed,
  }) {
    return _then(_$CitySearcherStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CitySearcherStatus,
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as PaginationMeta,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CitySearcherStateImpl implements _CitySearcherState {
  const _$CitySearcherStateImpl(
      {required this.status,
      final List<City> cities = const [],
      this.meta = const PaginationMeta(),
      this.message})
      : _cities = cities;

  @override
  final CitySearcherStatus status;
  final List<City> _cities;
  @override
  @JsonKey()
  List<City> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  @override
  @JsonKey()
  final PaginationMeta meta;
  @override
  final String? message;

  @override
  String toString() {
    return 'CitySearcherState(status: $status, cities: $cities, meta: $meta, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitySearcherStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._cities, _cities) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_cities), meta, message);

  /// Create a copy of CitySearcherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CitySearcherStateImplCopyWith<_$CitySearcherStateImpl> get copyWith =>
      __$$CitySearcherStateImplCopyWithImpl<_$CitySearcherStateImpl>(
          this, _$identity);
}

abstract class _CitySearcherState implements CitySearcherState {
  const factory _CitySearcherState(
      {required final CitySearcherStatus status,
      final List<City> cities,
      final PaginationMeta meta,
      final String? message}) = _$CitySearcherStateImpl;

  @override
  CitySearcherStatus get status;
  @override
  List<City> get cities;
  @override
  PaginationMeta get meta;
  @override
  String? get message;

  /// Create a copy of CitySearcherState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CitySearcherStateImplCopyWith<_$CitySearcherStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
