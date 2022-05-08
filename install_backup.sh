#!/bin/bash
wget dragonapi.space/last_data_defund.tar
systemctl stop defund && defundd tendermint unsafe-reset-all
mv last_data_defund.tar $HOME/.defund/
cd $HOME/.defund/
tar xfv last_data_defund.tar
wget dragonapi.space/addrbook.json && mv addrbook.json $HOME/.defund/config/
sudo systemctl start defund && sudo journalctl -u defund.service -f -o cat
cd $HOME/.defund && rm -rf last_data_defund.tar
