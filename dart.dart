import 'package:flutter/material.dart';

void main() {
  runApp(const CafeApp());
}

class CafeApp extends StatelessWidget {
  const CafeApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Кафе Студент"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text("Меню:", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              
              // Простой вывод элементов без циклов
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
                onPressed: () {},
                child: const Text("Заказать"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
