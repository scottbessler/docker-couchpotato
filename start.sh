#! /bin/sh

mkdir -p /config

# create config if missing, cp doesnt for some reason
[ ! -f /config/CouchPotato.cfg ] && touch /config/CouchPotato.cfg

# couch potato's 'data dir' is where logs and database goes, which is really more config/state
exec /usr/bin/python /CouchPotatoServer/CouchPotato.py --data_dir /config/ --config_file=/config/CouchPotato.cfg --console_log
