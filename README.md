OpenAlt conference
==================

See (openalt.eu)[OpenAlt] .

Steps for updating the webpage
------------------------------

1. Check for new external resources and put them to `config.dao` (*note that internal resources can't be managed without changing the source code*).

    Don't forget about `conf.base_uri`.

1. Update `feed_rss.dao`.

1. Update `translations.dao`.

1. Update the `participants.dao` database.

1. Run `dao main.dao` to generate everything (HTML pages, RSS feeds, etc.)

1. Fix the warnings after running the generation (usually, there are missing translations).

1. Re-run `dao main.dao`.

1. Copy all directories and the file `style.css` to a web server.

1. Point the web server to one of `en/home.html` or `cs/home.html` or ... as default.
