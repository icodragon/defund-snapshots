![image](https://user-images.githubusercontent.com/104348282/166724700-f34d905c-2b94-49ff-a09d-5942958aecc7.png)
# defund-snapshots
Snapshot installation May 8</br> 
**(Before installing a snapshot, we recommend that you save important files)**
</br>
</br>
Open your terminal next command:</br>
Download archive backup (average time 120-360 minutes)</br>
`wget dragonapi.space/last_data_defund.tar`</br>
Stop nodes and reset database</br>
`systemctl stop defund && defundd tendermint unsafe-reset-all`</br>
Move arhive backup to directory .defund</br>
`mv last_data_defund.tar $HOME/.defund/`</br>
Open .defund directory</br>
`cd $HOME/.defund/`</br>
Unarchive archive backup</br>
`tar xfv last_data_defund.tar`</br>
Download addrbook.json and move to directory .defund/config/</br>
`wget dragonapi.space/addrbook.json && mv addrbook.json $HOME/.defund/config/`</br>
Start node and show logs</br>
`sudo systemctl start defund && sudo journalctl -u defund.service -f -o cat`</br>
Open .defund directory and remove archive backup (free storage)</br>
`cd $HOME/.defund && rm -rf last_data_defund.tar`</br>

If you have any questions write to Discord: **icodragon#4560**</br>
