import 'package:dart_frog/dart_frog.dart';

Response onRequest(RequestContext context, String postId, String username) {
  
  return Response(body: 'Post Id " $postId , UserName : $username');
}
