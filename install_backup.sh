#!/bin/bash
wget dragonapi.space/data_05052022.tar
systemctl stop defund && defundd tendermint unsafe-reset-all
mv data_05052022.tar $HOME/.defund/
cd $HOME/.defund/
tar xfv data_05052022.tar
wget dragonapi.space/addrbook.json && mv addrbook.json $HOME/.defund/config/
sudo systemctl start defund && sudo journalctl -u defund.service -f -o cat