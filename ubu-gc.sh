export UI_UM_PASSWORD='u2aKRmJw'
export GC_PROFILE='default'
wget https://34.76.181.186/guardicore-cas-chain-file.pem --no-check-certificate -O /tmp/guardicore_cas_chain_file.pem
# expected checksum 6d4e4f129a6374e72287ee960dae614675f7cb59b26385b7c62e11169b643fc1
SHA256SUM_VALUE=`sha256sum /tmp/guardicore_cas_chain_file.pem | awk '{print $1;}'`
export INSTALLATION_CMD='wget --ca-certificate /tmp/guardicore_cas_chain_file.pem -O- https://34.76.181.186 | sudo -E bash'
if [ $SHA256SUM_VALUE == 6d4e4f129a6374e72287ee960dae614675f7cb59b26385b7c62e11169b643fc1 ]; then eval $INSTALLATION_CMD; else echo "Certificate checksum mismatch error"; fi

