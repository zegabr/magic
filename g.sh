#!/bin/bash
#g de gedit(ubuntu) e xed(mint)
if hash gedit 2>/dev/null; then
	gsettings set org.gnome.gedit.preferences.print print-syntax-highlighting true
	gsettings set org.gnome.gedit.preferences.editor highlight-current-line true
	gsettings set org.gnome.gedit.preferences.editor bracket-matching true
	gsettings set org.gnome.gedit.preferences.editor scheme 'oblivion'
	gsettings set org.gnome.gedit.preferences.editor display-line-numbers true
	gsettings set org.gnome.gedit.preferences.editor insert-spaces false
	gsettings set org.gnome.gedit.preferences.editor auto-indent true
	gsettings set org.gnome.gedit.preferences.editor syntax-highlighting true
	gsettings set org.gnome.gedit.preferences.editor display-overview-map false
	gsettings set org.gnome.gedit.preferences.editor tabs-size 4
	gsettings set org.gnome.gedit.preferences.editor wrap-mode 'none'
	echo "======my gedit setup overrided yours======="
fi

if hash xed 2>/dev/null; then
	echo "configuracao do xed ainda nao feita"
fi
