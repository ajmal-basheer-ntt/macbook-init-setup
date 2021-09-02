curl -Lo kops https://github.com/kubernetes/kops/releases/download/v1.18.2/kops-darwin-amd64
chmod +x ./kops
sudo mv ./kops /usr/local/bin/
kops version

curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.18.20/bin/darwin/amd64/kubectl
chmod +x kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
kubectl version --client --short
