import 'package:bloc/bloc.dart';

//สำหรับ Debug ค่า state ที่เปลี่ยนแปลงเฉยๆ
class AppBlocObserver extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    print("AppBlocObserver" + transition.toString());
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print(error);
    super.onError(bloc, error, stackTrace);
  }
}
