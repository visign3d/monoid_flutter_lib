

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../category/widget/category_list_widget.dart';
import '../category/widget/category_widget.dart';
import '../file/filepicker_buttun.dart';
import '../firebase/google_sign_in_service.dart';
import '../welcome_show/welcome_show_page.dart';
import 'navigation/commands.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final GoogleSignInService signInService = Get.find();

  final RxBool showIsVisible = false.obs;

  final RxBool isLoggedIn = false.obs;

  final bool disableShow = true;

  final RxBool showChat = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(

        backgroundColor: Colors.white,
        appBar: showIsVisible.value == true
            ? null
            : AppBar(
                actions: [
                    IconButton(
                        onPressed: () {},
                        icon:
                            const SizedBox(width: 50, child: Icon(Icons.menu))),
                    if (isLoggedIn.value)
                      IconButton(
                        onPressed: () {
                          signInService.signIn();
                        },
                        icon: Icon(Icons.person),
                      )
                  ],
                title: const Text('MONOID1*'),
                leading: MaterialButton(
                    onPressed: null,
                    child: Image.network("https://i.ibb.co/MgFK8VM/logo.png"))),
        body:
          const SingleChildScrollView(
            child: CategoryWidget(
              name: 'pin board',
            ),
          ),

        floatingActionButton: showIsVisible.value == true
            ? null
            : FloatingActionButton(
                onPressed: () => onChatTap(context),
                child: const Icon(Icons.chat_bubble_outline),
              ),
        bottomNavigationBar: showChat.value
            ? BottomAppBar(
                elevation: 15,
                child: TextField(
                  onSubmitted: onChatEnter,
                  controller: editingController,
                ),
              )
            : SizedBox(),
      ),
    );
  }

  onTabChange(int index) {
    if (index > 2) {
      showIsVisible.value = false;
    }
  }

  onChatTap(BuildContext context) {
    showModalBottomSheet(
      enableDrag: true,
      showDragHandle: true,
      isScrollControlled: true,
      elevation: 15,
      barrierLabel: 'hello',
      barrierColor: Colors.transparent,
      context: context,
      builder: (c) => Container(
        color: Colors.white54,
        padding: EdgeInsets.all(15),
        child: TextField(
          decoration: InputDecoration(
            fillColor: Colors.white,
            label: Text('subscribe with email'),
            hintText: 'emal@email.com',
            border: UnderlineInputBorder(
                borderSide: BorderSide(
                    width: 0.1, color: Colors.blue, style: BorderStyle.solid)),
          ),
          onSubmitted: onChatEnter,
          controller: editingController,
        ),
      ),
    );
  }

  TextEditingController editingController = TextEditingController();

  onChatEnter(String text) {
    if (text == 'go to admin') {
      GetToAdmin().execute();
    }
  }
}
