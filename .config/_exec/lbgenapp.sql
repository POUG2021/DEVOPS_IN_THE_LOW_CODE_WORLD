set cloudconfig .config/wallet_DEVOPS_POUG2021/YOUR_WALLET_ZIP_FILE
connect DEVOPS_POUG2021/[YOUR_DB_USER_PASSWORD]@rgatp28_high
lb genobject -type apex -applicationid &1 -runonchange -expSupportingObjects I -dir ./apex/
exit