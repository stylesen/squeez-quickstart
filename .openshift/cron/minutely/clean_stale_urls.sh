#!/bin/bash

/usr/bin/mysql -u 'stylesen' --password='vision' -h 'localhost' 'squeeze'<<EOFMYSQL
DELETE FROM url_mapper WHERE expiry < NOW();
COMMIT;
EOFMYSQL