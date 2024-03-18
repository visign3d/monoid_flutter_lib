
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../xls/xls_service.dart';
import 'category_widget.dart';

class CategoryListWidget extends StatelessWidget {
  CategoryListWidget({super.key});

  XlsService xlsService = Get.find();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Wrap(

          runSpacing: 0,
          alignment: WrapAlignment.start,
          runAlignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 0,
          children: List.generate(
              xlsService.categories.length,
              (index) => CategoryWidget(
                imageUrl: xlsService.categories[index].imageUrl,
                    name: xlsService.categories[index].name,
                  )),
        ),
      ),
    );
  }
}
