// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import '../../modules/auth/auth.dart' as _i13;
import '../../modules/auth/services/auth_service_impl.dart' as _i14;
import '../../modules/favorites/services/favorites_storage.dart' as _i10;
import '../../modules/recipes/recipes.dart' as _i15;
import '../../modules/recipes/services/recipes_service_impl.dart' as _i16;
import '../../modules/settings/services/settings_storage.dart' as _i9;
import '../../routes/app_pages.dart' as _i7;
import '../api/local/api_cache_manager.dart' as _i8;
import '../api/local/hive_manager.dart' as _i6;
import '../api/remote/base_api_impl.dart' as _i12;
import '../core.dart' as _i11;
import 'register_module.dart' as _i17;

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
    gh.factory<_i4.FirebaseAuth>(() => registerModule.firebaseAuth);
    gh.factory<_i5.GoogleSignIn>(() => registerModule.googleSignIn);
    gh.singleton<_i6.HiveManager>(() => _i6.HiveManager());
    gh.singleton<_i7.AppPages>(() => _i7.AppPages());
    gh.lazySingleton<_i8.ApiCacheManager>(() => _i8.ApiCacheManager());
    gh.lazySingleton<_i9.SettingsStorage>(() => _i9.SettingsStorage());
    gh.lazySingleton<_i10.FavoritesStorage>(() => _i10.FavoritesStorage());
    await gh.singletonAsync<_i11.BaseApi>(
      () {
        final i = _i12.BaseApiImpl(
          gh<_i3.Dio>(),
          gh<_i11.ApiCacheManager>(),
        );
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    gh.lazySingleton<_i13.AuthService>(() => _i14.AuthServiceImpl(
          gh<_i4.FirebaseAuth>(),
          gh<_i5.GoogleSignIn>(),
        ));
    gh.lazySingleton<_i15.RecipesService>(
        () => _i16.RecipesServiceImpl(gh<_i11.BaseApi>()));
    return this;
  }
}

class _$RegisterModule extends _i17.RegisterModule {}
