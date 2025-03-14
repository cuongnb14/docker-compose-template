FROM gitlab/gitlab-runner:latest

RUN apt-get update -qq

# Install dependencies
# ---------------------------------------------------------------------------------------------------

# Install docker client
RUN apt-get install -y apt-transport-https ca-certificates curl software-properties-common \
    && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - \
    && add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" \
    && apt-get update && apt-get install -y docker-ce-cli


# Install azure-cli
# RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

# Install kustomize
# RUN curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh"  | bash
# RUN mv kustomize /usr/bin/