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

import '../../modules/settings/services/settings_storage.dart' as _i6;
import '../api/local/api_cache_manager.dart' as _i5;
import '../api/local/hive_manager.dart' as _i4;
import '../api/remote/base_api_impl.dart' as _i8;
import '../core.dart' as _i7;
import 'register_module.dart' as _i9;

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
    gh.lazySingleton<_i6.SettingsStorage>(() => _i6.SettingsStorage());
    await gh.singletonAsync<_i7.BaseApi>(
      () {
        final i = _i8.BaseApiImpl(
          gh<_i3.Dio>(),
          gh<_i7.ApiCacheManager>(),
        );
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    return this;
  }
}

class _$RegisterModule extends _i9.RegisterModule {}
