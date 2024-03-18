import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../abstract/model/grid/grid_model.dart';
import '../../../abstract/model/grid/grid_rx_view_model.dart';
import 'cursor.dart';

class InfinityGrid extends StatelessWidget {
  InfinityGrid({super.key, required this.gridModel, required this.gridRxView}) {
    gridRxView.init(gridModel);
  }

  ///todo put rx view outside this widget
  final GridRxView gridRxView;

  final int w = 60;

  final int h = 60;

  final int s = 10;

  final GridModel gridModel;

  final ScrollController scrollController = ScrollController();

  final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return KeyboardListener(
      autofocus: true,
      focusNode: focusNode,
      onKeyEvent: onKeyEvent,
      child: Obx(
        () => Container(
          padding: EdgeInsets.all(25),
          child: Container(
            decoration: BoxDecoration(border: Border.all()),
            child: SingleChildScrollView(
              controller: scrollController,
              child: Container(
                  height: gridModel.size.sizeY * gridModel.unit.size.height,
                  width: gridModel.size.sizeX * gridModel.unit.size.width,
                  child: Stack(
                    children: [
                      GridPaper(
                        interval: gridModel.unit.size.width,
                        color: Colors.black12,
                        divisions: 1,
                        subdivisions: 2,
                        child: Container(),
                      ),

                      ///todo finish cursor movement
                      Positioned(
                        left: gridModel.unit.size.width *
                            gridRxView.currentPosition.value.posX,
                        top: gridModel.unit.size.height *
                            gridRxView.currentPosition.value.posY,
                        child: Cursor(
                          unit: gridRxView.unit.value,
                          position: gridRxView.currentPosition.value,
                        ),
                      )
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }

  onKeyEvent(KeyEvent event) {
    if (event is KeyDownEvent) {
      transformCurrentPositionByKeyEvent(event);
    }
    // if (event is KeyRepeatEvent) {
    //   transformCurrentPositionByKeyEvent(event);
    // }
  }

  transformCurrentPositionByKeyEvent(KeyEvent event) {
    print(event.logicalKey.keyId);
    switch (event.logicalKey.keyId) {
      ///A_left
      case 97:
        gridRxView.currentPosition.value = GridPosition(
            id: '',
            posX: gridRxView.currentPosition.value.posX - 1,
            posY: gridRxView.currentPosition.value.posY);
        break;

      ///D_right
      case 100:
        gridRxView.currentPosition.value = GridPosition(
            id: '',
            posX: gridRxView.currentPosition.value.posX + 1,
            posY: gridRxView.currentPosition.value.posY);
        break;

      ///W_up
      case 119:
        gridRxView.currentPosition.value = GridPosition(
            id: '',
            posX: gridRxView.currentPosition.value.posX,
            posY: gridRxView.currentPosition.value.posY - 1);
        break;

      ///S_down
      case 115:
        gridRxView.currentPosition.value = GridPosition(
            id: '',
            posX: gridRxView.currentPosition.value.posX,
            posY: gridRxView.currentPosition.value.posY + 1);
        break;
    }
  }

  List<Widget> buildGrid() {
    List<Widget> list = [];
    List<List<Widget>> grid = [];

    for (var i = 0; i < h; i++) {
      grid.add(List.generate(w, (i) => iconItem(i.toDouble(), h.toDouble())));
    }

    for (var e in grid) {
      for (var element in e) {
        list.add(element);
      }
    }

    return list;
  }

  final Color color = Colors.grey;

  Widget iconItem(double x, double y) => Stack(
        children: [
          Positioned(
              child: Container(
            height: 2,
            width: 2,
            color: color,
          )),
          Positioned(
              child: Container(
            height: 2,
            width: 2,
            color: color,
          )),
          SizedBox(
            height: s.toDouble(),
            width: s.toDouble(),
          ),
        ],
      );
}
