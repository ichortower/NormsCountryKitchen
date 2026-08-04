GAME_DIR=${HOME}/GOG Games/Stardew Valley/game
MOD_DIR=${GAME_DIR}/Mods/NormsCountryKitchen

JSONS=content.json \

PANCAKE=../Pancake/pancake
WHISK=../Pancake/whisk


install: cp

palettes:
	"${WHISK}" assets/tilesheet.png Earthy-all VPR-all | "${PANCAKE}" assets/tilesheet.png -i assets
	cp assets/tilesheet.png assets/tilesheet_Vanilla-all.png

cp:
	install -d "${MOD_DIR}" "${MOD_DIR}/data" "${MOD_DIR}/assets" "${MOD_DIR}/i18n/default"
	install -m 644 content.json manifest.json "${MOD_DIR}/"
	install -m 644 data/*.json "${MOD_DIR}/data/"
	install -m 644 assets/*.tmx assets/*.png assets/*.ogg "${MOD_DIR}/assets/"
	rm "${MOD_DIR}/assets/tilesheet.png"
	install -m 644 i18n/default/*.json "${MOD_DIR}/i18n/default/"
	install -m 644 LICENSE "${MOD_DIR}/"

uninstall:
	rm -rf "${MOD_DIR}"
