cd ../cloudlaunch-helm/cloudlaunchserver && helm dependency update && cd ../../cloudman-helm/cloudman && helm dependency update && cd ../../helm-charts/charts && helm package ../../cloudlaunch-helm/cloudlaunchserver/ && mkdir -p ../../cloudlaunch-helm/cloudlaunch/charts && cp cloudlaunchserver-0.3.0.tgz ../../cloudlaunch-helm/cloudlaunch/charts/ && helm package ../../cloudlaunch-helm/cloudlaunch && cp cloudlaunch-0.3.0.tgz ../../cloudman-helm/cloudman/charts/ && helm package ../../cloudman-helm/cloudman/ && cd .. && rm -f index.yaml && helm repo index . --url https://raw.githubusercontent.com/almahmoud/helm-charts/master/ && git add .
