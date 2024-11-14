import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Відновити пароль'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "Введіть свій емейл для відновлення паролю.",
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 24.0),

            // Поле для вводу email
            TextField(
              decoration: InputDecoration(
                labelText: 'Емейл',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24.0),

            // Кнопка для відправлення запиту на скидання паролю
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        // Логіка для надсилання листа з посиланням на скидання паролю
                        showDialog(
                          context: context,
                          builder: (BuildContext ctx) {
                            return const AlertDialog(
                              title: Text('Успішно'),
                              content: Text("Лінк для відновлення паролю вже на твоїй пошті."),
                            );
                          },
                        );
                      },
                      child: const Text("Відправити лінкg"),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
