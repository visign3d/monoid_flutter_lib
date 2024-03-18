
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../abstract/item/item.dart';
import '../../../abstract/model/a_object.dart';
import '../../../abstract/model/grid/grid_item_model.dart';
import 'item_view_widget.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          showDialog(context: context, builder: (_) => ItemViewWidget());
        },
        child: Container(
            padding: EdgeInsets.all(0),
            height: 100,
            width: 100,
            child: const Placeholder()));
  }
}

class GridItemWidget<T extends AItem> extends StatelessWidget {
  const GridItemWidget({
    super.key,
    required this.model,
  });

  final GridItemModel<T> model;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          showDialog(context: context, builder: (_) => ItemViewWidget());
        },
        child: Container(
            padding: EdgeInsets.all(0),
            height: model.displaySize.height,
            width: model.displaySize.width,
            child: const Placeholder()));
  }
}
