# Имя пакета
PKG_NAME="kodi"

# Версия пакета
PKG_VERSION="19.4"

# Версия пакета префикс
PKG_VERSION_PRE="6"

# Версия пакета ревизия
PKG_VERSION_REV="none"

# Тип получаемых исходников (git,svn,hg,web)
PKG_SOURCE_TYPE="git"

# Путь к исходникам
PKG_SOURCE_DEST="https://github.com/xbmc/xbmc.git"

# Тип версии исходников (none,branch,tags,revision)
PKG_SOURCE_TREE_VERSION_TYPE="tags"

# Название для типа версии (если пусто то ("none"))
PKG_SOURCE_TREE_VERSION_NAME="19.4-Matrix"

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
  cd $PKG_SOURCE

  VMAJ=$(grep VERSION_MAJOR version.txt | cut -c 15-)
  VMIN=$(grep VERSION_MINOR version.txt | cut -c 15-)
  VTAG=$(grep VERSION_TAG version.txt | cut -c 13- | tr '[:upper:]' '[:lower:]')
  if [ "$VTAG" != "" ] ; then
    echo $VMAJ.$VMIN $VTAG
  else
    echo $VMAJ.$VMIN
  fi
}
