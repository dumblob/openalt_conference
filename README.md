# OpenAlt conference web generator

See https://openalt.eu .

## Steps for updating the webpage

1. Check for new *external resources* and put them to `config.dao`. Other resources (*internal resources*) can't be changed without changing the source code.

    Don't forget about `conf.uri.prefix`.

1. Update `translations.dao`.

1. Update the `participants.dao` database.

1. Run `dao main.dao` to generate IARs (Individually Addressable Resources - e.g. an HTML file or an RSS feed) and assemble the web.

    1. Fix the warnings (usually, there are missing translations).

    1. Re-run `dao main.dao`.

1. `cd res/ && tar cj * | ssh user@openalt.eu "cd /dir/with/the/web/ && tar xj && chmod -R a+rX ."`

1. Point the web server to `en/home.html` (or use `header('location:...')` from PHP).

## Requirements for building a web from scratch

mandatory

* layered and well-described PSD or Inkscape SVG or XCF (see http://www.tutoriarts.cz/10-tipu-jak-svuj-design-pripravit-pro-kodovani-1181)
* graphic designer comments and ideas
* used fonts including a web version (mind the diacritics)
* text for the page name (title) and the meta tag description
* favicon
* base resources or links to them (e.g. a set of pictures for a slider)
* an icon set (or a link) in case icons are used
* responsive design yes/no
* Retina Ready yes/no (requires pictures with double resolution)
* deadline
* can we put this deal to our references?

optional

* positions of H1, H2, H3, H... elements
* a slider of your preference
* the order of blocks for SEO
