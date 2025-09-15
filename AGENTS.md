# AGENTS Instructions

Tento repozitář je textová kronika fiktivního vesmíru. Není to programátorský projekt a
nevyžaduje žádné skripty ani nástroje.

## Jak začít
- Čti `README.txt` a složku `Pokyny/` pro detailní pravidla.
- Všechen obsah je prostý text v UTF-8.

## Branch workflow
- `master` – stabilní vydaná historie.
- `dev` – testovací větev před sloučením do masteru.
- Tematické větve (např. `server`, `client`) se odvíjejí z `dev` a po dokončení se
  přes PR sloučí zpět.

## Commit konvence
- Používej formát `docs: stručný popis` pro úpravy dokumentů.

## Příkazy
- Žádné buildy, testy ani lint. Stačí upravit text a použít `git`.

## Poznámky
- Neprogramuje se: žádný Python, žádné generované soubory, žádný `make`.
- Nepřidávej client/server kód; projekt se soustředí výhradně na tvorbu příběhů.
