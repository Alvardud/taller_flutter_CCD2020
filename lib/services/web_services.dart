// "https://firmas-sin-fondo.herokuapp.com/firma64"
import 'package:http/http.dart' as http;

Future<String> convertPhoto(String imgb64) async {
  try {
    var response = await http.post(
        "https://firmas-sin-fondo.herokuapp.com/firma64",
        body: {'img': imgb64});
    return response.body;
  } catch (e) {
    print("Exception:" + e.toString());
  }
}
