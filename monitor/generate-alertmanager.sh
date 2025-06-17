#gomplate -f alertmanager.tmpl.yml -d env=.env -o alertmanager.yml


export $(grep -v '^#' .env | xargs) && envsubst <  alertmanager.tmpl.yml > alertmanager.yml