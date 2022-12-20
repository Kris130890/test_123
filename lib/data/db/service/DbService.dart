import 'base/db_base_service.dart';

abstract class DbService extends DbBaseService {}

class DbServiceImpl extends DbBaseServiceImp implements DbService {
  DbServiceImpl(db) : super(db);
}
