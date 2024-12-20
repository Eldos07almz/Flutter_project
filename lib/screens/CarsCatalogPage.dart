import 'package:flutter/material.dart';
import 'car.dart';

class CarsCatalogPage extends StatefulWidget {
  const CarsCatalogPage({super.key});

  @override
  _CarsCatalogPageState createState() => _CarsCatalogPageState();
}

class _CarsCatalogPageState extends State<CarsCatalogPage> {
  bool isKm = true;

  @override
  Widget build(BuildContext context) {
    List<Car> cars = [
      Car(name: "Toyota Camry", mileage: 12000, maxSpeed: 220),
      Car(name: "Honda Civic", mileage: 15000, maxSpeed: 200),
      Car(name: "Ford Mustang", mileage: 8000, maxSpeed: 250),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Каталог машин'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 219, 221, 224),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Переключить единицы:",
                  style: TextStyle(fontSize: 16),
                ),
                Switch(
                  value: isKm,
                  onChanged: (value) {
                    setState(() {
                      isKm = value;
                    });
                  },
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: cars.length,
                itemBuilder: (context, index) {
                  final car = cars[index];
                  return Card(
                    margin: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(car.name),
                      subtitle: Text(
                        'Пробег: ${isKm ? car.mileage : car.convertKmToMiles()} ${isKm ? "км" : "мили"}\n'
                        'Макс. скорость: ${isKm ? car.maxSpeed : car.convertMaxSpeedToMiles()} ${isKm ? "км/ч" : "мили/ч"}',
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
