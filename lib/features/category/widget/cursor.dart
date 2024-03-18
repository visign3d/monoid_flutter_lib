

import 'package:flutter/material.dart';

import '../../../abstract/model/grid/grid_model.dart';

class Cursor extends StatelessWidget {
  const Cursor({super.key, required this.unit, required this.position});

  final GridUnit unit;

  final GridPosition position;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: unit.size.width,
      height: unit.size.height,
      decoration: BoxDecoration(
        border: Border.all(width: 3,color: Colors.grey)
      ),
    );
  }
}
