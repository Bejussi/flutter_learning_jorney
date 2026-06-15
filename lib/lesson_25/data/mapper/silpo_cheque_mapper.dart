import 'package:flutter_learning_jorney/lesson_25/data/dto/silpo_cheque_dto.dart';
import 'package:flutter_learning_jorney/lesson_25/domain/entity/silpo_cheque_entity.dart';

extension SilpoChequeMapper on SilpoChequeDto {
  SilpoChequeEntity toEntity() {
    return SilpoChequeEntity(
      chequeId: chequeHeader?.chequeId ?? 0,
      totalAmount: chequeHeader?.sumReg ?? 0,
      items: chequeLines?.map((line) => line.lagerNameUa ?? '').toList() ?? [],
      prediction: chPrediction ?? '',
    );
  }
}
