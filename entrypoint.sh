#!/bin/bash
set -e

# catch missing password
if [ -z "$EXIST_ADMIN_PASSWORD" ]; then
echo "The parameter for setting the eXist-db password is missing (EXIST_ADMIN_PASSWORD)"
echo "Setting the password for user admin: [admin]"
EXIST_ADMIN_PASSWORD="admin"
else
# inject password
/opt/exist/bin/client.sh -l -s -u admin -Padmin << EOF 
passwd admin
${EXIST_ADMIN_PASSWORD}
${EXIST_ADMIN_PASSWORD}
quit
EOF
fi

# lets start exist...
exec /opt/exist/bin/startup.sh
