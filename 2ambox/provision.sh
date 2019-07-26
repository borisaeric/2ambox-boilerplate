echo 'START ----> Running provision script <----'

mysql -u root -e "CREATE DATABASE 2amigos CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"
echo '---> Created 2amigos database'

mysql -u root -e "CREATE DATABASE 2amigos_track CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"
echo '---> Created 2amigos_track database'

mysql -u root -e "CREATE USER 'healthtechhq'@'%' IDENTIFIED BY '';"
mysql -u root -e "GRANT ALL PRIVILEGES ON 2amigos_track.* TO 'healthtechhq'@'%' IDENTIFIED BY '';"
mysql -u root -e "FLUSH PRIVILEGES;"
echo '---> Created user for healthtechhq project which uses this db'

echo 'END ----> Running provision script <----'
