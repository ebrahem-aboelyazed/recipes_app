import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:recipes_app/core/core.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
)
Future<void> configureDependencies() => getIt.init();
