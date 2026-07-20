#!/bin/sh
##############################################################################
## Gradle start up script for UN*X
##############################################################################

# Attempt to set APP_HOME
APP_HOME="$(cd "${APP_HOME:-./}" && pwd)"

# Use the maximum available, or set MAX_FD != -1 to use that value.
MAX_FD="maximum"

warn () {
    echo "$*"
}

die () {
    echo
    echo "$*"
    echo
    exit 1
}

# OS specific support
native_path() { printf %s\n "$1"; }

case "$(uname)" in
  CYGWIN*|MINGW*|MSYS*)
    APP_HOME=$(native_path "$APP_HOME")
    ;;
esac

# Collect all arguments
set --         "$@"

# Escape application args
save () {
    for i do printf %s\n "$i" | sed "s/'/'\\''/g;1s/^/'/;\$s/\$/' \\/" ; done
    echo " "
}
APP_ARGS=$(save "$@")

# Collect all arguments for the java command
set -- $DEFAULT_JVM_OPTS $JAVA_OPTS $GRADLE_OPTS ""-Dorg.gradle.appname=$APP_BASE_NAME"" -classpath ""$CLASSPATH"" org.gradle.wrapper.GradleWrapperMain "$APP_ARGS"

exec "$JAVACMD" "$@"
