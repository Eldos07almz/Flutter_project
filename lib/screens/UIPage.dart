import 'package:flutter/material.dart';

class UIPage extends StatelessWidget {
  const UIPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AllInOne UI Kit'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Grid buttons
            Padding(
              padding: const EdgeInsets.all(12.0), // Общий отступ
              child: GridView.count(
                crossAxisCount: 2, // Количество колонок
                crossAxisSpacing: 10, // Расстояние между колонками
                mainAxisSpacing: 10, // Расстояние между строками
                childAspectRatio: 1.2, // Соотношение ширины и высоты боксов
                shrinkWrap: true,
                physics:
                    const NeverScrollableScrollPhysics(), // Отключение скроллинга внутри GridView
                children: [
                  _buildGridButton(
                      Icons.phone_android, "Default Theme", Colors.teal),
                  _buildGridButton(Icons.apps, "Full Apps", Colors.purple),
                  _buildGridButton(Icons.language, "Integration", Colors.green),
                  _buildGridButton(Icons.dashboard, "Dashboard", Colors.orange),
                ],
              ),
            ),
            // Themes List
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _buildListTile(Icons.folder, "File Manager", "Theme 1 Screens",
                    Colors.orange),
                _buildListTile(Icons.directions_run, "Exercise Tips",
                    "Theme 2 Screens", Colors.green),
                _buildListTile(Icons.fastfood, "Food Recipe", "Theme 3 Screens",
                    Colors.blue),
                _buildListTile(Icons.fitness_center, "Gym", "Theme 4 Screens",
                    Colors.teal),
                _buildListTile(Icons.account_balance_wallet, "e-wallet",
                    "Theme 5 Screens", Colors.orange),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridButton(IconData icon, String title, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8), // Радиус углов
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: color,
              size: 28, // Уменьшенный размер иконки
            ),
            const SizedBox(height: 6), // Отступ между иконкой и текстом
            Text(
              title,
              style: const TextStyle(
                fontSize: 12, // Уменьшенный размер текста
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile(
      IconData icon, String title, String subtitle, Color color) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: color.withOpacity(0.2),
        child: Icon(icon, color: color),
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 14), // Уменьшенный размер текста
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(fontSize: 12), // Уменьшенный размер подзаголовка
      ),
      trailing: const Icon(Icons.arrow_forward_ios,
          size: 14), // Уменьшенный размер стрелки
      onTap: () {},
    );
  }
}
