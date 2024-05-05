// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../api/local/api_cache_manager.dart' as _i5;
import '../api/local/hive_manager.dart' as _i4;
import '../api/remote/base_api_impl.dart' as _i7;
import '../core.dart' as _i6;
import 'register_module.dart' as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.Dio>(() => registerModule.dio);
    gh.singleton<_i4.HiveManager>(() => _i4.HiveManager());
    gh.lazySingleton<_i5.ApiCacheManager>(() => _i5.ApiCacheManager());
    await gh.singletonAsync<_i6.BaseApi>(
      () {
        final i = _i7.BaseApiImpl(
          gh<_i3.Dio>(),
          gh<_i6.ApiCacheManager>(),
        );
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    return this;
  }
}

class _$RegisterModule extends _i8.RegisterModule {}
