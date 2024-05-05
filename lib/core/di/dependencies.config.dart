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

import '../../modules/recipes/recipes.dart' as _i10;
import '../../modules/recipes/services/recipes_service_impl.dart' as _i11;
import '../../modules/settings/services/settings_storage.dart' as _i7;
import '../../routes/app_pages.dart' as _i5;
import '../api/local/api_cache_manager.dart' as _i6;
import '../api/local/hive_manager.dart' as _i4;
import '../api/remote/base_api_impl.dart' as _i9;
import '../core.dart' as _i8;
import 'register_module.dart' as _i12;

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
    gh.singleton<_i5.AppPages>(() => _i5.AppPages());
    gh.lazySingleton<_i6.ApiCacheManager>(() => _i6.ApiCacheManager());
    gh.lazySingleton<_i7.SettingsStorage>(() => _i7.SettingsStorage());
    await gh.singletonAsync<_i8.BaseApi>(
      () {
        final i = _i9.BaseApiImpl(
          gh<_i3.Dio>(),
          gh<_i8.ApiCacheManager>(),
        );
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    gh.lazySingleton<_i10.RecipesService>(
        () => _i11.RecipesServiceImpl(gh<_i8.BaseApi>()));
    return this;
  }
}

class _$RegisterModule extends _i12.RegisterModule {}
