// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain_category.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DomainCategory extends DomainCategory {
  @override
  final int? id;
  @override
  final int? restaurantId;
  @override
  final String? title;

  factory _$DomainCategory([void Function(DomainCategoryBuilder)? updates]) =>
      (new DomainCategoryBuilder()..update(updates)).build();

  _$DomainCategory._({this.id, this.restaurantId, this.title}) : super._();

  @override
  DomainCategory rebuild(void Function(DomainCategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DomainCategoryBuilder toBuilder() =>
      new DomainCategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DomainCategory &&
        id == other.id &&
        restaurantId == other.restaurantId &&
        title == other.title;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), restaurantId.hashCode), title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DomainCategory')
          ..add('id', id)
          ..add('restaurantId', restaurantId)
          ..add('title', title))
        .toString();
  }
}

class DomainCategoryBuilder
    implements Builder<DomainCategory, DomainCategoryBuilder> {
  _$DomainCategory? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _restaurantId;
  int? get restaurantId => _$this._restaurantId;
  set restaurantId(int? restaurantId) => _$this._restaurantId = restaurantId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DomainCategoryBuilder() {
    DomainCategory._initializeBuilder(this);
  }

  DomainCategoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _restaurantId = $v.restaurantId;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DomainCategory other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DomainCategory;
  }

  @override
  void update(void Function(DomainCategoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DomainCategory build() {
    final _$result = _$v ??
        new _$DomainCategory._(
            id: id, restaurantId: restaurantId, title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
