#!/usr/bin/env bash

here="$(dirname "$BASH_SOURCE")"
cd $here

docker run -it --rm --name="django_todo_app" -p 8000:8000 -e "DATABASE_URL=postgres://todoapp@postgres/todos" --network codeshippythondjangotodoapp_default codeshippythondjangotodoapp_web.slim




