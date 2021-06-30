import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'my_cubit_state.dart';
part 'my_cubit_cubit.freezed.dart';

@injectable
class MyCubitCubit extends Cubit<MyCubitState> {
  MyCubitCubit() : super(const MyCubitState.ready());

  void init() async {
    emit(const MyCubitState.ready());
  }

}
