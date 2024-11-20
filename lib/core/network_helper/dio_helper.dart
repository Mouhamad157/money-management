import 'package:dio/dio.dart';
import 'package:money_manager/core/network_helper/end_points.dart';

String baseUrl = 'http://moneymanagementbackend-master.test/api';

class DioHelper {
  static Dio dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      headers: {
        'Accept': 'application/json',
      },
    ),
  );

  static Future<Map<String, dynamic>> login({
    required String email,
    required String password,
  }) async {
    late Response response;
    try {
      response = await dio.post(
        EndPoints.LOGIN,
        data: {'email': email, 'password': password},
      );
      return response.data;
    } on DioException catch (error) {
      print("""
      Error in API :
      message : ${error.response!.data}
      """);
      print('Data get successfully');
      return error.response!.data;
    }
  }

  static Future<Map<String, dynamic>> signup({
    required String username,
    required String email,
    required String password,
  }) async {
    late Response response;
    try {
      response = await dio.post(
        EndPoints.SIGNUP,
        data: {'email': email, 'password': password, 'name': username},
      );
      print('Data get successfully');
      return response.data;
    } on DioException catch (error) {
      print("""
      Error in API :
      message : ${error.response!.data}
      """);
      return error.response!.data;
    }
  }

  static Future<Map<String, dynamic>> myWallets() async {
    late Response response;
    try {
      response = await dio.get(EndPoints.MyWallets);
      return response.data;
    } on DioException catch (error) {
      print("""
      Error in API : 
      message : ${error.response!.data}
      """);
      return error.response!.data;
    }
  }

  static Future<Map<String, dynamic>> createGoal({required String name,
    required int payout,
    required String startDate,
    required String endDate}) async {
    late Response response;
    try {
      response = await dio.post(
          EndPoints.CreateGoal, data: {'name' : name, 'pay_out': payout,
          'start_date': startDate, 'end_date':endDate});
      return response.data;
    } on DioException catch (error) {
      print("""
      Error in API : 
      message : ${error.response!.data}
      """);
      return error.response!.data;
    }
  }
}
