import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:threebee_challenge/shared_export.dart';

part 'apiaries_state.dart';
part 'apiaries_cubit.freezed.dart';

class ApiariesCubit extends Cubit<ApiariesState> {
  ApiariesCubit() : super(const ApiariesState.loading()) {
    fetchApiaries();
  }

  void fetchApiaries() async {
    emit(const ApiariesState.loading());
    try {
      final apiaries = await apiariesRepository.getApiaries();
      emit(ApiariesState.loaded(apiaries));
    } catch (e) {
      emit(const ApiariesState.error('Cannot load apiaries'));
    }
  }
}
