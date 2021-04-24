// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain_menu_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DomainMenuItem extends DomainMenuItem {
  @override
  final String? description;
  @override
  final int? id;
  @override
  final String? image;
  @override
  final int? price;
  @override
  final int? restaurantId;
  @override
  final String? title;

  factory _$DomainMenuItem([void Function(DomainMenuItemBuilder)? updates]) =>
      (new DomainMenuItemBuilder()..update(updates)).build();

  _$DomainMenuItem._(
      {this.description,
      this.id,
      this.image,
      this.price,
      this.restaurantId,
      this.title})
      : super._();

  @override
  DomainMenuItem rebuild(void Function(DomainMenuItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DomainMenuItemBuilder toBuilder() =>
      new DomainMenuItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DomainMenuItem &&
        description == other.description &&
        id == other.id &&
        image == other.image &&
        price == other.price &&
        restaurantId == other.restaurantId &&
        title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, description.hashCode), id.hashCode),
                    image.hashCode),
                price.hashCode),
            restaurantId.hashCode),
        title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DomainMenuItem')
          ..add('description', description)
          ..add('id', id)
          ..add('image', image)
          ..add('price', price)
          ..add('restaurantId', restaurantId)
          ..add('title', title))
        .toString();
  }
}

class DomainMenuItemBuilder
    implements Builder<DomainMenuItem, DomainMenuItemBuilder> {
  _$DomainMenuItem? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  int? _restaurantId;
  int? get restaurantId => _$this._restaurantId;
  set restaurantId(int? restaurantId) => _$this._restaurantId = restaurantId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DomainMenuItemBuilder() {
    DomainMenuItem._initializeBuilder(this);
  }

  DomainMenuItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _id = $v.id;
      _image = $v.image;
      _price = $v.price;
      _restaurantId = $v.restaurantId;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DomainMenuItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DomainMenuItem;
  }

  @override
  void update(void Function(DomainMenuItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DomainMenuItem build() {
    final _$result = _$v ??
        new _$DomainMenuItem._(
            description: description,
            id: id,
            image: image,
            price: price,
            restaurantId: restaurantId,
            title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
