# Имя пакета
PKG_NAME="kodi-audioencoder-wav"

# Версия пакета
PKG_VERSION="19.0.1"

# Эпоха (по умолчанию "none")
PKG_EPOCH="6"

# Ревизия debian (по умолчанию "none")
PKG_DEBIAN_REV="1"

# Тип получаемых исходников (git,svn,hg,web)
PKG_SOURCE_TYPE="git"

# Путь к исходникам
PKG_SOURCE_DEST="https://github.com/xbmc/audioencoder.wav.git"

# Тип версии исходников (none,branch,tags,revision)
PKG_SOURCE_TREE_VERSION_TYPE="branch"

# Название для типа версии (если пусто то ("none"))
PKG_SOURCE_TREE_VERSION_NAME="Matrix"

# Имя папки в архиве (только для web но не пустой ("none"))
PKG_SOURCE_DIR="none"

# Вариант сборки
PKG_PPA="ppa1"

# Имя ресурса на launchpad
PKG_LAUNCHPAD_REPOSITORY="kodi-matrix"

# Очистка CVS (.git, .svn, .hg)
PKG_CVS_CLEAR="yes"

# Получить версию исходников
get_version() {
  cd $PKG_SOURCE/audioencoder.wav
  VER=$(head -n4 addon.xml.in | tail -n1 | cut -c 11- | sed 's/"//g')
  echo $VER
}

