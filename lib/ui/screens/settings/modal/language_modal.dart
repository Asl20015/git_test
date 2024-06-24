import 'package:flutter/material.dart';
import 'package:git_test/domain/di/get_it_services.dart';
import 'package:git_test/domain/l10n/l10n.dart';
import 'package:git_test/domain/services/settings_service.dart';
import 'package:git_test/ui/resurses/colors.dart';
import 'package:git_test/ui/resurses/text.dart';
import 'package:git_test/ui/widgets/modals/app_modal.dart';

class LanguageModal extends StatelessWidget {
  final SettingsService settingsService;

  const LanguageModal({
    super.key,
    required this.settingsService,
  });

  @override
  Widget build(BuildContext context) {
    return AppModal(
      title: context.loc.chooseLanguage,
      content: Column(
        children: [
          for (var language in L10n.languages) ...[
            GestureDetector(
              onTap: () {
                settingsService.switchLanguage(language);
                getItService.navigatorService.onPop();
              },
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: settingsService.language.name == language.name
                        ? AppColors.primary
                        : Colors.transparent,
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Text(
                  language.name,
                  style: AppText.body,
                ),
              ),
            ),
            const SizedBox(height: 12),
          ],
        ],
      ),
    );
  }
}
