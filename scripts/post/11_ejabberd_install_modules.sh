#!/bin/bash
set -e

cd /opt/ejabberd/.ejabberd-modules/sources
all_modules=$(ls)
for module in ${all_modules[@]}; do
  ejabberdctl module_install $module;
done
rm -rf /opt/ejabberd/.ejabberd-modules/sources/*