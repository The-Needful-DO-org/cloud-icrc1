# CLOUD ICRC1 Upgrades

This repo will make some changes to the CLOUD ICRC1 ledger canister.

- Change name from `CLOUD TOKEN` to `Crypto Cloud`
- Add base64 encoded jpg `icrc1_logo` to `icrc1_metadata`
- Upgrade WASM

## How to use

These instructions are for the controller of the CLOUD ledger canister `pcj6u-uaaaa-aaaak-aewnq-cai`

TODO: *Instructions for creating snapshot of canister state

Deploy 3 upgrades located in the `upgrade` folders.

The first upgrade uses a script to change the name and add a logo.

`cd upgrade1`

`sh ./update_name_add_logo.sh`

The next 2 upgrades are simply updating the wasm.

`cd ../upgrade2`

`dfx deploy --ic`

`cd ../upgrade3`

`dfx deploy --ic`
