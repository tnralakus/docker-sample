#!/bin/bash -x
echo "${username}"
docker login -u ${username} -p ${password} -e ${email}
docker push ${image}

echo "docker image ${image} will be tagged as latest ${latesttag}"
if [[ "$(docker images -q ${latesttag} 2> /dev/null)" != "" ]]; then
   echo "Docker tag ${latesttag} exist it will be removed..."
   docker rmi ${latesttag}
fi

docker tag ${image} ${latesttag}

echo "Docker tag ${latesttag} will be pushed..."
docker push ${latesttag}
