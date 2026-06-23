import 'package:flutter/material.dart';

void main() {
  runApp(const CafeApp());
}

class CafeApp extends StatelessWidget {
  const CafeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CafeHomePage(),
    );
  }
}

class CafeHomePage extends StatelessWidget {
  const CafeHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Кафе Студент"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text("Меню:",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            const Text("Кофе - 100р", style: TextStyle(fontSize: 18)),
            const Text("Сэндвич - 150р", style: TextStyle(fontSize: 18)),
            const Text("Пирожок - 50р", style: TextStyle(fontSize: 18)),
            const SizedBox(height: 30),
            const Divider(),
            const SizedBox(height: 10),
            const Text("Акция: Скидка 20% после 15:00!",
                style: TextStyle(fontStyle: FontStyle.italic, color: Colors.red)),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const AlertDialog(
                    content: Text("Вы оформили заказ!"),
                  ),
                );
              },
              child: const Text("Заказать"),
            ),
          ],
        ),
      ),
    );
  }
}
