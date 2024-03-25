

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../image/widget/ImageWidget.dart';
import '../model/category_model.dart';
import '../model/go_to_category_page_command.dart';
import 'category_page.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.name, this.imageUrl = ''});

  final String name;

  final String imageUrl;

  final double height = 270;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 600),
        padding: const EdgeInsets.all(5),
        child: MaterialButton(
          elevation: 0,
          color: Colors.grey.shade50,
          padding: EdgeInsets.zero,
          onPressed: () {
            GoToCategoryPageCommand(CategoryModel()).call();
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                color: Colors.white60,
                child: imageUrl.isNotEmpty
                    ? SizedBox(
                        height: height,
                        child: ImageWidget(
                          url: imageUrl,
                        ))
                    : SizedBox(
                        width: 200, height: height, child: const Placeholder()),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.add,
                            color: Theme.of(context).colorScheme.primary,
                            size: 10,
                          ),
                        ),
                        Text(
                          textAlign: TextAlign.start,
                          name,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                    Container(width: 200, child: Divider()),
                    Text('subtitle'),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
