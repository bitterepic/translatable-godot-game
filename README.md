https://docs.godotengine.org/en/stable/tutorials/i18n/localization_using_gettext.html

https://docs.godotengine.org/en/stable/tutorials/i18n/internationalizing_games.html#testing-translations

# Setup

1. Go to Project -> Project Settings -> Localization ->  Template Generation
2. The files you add here will have translation strings extracted. With EditorTranslationParserPlugin, rust files will also work here in addition to scene files and gd files.
3. Click generate to save to locales/messages.pot
4. Go to your terminal and run update-locales.sh to update the Japanese and French locales against the pot template.
5. Ideally use a translation tool like PO edit to update the translations with anything new.
6. Go to Project -> Project Settings -> Localization ->  Translations
7. Verify that the ja.po and fr.po files are added. The translations will be loaded automatically by Godot.
8. You can test the game by running godot with the language flag in the CLI.

Run the game in Japanese:
```sh
godot --language ja
```

Run the game in French
```sh
godot --language fr
```
