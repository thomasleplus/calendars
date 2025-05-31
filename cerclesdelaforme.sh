#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

DATES=('20250505' '20250106' '20250107' '20250101' '20250102' '20250103' '20250104' '20250105')
DAYS=('SU' 'MO' 'TU' 'WE' 'TH' 'FR' 'SA' 'SU')
ADDRESSES="
bastille-12eme@80 Rue Traversière, 75012 Paris
batignolles-17eme@32 Bd des Batignolles, 75017 Paris
beaubourg@48 Rue Rambuteau, 75003 Paris
bolivar-19eme@108 Av. Simon Bolivar, 75019 Paris
cadet-9eme@13 Rue Ambroise Thomas, 75009 Paris
cercle-tolbiac-13eme@13 Rue Guyton de Morveau, 75013 Paris
championnet-18eme@63 Rue du Ruisseau, 75018 Paris
charonne-11eme@131 Boulevard de Charonne, 75011 Paris
chatelet-4eme@7 Rue Nicolas Flamel, 75004 Paris
chatillon@2 Av. Saint-Exupéry, 92320 Châtillon
cherche-midi-6eme@100 Rue du Cherche-Midi, 75006 Paris
dauphine-16eme@3 Bd Lannes, 75016 Paris
lecourbe-15eme@78 Rue Lecourbe, 75015 Paris
magenta-10eme@120 Bd de Magenta, 75010 Paris
maillot-17eme@20 Rue Guersant, 75017 Paris
montmartre-18eme@60 Rue Ordener, 75018 Paris
nation-12eme@224-228, Rue du Faubourg Saint-Antoine, 75012 Paris
olympiades-13eme@20 Rue Albert, 75013 Paris
ornano-18eme@127-129 Rue du Mont-Cenis, 75018 Paris
picpus-12eme@16 Rue Louis Braille, 75012 Paris
porte-de-bagnolet-20eme@138 Rue de Bagnolet, 75020 Paris
pte-de-versailles-15eme@31 Rue du Hameau, 75015 Paris
raspail-14eme@226 Bd Raspail, 75014 Paris
republique-11eme@9-11 Rue de Malte, 75011 Paris
saint-lazare-9eme@94 Rue Saint-Lazare, 75009 Paris
saintjacques-14eme@8 Rue Emile Dubois, 75014 Paris
"

# action=search_event
# adulte=1
# enfant=0
# active[]=204
# active[]=250
# active[]=252
# active[]=256
# active[]=257
# active[]=260
# active[]=262
# active[]=263
# active[]=267
# active[]=273
# active[]=274
# active[]=275
# active[]=2487
# active[]=2488
# active[]=2489
# active[]=2490
# active[]=2507
# active[]=2511
# active[]=2980
# active[]=2985
# active[]=3221
# active[]=3226
# active[]=3440
# active[]=3442
# active[]=3446
# active[]=3508
# active[]=6686
# active[]=8471
# active[]=8789
# active[]=8790
# active[]=15657
# active[]=16702
# active[]=16709
# active[]=17540
# active[]=136454
# start=7
# end=22
# page=0
# type=main
# colorder[1]=1
# colorder[2]=1
# colorder[3]=1
# colorder[4]=1
# colorder[5]=1

\echo 'BEGIN:VCALENDAR'
\echo 'VERSION:2.0'
\echo 'PRODID:thomasleplus'
\echo 'CALSCALE:GREGORIAN'
\echo 'BEGIN:VTIMEZONE'
\echo 'TZID:Europe/Paris'
\echo 'BEGIN:DAYLIGHT'
\echo 'TZOFFSETFROM:+0100'
\echo 'TZOFFSETTO:+0200'
\echo 'TZNAME:GMT+2'
\echo 'DTSTART:19700329T020000'
\echo 'RRULE:FREQ=YEARLY;BYMONTH=3;BYDAY=-1SU'
\echo 'END:DAYLIGHT'
\echo 'BEGIN:STANDARD'
\echo 'TZOFFSETFROM:+0200'
\echo 'TZOFFSETTO:+0100'
\echo 'TZNAME:GMT+1'
\echo 'DTSTART:19701025T030000'
\echo 'RRULE:FREQ=YEARLY;BYMONTH=10;BYDAY=-1SU'
\echo 'END:STANDARD'
\echo 'END:VTIMEZONE'

page=0
nbpage=1
while [ "${page}" -lt "${nbpage}" ]; do
	response=$(\curl --fail --silent --show-error -H 'Accept-Encoding: gzip, deflate, br, zstd' -H 'Accept-Language: en-US,en;q=0.5' -H 'Accept: */*' -H 'Cache-Control: no-cache' -H 'Connection: keep-alive' -H 'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' -H 'DNT: 1' -H 'Host: www.cerclesdelaforme.com' -H 'Origin: https://www.cerclesdelaforme.com' -H 'Pragma: no-cache' -H 'Priority: u=0' -H 'Referer: https://www.cerclesdelaforme.com/horaires/' -H 'Sec-Fetch-Dest: empty' -H 'Sec-Fetch-Mode: cors' -H 'Sec-Fetch-Site: same-origin' -H 'Sec-GPC: 1' -H 'TE: trailers' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:138.0) Gecko/20100101 Firefox/138.0' -H 'X-Requested-With: XMLHttpRequest' --data-raw "action=search_event&adulte=1&enfant=0&active%5B%5D=2489&active%5B%5D=257&active%5B%5D=2980&active%5B%5D=2490&active%5B%5D=3442&active%5B%5D=204&active%5B%5D=16709&active%5B%5D=273&active%5B%5D=8789&active%5B%5D=17540&active%5B%5D=275&active%5B%5D=15657&active%5B%5D=274&active%5B%5D=8790&active%5B%5D=262&active%5B%5D=260&active%5B%5D=2488&active%5B%5D=250&active%5B%5D=252&active%5B%5D=2487&active%5B%5D=136454&active%5B%5D=8471&active%5B%5D=6686&active%5B%5D=3226&active%5B%5D=3508&active%5B%5D=263&active%5B%5D=16702&active%5B%5D=2511&active%5B%5D=2985&active%5B%5D=256&active%5B%5D=3446&active%5B%5D=3440&active%5B%5D=267&active%5B%5D=2507&active%5B%5D=3221&start=7&end=22&page=${page}&type=main&colorder%5B1%5D=1&colorder%5B2%5D=1&colorder%5B3%5D=1&colorder%5B4%5D=1&colorder%5B5%5D=1" -X POST 'https://www.cerclesdelaforme.com/wp-admin/admin-ajax.php' -o - | gunzip)
	\echo "${response}" | \jq -c '.list[]' | while read -r event; do
		titre=$(echo "${event}" | \jq -r '.titre')
		club_id=$(echo "${event}" | \jq -r '.club_id')
		eve_id=$(echo "${event}" | \jq -r '.eve_id')
		club_code=$(echo "${event}" | \jq -r '.club_code')
		jour=$(echo "${event}" | \jq -r '.jour')
		h_start=$(echo "${event}" | \jq -r '.h_start')
		m_start=$(echo "${event}" | \jq -r '.m_start')
		duree=$(echo "${event}" | \jq -r '.duree')
		salle=$(echo "${event}" | \jq -r '.salle')
		\echo 'BEGIN:VEVENT'
		\echo "UID:C${club_id}E${eve_id}"
		\echo "SUMMARY:${titre} @ ${club_code}"
		\echo "DESCRIPTION:${salle}"
		\echo "LOCATION:$(\echo "${ADDRESSES}" | \grep -e "${club_code}@" | sed -e 's/.*@//')"
		\echo "DTSTAMP:19700101T000000Z"
		\echo -n "DTSTART;TZID=Europe/Paris:${DATES[${jour}]}T"
		\printf "%02d" "${h_start}"
		\printf "%02d" "${m_start}"
		\echo '00'
		\echo "DURATION:PT${duree}M"
		\echo "RRULE:FREQ=WEEKLY;INTERVAL=1;BYDAY=${DAYS[${jour}]}"
		\echo 'END:VEVENT'
	done
	nbpage=$(\echo "${response}" | \jq '.nbpage')
	page=$((page + 1))
done

\echo 'END:VCALENDAR'
