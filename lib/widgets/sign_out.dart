import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Реєстрація'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 24.0),

              // Заголовок форми
              const Text(
                "Створити твій акаунт",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24.0),

              // Поле для вводу імені
              TextField(
                decoration: InputDecoration(
                  labelText: 'Повне імя',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16.0),

              // Поле для вводу email
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Емейл',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16.0),

              // Поле для вводу пароля
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Пароль',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16.0),

              // Поле для підтвердження пароля
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Підтвердити пароль',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 24.0),

              // Кнопка реєстрації
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Логіка для реєстрації
                    showDialog(
                      context: context,
                      builder: (BuildContext ctx) {
                        return const AlertDialog(
                          title: Text('Успіх'),
                          content: Text("Акаунт створено успішно"),
                        );
                      },
                    );
                  },
                  child: const Text("Реєструватись"),
                ),
              ),

              const SizedBox(height: 16.0),

              // Кнопка для переходу на екран входу
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Готові отримати акаунт?"),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context); // Повернення на екран авторизації
                    },
                    child: const Text("Ввійти"),
                  ),
                ],
              ),
              const SizedBox(height: 24.0),
            ],
          ),
        ),
      ),
    );
  }
}
