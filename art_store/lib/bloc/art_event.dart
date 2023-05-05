part of 'art_bloc.dart';

abstract class ArtEvent {
  const ArtEvent();
}

class GetDataButtonPressed extends ArtEvent {
  const GetDataButtonPressed();

  @override
  List<Object> get props => [];
}

class HistoryEvent extends ArtEvent {
  final Products product;
  const HistoryEvent({required this.product});

  @override
  List<Object> get props => [];

  get data => product;
}
