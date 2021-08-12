#!/bin/bash
[[ -e tools/build_all_linux.sh ]] || { echo >&2 "Please call this script from the base directory of the repository."; exit 1; }

./tools/convert_linux.sh src/2.0.2/sch/TimeCard.sch src/2.0.2/xsl/TimeCard.xsl
./tools/convert_linux.sh src/2.0/sch/TimeCard.sch src/2.0/xsl/TimeCard.xsl
