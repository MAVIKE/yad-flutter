// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_order_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1OrderInput extends V1OrderInput {
  @override
  final int? restaurantId;

  factory _$V1OrderInput([void Function(V1OrderInputBuilder)? updates]) =>
      (new V1OrderInputBuilder()..update(updates)).build();

  _$V1OrderInput._({this.restaurantId}) : super._();

  @override
  V1OrderInput rebuild(void Function(V1OrderInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1OrderInputBuilder toBuilder() => new V1OrderInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1OrderInput && restaurantId == other.restaurantId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, restaurantId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('V1OrderInput')
          ..add('restaurantId', restaurantId))
        .toString();
  }
}

class V1OrderInputBuilder
    implements Builder<V1OrderInput, V1OrderInputBuilder> {
  _$V1OrderInput? _$v;

  int? _restaurantId;
  int? get restaurantId => _$this._restaurantId;
  set restaurantId(int? restaurantId) => _$this._restaurantId = restaurantId;

  V1OrderInputBuilder() {
    V1OrderInput._initializeBuilder(this);
  }

  V1OrderInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restaurantId = $v.restaurantId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1OrderInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1OrderInput;
  }

  @override
  void update(void Function(V1OrderInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$V1OrderInput build() {
    final _$result = _$v ?? new _$V1OrderInput._(restaurantId: restaurantId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
