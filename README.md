# OpenAlt conference

See https://openalt.eu .

## Steps for updating the webpage

1. Check for new *external resources* and put them to `config.dao`. Other resources (*internal resources*) can't be changed without changing the source code.

    Don't forget about `conf.uri.prefix`.

1. Update `translations.dao`.

1. Update the `participants.dao` database.

1. Run `dao main.dao` to generate IARs (Individually Addressable Resources - e.g. an HTML file or an RSS feed) and assemble the web.

    1. Fix the warnings (usually, there are missing translations).

    1. Re-run `dao main.dao`.

1. `scp */ *.css *.php *.js user@openalt.eu:/directory/with/the/web/`

1. Point the web server to `en/home.html` (or use `header('location:...')` from php).
