
# General Godot Gettext Workflow

1. Make sure you have gettext installed. Your favorite package manager likely has it.
2. Open this Godot project in Godot
3. Go to Project -> Project Settings -> Localization ->  Template Generation
![Template Generation](/docs/template-generation.png)
4. The files you add here will have translation strings extracted. With `EditorTranslationParserPlugin`, rust files will also work here in addition to scene files and gd files. The currently added rust file here does nothing currently.
5. Click generate to extract the translation strings and save them to `locales/messages.pot`. This button acts as a replacement for `xgettext` in the cli.
6. Go to your terminal and run update-locales.sh to update the Japanese and French locales against the pot template. (Change the text in a label or the gd script file if you want to see how files update.)
7. Use a translation tool like PO edit to update the translations. You can also do it with any text editor if you really prefer.
8. Go to Project -> Project Settings -> Localization ->  Translations
![Translations](/docs/translations.png)
9. Verify that the ja.po and fr.po files are added. The translations will be loaded automatically by Godot and injected into the TranlsationServer.
10. You can test the game by running godot with the language flag in the CLI.

Run the game in Japanese:
```sh
godot --language ja
```

![Japanese](/docs/japanese.png)

Run the game in French
```sh
godot --language fr
```

![French](/docs/french.png)

## Scripts

`update-locales.sh` runs `msgmerge` on the pot file and the selected po file. It will mark translations that have disappeared or changed making it easier for translators to keep track.

`init-locales.sh` will create a new po file for a language from the pot file. It will have no previous history tracking of changes.

## Summary

The traditional gettext workflow is something similar to:

1. Run `xgettext [sourcefiles] --output=locales/messages.pot to extract translatable strings from code.
2. Run `msgmerge --update --backup=none [locale].po messages.pot` To update individual po languages with a history of changes.
3. A translator resolves any marked issues or new strings in the po file.


The Godot version of this workflow is to:

1. Configure the files used for extraction
2. Use the generate button to create a pot file
2. Run `msgmerge --update --backup=none [locale].po messages.pot` To update individual po languages with a history of changes.
3. A translator resolves any marked issues or new strings in the po file.

## References

https://docs.godotengine.org/en/stable/tutorials/i18n/localization_using_gettext.html

https://docs.godotengine.org/en/stable/tutorials/i18n/internationalizing_games.html#testing-translations
