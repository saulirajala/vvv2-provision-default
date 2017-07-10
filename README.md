# VVV2 provision defaults
Default config-files for provisioning a new site in VVV2 (https://varyingvagrantvagrants.org/)

## How to use?
Just put the following lines to your vvv-custom.yml -file:

```
sites:
  INSTALLATION_NAME:
    repo: https://github.com/saulirajala/vvv2-provision-default
    hosts:
      - INSTALLATION_NAME.DOMAIN
```

After that you can provision the VVV2 by `vagrant provision --provision-with=site-INSTALLATION_NAME`
