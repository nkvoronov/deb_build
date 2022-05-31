# Имя пакета
PKG_NAME="jellyfin-ffmpeg"

# Версия пакета
PKG_VERSION="5.0.1"

# Эпоха (по умолчанию "none")
PKG_EPOCH="none"

# Ревизия debian (по умолчанию "none")
PKG_DEBIAN_REV="none"

# Тип получаемых исходников (git,svn,hg,web)
PKG_SOURCE_TYPE="git"

# Путь к исходникам
PKG_SOURCE_DEST="-b jellyfin https://github.com/jellyfin/jellyfin-ffmpeg.git"

# Тип версии исходников (none,branch,tags,revision)
PKG_SOURCE_TREE_VERSION_TYPE="tags"

# Название для типа версии (если пусто то ("none"))
PKG_SOURCE_TREE_VERSION_NAME="v5.0.1-4"

# Имя папки в архиве (только для web но не пустой ("none"))
PKG_SOURCE_DIR="none"

# Вариант сборки
PKG_PPA="ppa1"

# Имя ресурса на launchpad
PKG_LAUNCHPAD_REPOSITORY="jellyfin"

# Очистка CVS (.git, .svn, .hg)
PKG_CVS_CLEAR="yes"
