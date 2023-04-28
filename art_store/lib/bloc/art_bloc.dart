import 'dart:developer';

import 'package:art_store/Models/Products.dart';
import 'package:art_store/bloc/art_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

import '../services/api_service.dart';

part 'art_event.dart';

class ArtBloc extends Bloc<ArtEvent, ArtState> {
  List history = [];
  dynamic _service = Service();
  ArtBloc() : super(ArtLoadingState()) {
    on<GetDataButtonPressed>((event, emit) async {
      emit(ArtLoadingState());
      final activity = await product_api().fetchActivity();
      emit(ArtSuccessState(activity!, _service.read_item()));
    });
    on<HistoryEvent>((event, emit) =>
        {history.add(event.data), _service.save_item(event.data)});
  }
}
