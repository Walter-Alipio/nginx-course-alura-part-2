# Openssl

To generate a local certificate without installing openssl we could use a docker container.

The following powershell command creates a dir local/ssl with a certificate.

```powershell
docker run --rm -v ${PWD}:/export alpine sh -c "apk add --no-cache openssl && mkdir -p /export/local/ssl && openssl req -x509 -nodes -days 30 -newkey rsa:2048 -keyout /export/local/ssl/localhost.key -out /export/local/ssl/localhost.crt -subj '/CN=localhost'"
``` 