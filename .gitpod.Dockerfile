FROM gitpod/workspace-full

USER gitpod

ENV CLOJURE_VERSION=1.10.1.462

RUN curl -O https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && \
    chmod +x ./linux-install-$CLOJURE_VERSION.sh && \
    sudo ./linux-install-$CLOJURE_VERSION.sh && \
    bash -c ". /home/gitpod/.sdkman/bin/sdkman-init.sh && sdk install leiningen"
