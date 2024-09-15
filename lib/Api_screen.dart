
import 'package:dio/dio.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled1/success_stories_model.dart';

class ApiProvider
{
  SuccessStoriesModel? storiesModel;
  String baseUrl="http://159.89.4.181:2000/api/v1";
  getSuccessStories() async
  {
    Response response =
    await Dio().get("$baseUrl/success-stories");
    print("***********");
    print(response.data);
    print("***********");

    storiesModel=SuccessStoriesModel.fromJson(response.data);
    print(storiesModel?.model![0].title);
    return storiesModel;

  }

  userLoginEmail({required String email ,required String password }) async {
    try {
      FormData formData = FormData.fromMap({
        "email": email,
        "password": password,

      },
      );
      Response response =
      await Dio().post("$baseUrl/auth/email/signin", data: formData);

      //print(response.data);
      //print(response.data["model"]["tokens"]["accessToken"]);
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('token',
          response.data["model"]["tokens"]["accessToken"]);
      String? token =prefs.getString("token");
      print("accessToken: => $token");
    }
    catch (e) {
      if (e is DioException) {
        print(e.response?.data);
      }
    }
  }
}