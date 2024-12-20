import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/CarsCatalogPage.dart'; // Импортируем страницу каталога машин

class HomePage extends StatelessWidget {
  static const String route = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Главная страница",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 30, 40, 50),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      backgroundColor: const Color.fromARGB(255, 28, 35, 45),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 128, 64, 64),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Text(
                    "Сегодня",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 240, 230, 200),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),
              // Добавляем кнопку для перехода в каталог машин
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 100, 160, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          CarsCatalogPage(), // Переход на страницу каталога машин
                    ),
                  );
                },
                child: const Text(
                  "Перейти к каталогу машин",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
              // Остальная разметка с контейнерами
              Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 50, 60, 70),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 100, 140, 180),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: double.infinity,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 100, 160, 100),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: double.infinity,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 180, 80, 80),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: double.infinity,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
