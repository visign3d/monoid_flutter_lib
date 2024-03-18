

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../abstract/model/grid/grid_model.dart';

import '../../item/widget/item_widget.dart';
import '../category_rx_view.dart';
import 'infinity_grid.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage(
      {super.key, required this.categoryName, required this.rxView});

  final String categoryName;

  final CategoryRxView rxView;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: const BackButton(),
        title: Text(categoryName),
      ),
      body: Obx(
        () => InfinityGrid(
          gridModel: GridModel(
              size: rxView.gridRxView.size.value,
              unit: rxView.gridRxView.unit.value,
              id: ''),
          gridRxView: rxView.gridRxView,
        ),
      ),
    );
  }
}
