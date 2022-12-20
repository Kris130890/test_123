import 'package:elinext_test_task/data/api/service/base/api_base_service.dart';

abstract class ApiService extends ApiBaseService {}

class ApiServiceImpl extends ApiBaseServiceImp implements ApiService {
  ApiServiceImpl(dio) : super(dio);
}
