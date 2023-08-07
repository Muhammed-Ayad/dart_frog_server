import 'package:dart_frog/dart_frog.dart';
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

Future<Response> onRequest(RequestContext context) async {
  final request = context.request;

  final body = await request.json();
  
  return Response.json(
    body: body,
  );
}
