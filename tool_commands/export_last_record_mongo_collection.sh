mongoexport -d psva -c speech_data --sort '{_id:-1}' --limit 1 --out last_data.json
