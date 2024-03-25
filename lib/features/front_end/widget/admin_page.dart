import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:monoid_flutter_lib/features/parse_server/widget/setup_parse_server.dart';

import 'add_category_widget.dart';

class Admin extends StatelessWidget {
  Admin({super.key});

  final RxBool show = false.obs;

  final String p = 'ggg123';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
      ),
      body: Obx(
        () => Center(
          child: !show.value
              ? SizedBox(
                  width: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      const SetupParseServer()
                    ],
                  ))
              : AddCategoryWidget(),
        ),
      ),
    );
  }

  ///todo verify admin password
  onSubmitted(String text) {
    if (text == p) {
      show.value = true;
      return;
    }
    show.value = false;
  }
}
