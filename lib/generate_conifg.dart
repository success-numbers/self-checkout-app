import 'package:encrypt/encrypt.dart';

main() async {
  final plainText = '{"COGNITO_USER_POOL_ID":"ap-south-1_qeM80256M","COGNITO_CLIENT_ID":"2n11teh1esko2afpfi0reed2qu","REST_API_CLIENT":"https://to2migv2x9.execute-api.ap-south-1.amazonaws.com/prod","IMAGE_KIT_PUBLIC_KEY":"public_Meql/vuDgEH948bofreYb2IpHCc=","SYNC_INTERVAL":"300000","TRANSLATION":"https://snpos-dev.s3.ap-south-1.amazonaws.com/config/1008/translation"}';
  final key = Key.fromUtf8('pkqmuynchgpovpnuugaljfwuaapprqqe');
  final iv = IV.fromUtf8("Snumbers@2023");

  final encrypter = Encrypter(AES(key));
  final encrypted = encrypter.encrypt(plainText, iv: iv);
  print(encrypted.base64);
}

// IGseBD2BV2Vpt714p3H6x/ikRYvJxLd3mygX07LtPdrbufbSfjSYnZ210RIzjbIWWnIhvWljNLyrTTCA4cQQPA==
// IGseBD2BV2Vpt714p3H6x/ikRYvJxLd3mygX07LtPdrbufbSfjSYnZ210RIzjbIWWnIhvWljNLyrTTCA4cQQPA==
// 2S7X4gyK93lAcyedlaMXiYPRCRxDA7aM/mgatwO/zwUcGmnr9rL6ldeg3v/uH9Wp8xxn8vAWfkkQxzthFtDE9SeQ03ZcqJSYu5zw4kYbgjyNVy5XX4iziFw2ihflUiekmbuaTk5hQI1zhiR4mJrm/1jhdtRc9Hm3kKXn9WR9aNl+ZmGt39RT0IICrwvKYqUYbUl0X6xorZ6HFpmbGVwEUl2YISpB/0y4nymW3ffUvol14lrcjpFsGRVOqAw7eTIquaTSnb8VFTRGaPCMmxyNh8KX92OlDP/UFv6IOnVUBhDCsqDrMOs6cwVFqJc0n4yHAVOoCtyp6uD+uTRPizjRODq7vAJESx75kYMSkIS0ULjuTv2xWmSTQ6aeuOaUN7K+X5jGtx/u86bOTo2TU6SrNOHGzU0W7j8ahRx8+YDN/wCyeuWjsQ73VnYudzX2dHRneuZ6mtRJcdvavq9x5mk0vQ==