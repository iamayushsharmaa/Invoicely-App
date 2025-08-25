// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InvoiceResponseAdapter extends TypeAdapter<InvoiceResponse> {
  @override
  final int typeId = 0;

  @override
  InvoiceResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return InvoiceResponse(
      id: fields[0] as String,
      clientId: fields[1] as String,
      invoiceNumber: fields[2] as String,
      invoiceDate: fields[3] as DateTime,
      dueDate: fields[4] as DateTime,
      billingFrom: fields[5] as String,
      billingTo: fields[6] as String,
      notes: fields[7] as String?,
      status: fields[8] as String,
      subTotal: fields[9] as double,
      discount: fields[10] as double,
      tax: fields[11] as double,
      totalAmount: fields[12] as double,
      logoUrl: fields[13] as String?,
      currency: fields[14] as String,
      paid: fields[15] as bool,
      paymentDate: fields[16] as DateTime?,
      items: (fields[17] as List).cast<InvoiceItemResponse>(),
    );
  }

  @override
  void write(BinaryWriter writer, InvoiceResponse obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.clientId)
      ..writeByte(2)
      ..write(obj.invoiceNumber)
      ..writeByte(3)
      ..write(obj.invoiceDate)
      ..writeByte(4)
      ..write(obj.dueDate)
      ..writeByte(5)
      ..write(obj.billingFrom)
      ..writeByte(6)
      ..write(obj.billingTo)
      ..writeByte(7)
      ..write(obj.notes)
      ..writeByte(8)
      ..write(obj.status)
      ..writeByte(9)
      ..write(obj.subTotal)
      ..writeByte(10)
      ..write(obj.discount)
      ..writeByte(11)
      ..write(obj.tax)
      ..writeByte(12)
      ..write(obj.totalAmount)
      ..writeByte(13)
      ..write(obj.logoUrl)
      ..writeByte(14)
      ..write(obj.currency)
      ..writeByte(15)
      ..write(obj.paid)
      ..writeByte(16)
      ..write(obj.paymentDate)
      ..writeByte(17)
      ..write(obj.items);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InvoiceResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
