// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_category_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1CategoryInput extends V1CategoryInput {
  @override
  final String? title;

  factory _$V1CategoryInput([void Function(V1CategoryInputBuilder)? updates]) =>
      (new V1CategoryInputBuilder()..update(updates)).build();

  _$V1CategoryInput._({this.title}) : super._();

  @override
  V1CategoryInput rebuild(void Function(V1CategoryInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1CategoryInputBuilder toBuilder() =>
      new V1CategoryInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1CategoryInput && title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc(0, title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('V1CategoryInput')..add('title', title))
        .toString();
  }
}

class V1CategoryInputBuilder
    implements Builder<V1CategoryInput, V1CategoryInputBuilder> {
  _$V1CategoryInput? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  V1CategoryInputBuilder() {
    V1CategoryInput._initializeBuilder(this);
  }

  V1CategoryInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1CategoryInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1CategoryInput;
  }

  @override
  void update(void Function(V1CategoryInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$V1CategoryInput build() {
    final _$result = _$v ?? new _$V1CategoryInput._(title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
