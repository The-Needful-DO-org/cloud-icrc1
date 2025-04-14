dfx deploy icrc1-ledger --argument "( 
  variant { 
    Upgrade = opt record {
      feature_flags = opt record{icrc2 = true};
      change_archive_options = opt record { num_blocks_to_archive = opt (1000 : nat64); trigger_threshold = opt (2000 : nat64); controller_id = opt principal \"uw2ky-lldfm-nyg4v-7qmqd-4fl7x-o4wzv-ah5dw-x75ao-ppqgx-xmu5s-nae\"; cycles_for_archive_creation = opt 10_000_000_000_000; node_max_memory_size_bytes = opt 3_221_225_472 };
    }
  }, 
)" --mode upgrade --upgrade-unchanged --ic

