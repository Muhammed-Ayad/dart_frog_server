import 'package:dart_frog/dart_frog.dart';
import 'package:first_backend/models/user.dart';

Middleware usersProvider(Handler handler) {
  return provider<List<User>>((handler) {
    return const <User>[
      User(name: 'Mohamed', age: 25),
      User(name: 'Ahmed', age: 24),
      User(name: 'amr', age: 16),
    ];
  });
}
