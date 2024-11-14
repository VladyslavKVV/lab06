import 'package:flutter/material.dart';
import './reset_pas.dart';
import './sign_out.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/1024px-Google-flutter-logo.svg.png",
                width: 200,
              ),
            ),
            const SizedBox(height: 48.0),

            // Поле для вводу логіна
            TextField(
              decoration: InputDecoration(
                labelText: 'Залогінитись',
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

            // Кнопка для скидання паролю
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Переходить на екран скидання паролю
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResetPasswordScreen()),
                  );
                },
                child: const Text("Забув пароль?"),
              ),
            ),

            // Кнопка для реєстрації
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupScreen()),
                  );
                },
                child: const Text("Реєстрація"),
              ),
            ),

            const SizedBox(height: 24.0),  // додано пропущену кому

            // Кнопка для авторизації
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        // Логіка авторизації
                        showDialog(
                          context: context,
                          builder: (BuildContext ctx) {
                            return const AlertDialog(
                              title: Text('Повідомлення'),
                              content: Text("Потрібна реалізація"),
                            );
                          },
                        );
                      },
                      child: const Text("Логін"),
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
              ],
            ),
            const SizedBox(height: 24.0),
          ],
        ),
      ),
    );
  }
}
