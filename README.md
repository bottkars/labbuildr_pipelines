# labbuildr_pipelines


#create template servercore
```
fly -t asdk set-pipeline -p create-2019_core-template -c pipeline_create_2019.yml -l ../dpslab_labbuildr_local/vars_powerprotect.yml --var edition=SERVER2019CORE
```


#create template 2019
```
fly -t asdk set-pipeline -p create-2019-template -c pipeline_create_2019.yml -l ../dpslab_labbuildr_local/vars_powerprotect.yml --var edition=SERVER2019
```
#create dc
```
fly -t asdk set-pipeline -c pipeline_create_dc.yml -l ../pks_vsphere_local_config/vars_pksdemo.yml -l ../dpslab_labbuildr_local/vars_powerprotect.yml -p labbuildr_create_dc
```


# create sql server
```bash
fly -t asdk set-pipeline -c pipeline_create_sql_win.yml -l ../pks_vsphere_local_config/vars_pksdemo.yml -l ../dpslab_labbuildr_local/vars_powerprotect.yml -p labbuildr_create_sql_win
```

