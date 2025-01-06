# CLOUD ICRC1 Upgrades

This repo will make some changes to the CLOUD ICRC1 ledger canister.

- Change name from `CLOUD TOKEN` to `Crypto Cloud`
- Add base64 encoded jpg `icrc1_logo` to `icrc1_metadata`
- Upgrade WASM

## How to use

These instructions are for the controller of the CLOUD ledger canister `pcj6u-uaaaa-aaaak-aewnq-cai`

Use a script to change the name and add a logo.

`cd ./changeNameAddLogo`

`sh ./update_name_add_logo.sh`


Deploy 3 upgrades located in the `upgrade` folders.

TODO: thorough testing needed

