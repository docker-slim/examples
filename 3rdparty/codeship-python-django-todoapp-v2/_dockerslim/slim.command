#!/usr/bin/env bash

here="$(dirname "$BASH_SOURCE")"
cd $here

docker-slim build --http-probe-cmd /todos/ --expose 8000 --network codeshippythondjangotodoappv2_default --env 'DATABASE_URL=postgres://todoapp@postgres/todos' --cmd 'sh -c "sleep 7 && python manage.py migrate && gunicorn -b 0.0.0.0:8000 todosapp.wsgi:application"' codeshippythondjangotodoappv2_web
