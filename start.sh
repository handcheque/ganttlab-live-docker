#!/bin/bash

sed -i "s|__GITLAB_URL__|$GITLAB_URL|g" /ganttlab-live/config/prod.env.js

(cd /ganttlab-live && npm run build && cd dist && python -m SimpleHTTPServer 80)
