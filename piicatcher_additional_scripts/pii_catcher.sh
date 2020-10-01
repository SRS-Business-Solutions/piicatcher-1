#piicatcher db -s est-stage-dtb.c7bmm5k5lkk7.us-east-1.rds.amazonaws.com -u est_stage_user -p BVghTR45DF -d eaas_s4 -c deep --list-all> eaas_s4_pii_code_change_deep.log
#piicatcher db -s est-stage-dtb.c7bmm5k5lkk7.us-east-1.rds.amazonaws.com -u est_stage_user -p BVghTR45DF -d eaas_s4 -c shallow --list-all> all_db_pii_code_change_test_09172020.log
piicatcher db -s est-stage-dtb.c7bmm5k5lkk7.us-east-1.rds.amazonaws.com -u est_stage_user -p BVghTR45DF -d eaas_s4 -c shallow --list-all> all_db_pii_code_change_test_09302020.log
#piicatcher db -s est-stage-dtb.c7bmm5k5lkk7.us-east-1.rds.amazonaws.com -u est_stage_user -p BVghTR45DF -d eaas_s4 -c shallow --list-all> all_db_pii_code_change_train.log
