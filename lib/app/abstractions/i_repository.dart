import 'i_provider.dart';

abstract class IRepository<T> {
  IProvider<T> get provider;
}
