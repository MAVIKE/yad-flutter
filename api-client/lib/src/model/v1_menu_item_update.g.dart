// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_menu_item_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1MenuItemUpdate extends V1MenuItemUpdate {
  @override
  final int? categoryId;
  @override
  final String? description;
  @override
  final String? image;
  @override
  final int? price;
  @override
  final String? title;

  factory _$V1MenuItemUpdate(
          [void Function(V1MenuItemUpdateBuilder)? updates]) =>
      (new V1MenuItemUpdateBuilder()..update(updates)).build();

  _$V1MenuItemUpdate._(
      {this.categoryId, this.description, this.image, this.price, this.title})
      : super._();

  @override
  V1MenuItemUpdate rebuild(void Function(V1MenuItemUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1MenuItemUpdateBuilder toBuilder() =>
      new V1MenuItemUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1MenuItemUpdate &&
        categoryId == other.categoryId &&
        description == other.description &&
        image == other.image &&
        price == other.price &&
        title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, categoryId.hashCode), description.hashCode),
                image.hashCode),
            price.hashCode),
        title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('V1MenuItemUpdate')
          ..add('categoryId', categoryId)
          ..add('description', description)
          ..add('image', image)
          ..add('price', price)
          ..add('title', title))
        .toString();
  }
}

class V1MenuItemUpdateBuilder
    implements Builder<V1MenuItemUpdate, V1MenuItemUpdateBuilder> {
  _$V1MenuItemUpdate? _$v;

  int? _categoryId;
  int? get categoryId => _$this._categoryId;
  set categoryId(int? categoryId) => _$this._categoryId = categoryId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  V1MenuItemUpdateBuilder() {
    V1MenuItemUpdate._initializeBuilder(this);
  }

  V1MenuItemUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _categoryId = $v.categoryId;
      _description = $v.description;
      _image = $v.image;
      _price = $v.price;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1MenuItemUpdate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1MenuItemUpdate;
  }

  @override
  void update(void Function(V1MenuItemUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$V1MenuItemUpdate build() {
    final _$result = _$v ??
        new _$V1MenuItemUpdate._(
            categoryId: categoryId,
            description: description,
            image: image,
            price: price,
            title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
