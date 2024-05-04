import 'package:shared_preferences/shared_preferences.dart';

class SessionManager{
  int? value;
  String? idUser, userName, nama, nobp, nohp, email, alamat;
  //simpan sesi
  Future<void> saveSession(int val, String id, String username, String nama, String nobp, String nohp, String email, String alamat) async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setInt("value", val);
    await sharedPreferences.setString("id", id);
    await sharedPreferences.setString("username", username);
    await sharedPreferences.setString("nama", nama);
    await sharedPreferences.setString("nobp", nobp);
    await sharedPreferences.setString("nohp", nohp);
    await sharedPreferences.setString("email", email);
    await sharedPreferences.setString("alamat", alamat);
  }

  //get session
  Future getSession() async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    value = sharedPreferences.getInt("value");
    idUser = sharedPreferences.getString("id");
    userName = sharedPreferences.getString("username");
    nama = sharedPreferences.getString("nama");
    nobp = sharedPreferences.getString("nobp");
    nohp = sharedPreferences.getString("nohp");
    email = sharedPreferences.getString("email");
    alamat = sharedPreferences.getString("alamat");
    return value;
  }

  //clear session --> untuk logout
  Future clearSession() async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.clear();
  }
}

SessionManager session = SessionManager();