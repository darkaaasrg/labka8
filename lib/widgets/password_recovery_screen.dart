import 'package:flutter/material.dart';

class PasswordRecoveryScreen extends StatelessWidget {
  const PasswordRecoveryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final TextEditingController loginController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Відновлення паролю'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Введіть ваш логін або email, і ми надішлемо інструкції для відновлення паролю.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(height: 24.0),

              TextField(
                controller: loginController,
                decoration: const InputDecoration(
                  labelText: 'Логін або Email',
                  prefixIcon: Icon(Icons.email_outlined),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 24.0),

              ElevatedButton(
                child: const Text('Скинути пароль'),
                onPressed: () {
                  final login = loginController.text.trim();

                  if (login.isEmpty) {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Помилка'),
                        content: const Text('Будь ласка, введіть логін або email.'),
                        actions: [
                          TextButton(
                            child: const Text('OK'),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                    );
                  } else {

                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Готово'),
                        content: Text(
                          'Інструкції для відновлення паролю надіслані на адресу: $login',
                        ),
                        actions: [
                          TextButton(
                            child: const Text('OK'),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
              const SizedBox(height: 16.0),

              TextButton(
                child: const Text('Повернутися до авторизації'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
