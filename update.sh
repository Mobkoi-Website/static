#!/bin/bash

echo "Updating..."

find /home/customer/git/static/ \( -type d -name .git -prune \) -o -type f -print0 | xargs -0 sed -i 's/https:\/\/stage.wp.mobkoi.com//g'

cd /home/customer/git/static/
/usr/bin/git add .
/usr/bin/git commit -m "Automated Commit"
/usr/bin/git push origin main --force
