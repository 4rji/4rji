#!/usr/bin/osascript
-- firefox-ephemeral: lo mismo que firefm pero sin terminal. El idioma se elige en un
-- diálogo y se le pasa a firefm, que levanta SearXNG, arma el perfil efímero (arkenfox +
-- CanvasBlocker), prepara XQuartz y abre Firefox en Docker directamente en google.com.
-- Queda corriendo hasta que cerrás Firefox, igual que firefm.
--
--   ./firefox-ephemeral.applescript                                      (o con osascript)
--   osacompile -o firefox-ephemeral.scpt firefox-ephemeral.applescript      (compilado)
--   osacompile -o "Firefox Efimero.app" firefox-ephemeral.applescript       (como app)
--
-- firefm se busca al lado de este script, en /opt/4rji/bin o en el PATH.
-- Salida de firefm: ~/Library/Logs/firefox-ephemeral.log
-- firefm tiene que respetar FIREFM_URLS (ver nota al final) para no abrir mullvad/portapapeles.

-- misma lista y orden que LANG_CODES / LANG_NAMES en firefm
property langCodes : {"en-US", "es-ES", "ja", "zh-CN", "ru", "fr-FR", "de-DE", "pt-BR", "it-IT", "ko"}
property langNames : {"English", "Español", "日本語", "中文(简)", "Русский", "Français", "Deutsch", "Português(BR)", "Italiano", "한국어"}
property dlgTitle : "Firefox efímero"
property startURL : "https://www.google.com"
property dockerBinDir : "/Users/harji/.docker/bin"

on run
	-- do shell script arranca con PATH=/usr/bin:/bin:/usr/sbin:/sbin: sin docker (ni su
	-- credential helper para el pull de searxng), Homebrew, XQuartz ni /opt/4rji/bin.
	-- /opt/4rji/bin va al final, como lo deja herrabin, para no tapar comandos del sistema.
	set shEnv to "export PATH=\"" & dockerBinDir & ":/opt/homebrew/bin:/usr/local/bin:$PATH:/opt/X11/bin:/opt/4rji/bin\"; "
	
	set firefm to findFirefm(shEnv)
	if firefm is "" then
		showError("No encontré firefm." & linefeed & linefeed & "Ponelo en /opt/4rji/bin o en la misma carpeta que este script.")
		return
	end if
	
	if not ensureDocker(shEnv) then return
	
	try
		do shell script shEnv & "docker image inspect firefox-ephemeral >/dev/null 2>&1"
	on error
		showError("No existe la imagen Docker firefox-ephemeral." & linefeed & linefeed & "Corré firefoxephemeral (baja el Dockerfile) y después:" & linefeed & "docker build -t firefox-ephemeral .")
		return
	end try
	
	set langIdx to chooseLang()
	if langIdx is 0 then return
	set langCode to item langIdx of langCodes
	
	try
		display notification "Idioma " & langCode & ": levantando SearXNG y Firefox…" with title dlgTitle
	end try
	
	-- FIREFM_LANG hace que firefm no pregunte; el número por stdin responde la pregunta
	-- si el firefm encontrado es una versión vieja que igual pregunta.
	-- FIREFM_URLS reemplaza mullvad check + portapapeles por google.com.
	set logDir to POSIX path of (path to library folder from user domain) & "Logs"
	set logFile to logDir & "/firefox-ephemeral.log"
	try
		do shell script shEnv & "mkdir -p " & quoted form of logDir & "; printf '%s\\n' " & langIdx & " | FIREFM_LANG=" & quoted form of langCode & " FIREFM_URLS=" & quoted form of startURL & " bash " & quoted form of firefm & " >" & quoted form of logFile & " 2>&1"
	on error errMsg number errNum
		set logTail to ""
		try
			set logTail to do shell script "tail -n 15 " & quoted form of logFile
		end try
		showError("firefm terminó con error " & errNum & "." & linefeed & linefeed & logTail)
	end try
end run

-- firefm al lado de este script (misma versión del repo), en /opt/4rji/bin o en el PATH
on findFirefm(shEnv)
	set scriptDir to ""
	try
		set scriptDir to do shell script "dirname " & quoted form of (POSIX path of (path to me))
	end try
	try
		return do shell script shEnv & "for f in " & quoted form of (scriptDir & "/firefm") & " /opt/4rji/bin/firefm \"$(command -v firefm)\"; do [ -f \"$f\" ] && { echo \"$f\"; exit 0; }; done; exit 1"
	on error
		return ""
	end try
end findFirefm

-- true si Docker responde; si no, ofrece abrir Docker Desktop y lo espera hasta 2 min
on ensureDocker(shEnv)
	if dockerUp(shEnv) then return true
	activate
	try
		display dialog "Docker no responde." & linefeed & "¿Abro Docker Desktop y espero a que arranque?" buttons {"Cancelar", "Abrir Docker"} default button 2 cancel button 1 with title dlgTitle with icon caution
	on error number -128
		return false
	end try
	try
		do shell script "open -a Docker"
	on error
		showError("No pude abrir Docker Desktop.")
		return false
	end try
	repeat 60 times
		delay 2
		if dockerUp(shEnv) then return true
	end repeat
	showError("Docker no arrancó en 2 minutos.")
	return false
end ensureDocker

on dockerUp(shEnv)
	try
		do shell script shEnv & "docker info >/dev/null 2>&1"
		return true
	on error
		return false
	end try
end dockerUp

-- la pregunta de idioma de firefm; devuelve el índice elegido o 0 si cancelás
on chooseLang()
	set langItems to {}
	repeat with i from 1 to count of langCodes
		set end of langItems to (item i of langNames) & "  (" & (item i of langCodes) & ")"
	end repeat
	
	activate
	set picked to choose from list langItems with title dlgTitle with prompt "Idioma:" default items {item 1 of langItems} OK button name "Abrir" cancel button name "Cancelar"
	if picked is false then return 0
	repeat with i from 1 to count of langItems
		if item i of langItems is item 1 of picked then return i
	end repeat
	return 0
end chooseLang

on showError(msg)
	activate
	display dialog msg buttons {"OK"} default button 1 with title dlgTitle with icon stop
end showError

-- NOTA: quien abre mullvad.net/check y la URL del portapapeles es firefm, no este script.
-- En firefm, donde arma la lista de URLs que le pasa a Firefox, usá algo como:
--   URLS=${FIREFM_URLS:-"https://mullvad.net/check $(pbpaste | head -n1)"}
-- Así firefm sigue igual desde la terminal y desde acá abre solo google.com.
