import 'package:google_sign_in/google_sign_in.dart';

import '../../abstract/service/a_service.dart';


class GoogleSignInService extends AService{

  static const List<String> scopes = <String>[
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ];

  GoogleSignIn _googleSignIn = GoogleSignIn(
    // Optional clientId
    clientId: '368004415090-4cjn3fiq447a715qsf88fcjs9306ju5p.apps.googleusercontent.com',
    scopes: scopes,
  );



  @override
  start() {


  }


  Future<GoogleSignInAccount?> signIn() async {
    try {
      return await _googleSignIn.signInSilently();
    } catch (error) {
      print(error);
    }
  }



}