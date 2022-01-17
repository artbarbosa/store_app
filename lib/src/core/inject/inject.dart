import 'package:get_it/get_it.dart';
import 'package:store_app/src/core/repositories/repository_imp.dart';


class Inject {
  
  static initializer() {

    final getIt = GetIt.I;

    getIt.registerLazySingleton<RepositoryImp>(() => RepositoryImp(dio: getIt()));

  }
}
