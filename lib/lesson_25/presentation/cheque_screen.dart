import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learning_jorney/lesson_25/data/dto/silpo_cheque_dto.dart';
import 'package:flutter_learning_jorney/lesson_25/data/mapper/silpo_cheque_mapper.dart';
import 'package:flutter_learning_jorney/lesson_25/domain/entity/silpo_cheque_entity.dart';
import 'package:flutter_learning_jorney/theme/app_text_styles.dart';

class ChequeScreen extends StatefulWidget {
  const ChequeScreen({super.key});

  @override
  State<ChequeScreen> createState() => _ChequeScreenState();
}

class _ChequeScreenState extends State<ChequeScreen> {
  SilpoChequeEntity? _silpoChequeEntity;

  @override
  void initState() {
    super.initState();
    _loadCheque();
  }

  Future<void> _loadCheque() async {
    final jsonString = await rootBundle.loadString(
      'assets/json/silpo_cheque_example.json',
    );

    final jsonMap = jsonDecode(jsonString) as Map<String, dynamic>;

    final silpoChequeDto = SilpoChequeDto.fromJson(jsonMap);

    setState(() {
      _silpoChequeEntity = silpoChequeDto.toEntity();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_silpoChequeEntity == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('REST API, JSON'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 8,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const Icon(
                    Icons.receipt_long,
                    size: 48,
                    color: Colors.deepOrangeAccent,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Cheque # ${_silpoChequeEntity?.chequeId}',
                    style: AppTextStyles.subtitle,
                  ),
                  const Divider(height: 32),
                  Text('Items', style: AppTextStyles.subtitle),
                  const SizedBox(height: 12),
                  ...?_silpoChequeEntity?.items.map(
                    (item) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.shopping_bag,
                            size: 20,
                            color: Colors.orangeAccent,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              item,
                              style: AppTextStyles.inputFieldLabel,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(height: 32),
                  Text(
                    'Total amount: ${_silpoChequeEntity?.totalAmount}',
                    style: AppTextStyles.subtitle.copyWith(
                      color: Colors.deepOrange,
                    ),
                  ),
                  const Divider(height: 32),
                  Text('Prediction', style: AppTextStyles.subtitle),
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.orange.shade50,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      '${_silpoChequeEntity?.prediction}',
                      style: AppTextStyles.inputFieldLabel,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
