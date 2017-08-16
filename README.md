# UPDATE

*This repository is outdated.*

Please use Custom site template instead (https://github.com/saulirajala/custom-site-template).



## VVV2 provision defaults
Default config-files for provisioning a new site in VVV2 (https://varyingvagrantvagrants.org/)

### How to use?
Just put the following lines to your vvv-custom.yml -file:

```
sites:
  INSTALLATION_NAME:
    repo: https://github.com/saulirajala/vvv2-provision-default
    hosts:
      - INSTALLATION_NAME.DOMAIN
```

After that you can provision the VVV2 by `vagrant provision --provision-with=site-INSTALLATION_NAME`
Voilà! You have now fresh WordPress-installation in your new VVV2-environment


### What else?
Be sure also to check my instructions about migrating from VVV1 to VVV2: https://github.com/saulirajala/migrate-vvv1-to-vvv2
