import "dart:convert";
import "user.dart";

void main(List<String> args) {
  const String jsonString = """
{
  "name": "John",
  "email": "john@example.com",
  "registration_date_milis": 123456789
}
""";

  Map<String, dynamic> userMap = jsonDecode(jsonString);
  var user = User.fromJson(userMap);

  print("Halo, ${user.name}");
  print("Email verification link sent to : ${user.email}");

  String json = jsonEncode(user);

  print("String json: ${json}");
}
