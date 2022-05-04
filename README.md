![image](https://user-images.githubusercontent.com/104348282/166724700-f34d905c-2b94-49ff-a09d-5942958aecc7.png)
# defund-snapshots
Snapshot installation May 5</br> 
**(Before installing a snapshot, we recommend that you save important files)**
</br>
</br>
Open your terminal next command:</br>
Download archive backup (average time 40-60 minutes)
`wget dragonapi.space/data_05052022.tar`</br>
Stop nodes and reset database</br>
`systemctl stop defund && defundd tendermint unsafe-reset-all`</br>
Move arhive backup to directory .defund</br>
`mv data_03_05_2022.tar $HOME/.defund`/</br>
Open .defund directory</br>
`cd $HOME/.defund/`</br>
Unarchive archive backup</br>
`tar xfv data_03_05_2022.tar`</br>
Download addrbook.json and move to directory .defund/config/</br>
`wget dragonapi.space/addrbook.json && mv addrbook.json $HOME/.defund/config/`</br>
Start node and show logs</br>
`sudo systemctl start defund && sudo journalctl -u defund.service -f -o cat`

If you have any questions write to Discord: **icodragon#4560**