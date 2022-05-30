# Имя пакета
PKG_NAME="kodi-vfs-sftp"

# Версия пакета
PKG_VERSION="19.0.1"

# Версия пакета префикс
PKG_VERSION_PRE="6"

# Версия пакета ревизия
PKG_VERSION_REV="4"

# Тип получаемых исходников (git,svn,hg,web)
PKG_SOURCE_TYPE="git"

# Путь к исходникам
PKG_SOURCE_DEST="https://github.com/xbmc/vfs.sftp.git"

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
  cd $PKG_SOURCE/vfs.sftp
  VER=$(head -n4 addon.xml.in | tail -n1 | cut -c 11- | sed 's/"//g')
  echo $VER
}
