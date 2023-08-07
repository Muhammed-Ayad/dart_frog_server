import 'package:dart_frog/dart_frog.dart';
import 'package:first_backend/models/user.dart';
/*
Response onRequest(RequestContext context) {
  final request = context.request;
  final uri = request.uri;
  final method = request.method;
  final queryParameters = uri.queryParameters;
  final name = queryParameters['name'];
  final age = queryParameters['age'];

  return Response(
    body: ' Uri :  $uri \n Method :  $method \n Name :$name \n Age :$age',
  );
}
*/

/*
Future<Response> onRequest(RequestContext context) async {
  // final request = context.request;

  // final body = await request.json();
  final newBody = {'name': 'Mohamed', 'age': 25};

  const user = User(age: 25, name: 'Ahmed');
  return Response.json(
    body: [newBody, user.toJson()],
  );
}
*/

Future<Response> onRequest(RequestContext context) async {
  final users = context.read<List<User>>();

  return Response.json(body: users);
}
