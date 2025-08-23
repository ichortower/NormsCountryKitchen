GAME_DIR=${HOME}/GOG Games/Stardew Valley/game
MOD_DIR=${GAME_DIR}/Mods/NormsCountryKitchen

JSONS=content.json \


install: cp

cp:
	mkdir -p "${MOD_DIR}" "${MOD_DIR}/data" "${MOD_DIR}/assets" "${MOD_DIR}/i18n/default"
	install -m 644 content.json manifest.json "${MOD_DIR}/"
	install -m 644 data/*.json "${MOD_DIR}/data/"
	install -m 644 assets/*.tmx assets/*.png assets/*.ogg "${MOD_DIR}/assets/"
	install -m 644 i18n/default/*.json "${MOD_DIR}/i18n/default/"

uninstall:
	rm -rf "${MOD_DIR}"
