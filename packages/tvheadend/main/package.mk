# Имя пакета
PKG_NAME="tvheadend"

# Версия пакета
PKG_VERSION="4.3.2024"

# Версия пакета префикс
PKG_VERSION_PRE="none"

# Версия пакета ревизия
PKG_VERSION_REV="none"

# Тип получаемых исходников (git,svn,hg,web)
PKG_SOURCE_TYPE="git"

# Путь к исходникам
PKG_SOURCE_DEST="https://github.com/tvheadend/tvheadend.git"

# Тип версии исходников (none,branch,tags,revision)
PKG_SOURCE_TREE_VERSION_TYPE="branch"

# Название для типа версии (если пусто то ("none"))
PKG_SOURCE_TREE_VERSION_NAME="master"

# Имя папки в архиве (только для web но не пустой ("none"))
PKG_SOURCE_DIR="none"

# Вариант сборки
PKG_PPA="ppa1"

# Имя ресурса на launchpad
PKG_LAUNCHPAD_REPOSITORY="tvheadend"

# Очистка CVS (.git, .svn, .hg)
PKG_CVS_CLEAR="yes"

# add data
# https://github.com/nkvoronov/deb_build.git

# Получить версию исходников
get_version() {
  cd $PKG_SOURCE
  git describe --dirty --match "v*" | cut -d '-' -f 1-2 | sed "s/^v//" | sed 's/-/./g'
}