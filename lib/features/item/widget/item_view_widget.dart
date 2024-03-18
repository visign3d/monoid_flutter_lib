

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemViewWidget extends StatelessWidget {
  ItemViewWidget({super.key});

  TransformationController transformationController =TransformationController();


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            InteractiveViewer(
              transformationController: transformationController,
                maxScale: 5,
                child: Center(
                    child: Image(
                  height: 5657,
                  width: 4000,
                  image: AssetImage('image/FUSION30000.png'),
                ))),
            Positioned.fill(
                bottom: 0,
                child: Wrap(

                  runAlignment: WrapAlignment.end,
                  alignment: WrapAlignment.center,
                  // crossAxisAlignment: WrapCrossAlignment.end,
                  children: [
                    IconButton(

                      onPressed: () {

                      },
                      icon: Icon(Icons.remove),color: Colors.white,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add),color: Colors.white
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
