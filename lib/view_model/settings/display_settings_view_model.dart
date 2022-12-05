import 'package:cake_wallet/entities/balance_display_mode.dart';
import 'package:cake_wallet/entities/fiat_currency.dart';
import 'package:cake_wallet/store/settings_store.dart';
import 'package:cake_wallet/themes/theme_base.dart';
import 'package:mobx/mobx.dart';

part 'display_settings_view_model.g.dart';

class DisplaySettingsViewModel = DisplaySettingsViewModelBase with _$DisplaySettingsViewModel;

abstract class DisplaySettingsViewModelBase with Store {
  DisplaySettingsViewModelBase(
    this._settingsStore,
  );

  final SettingsStore _settingsStore;

  @computed
  FiatCurrency get fiatCurrency => _settingsStore.fiatCurrency;

  @computed
  String get languageCode => _settingsStore.languageCode;

  @computed
  BalanceDisplayMode get balanceDisplayMode => _settingsStore.balanceDisplayMode;

  @computed
  bool get shouldDisplayBalance => balanceDisplayMode == BalanceDisplayMode.displayableBalance;

  @computed
  ThemeBase get theme => _settingsStore.currentTheme;

  @action
  void setBalanceDisplayMode(BalanceDisplayMode value) => _settingsStore.balanceDisplayMode = value;

  @action
  void setShouldDisplayBalance(bool value) {
    if (value) {
      _settingsStore.balanceDisplayMode = BalanceDisplayMode.displayableBalance;
    } else {
      _settingsStore.balanceDisplayMode = BalanceDisplayMode.hiddenBalance;
    }
  }

  @action
  void onLanguageSelected(String code) {
    _settingsStore.languageCode = code;
  }

  @action
  void setTheme(ThemeBase newTheme) {
    _settingsStore.currentTheme = newTheme;
  }

  @action
  void setFiatCurrency(FiatCurrency value) => _settingsStore.fiatCurrency = value;
}