import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:git_test/domain/l10n/l10n.dart';
import 'package:git_test/domain/services/settings_service.dart';
import 'package:git_test/ui/resurses/colors.dart';
import 'package:git_test/ui/resurses/icons.dart';
import 'package:git_test/ui/resurses/text.dart';
import 'package:git_test/ui/screens/settings/modal/language_modal.dart';
import 'package:git_test/ui/widgets/buttons/left_button.dart';
import 'package:git_test/ui/widgets/shadow_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late bool isDark = false;
  late SettingsService settingsService;

  @override
  void initState() {
    super.initState();
    settingsService = Provider.of<SettingsService>(context, listen: false);
    isDark = settingsService.isDark;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    settingsService = Provider.of<SettingsService>(context);
    isDark = settingsService.isDark;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const LeftButton(),
        title: Text(context.loc.settings),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        children: [
          ShadowCard(
            child: Row(
              children: [
                SvgPicture.asset(
                  isDark ? AppIcons.moon : AppIcons.sun,
                  width: 24,
                  height: 24,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).appBarTheme.iconTheme!.color!,
                    BlendMode.srcIn,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    context.loc.theme,
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                  child: CupertinoSwitch(
                    activeColor: AppColors.primary,
                    value: isDark,
                    onChanged: (_) => settingsService.switchTheme(),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          ShadowCard(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (_) => LanguageModal(
                  settingsService: settingsService,
                ),
              );
            },
            child: Row(
              children: [
                SvgPicture.asset(
                  AppIcons.world,
                  width: 24,
                  height: 24,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).appBarTheme.iconTheme!.color!,
                    BlendMode.srcIn,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    context.loc.language,
                    style: AppText.body,
                  ),
                ),
                Text(
                  settingsService.language.name,
                  style: AppText.body.copyWith(color: Theme.of(context).dividerColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
