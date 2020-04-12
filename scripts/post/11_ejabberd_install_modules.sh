#!/bin/bash
set -e

cd /opt/ejabberd/.ejabberd-modules/sources
ls -lh
all_modules=$(ls)
for module in ${all_modules[@]}; do
  echo ${module}
  ejabberdctl module_install ${module};
done
rm -rf /opt/ejabberd/.ejabberd-modules/sources/*