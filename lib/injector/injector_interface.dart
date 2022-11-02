/* Desenvolvido por Leandro M. Loureiro */
/* Github - https://github.com/leandromltec */
/* Linkedin - https://www.linkedin.com/in/leandro-loureiro-dev/ */

typedef FactoryFun<T> = T Function();

abstract class InjectorInterface{
  void registerLazySingleton<T extends Object>(T instance);
  void registerSingleton<T extends Object>(T instance);
  T get<T extends Object>();
  void unregister<T extends Object>();
  }