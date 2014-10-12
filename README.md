OpenAlt conference
==================

See (openalt.eu)[OpenAlt] .

Steps for updating the webpage
------------------------------

#. Check for new external resources and put them to `config.dao` (*note that internal resources can't be managed without changing the source code*).

    Don't forget about `conf.base_uri`.

#. Update `feed_rss.dao`.

#. Update `translations.dao`.

#. Update the `participants.dao` database.

#. Run `dao main.dao` to generate everything (HTML pages, RSS feeds, etc.)

#. Fix the warnings after running the generation (usually, there are missing translations).

#. Re-run `dao main.dao`.

#. Copy all directories and the file `style.css` to a web server.

#. Point the web server to one of `en/home.html` or `cs/home.html` or ... as default.
