# labbuildr_pipelines
fly -t asdk set-pipeline -p create-2022-template -c  $HOME/workspace/labbuildr_pipelines/pipeline_create_win_packer.yml -l $HOME/workspace/dpslab_labbuildr_local/vars_powerprotect.yml --var EDITION=desktop --var=WINDOWS_VERSION=2022

#create template servercore
```
fly -t asdk set-pipeline -p create-2019_core-template -c pipeline_create_2019.yml -l $HOME/workspace/dpslab_labbuildr_local/vars_powerprotect.yml --var edition=SERVER2019CORE
```
fly -t asdk set-pipeline -p create-2019_core-template -c  $HOME/workspace/labbuildr_pipelines/pipeline_create_win_packer.yml -l $HOME/workspace/dpslab_labbuildr_local/vars_powerprotect.yml --var edition=SERVER2019CORE --var=WINDOWS_VERSION=2022

#create template 2019
```
fly -t asdk set-pipeline -p create-2019-template -c pipeline_create_2019.yml -l $HOME/workspace/dpslab_labbuildr_local/vars_powerprotect.yml --var edition=SERVER2019
```
#create dc
```
fly -t asdk set-pipeline -c pipeline_create_dc.yml -l $HOME/workspace/pks_vsphere_local_config/vars_pksdemo.yml -l $HOME/workspace/dpslab_labbuildr_local/vars_powerprotect.yml -p labbuildr_create_dc
```


# create sql server
```bash
fly -t asdk set-pipeline -c pipeline_create_sql_win.yml -l $HOME/workspace/pks_vsphere_local_config/vars_pksdemo.yml -l $HOME/workspace/dpslab_labbuildr_local/vars_powerprotect.yml -p labbuildr_create_sql_win
```

```
fly -t asdk sp -p deploy-exchange-node1 -c $HOME/workspace/labbuildr_pipelines/pipeline_create_exchange_node.yml -l $HOME/workspace/dpslab_labbuildr_local/vars/vars_infra.yml -l $HOME/workspace/dpslab_labbuildr_local/vars/vars_e2019_1.yml
fly -t asdk sp -p deploy-exchange-node2 -c $HOME/workspace/labbuildr_pipelines/pipeline_create_exchange_node.yml -l $HOME/workspace/dpslab_labbuildr_local/vars/vars_infra.yml -l $HOME/workspace/dpslab_labbuildr_local/vars/vars_e2019_2.yml
```
