dfx deploy icrc1-ledger --argument "( 
  variant { 
    Upgrade = opt record {
      feature_flags = opt record{icrc2 = false; archive = true};
      change_archive_options = opt record { num_blocks_to_archive = opt (1000 : nat64); trigger_threshold = opt (2000 : nat64); controller_id = opt principal \"pcj6u-uaaaa-aaaak-aewnq-cai\"; cycles_for_archive_creation = opt 10000000000000; };
    }
  }, 
)" --mode upgrade --upgrade-unchanged --ic

