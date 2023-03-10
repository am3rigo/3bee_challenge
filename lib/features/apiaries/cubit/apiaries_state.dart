part of 'apiaries_cubit.dart';

@freezed
class ApiariesState with _$ApiariesState {
  const factory ApiariesState.loading() = _Initial;
  const factory ApiariesState.error(String messageError) = _Error;
  const factory ApiariesState.loaded(
    List<ApiaryModel> apiaries,
  ) = _Loaded;
}
