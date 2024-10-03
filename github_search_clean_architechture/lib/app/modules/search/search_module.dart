import 'package:flutter_modular/flutter_modular.dart';
import 'package:github_search_clean_architechture/app/modules/search/domain/repositories/profile_repository_interface.dart';
import 'package:github_search_clean_architechture/app/modules/search/domain/usecases/get_profiles.dart';
import 'package:github_search_clean_architechture/app/modules/search/external/datasources/profiles_datasource.dart';
import 'package:github_search_clean_architechture/app/modules/search/infra/datasources/profile_datasource_interface.dart';
import 'package:github_search_clean_architechture/app/modules/search/infra/repositories/profile_repository.dart';
import 'package:github_search_clean_architechture/app/modules/search/presentation/cubit/profile_cubit.dart';
import 'package:github_search_clean_architechture/app/modules/search/presentation/pages/profiles_page.dart';

class SearchModule extends Module {
  @override
  void binds(i) {
    //datasource
    i.addLazySingleton<IProfileDatasource>(ProfileDatasource.new);
    //repository
    i.addLazySingleton<IProfileRepository>(ProfileRepository.new);
    //usecase
    i.add<IGetProfilesUsecase>(GetProfilesUsecase.new);
    //cubit
    i.add(ProfileCubit.new);
  }

  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) => ProfilesPage(
        profileCubit: Modular.get<ProfileCubit>(),
      ),
    );
  }
}
