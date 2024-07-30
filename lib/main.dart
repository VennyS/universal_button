import 'package:flutter/material.dart';
import 'package:universal_button/universal_button.dart';

// Основное приложение
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text(
          'Универсальная кнопка с картинкой',
          style: TextStyle(
              fontFamily: "Roboto",
              fontWeight: FontWeight.w500,
              letterSpacing: -1),
        )),
        body: SliderWithCards(),
      ),
    );
  }
}

class SliderWithCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        UniversalButton(
            id: 12,
            title: "Заголовок, максимум 2 строк",
            desc: "Описание краткое, максимум 3-4 строчки",
            state: UniversalButtonState.skeleton,
            onPressed: () => print("Skeleton click")),
        const SizedBox(
          height: 25,
        ),
        UniversalButton(
            id: 12,
            title: "Заголовок, максимум 2 строк",
            desc: "Описание краткое, максимум 3-4 строчки",
            state: UniversalButtonState.active,
            onPressed: () => print("Active click")),
        const SizedBox(
          height: 25,
        ),
        UniversalButton(
            id: 12,
            title: "Заголовок, максимум 2 строк",
            desc: "Описание краткое, максимум 3-4 строчки",
            state: UniversalButtonState.highlight,
            onPressed: () => print("Highlight click")),
        const SizedBox(
          height: 25,
        ),
      ],
    ));
  }
}
