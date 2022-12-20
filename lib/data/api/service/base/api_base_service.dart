import 'package:dio/dio.dart';

abstract class ApiBaseService {
  Future<Response<T>> get<T>(
    String path, {
    bool isResponseBytes,
    Map<String, dynamic> queryParameters,
    Options options,
    CancelToken cancelToken,
    ProgressCallback onReceiveProgress,
  });
}

abstract class ApiBaseServiceImp implements ApiBaseService {
  final Dio _dio;

  ApiBaseServiceImp(this._dio);

  @override
  Future<Response<T>> get<T>(
    String path, {
    bool isResponseBytes = false,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) {
    final requestOptions = isResponseBytes
        ? Options(
            responseType: ResponseType.bytes,
            followRedirects: false,
          )
        : options;

    return _dio.get(
      path,
      queryParameters: queryParameters,
      options: requestOptions,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
  }
}
