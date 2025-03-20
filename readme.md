# CLOUD ICRC1 Upgrades

This repo will make some changes to the CLOUD ICRC1 ledger canister.

- Change name from `CLOUD TOKEN` to `Crypto Cloud`
- Add base64 encoded jpg `icrc1_logo` to `icrc1_metadata`
- Upgrade WASM
- Enable archive

## Name Change and Logo

Use a script to change the name and add a logo.

`cd ./changeNameAddLogo`

`sh ./update_name_add_logo.sh`

# Before Upgrades

Get transaction from ledger:

    dfx canister call icrc1-ledger get_transactions '(record {start = 0; length = 1})'

Note the "log length"

Get index canister status:

    dfx canister call icrc1_index_canister status --ic

Expect to see num\_blocks\_synced to be the same as ledger log length.

Create snapshots:

    dfx canister stop icrc1-ledger --ic

    dfx canister stop icrc1_index_canister --ic

    dfx canister snapshot create icrc1-ledger --ic

    dfx canister snapshot create icrc1_index_canister --ic

# Upgrades

Source for ICRC Ledger suite
https://github.com/dfinity/ic/releases?q=ledger-suite-icrc

Detailed description of upgrade process on Dfinity Forum
https://forum.dfinity.org/t/icrc-ledger-suite-upgrade/40655

Deploy upgrades located in the `upgrade`1, upgrade2, etc... folders.

    cd upgrade1

    sh upgrade_index_prod.sh

    dfx canister start icrc1_index_canister --ic
    
    dfx canister status icrc1_index_canister --ic

Expect to see module: 0x612410c71e893bb64772ab8131d77264740398f3932d873cb4f640fc257f9e61

    sh upgrade_ledger_prod.sh

    dfx canister start icrc1-ledger --ic
    
    dfx canister call icrc1-ledger status --ic

Expect to see module: 0xa170bfdce5d66e751a3cc03747cb0f06b450af500e75e15976ec08a3f5691f4c

Get transaction from ledger:

    dfx canister call icrc1-ledger get_transactions '(record {start = 0; length = 1})' --ic

Expect to see log length at least as big as the log length from before upgrade

Get index canister status:

    dfx canister call icrc1_index_canister status --ic

Expect to see num\_blocks\_synced at least as big as before

# Upgrade 2

cd upgrade2

Upgrade index canister

    sh upgrade_index_prod.sh

Check status:

    dfx canister status icrc1_index_canister --ic

Expect module: 0x67b5f0bf128e801adf4a959ea26c3c9ca0cd399940e169a26a2eb237899a94dd

Upgrade ledger

    sh upgrade_ledger_prod.sh

Check status:

    dfx canister status icrc1-ledger --ic

Expect module: 0x3d808fa63a3d8ebd4510c0400aa078e99a31afaa0515f0b68778f929ce4b2a46

Get transaction from ledger:

    dfx canister call icrc1-ledger get_transactions '(record {start = 0; length = 1})' --ic

Expect to see log length at least as big as the log length from before upgrade

Get index canister status:

    dfx canister call icrc1_index_canister status --ic

Expect to see num\_blocks\_synced at least as big as before

# Upgrade 3

cd upgrade3

Upgrade index canister

    sh upgrade_index_prod.sh

Check status:

    dfx canister status icrc1_index_canister --ic

Expect module: 0x2adc74fe5667f26ea4c4006309d99b1dfa71787aa43a5c168cb08ec725677996

Upgrade ledger

    sh upgrade_ledger_prod.sh

Check status:

    dfx canister status icrc1-ledger --ic

Expect module: 0x25071c2c55ad4571293e00d8e277f442aec7aed88109743ac52df3125209ff45

# Upgrade 4

cd upgrade4

Upgrade index canister

    sh upgrade_index_prod.sh

Check status:

    dfx canister status icrc1_index_canister --ic

Expect module: 0xe155db9d06b6147ece4f9defe599844f132a7db21693265671aa6ac60912935f

Upgrade ledger

    sh upgrade_ledger_prod.sh

Check status:

    dfx canister status icrc1-ledger --ic

Expect module: 0x3b03d1bb1145edbcd11101ab2788517bc0f427c3bd7b342b9e3e7f42e29d5822

# Upgrade 5

cd upgrade5

Upgrade index canister

    sh upgrade_index_prod.sh

Check status:

    dfx canister status icrc1_index_canister --ic

Expect module: 0x79e3d02131367e6a57aefb34989de9d3b5d6817a10d752afe2a571e7b544e547

Upgrade ledger

    sh upgrade_ledger_prod.sh

Check status:

    dfx canister status icrc1-ledger --ic

Expect module: 0x75f5076c0b91cccd7d1d26f718d8645ff3e9be11403936aa74e399647b6c57e8

# Upgrade 6

cd upgrade6

Upgrade index canister

    sh upgrade_index_prod.sh

Check status:

    dfx canister status icrc1_index_canister --ic

Expect module: 0x58c682f5a22b3ad59d9bfbef5570b638c44baf01d0c82e5889593491e841b64f

Upgrade ledger

    sh upgrade_ledger_prod.sh

Check status:

    dfx canister status icrc1-ledger --ic

Expect module: 0xdca85fc694c18181b5c67c93194a7fc72f00226f3b54ac6e4630a9dfe8187503

# Enable archive

cd upgrade6

    sh enable_archive_prod.sh

Perform a transaction, transfer some CLOUD.

Check archive:

    dfx canister call icrc1-ledger archives --ic

Expect to see the archive canister id

