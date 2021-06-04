
function my() {

	# prepare

	local MY_ROOT="~"
	local MY_ROOT_PATH=$HOME

	# check to see if my exist
	MY_HOST="MY_HOST"
	MY_HOST_PATH="${MY_ROOT}/${MY_HOST}"
	MY_HOST_PATH_FULL=${MY_ROOT_PATH}/${MY_HOST}

	# define MY_ZSH_ROOT
	local MY_ZSH="${MY_ROOT}/ZSH_CUSTOM"
	local MY_ZSH_ROOT="${MY_ROOT}/.oh-my-zsh/custom"
	local MY_ZSH_ROOT_PATH=${ZSH_CUSTOM}


	# define MY_SETTINGS_FILE
	local MY_SETTINGS_FILE="${MY_ZSH_ROOT_PATH}/_my_settings.zsh"

	# load MY_SETTINGS_FILE
	. ${MY_SETTINGS_FILE}

	# ++++++++++++++++++++++++++++++++++++
	# my-clear

	# start | ++++++++++++++++++++++++++

	cd ${MY_ROOT_PATH}

	# ++++++++++++++++++++++++++++++++++++

	# ++++++++++++++++++++++++++++++++++++

	# hint

	# my PARAMETERS for my Caller
	# 1. OBJECT_METHOD | noun | A thing (object) | Treated as an object
	#
	# 2. OBJECT_METHOD | verb | A thing | Treated as an object
	#
	# 3. HOW | 'my/Object' scaffolds

	# my Object Action
	# my/Object/Action.zsh
	# my/Folder/File.zsh
	# my/Thing/Do

	# TEMP_HISTORY_FILE="_temp_write_history_${OBJECT:l}_${OBJECT_METHOD:l}.txt"
	# touch ${MY_CURRENT_PATH_FULL}/${TEMP_HISTORY_FILE}
	#
	# echo "$(date)" >> ${MY_CURRENT_PATH_FULL}/${TEMP_HISTORY_FILE}
	# sleep 1
	# echo "$(date)" >> ${MY_CURRENT_PATH_FULL}/${TEMP_HISTORY_FILE}
	# sleep 1
	# echo "$(date)" >> ${MY_CURRENT_PATH_FULL}/${TEMP_HISTORY_FILE}
	# sleep 1
	# echo "$(date)" >> ${MY_CURRENT_PATH_FULL}/${TEMP_HISTORY_FILE}
	# sleep 1
	# echo "$(date)" >> ${MY_CURRENT_PATH_FULL}/${TEMP_HISTORY_FILE}
	# sleep 1
	# echo "$(date)" >> ${MY_CURRENT_PATH_FULL}/${TEMP_HISTORY_FILE}
	# sleep 1
	# echo "$(date)" >> ${MY_CURRENT_PATH_FULL}/${TEMP_HISTORY_FILE}
	# sleep 1
	# echo "$(date)" >> ${MY_CURRENT_PATH_FULL}/${TEMP_HISTORY_FILE}
	#
	# mv ${MY_HISTORY_PATH_FULL}/${TEMP_HISTORY_FILE} ${MY_HOST_PATH_FULL}/${TEMP_HISTORY_FILE//temp_write_history_/_history_$(date +%F_%R)_}

	# do code here

	# check for '(Current Tasks)' folder
	if [ -d "${MY_CURRENT_PATH_FULL}" ]; then

		echo "Checking for '(${MY_CURRENT_PATH})'. Please wait..."

		sleep 3
		read -s -k "?'.__current is found. Press [ENTER] to continue"
		clear

	else
		echo "Checking for '(${MY_CURRENT_PATH})'. Please wait..."

		sleep 3
		read -s -k "?'.__current is not found. Press [ENTER] to 'Create' it"
		clear
	fi


	####################################################################################################


	if [ -d "${MY_HOST}/.my" ]; then

		# clear
		echo "'(~/MY_HOST/.my)' is found, We're good to go"

		sleep 3
		cd ${MY_HOST_PATH_FULL}
		read -s -k "?'.my is ready. Press [ENTER] to continue."

		if [ "${OBJECT}" = "${OBJECT}" ]; then

			# get inits
			. ${MY_INIT_CREATOR_PATH_FULL}
			. ${MY_INIT_LOADER_PATH_FULL}
			. ${MY_INIT_RUNNER_PATH_FULL}

			# get methods
			. ${MY_METHOD_CREATE_PATH_FULL}
			. ${MY_METHOD_START_PATH_FULL}
			. ${MY_METHOD_UPDATE_PATH_FULL}
			. ${MY_METHOD_REMOVE_PATH_FULL}
			. ${MY_METHOD_CLOSE_PATH_FULL}

			# get task runners
			. ${MY_COMMON_WRITE_PATH_FULL}

			source ~/.zshrc

			# Checking to see if '${DIR}' exists ...
			if [ "${OBJECT_METHOD}" ]; then

				MY_LOADER_NAME="Loader"

				# my-clear

				# get load file
				cp ${MY_INIT_LOADER_PATH_FULL} ${MY_CURRENT_PATH_FULL}/_temp_${MY_LOADER_NAME:l}_${OBJECT:l}_${OBJECT_METHOD:l}.zsh

				# include load
				. ${MY_CURRENT_PATH_FULL}/_temp_${MY_LOADER_NAME:l}_${OBJECT:l}_${OBJECT_METHOD:l}.zsh

				# refresh shell
				source ~/.zshrc

				# if my OBJECT OBJECT_METHOD
				###############################################################################################
				# do code here

				my_${MY_LOADER_NAME:l} ${(C)OBJECT} ${(C)OBJECT_METHOD}

				# do code here
				###############################################################################################
				# if my OBJECT OBJECT_METHOD

				# move temp file to backups
				mv ${MY_CURRENT_PATH_FULL}/_temp_${MY_LOADER_NAME:l}_${OBJECT:l}_${OBJECT_METHOD:l}.zsh ${MY_BACKUP_PATH_FULL}/_temp_${MY_LOADER_NAME:l}_$(date +%F_%R)_${OBJECT:l}_${OBJECT_METHOD:l}.zsh

				# refresh shell
				source ~/.zshrc


			else

				echo 'please specify an Object Method. example: my ${Water} "${Drink}"\n'
				echo '\n'
				read -s -k "?You typed: (my ${(C)OBJECT}). Press [ENTER] to try again."
				# clear

			fi

		elif [ ! "${OBJECT}" ]; then

			echo "\n"
			read -s -k "?'Soon will avail some cool things here."
		fi

	else

		cd ${HOME}
		read -s -k "?'(~/MY_HOST/.my)' not found. Press [ENTER] to create it."
		git clone git@github.com:silasworx/my.zsh.git ${MY_HOST}/.my
		cd ${MY_HOST}
		read -s -k "?'Creating (~/MY_HOST/Apps)'. Press [ENTER] to continue."
		mkdir Apps
		sleep 3

		cd ${MY_HOST_PATH_FULL}
		clear
		read -s -k "?'(~/MY_HOST/.my)' created. Press [ENTER] to continue."


	fi

	# end | ++++++++++++++++++++++++++

	# clear
	# ++++++++++++++++++++++++++++++++++++

}
