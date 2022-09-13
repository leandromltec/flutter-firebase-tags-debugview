import 'injector_interface.dart';
import 'package:get_it/get_it.dart';

class Injector implements InjectorInterface {
  static Injector? _instance;
  GetIt? _getIt;

  static Injector get instance {
    _instance ??= Injector._();
    return _instance!;
  }

  Injector._() {
    _getIt = GetIt.instance;
  }

  @override
  void registerLazySingleton<T extends Object>(T instance) =>
      _getIt!.registerLazySingleton<T>(() => instance);

  @override
  void registerSingleton<T extends Object>(T instance) =>
      _getIt!.registerSingleton<T>(instance);

  @override
  T get<T extends Object>() => _getIt!.get<T>();

  @override
  void unregister<T extends Object>() => _getIt!.unregister<T>();
}
