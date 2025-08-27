import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:invoice/features/invoice/domain/entities/invoice_enitity.dart';
import 'package:invoice/features/invoice/domain/entities/invoice_request_entity.dart';
import 'package:meta/meta.dart';

part 'invoice_event.dart';
part 'invoice_state.dart';

class InvoiceBloc extends Bloc<InvoiceEvent, InvoiceState> {
  InvoiceBloc() : super(InvoiceInitial()) {
    on<InvoiceEvent>((event, emit) {

    });
  }
}
