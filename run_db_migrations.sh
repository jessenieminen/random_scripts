#!/bin/sh
#Used to automatically run migrations if necessary for a jenkins continuous integration setup

cd /home/moneyfactor/.jenkins/jobs/moneyfactor/workspace/main/

MODIFIED_FILES=$(find ./ -mmin -5)

for mf in $MODIFIED_FILES
do
  if [ $mf == './models.py' ]; then
    cd ..
    echo ""
    echo "### models.py has changed => running database migrations ###"
    echo ""
    ./manage.py syncdb
    ./manage.py schemamigration main --auto
    ./manage.py migrate main
    echo ""
    echo "### Finished running database migrations ###"
  fi

done
