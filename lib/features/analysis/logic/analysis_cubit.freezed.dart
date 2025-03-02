// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analysis_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AnalysisState {
  AnalysisConfigCubit get configCubit => throw _privateConstructorUsedError;
  List<AnalysisTrafficGroupCubit> get groups =>
      throw _privateConstructorUsedError;
  List<AnalysisTrafficGroupCubit> get enabledGroups =>
      throw _privateConstructorUsedError;
  bool get analyzingTraffic => throw _privateConstructorUsedError;
  bool get analyzingEndpoints => throw _privateConstructorUsedError;

  /// Create a copy of AnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnalysisStateCopyWith<AnalysisState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalysisStateCopyWith<$Res> {
  factory $AnalysisStateCopyWith(
          AnalysisState value, $Res Function(AnalysisState) then) =
      _$AnalysisStateCopyWithImpl<$Res, AnalysisState>;
  @useResult
  $Res call(
      {AnalysisConfigCubit configCubit,
      List<AnalysisTrafficGroupCubit> groups,
      List<AnalysisTrafficGroupCubit> enabledGroups,
      bool analyzingTraffic,
      bool analyzingEndpoints});
}

/// @nodoc
class _$AnalysisStateCopyWithImpl<$Res, $Val extends AnalysisState>
    implements $AnalysisStateCopyWith<$Res> {
  _$AnalysisStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? configCubit = null,
    Object? groups = null,
    Object? enabledGroups = null,
    Object? analyzingTraffic = null,
    Object? analyzingEndpoints = null,
  }) {
    return _then(_value.copyWith(
      configCubit: null == configCubit
          ? _value.configCubit
          : configCubit // ignore: cast_nullable_to_non_nullable
              as AnalysisConfigCubit,
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<AnalysisTrafficGroupCubit>,
      enabledGroups: null == enabledGroups
          ? _value.enabledGroups
          : enabledGroups // ignore: cast_nullable_to_non_nullable
              as List<AnalysisTrafficGroupCubit>,
      analyzingTraffic: null == analyzingTraffic
          ? _value.analyzingTraffic
          : analyzingTraffic // ignore: cast_nullable_to_non_nullable
              as bool,
      analyzingEndpoints: null == analyzingEndpoints
          ? _value.analyzingEndpoints
          : analyzingEndpoints // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnalysisStateImplCopyWith<$Res>
    implements $AnalysisStateCopyWith<$Res> {
  factory _$$AnalysisStateImplCopyWith(
          _$AnalysisStateImpl value, $Res Function(_$AnalysisStateImpl) then) =
      __$$AnalysisStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AnalysisConfigCubit configCubit,
      List<AnalysisTrafficGroupCubit> groups,
      List<AnalysisTrafficGroupCubit> enabledGroups,
      bool analyzingTraffic,
      bool analyzingEndpoints});
}

/// @nodoc
class __$$AnalysisStateImplCopyWithImpl<$Res>
    extends _$AnalysisStateCopyWithImpl<$Res, _$AnalysisStateImpl>
    implements _$$AnalysisStateImplCopyWith<$Res> {
  __$$AnalysisStateImplCopyWithImpl(
      _$AnalysisStateImpl _value, $Res Function(_$AnalysisStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? configCubit = null,
    Object? groups = null,
    Object? enabledGroups = null,
    Object? analyzingTraffic = null,
    Object? analyzingEndpoints = null,
  }) {
    return _then(_$AnalysisStateImpl(
      configCubit: null == configCubit
          ? _value.configCubit
          : configCubit // ignore: cast_nullable_to_non_nullable
              as AnalysisConfigCubit,
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<AnalysisTrafficGroupCubit>,
      enabledGroups: null == enabledGroups
          ? _value._enabledGroups
          : enabledGroups // ignore: cast_nullable_to_non_nullable
              as List<AnalysisTrafficGroupCubit>,
      analyzingTraffic: null == analyzingTraffic
          ? _value.analyzingTraffic
          : analyzingTraffic // ignore: cast_nullable_to_non_nullable
              as bool,
      analyzingEndpoints: null == analyzingEndpoints
          ? _value.analyzingEndpoints
          : analyzingEndpoints // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AnalysisStateImpl extends _AnalysisState {
  const _$AnalysisStateImpl(
      {required this.configCubit,
      required final List<AnalysisTrafficGroupCubit> groups,
      required final List<AnalysisTrafficGroupCubit> enabledGroups,
      required this.analyzingTraffic,
      required this.analyzingEndpoints})
      : _groups = groups,
        _enabledGroups = enabledGroups,
        super._();

  @override
  final AnalysisConfigCubit configCubit;
  final List<AnalysisTrafficGroupCubit> _groups;
  @override
  List<AnalysisTrafficGroupCubit> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  final List<AnalysisTrafficGroupCubit> _enabledGroups;
  @override
  List<AnalysisTrafficGroupCubit> get enabledGroups {
    if (_enabledGroups is EqualUnmodifiableListView) return _enabledGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_enabledGroups);
  }

  @override
  final bool analyzingTraffic;
  @override
  final bool analyzingEndpoints;

  @override
  String toString() {
    return 'AnalysisState(configCubit: $configCubit, groups: $groups, enabledGroups: $enabledGroups, analyzingTraffic: $analyzingTraffic, analyzingEndpoints: $analyzingEndpoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalysisStateImpl &&
            (identical(other.configCubit, configCubit) ||
                other.configCubit == configCubit) &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
            const DeepCollectionEquality()
                .equals(other._enabledGroups, _enabledGroups) &&
            (identical(other.analyzingTraffic, analyzingTraffic) ||
                other.analyzingTraffic == analyzingTraffic) &&
            (identical(other.analyzingEndpoints, analyzingEndpoints) ||
                other.analyzingEndpoints == analyzingEndpoints));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      configCubit,
      const DeepCollectionEquality().hash(_groups),
      const DeepCollectionEquality().hash(_enabledGroups),
      analyzingTraffic,
      analyzingEndpoints);

  /// Create a copy of AnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalysisStateImplCopyWith<_$AnalysisStateImpl> get copyWith =>
      __$$AnalysisStateImplCopyWithImpl<_$AnalysisStateImpl>(this, _$identity);
}

abstract class _AnalysisState extends AnalysisState {
  const factory _AnalysisState(
      {required final AnalysisConfigCubit configCubit,
      required final List<AnalysisTrafficGroupCubit> groups,
      required final List<AnalysisTrafficGroupCubit> enabledGroups,
      required final bool analyzingTraffic,
      required final bool analyzingEndpoints}) = _$AnalysisStateImpl;
  const _AnalysisState._() : super._();

  @override
  AnalysisConfigCubit get configCubit;
  @override
  List<AnalysisTrafficGroupCubit> get groups;
  @override
  List<AnalysisTrafficGroupCubit> get enabledGroups;
  @override
  bool get analyzingTraffic;
  @override
  bool get analyzingEndpoints;

  /// Create a copy of AnalysisState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalysisStateImplCopyWith<_$AnalysisStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
