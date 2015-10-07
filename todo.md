struktura + preklady/slovicka
    mrknout na smartdev meetup + devconf
tvorba, preklady, korekce textu - David Kolibac

exportovat z google sheet aktualni seznam prednasek s tracky (L. Koszegy to udrzuje)
seznam prednasek/workshopu
    klikaci jmeno
        pridat trapny radkovy formular (hidden v defaultu) a nastylovat position:fixed
    rozbalovaci popisek (zarovnany do bloku)
anchor linky prebarvit do dvou variant - zvlast pro svetle a tmave pruhy
mapa - pruh ma byt trochu vyssi a samotna mapa interaktivni embedded OSM (napr. http://leafletjs.com/ - JS statickou mapu vymeni az pri zobrazovani; tedy staticka mapa zustava, aby to fungovalo i bez JS)
na hlavni strance je mobilni menu sice prazdne, avsak s nenulovou vyskou
podsviceni socialnich tlacitek do cervena (nikoliv do modra)
ikonky socialnich siti nejsou ve stejne vysce jako okolni text
fixnout horní menu (mezirka mezi tlacitky)
vytisknutelny schedule (tedy otestovat stavajici a pokud nevyhovuje, pak pridat "@media print")
ikony u prednasek/workshopu - pouzit ikonky z 2014 (https://openalt.cz/2014/events.html)? nebo jine open-source ikony (http://fontawesome.io/)
pridat galerii organizatoru (viz. http://www.barcampbrno.cz/2015/index.html)
tombola (kontrola prijde) -> vyhlaseni ankety
pridat podlouhle logo OA do sekce media->propagace
kvalitni (SVG) ikonka LinuxAlt







Facebook pise error "Object at URL 'https://openalt.cz/2015/cs/home.html' of type 'website' is invalid because the given value '../img/logo-openalt-conference.png' for property 'og:image:url' could not be parsed as type 'url'. "







domu
    logo
    motto
    tlacitka
        navstevnik
            navstevnik
                logo
                registrace (1 tlacitko)
                podekovani (?)
                novinky + social feed
            program
                program/schedule
                prednasky
                    track 1
                    track 2
                    track 3
                    ...
                workshopy
                prednasejici (fotky + po kliknuti maly popisek)
            o_konferenci/o_nas/konference
                logo konference + martinuv text o konferenci (oboji na tmavem pozadi?)
                predchozi rocniky ve forme radku
                    s vyskou trochu vetsi nez nadpis
                    zvetsit pismo 1.5x
                    vyhodit carky, zvetsit mezery
                    loga horizontalne (OA v radkove forme) zarovnana na stred
                    odkazy zacinaji vlevo, ale ve stejne vertikalni linii
                    <logo> 2014 2013 2012
                kontakt
            media
                minuly feedback/ohlasy_nasi_konfery/pisou_o_nas (bez datumu)
                fotogalerie
                propagace (loga, plakat, ...)
            misto/misto_konani/prostory/kde/kde_konferu_najdete/kde_nas_najdete
                mapa (odkaz na OSM; pozdeji interaktivni)
                doprava
                ubytovani
                o brnu/lokalite
        prednasejici
            prednasejici
                logo
                registrace (1 tlacitko)
                pred
                    cfp
                po
                    podekovani
                novinky + social feed
            co z toho
                prospekt na cestu
                bydleni
            o_konferenci/o_nas/konference
                ...
            media
                ...
            misto/misto_konani/prostory/kde/kde_konferu_najdete/kde_nas_najdete
                ...
        partner
            partner
                logo
                pred
                    mam zajem (1 tlacitko)
                po
                    mam zajem podporit dalsi rocnik
                levely
                brozura/letak (nebo pouze link?)
            kdo (duvera v nas - jubilejni rocnik, ...)
            proč_podpořit (např. co otevřenost přinese firmě)
            benefity/co_za_to_nabizime/odmeny
            jak (finance, naturalie, sluzby)
    feedback/ohlasy_nasi_konfery/pisou_o_nas
??? socialni site
???
???
???

partneri
* dobré HR - navstevnici konference jsou odborníci

API
* http://pcmlich.fit.vutbr.cz/openalt/
* http://pcmlich.fit.vutbr.cz/openalt/?debug
* http://pcmlich.fit.vutbr.cz/openalt/?ts

RSS feed should be accessible under .../feed
events should be generated according to RDFa Lite (http://rdfa.info/play/)
talks/workshops/... - add details (language, when, where, etc.)
misto fotky nejaky otaznik http://www.openalt.cz/2014/img/avatars/blank_boy.png
support for more authors of one talk (one is responsible, others just shown)
font je Tunga (http://fontzone.net/font-details/tunga)

vim: set wrap:
