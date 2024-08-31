import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';


class DioFactory {
  // Private constructor to prevent instantiation from outside the class.
  DioFactory._();

  // Singleton instance of Dio and CookieJar.
  static Dio? dio;
  static CookieJar? cookieJar;

  // Method to get or initialize the Dio instance.
  static Dio getDio() {
    if (dio == null) {
      // Initialize Dio instance if it's null.
      dio = Dio();
      addDioHeaders(); // Add default headers to Dio.

      // Initialize and add CookieManager to handle cookies.
      cookieJar = CookieJar();
      dio!.interceptors.add(CookieManager(cookieJar!));


      // Disable automatic handling of redirects.
      dio!.options.followRedirects = false;
      return dio!;
    } else {
      // Return the existing Dio instance if already initialized.
      return dio!;
    }
  }

  // Method to add default headers to Dio.
  static void addDioHeaders() async {
    dio?.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
  }

}
