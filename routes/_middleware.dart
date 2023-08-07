import 'package:dart_frog/dart_frog.dart';

import '../providers/user_provider.dart';

Handler middleware(Handler handler) {
  return handler.use(
    usersProvider(handler),
  );
}
