FROM nixos/nix:1.11.14
RUN nix-env -ib git
RUN mkdir /etc/nix
RUN echo binary-caches = https://cache.nixos.org https://hydra.iohk.io > /etc/nix/nix.conf
RUN echo binary-caches-public-keys = hydra.iohk.io:f/Ea+s+dFdN+3Y/G+FDgSq+a5NEWhJGzdjvKNGv0/EQ= >> /etc/nix/nix.conf
RUN git clone https://github.com/input-output-hk/cardano-sl.git
WORKDIR /cardano-sl
RUN git checkout cardano-sl-1.0-mainnet
RUN nix-build release.nix -A connect.mainnetWallet -o connect-to-mainnet
EXPOSE 8090
ENTRYPOINT ./connect-to-mainnet

