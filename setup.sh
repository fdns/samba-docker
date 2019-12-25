docker-compose exec samba adduser -s /sbin/nologin -h /home/samba -H -D neecro
docker-compose exec samba smbpasswd -a neecro

