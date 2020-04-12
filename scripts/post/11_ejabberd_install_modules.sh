#!/bin/bash

echo load ${EJABBERD_HOME}/base_config.sh
source "${EJABBERD_HOME}/scripts/lib/base_config.sh"

echo load ${EJABBERD_HOME}/scripts/lib/config.sh
source "${EJABBERD_HOME}/scripts/lib/config.sh"

echo load ${EJABBERD_HOME}/scripts/lib/base_functions.sh
source "${EJABBERD_HOME}/scripts/lib/base_functions.sh"

echo load ${EJABBERD_HOME}/scripts/lib/functions.sh
source "${EJABBERD_HOME}/scripts/lib/functions.sh"

cd /opt/ejabberd/.ejabberd-modules/sources
ls -lh
all_modules=$(ls)
for module in ${all_modules[@]}; do
  echo Installing module ${module}
  ejabberdctl module_install ${module} ||:
done
rm -rf /opt/ejabberd/.ejabberd-modules/sources/*