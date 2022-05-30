DIR_SCRIPTS="scripts"

.SILENT: all local_main local_kodi launchpad_main launchpad_kodi clear_rep_main clear_rep_kodi clear_all

all:
	./$(DIR_SCRIPTS)/build_list main local
	./$(DIR_SCRIPTS)/build_list matrix local
	./$(DIR_SCRIPTS)/build_list main launchpad
	./$(DIR_SCRIPTS)/build_list matrix launchpad
local_main:
	./$(DIR_SCRIPTS)/build_list main local
local_kodi:
	./$(DIR_SCRIPTS)/build_list matrix local
launchpad_main:
	./$(DIR_SCRIPTS)/build_list main launchpad
launchpad_kodi:
	./$(DIR_SCRIPTS)/build_list matrix launchpad
clear_rep_main:
	./$(DIR_SCRIPTS)/clear_rep_main
clear_rep_kodi:
	./$(DIR_SCRIPTS)/clear_rep_kodi
clear_all:
	rm -rf builds
	rm -rf sources



