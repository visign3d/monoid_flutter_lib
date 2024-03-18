import 'package:flutter/foundation.dart';


import '../category/a_category.dart';
import '../model/a_object.dart';
import 'item_lib.dart';

///[AItem] represents an item of [Category]:
///text ,
///image,
///video,
///geotag,
///audio,
///script,
///widget ...
abstract class AItem extends AObject {
  AItem(
      {this.items = const [],
      this.media = const [],
      required this.category,
      this.onTap,
      this.onSelect,
      required super.id});

  ///items inside this item
  final List<AItem> items;

  ///when clicking the item surface
  final Function? onTap;

  ///when selecting item with cursor
  final Function? onSelect;

  ///media representing the item
  final List<AMedia> media;

  ///category reference of item
  final ACategory category;


}
