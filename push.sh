if [ -z "${GITHUB_TOKEN}" ] ; then
    until [[ "${GITHUB_TOKEN}" ]] ; do read -srp 'GitHub Personal Token: ' GITHUB_TOKEN ; done
fi

echo $GITHUB_TOKEN | docker login ghcr.io -u terrencegf --password-stdin

docker push ghcr.io/terrencegf/bitwarden-portal:latest
