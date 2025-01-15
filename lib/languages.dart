import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {'message': 'What is your name', 'name': 'Flutter'},
        'hi_IND': {'message': 'आपका नाम क्या है?', 'name': 'फ्लटर '},
      };
}
