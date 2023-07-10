import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../core/error/failures.dart';
import '../repository/settings_repository.dart';

@singleton
class FileImportUseCase {
  FileImportUseCase(this.settingsRepository);

  final SettingsRepository settingsRepository;

  Future<Either<Failure, bool>> call() => settingsRepository.importFileToJSON();
}
