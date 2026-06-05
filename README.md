
# Setup

1. Open this Godot project in Godot
2. Go to Project -> Project Settings -> Localization ->  Template Generation
3. The files you add here will have translation strings extracted. With `EditorTranslationParserPlugin`, rust files will also work here in addition to scene files and gd files. The currently added rust file here does nothing currently.
4. Click generate to extract the translation strings and save them to `locales/messages.pot`
5. Go to your terminal and run update-locales.sh to update the Japanese and French locales against the pot template. (Change the text in a label or the gd script file if you want to see how files update.)
6. Use a translation tool like PO edit to update the translations.
7. Go to Project -> Project Settings -> Localization ->  Translations
8. Verify that the ja.po and fr.po files are added. The translations will be loaded automatically by Godot.
9. You can test the game by running godot with the language flag in the CLI.

Run the game in Japanese:
```sh
godot --language ja
```

Run the game in French
```sh
godot --language fr
```


![Japanese](/docs/japanese.png)
![French](/docs/french.png)


## References

https://docs.godotengine.org/en/stable/tutorials/i18n/localization_using_gettext.html

https://docs.godotengine.org/en/stable/tutorials/i18n/internationalizing_games.html#testing-translations
