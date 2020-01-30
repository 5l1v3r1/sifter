#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
ORNG='\033[0;33m'
W='\033[1;37m'
YLW='\033[1;33m'

if [[ -d /opt/sifter/results/Dirb ]]; then
    echo ""
else 
    mkdir /opt/sifter/results/Dirb
fi
echo -e "${ORNG}Dirb${NC}"
echo -e "${ORNG}*****${NC}"
echo -e "${YLW}"
cat files/pingtest_pass.txt
echo -e "${NC}"
echo -e "${W}Please copy and paste in your target site${NC}"
read TARGET
echo "================================================================================================="
dirb ${TARGET} -f -o /opt/sifter/results/Dirb/${TARGET}.txt
echo "================================================================================================="
./modules/module_runner.sh
