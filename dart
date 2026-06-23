import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<CafeState>(
      create: (context) => CafeState(),
      builder: (context, child) => const CafeApp(),
    ),
  );
}

class CafeState extends ChangeNotifier {
  final List<String> menu = ['Кофе - 100р', 'Сэндвич - 150р', 'Пирожок - 50р'];
}

class CafeApp extends StatelessWidget {
  const CafeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Кафе Студент"),
          centerTitle: true,
        ),
        body: const Center(
          child: MenuContent(),
        ),
      ),
    );
  }
}

class MenuContent extends StatelessWidget {
  const MenuContent({super.key});

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<CafeState>(context);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Меню:",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ...state.menu.map<Widget>(
            (item) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text(
                item,
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Divider(),
          const SizedBox(height: 10),
          const Text(
            "Акция: Скидка 20% после 15:00!",
            style: TextStyle(fontStyle: FontStyle.italic, color: Colors.red),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            ),
            child: const Text("Заказать"),
          ),
        ],
      ),
    );
  }
}
