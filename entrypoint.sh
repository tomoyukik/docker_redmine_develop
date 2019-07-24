#!/bin/bash
set -e

rm -f /redmine/tmp/pids/server.pid

exec "$@"
