import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:primeiro_treinamento_2024/themeController.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
        actions: [
          Text('Modo Escuro'),
          Obx(() => Switch(
              value: themeController.isDarkMode.value,
              onChanged: (value)=> themeController.changeTheme()),
          ),
        ],
      ),
      body: Column(
        children: [
          // Obx(() => SwitchListTile(
          //     title: Text('Modo Escuro'),
          //     value: themeController.isDarkMode.value,
          //     onChanged: (value)=> themeController.changeTheme()),
          // ),
        ],
      ),
    );
  }
}
