import 'package:flutter_test/flutter_test.dart';
import 'package:monoid_flutter_lib/features/http/http_post_command.dart';

import 'package:monoid_flutter_lib/monoid_flutter_lib.dart';

void main() async {
  test('adds one to input values', () async {
    var post = await HttpPostCommand().call();
    print(post.body);
  });
}
