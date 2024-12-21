# Mimic initial CLOUD deployment

Deploy from this folder to create a token similar to the original CLOUD
ICRC1

`dfx canister create icrc1-ledger`

Example output

```
Creating canister icrc1-ledger...                                                       icrc1-ledger canister created with canister id: cuj6u-c4aaa-aaaaa-qaajq-cai
```

Edit `dfx.json` to replace `LEDGER_CANISTER_ID` with created canister id.

`dfx deploy`

## Init args

The setting for `init_args` from dfx.json 
Shown here on multiple lines for convenient viewing.
Must be written in single line in dfx.json

Replace `MINTING_PRINCIPAL` and `INITIAL_BALANCE_PRINCIPAL` and `LEDGER_CANISTER_ID` with appropriate principals.

```
"init_arg": "(variant {Init = record { 
  token_symbol = \"CLOUD\";
  token_name = \"CLOUD TOKEN\";
  minting_account = record { owner = principal \"MINTING_PRINCIPAL\";};
  transfer_fee = 100_000_000;
  metadata = vec {};
  feature_flags = opt record{icrc2 = false;
  archive = false};
  initial_balances = vec { record { record { owner = principal
  \"INITIAL_BALANCE_PRINCIPAL\"; };
    42_069_000_000_000_000; }; };
  archive_options = record { num_blocks_to_archive = 1000; \
      trigger_threshold = 1000; \
      controller_id = principal \"LEDGER_CANISTER_ID"; \
      cycles_for_archive_creation = opt 10000000000000; }; \

 }} )"
```
