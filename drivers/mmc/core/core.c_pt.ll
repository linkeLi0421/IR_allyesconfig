; ModuleID = '/llk/IR_all_yes/drivers/mmc/core/core.c_pt.bc'
source_filename = "../drivers/mmc/core/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mmc_command_done\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_command_done\09\09\09\09"
module asm "\09.long\09__crc_mmc_command_done\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_command_done:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_command_done\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_command_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mmc_request_done\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_request_done\09\09\09\09"
module asm "\09.long\09__crc_mmc_request_done\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_request_done:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_request_done\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_request_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mmc_start_request\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_start_request\09\09\09\09"
module asm "\09.long\09__crc_mmc_start_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_start_request:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_start_request\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_start_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mmc_wait_for_req_done\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_wait_for_req_done\09\09\09\09"
module asm "\09.long\09__crc_mmc_wait_for_req_done\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_wait_for_req_done:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_wait_for_req_done\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_wait_for_req_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mmc_cqe_start_req\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_cqe_start_req\09\09\09\09"
module asm "\09.long\09__crc_mmc_cqe_start_req\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_cqe_start_req:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_cqe_start_req\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_cqe_start_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mmc_cqe_request_done\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_cqe_request_done\09\09\09\09"
module asm "\09.long\09__crc_mmc_cqe_request_done\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_cqe_request_done:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_cqe_request_done\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_cqe_request_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mmc_cqe_post_req\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_cqe_post_req\09\09\09\09"
module asm "\09.long\09__crc_mmc_cqe_post_req\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_cqe_post_req:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_cqe_post_req\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_cqe_post_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mmc_cqe_recovery\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_cqe_recovery\09\09\09\09"
module asm "\09.long\09__crc_mmc_cqe_recovery\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_cqe_recovery:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_cqe_recovery\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_cqe_recovery:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mmc_is_req_done\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_is_req_done\09\09\09\09"
module asm "\09.long\09__crc_mmc_is_req_done\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_is_req_done:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_is_req_done\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_is_req_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mmc_wait_for_req\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_wait_for_req\09\09\09\09"
module asm "\09.long\09__crc_mmc_wait_for_req\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_wait_for_req:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_wait_for_req\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_wait_for_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mmc_wait_for_cmd\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_wait_for_cmd\09\09\09\09"
module asm "\09.long\09__crc_mmc_wait_for_cmd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_wait_for_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_wait_for_cmd\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_wait_for_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mmc_set_data_timeout\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_set_data_timeout\09\09\09\09"
module asm "\09.long\09__crc_mmc_set_data_timeout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_set_data_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_set_data_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_set_data_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__mmc_claim_host\22, \22a\22\09"
module asm "\09.weak\09__crc___mmc_claim_host\09\09\09\09"
module asm "\09.long\09__crc___mmc_claim_host\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___mmc_claim_host:\09\09\09\09\09"
module asm "\09.asciz \09\22__mmc_claim_host\22\09\09\09\09\09"
module asm "__kstrtabns___mmc_claim_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mmc_release_host\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_release_host\09\09\09\09"
module asm "\09.long\09__crc_mmc_release_host\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_release_host:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_release_host\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_release_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mmc_get_card\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_get_card\09\09\09\09"
module asm "\09.long\09__crc_mmc_get_card\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_get_card:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_get_card\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_get_card:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mmc_put_card\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_put_card\09\09\09\09"
module asm "\09.long\09__crc_mmc_put_card\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_put_card:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_put_card\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_put_card:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mmc_detect_change\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_detect_change\09\09\09\09"
module asm "\09.long\09__crc_mmc_detect_change\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_detect_change:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_detect_change\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_detect_change:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mmc_erase\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_erase\09\09\09\09"
module asm "\09.long\09__crc_mmc_erase\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_erase:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_erase\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_erase:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mmc_can_erase\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_can_erase\09\09\09\09"
module asm "\09.long\09__crc_mmc_can_erase\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_can_erase:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_can_erase\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_can_erase:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mmc_can_trim\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_can_trim\09\09\09\09"
module asm "\09.long\09__crc_mmc_can_trim\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_can_trim:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_can_trim\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_can_trim:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mmc_can_discard\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_can_discard\09\09\09\09"
module asm "\09.long\09__crc_mmc_can_discard\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_can_discard:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_can_discard\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_can_discard:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mmc_can_secure_erase_trim\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_can_secure_erase_trim\09\09\09\09"
module asm "\09.long\09__crc_mmc_can_secure_erase_trim\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_can_secure_erase_trim:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_can_secure_erase_trim\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_can_secure_erase_trim:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mmc_erase_group_aligned\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_erase_group_aligned\09\09\09\09"
module asm "\09.long\09__crc_mmc_erase_group_aligned\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_erase_group_aligned:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_erase_group_aligned\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_erase_group_aligned:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mmc_calc_max_discard\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_calc_max_discard\09\09\09\09"
module asm "\09.long\09__crc_mmc_calc_max_discard\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_calc_max_discard:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_calc_max_discard\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_calc_max_discard:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mmc_card_is_blockaddr\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_card_is_blockaddr\09\09\09\09"
module asm "\09.long\09__crc_mmc_card_is_blockaddr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_card_is_blockaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_card_is_blockaddr\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_card_is_blockaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mmc_set_blocklen\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_set_blocklen\09\09\09\09"
module asm "\09.long\09__crc_mmc_set_blocklen\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_set_blocklen:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_set_blocklen\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_set_blocklen:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mmc_hw_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_hw_reset\09\09\09\09"
module asm "\09.long\09__crc_mmc_hw_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_hw_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_hw_reset\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_hw_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mmc_sw_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_sw_reset\09\09\09\09"
module asm "\09.long\09__crc_mmc_sw_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_sw_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_sw_reset\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_sw_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mmc_detect_card_removed\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_detect_card_removed\09\09\09\09"
module asm "\09.long\09__crc_mmc_detect_card_removed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_detect_card_removed:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_detect_card_removed\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_detect_card_removed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mmc_card_alternative_gpt_sector\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_card_alternative_gpt_sector\09\09\09\09"
module asm "\09.long\09__crc_mmc_card_alternative_gpt_sector\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_card_alternative_gpt_sector:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_card_alternative_gpt_sector\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_card_alternative_gpt_sector:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.104 }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.106, %struct.trace_event, ptr, ptr, %union.anon.107, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.106 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.107 = type { ptr }
%union.anon.108 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.109 = type { %struct.bpf_raw_event_map }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.77 }
%union.anon.77 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.trace_event_raw_mmc_request_start = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_mmc_request_done = type { %struct.trace_entry, i32, i32, [4 x i32], i32, i32, i32, [4 x i32], i32, i32, i32, [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, [0 x i8] }
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_cqe_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.21 }
%struct.llist_node = type { ptr }
%union.anon.21 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.23 }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.58 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mmc_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_mmc_request_start = internal constant [18 x i8] c"mmc_request_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mmc_request_start = dso_local global %struct.static_call_key { ptr @__traceiter_mmc_request_start }, align 4
@__tracepoint_mmc_request_start = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mmc_request_start, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mmc_request_start, ptr null, ptr @__traceiter_mmc_request_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mmc_request_start = internal constant ptr @__tracepoint_mmc_request_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_mmc_request_done = internal constant [17 x i8] c"mmc_request_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mmc_request_done = dso_local global %struct.static_call_key { ptr @__traceiter_mmc_request_done }, align 4
@__tracepoint_mmc_request_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mmc_request_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mmc_request_done, ptr null, ptr @__traceiter_mmc_request_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mmc_request_done = internal constant ptr @__tracepoint_mmc_request_done, section "__tracepoints_ptrs", align 4
@str__mmc__trace_system_name = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mmc\00", [28 x i8] zeroinitializer }, align 32
@trace_event_fields_mmc_request_start = internal global { [26 x %struct.trace_event_fields], [144 x i8] } { [26 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.49, %union.anon.104 { %struct.anon.105 { ptr @.str.50, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.49, %union.anon.104 { %struct.anon.105 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.52, %union.anon.104 { %struct.anon.105 { ptr @.str.53, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.52, %union.anon.104 { %struct.anon.105 { ptr @.str.54, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.49, %union.anon.104 { %struct.anon.105 { ptr @.str.55, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.49, %union.anon.104 { %struct.anon.105 { ptr @.str.56, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.52, %union.anon.104 { %struct.anon.105 { ptr @.str.57, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.52, %union.anon.104 { %struct.anon.105 { ptr @.str.58, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.49, %union.anon.104 { %struct.anon.105 { ptr @.str.59, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.49, %union.anon.104 { %struct.anon.105 { ptr @.str.60, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.52, %union.anon.104 { %struct.anon.105 { ptr @.str.61, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.52, %union.anon.104 { %struct.anon.105 { ptr @.str.62, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.52, %union.anon.104 { %struct.anon.105 { ptr @.str.63, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.52, %union.anon.104 { %struct.anon.105 { ptr @.str.64, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.52, %union.anon.104 { %struct.anon.105 { ptr @.str.65, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.52, %union.anon.104 { %struct.anon.105 { ptr @.str.66, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.67, %union.anon.104 { %struct.anon.105 { ptr @.str.68, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.52, %union.anon.104 { %struct.anon.105 { ptr @.str.69, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.52, %union.anon.104 { %struct.anon.105 { ptr @.str.70, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.52, %union.anon.104 { %struct.anon.105 { ptr @.str.71, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.67, %union.anon.104 { %struct.anon.105 { ptr @.str.72, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.67, %union.anon.104 { %struct.anon.105 { ptr @.str.73, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.52, %union.anon.104 { %struct.anon.105 { ptr @.str.74, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.75, %union.anon.104 { %struct.anon.105 { ptr @.str.76, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.77, %union.anon.104 { %struct.anon.105 { ptr @.str.78, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [144 x i8] zeroinitializer }, align 32
@event_class_mmc_request_start = internal global %struct.trace_event_class { ptr @str__mmc__trace_system_name, ptr @trace_event_raw_event_mmc_request_start, ptr @perf_trace_mmc_request_start, ptr @trace_event_reg, ptr @trace_event_fields_mmc_request_start, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mmc_request_start, i64 24), ptr getelementptr (i8, ptr @event_class_mmc_request_start, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mmc_request_start = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mmc_request_start, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mmc_request_start = internal global { [763 x i8], [165 x i8] } { [763 x i8] c"\22%s: start struct mmc_request[%p]: cmd_opcode=%u cmd_arg=0x%x cmd_flags=0x%x cmd_retries=%u stop_opcode=%u stop_arg=0x%x stop_flags=0x%x stop_retries=%u sbc_opcode=%u sbc_arg=0x%x sbc_flags=0x%x sbc_retires=%u blocks=%u block_size=%u blk_addr=%u data_flags=0x%x tag=%d can_retune=%u doing_retune=%u retune_now=%u need_retune=%d hold_retune=%d retune_period=%u\22, __get_str(name), REC->mrq, REC->cmd_opcode, REC->cmd_arg, REC->cmd_flags, REC->cmd_retries, REC->stop_opcode, REC->stop_arg, REC->stop_flags, REC->stop_retries, REC->sbc_opcode, REC->sbc_arg, REC->sbc_flags, REC->sbc_retries, REC->blocks, REC->blksz, REC->blk_addr, REC->data_flags, REC->tag, REC->can_retune, REC->doing_retune, REC->retune_now, REC->need_retune, REC->hold_retune, REC->retune_period\00", [165 x i8] zeroinitializer }, align 32
@event_mmc_request_start = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mmc_request_start, %union.anon.106 { ptr @__tracepoint_mmc_request_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mmc_request_start }, ptr @print_fmt_mmc_request_start, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mmc_request_start = internal global ptr @event_mmc_request_start, section "_ftrace_events", align 4
@trace_event_fields_mmc_request_done = internal global { [24 x %struct.trace_event_fields], [128 x i8] } { [24 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.49, %union.anon.104 { %struct.anon.105 { ptr @.str.50, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.67, %union.anon.104 { %struct.anon.105 { ptr @.str.80, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.81, %union.anon.104 { %struct.anon.105 { ptr @.str.82, i32 16, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.52, %union.anon.104 { %struct.anon.105 { ptr @.str.54, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.49, %union.anon.104 { %struct.anon.105 { ptr @.str.55, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.67, %union.anon.104 { %struct.anon.105 { ptr @.str.83, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.81, %union.anon.104 { %struct.anon.105 { ptr @.str.84, i32 16, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.52, %union.anon.104 { %struct.anon.105 { ptr @.str.58, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.49, %union.anon.104 { %struct.anon.105 { ptr @.str.59, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.67, %union.anon.104 { %struct.anon.105 { ptr @.str.85, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.81, %union.anon.104 { %struct.anon.105 { ptr @.str.86, i32 16, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.52, %union.anon.104 { %struct.anon.105 { ptr @.str.62, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.52, %union.anon.104 { %struct.anon.105 { ptr @.str.87, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.67, %union.anon.104 { %struct.anon.105 { ptr @.str.88, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.67, %union.anon.104 { %struct.anon.105 { ptr @.str.68, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.52, %union.anon.104 { %struct.anon.105 { ptr @.str.69, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.52, %union.anon.104 { %struct.anon.105 { ptr @.str.70, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.52, %union.anon.104 { %struct.anon.105 { ptr @.str.71, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.67, %union.anon.104 { %struct.anon.105 { ptr @.str.72, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.67, %union.anon.104 { %struct.anon.105 { ptr @.str.73, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.52, %union.anon.104 { %struct.anon.105 { ptr @.str.74, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.75, %union.anon.104 { %struct.anon.105 { ptr @.str.76, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.77, %union.anon.104 { %struct.anon.105 { ptr @.str.78, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [128 x i8] zeroinitializer }, align 32
@event_class_mmc_request_done = internal global %struct.trace_event_class { ptr @str__mmc__trace_system_name, ptr @trace_event_raw_event_mmc_request_done, ptr @perf_trace_mmc_request_done, ptr @trace_event_reg, ptr @trace_event_fields_mmc_request_done, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mmc_request_done, i64 24), ptr getelementptr (i8, ptr @event_class_mmc_request_done, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mmc_request_done = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mmc_request_done, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mmc_request_done = internal global { [921 x i8], [231 x i8] } { [921 x i8] c"\22%s: end struct mmc_request[%p]: cmd_opcode=%u cmd_err=%d cmd_resp=0x%x 0x%x 0x%x 0x%x cmd_retries=%u stop_opcode=%u stop_err=%d stop_resp=0x%x 0x%x 0x%x 0x%x stop_retries=%u sbc_opcode=%u sbc_err=%d sbc_resp=0x%x 0x%x 0x%x 0x%x sbc_retries=%u bytes_xfered=%u data_err=%d tag=%d can_retune=%u doing_retune=%u retune_now=%u need_retune=%d hold_retune=%d retune_period=%u\22, __get_str(name), REC->mrq, REC->cmd_opcode, REC->cmd_err, REC->cmd_resp[0], REC->cmd_resp[1], REC->cmd_resp[2], REC->cmd_resp[3], REC->cmd_retries, REC->stop_opcode, REC->stop_err, REC->stop_resp[0], REC->stop_resp[1], REC->stop_resp[2], REC->stop_resp[3], REC->stop_retries, REC->sbc_opcode, REC->sbc_err, REC->sbc_resp[0], REC->sbc_resp[1], REC->sbc_resp[2], REC->sbc_resp[3], REC->sbc_retries, REC->bytes_xfered, REC->data_err, REC->tag, REC->can_retune, REC->doing_retune, REC->retune_now, REC->need_retune, REC->hold_retune, REC->retune_period\00", [231 x i8] zeroinitializer }, align 32
@event_mmc_request_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mmc_request_done, %union.anon.106 { ptr @__tracepoint_mmc_request_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mmc_request_done }, ptr @print_fmt_mmc_request_done, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mmc_request_done = internal global ptr @event_mmc_request_done, section "_ftrace_events", align 4
@__bpf_trace_tp_map_mmc_request_start = internal global %union.anon.108 { %struct.bpf_raw_event_map { ptr @__tracepoint_mmc_request_start, ptr @__bpf_trace_mmc_request_start, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mmc_request_done = internal global %union.anon.109 { %struct.bpf_raw_event_map { ptr @__tracepoint_mmc_request_done, ptr @__bpf_trace_mmc_request_done, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@use_spi_crc = dso_local global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_str_use_spi_crc = internal constant [21 x i8] c"mmc_core.use_spi_crc\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_use_spi_crc = internal constant %struct.kernel_param { ptr @__param_str_use_spi_crc, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.77 { ptr @use_spi_crc } }, section "__param", align 4
@__UNIQUE_ID_use_spi_crctype323 = internal constant [35 x i8] c"mmc_core.parmtype=use_spi_crc:bool\00", section ".modinfo", align 1
@mmc_command_done.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc_core\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mmc_command_done\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/mmc/core/core.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: cmd done, tfr ongoing (CMD%u)\0A\00", [61 x i8] zeroinitializer }, align 32
@__kstrtab_mmc_command_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_command_done = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_command_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_command_done to i32), ptr @__kstrtab_mmc_command_done, ptr @__kstrtabns_mmc_command_done }, section "___ksymtab+mmc_command_done", align 4
@mmc_request_done.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mmc_request_done\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: req done <CMD%u>: %d: %08x %08x %08x %08x\0A\00", [49 x i8] zeroinitializer }, align 32
@mmc_request_done.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: req done (CMD%u): %d: %08x %08x %08x %08x\0A\00", [49 x i8] zeroinitializer }, align 32
@mmc_request_done.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.7, i8 0, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:     %d bytes transferred: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@mmc_request_done.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.8, i8 0, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s:     (CMD%u): %d: %08x %08x %08x %08x\0A\00", [54 x i8] zeroinitializer }, align 32
@__kstrtab_mmc_request_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_request_done = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_request_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_request_done to i32), ptr @__kstrtab_mmc_request_done, ptr @__kstrtabns_mmc_request_done }, section "___ksymtab+mmc_request_done", align 4
@__kstrtab_mmc_start_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_start_request = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_start_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_start_request to i32), ptr @__kstrtab_mmc_start_request, ptr @__kstrtabns_mmc_start_request }, section "___ksymtab+mmc_start_request", align 4
@mmc_wait_for_req_done.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mmc_wait_for_req_done\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: req failed (CMD%u): %d, retrying...\0A\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_mmc_wait_for_req_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_wait_for_req_done = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_wait_for_req_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_wait_for_req_done to i32), ptr @__kstrtab_mmc_wait_for_req_done, ptr @__kstrtabns_mmc_wait_for_req_done }, section "___ksymtab+mmc_wait_for_req_done", align 4
@mmc_cqe_start_req.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mmc_cqe_start_req\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: failed to start CQE direct CMD%u, error %d\0A\00", [48 x i8] zeroinitializer }, align 32
@mmc_cqe_start_req.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: failed to start CQE transfer for tag %d, error %d\0A\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_mmc_cqe_start_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_cqe_start_req = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_cqe_start_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_cqe_start_req to i32), ptr @__kstrtab_mmc_cqe_start_req, ptr @__kstrtabns_mmc_cqe_start_req }, section "___ksymtab+mmc_cqe_start_req", align 4
@mmc_cqe_request_done.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mmc_cqe_request_done\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: CQE req done (direct CMD%u): %d\0A\00", [59 x i8] zeroinitializer }, align 32
@mmc_cqe_request_done.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.16, i8 0, i8 124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: CQE transfer done tag %d\0A\00", [34 x i8] zeroinitializer }, align 32
@mmc_cqe_request_done.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.7, i8 0, i8 126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__kstrtab_mmc_cqe_request_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_cqe_request_done = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_cqe_request_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_cqe_request_done to i32), ptr @__kstrtab_mmc_cqe_request_done, ptr @__kstrtabns_mmc_cqe_request_done }, section "___ksymtab+mmc_cqe_request_done", align 4
@__kstrtab_mmc_cqe_post_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_cqe_post_req = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_cqe_post_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_cqe_post_req to i32), ptr @__kstrtab_mmc_cqe_post_req, ptr @__kstrtabns_mmc_cqe_post_req }, section "___ksymtab+mmc_cqe_post_req", align 4
@mmc_cqe_recovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014%s: running CQE recovery\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mmc_cqe_recovery\00", [47 x i8] zeroinitializer }, align 32
@mmc_cqe_recovery._entry_ptr = internal global ptr @mmc_cqe_recovery._entry, section ".printk_index", align 4
@__kstrtab_mmc_cqe_recovery = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_cqe_recovery = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_cqe_recovery = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_cqe_recovery to i32), ptr @__kstrtab_mmc_cqe_recovery, ptr @__kstrtabns_mmc_cqe_recovery }, section "___ksymtab+mmc_cqe_recovery", align 4
@__kstrtab_mmc_is_req_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_is_req_done = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_is_req_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_is_req_done to i32), ptr @__kstrtab_mmc_is_req_done, ptr @__kstrtabns_mmc_is_req_done }, section "___ksymtab+mmc_is_req_done", align 4
@__kstrtab_mmc_wait_for_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_wait_for_req = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_wait_for_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_wait_for_req to i32), ptr @__kstrtab_mmc_wait_for_req, ptr @__kstrtabns_mmc_wait_for_req }, section "___ksymtab+mmc_wait_for_req", align 4
@__kstrtab_mmc_wait_for_cmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_wait_for_cmd = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_wait_for_cmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_wait_for_cmd to i32), ptr @__kstrtab_mmc_wait_for_cmd, ptr @__kstrtabns_mmc_wait_for_cmd }, section "___ksymtab+mmc_wait_for_cmd", align 4
@__kstrtab_mmc_set_data_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_set_data_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_set_data_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_set_data_timeout to i32), ptr @__kstrtab_mmc_set_data_timeout, ptr @__kstrtabns_mmc_set_data_timeout }, section "___ksymtab+mmc_set_data_timeout", align 4
@__kstrtab___mmc_claim_host = external dso_local constant [0 x i8], align 1
@__kstrtabns___mmc_claim_host = external dso_local constant [0 x i8], align 1
@__ksymtab___mmc_claim_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__mmc_claim_host to i32), ptr @__kstrtab___mmc_claim_host, ptr @__kstrtabns___mmc_claim_host }, section "___ksymtab+__mmc_claim_host", align 4
@__kstrtab_mmc_release_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_release_host = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_release_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_release_host to i32), ptr @__kstrtab_mmc_release_host, ptr @__kstrtabns_mmc_release_host }, section "___ksymtab+mmc_release_host", align 4
@__kstrtab_mmc_get_card = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_get_card = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_get_card = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_get_card to i32), ptr @__kstrtab_mmc_get_card, ptr @__kstrtabns_mmc_get_card }, section "___ksymtab+mmc_get_card", align 4
@__kstrtab_mmc_put_card = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_put_card = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_put_card = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_put_card to i32), ptr @__kstrtab_mmc_put_card, ptr @__kstrtabns_mmc_put_card }, section "___ksymtab+mmc_put_card", align 4
@mmc_execute_tuning._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 948, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: tuning execution failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mmc_execute_tuning\00", [45 x i8] zeroinitializer }, align 32
@mmc_execute_tuning._entry_ptr = internal global ptr @mmc_execute_tuning._entry, section ".printk_index", align 4
@mmc_select_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 1119, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"card claims to support voltages below defined range\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mmc_select_voltage\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mmc_select_voltage._entry_ptr = internal global ptr @mmc_select_voltage._entry, section ".printk_index", align 4
@mmc_select_voltage._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.23, ptr @.str.2, i32 1125, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no support for card's volts\0A\00", [35 x i8] zeroinitializer }, align 32
@mmc_select_voltage._entry_ptr.28 = internal global ptr @mmc_select_voltage._entry.26, section ".printk_index", align 4
@mmc_select_voltage._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.23, ptr @.str.2, i32 1137, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"exceeding card's volts\0A\00", [40 x i8] zeroinitializer }, align 32
@mmc_select_voltage._entry_ptr.31 = internal global ptr @mmc_select_voltage._entry.29, section ".printk_index", align 4
@mmc_set_initial_signal_voltage.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 1, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mmc_set_initial_signal_voltage\00", [33 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Initial signal voltage of 3.3v\0A\00", [32 x i8] zeroinitializer }, align 32
@mmc_set_initial_signal_voltage.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.34, i8 1, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Initial signal voltage of 1.8v\0A\00", [32 x i8] zeroinitializer }, align 32
@mmc_set_initial_signal_voltage.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.35, i8 1, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Initial signal voltage of 1.2v\0A\00", [32 x i8] zeroinitializer }, align 32
@mmc_set_uhs_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 1206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: cannot verify signal voltage switch\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mmc_set_uhs_voltage\00", [44 x i8] zeroinitializer }, align 32
@mmc_set_uhs_voltage._entry_ptr = internal global ptr @mmc_set_uhs_voltage._entry, section ".printk_index", align 4
@mmc_set_uhs_voltage.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 1, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: Signal voltage switch failed, power cycling card\0A\00", [42 x i8] zeroinitializer }, align 32
@__kstrtab_mmc_detect_change = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_detect_change = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_detect_change = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_detect_change to i32), ptr @__kstrtab_mmc_detect_change, ptr @__kstrtabns_mmc_detect_change }, section "___ksymtab+mmc_detect_change", align 4
@__kstrtab_mmc_erase = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_erase = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_erase = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_erase to i32), ptr @__kstrtab_mmc_erase, ptr @__kstrtabns_mmc_erase }, section "___ksymtab+mmc_erase", align 4
@__kstrtab_mmc_can_erase = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_can_erase = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_can_erase = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_can_erase to i32), ptr @__kstrtab_mmc_can_erase, ptr @__kstrtabns_mmc_can_erase }, section "___ksymtab+mmc_can_erase", align 4
@__kstrtab_mmc_can_trim = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_can_trim = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_can_trim = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_can_trim to i32), ptr @__kstrtab_mmc_can_trim, ptr @__kstrtabns_mmc_can_trim }, section "___ksymtab+mmc_can_trim", align 4
@__kstrtab_mmc_can_discard = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_can_discard = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_can_discard = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_can_discard to i32), ptr @__kstrtab_mmc_can_discard, ptr @__kstrtabns_mmc_can_discard }, section "___ksymtab+mmc_can_discard", align 4
@__kstrtab_mmc_can_secure_erase_trim = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_can_secure_erase_trim = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_can_secure_erase_trim = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_can_secure_erase_trim to i32), ptr @__kstrtab_mmc_can_secure_erase_trim, ptr @__kstrtabns_mmc_can_secure_erase_trim }, section "___ksymtab+mmc_can_secure_erase_trim", align 4
@__kstrtab_mmc_erase_group_aligned = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_erase_group_aligned = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_erase_group_aligned = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_erase_group_aligned to i32), ptr @__kstrtab_mmc_erase_group_aligned, ptr @__kstrtabns_mmc_erase_group_aligned }, section "___ksymtab+mmc_erase_group_aligned", align 4
@mmc_calc_max_discard.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 1, i8 -22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mmc_calc_max_discard\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: calculated max. discard sectors %u for timeout %u ms\0A\00", [38 x i8] zeroinitializer }, align 32
@__kstrtab_mmc_calc_max_discard = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_calc_max_discard = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_calc_max_discard = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_calc_max_discard to i32), ptr @__kstrtab_mmc_calc_max_discard, ptr @__kstrtabns_mmc_calc_max_discard }, section "___ksymtab+mmc_calc_max_discard", align 4
@__kstrtab_mmc_card_is_blockaddr = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_card_is_blockaddr = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_card_is_blockaddr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_card_is_blockaddr to i32), ptr @__kstrtab_mmc_card_is_blockaddr, ptr @__kstrtabns_mmc_card_is_blockaddr }, section "___ksymtab+mmc_card_is_blockaddr", align 4
@__kstrtab_mmc_set_blocklen = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_set_blocklen = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_set_blocklen = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_set_blocklen to i32), ptr @__kstrtab_mmc_set_blocklen, ptr @__kstrtabns_mmc_set_blocklen }, section "___ksymtab+mmc_set_blocklen", align 4
@mmc_hw_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 2013, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014%s: tried to HW reset card, got error %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mmc_hw_reset\00", [19 x i8] zeroinitializer }, align 32
@mmc_hw_reset._entry_ptr = internal global ptr @mmc_hw_reset._entry, section ".printk_index", align 4
@__kstrtab_mmc_hw_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_hw_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_hw_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_hw_reset to i32), ptr @__kstrtab_mmc_hw_reset, ptr @__kstrtabns_mmc_hw_reset }, section "___ksymtab+mmc_hw_reset", align 4
@mmc_sw_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 2029, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014%s: tried to SW reset card, got error %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mmc_sw_reset\00", [19 x i8] zeroinitializer }, align 32
@mmc_sw_reset._entry_ptr = internal global ptr @mmc_sw_reset._entry, section ".printk_index", align 4
@__kstrtab_mmc_sw_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_sw_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_sw_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_sw_reset to i32), ptr @__kstrtab_mmc_sw_reset, ptr @__kstrtabns_mmc_sw_reset }, section "___ksymtab+mmc_sw_reset", align 4
@_mmc_detect_card_removed.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 2, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"_mmc_detect_card_removed\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: card removed too slowly\0A\00", [35 x i8] zeroinitializer }, align 32
@_mmc_detect_card_removed.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.47, i8 2, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: card remove detected\0A\00", [38 x i8] zeroinitializer }, align 32
@__kstrtab_mmc_detect_card_removed = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_detect_card_removed = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_detect_card_removed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_detect_card_removed to i32), ptr @__kstrtab_mmc_detect_card_removed, ptr @__kstrtabns_mmc_detect_card_removed }, section "___ksymtab+mmc_detect_card_removed", align 4
@__kstrtab_mmc_card_alternative_gpt_sector = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_card_alternative_gpt_sector = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_card_alternative_gpt_sector = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_card_alternative_gpt_sector to i32), ptr @__kstrtab_mmc_card_alternative_gpt_sector, ptr @__kstrtabns_mmc_card_alternative_gpt_sector }, section "___ksymtab+mmc_card_alternative_gpt_sector", align 4
@__initcall__kmod_mmc_core__358_2332_mmc_init4 = internal global ptr @mmc_init, section ".initcall4.init", align 4
@__exitcall_mmc_exit = internal global ptr @mmc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file359 = internal constant [40 x i8] c"mmc_core.file=drivers/mmc/core/mmc_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license360 = internal constant [21 x i8] c"mmc_core.license=GPL\00", section ".modinfo", align 1
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cmd_opcode\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cmd_arg\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cmd_flags\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cmd_retries\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stop_opcode\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"stop_arg\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stop_flags\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stop_retries\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sbc_opcode\00", [21 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sbc_arg\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sbc_flags\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sbc_retries\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"blocks\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"blk_addr\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"blksz\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"data_flags\00", [21 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tag\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"can_retune\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"doing_retune\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"retune_now\00", [21 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"need_retune\00", [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hold_retune\00", [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"retune_period\00", [18 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"struct mmc_request *\00", [43 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mrq\00", [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [360 x i8], [88 x i8] } { [360 x i8] c"%s: start struct mmc_request[%p]: cmd_opcode=%u cmd_arg=0x%x cmd_flags=0x%x cmd_retries=%u stop_opcode=%u stop_arg=0x%x stop_flags=0x%x stop_retries=%u sbc_opcode=%u sbc_arg=0x%x sbc_flags=0x%x sbc_retires=%u blocks=%u block_size=%u blk_addr=%u data_flags=0x%x tag=%d can_retune=%u doing_retune=%u retune_now=%u need_retune=%d hold_retune=%d retune_period=%u\0A\00", [88 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cmd_err\00", [24 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"u32[4]\00", [25 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cmd_resp\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"stop_err\00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stop_resp\00", [22 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sbc_err\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sbc_resp\00", [23 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bytes_xfered\00", [19 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"data_err\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [370 x i8], [78 x i8] } { [370 x i8] c"%s: end struct mmc_request[%p]: cmd_opcode=%u cmd_err=%d cmd_resp=0x%x 0x%x 0x%x 0x%x cmd_retries=%u stop_opcode=%u stop_err=%d stop_resp=0x%x 0x%x 0x%x 0x%x stop_retries=%u sbc_opcode=%u sbc_err=%d sbc_resp=0x%x 0x%x 0x%x 0x%x sbc_retries=%u bytes_xfered=%u data_err=%d tag=%d can_retune=%u doing_retune=%u retune_now=%u need_retune=%d hold_retune=%d retune_period=%u\0A\00", [78 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/mmc.h\00", [37 x i8] zeroinitializer }, align 32
@trace_mmc_request_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.91 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.92 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@mmc_should_fail_request.data_errors = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -110, i32 -84, i32 -5], [20 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@mmc_mrq_pr_debug.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.95, i8 0, i8 67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mmc_mrq_pr_debug\00", [47 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"<%s: starting CMD%u arg %08x flags %08x>\0A\00", [54 x i8] zeroinitializer }, align 32
@mmc_mrq_pr_debug.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.96, i8 0, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: starting %sCMD%u arg %08x flags %08x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CQE direct \00", [20 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@mmc_mrq_pr_debug.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.99, i8 0, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: starting CQE transfer for tag %d blkaddr %u\0A\00", [47 x i8] zeroinitializer }, align 32
@mmc_mrq_pr_debug.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.100, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s:     blksz %d blocks %d flags %08x tsac %d ms nsac %d\0A\00", [38 x i8] zeroinitializer }, align 32
@mmc_mrq_pr_debug.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.101, i8 0, i8 73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s:     CMD%u arg %08x flags %08x\0A\00", [61 x i8] zeroinitializer }, align 32
@trace_mmc_request_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mmc_set_ios.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.2, ptr @.str.103, i8 0, i8 -33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmc_set_ios\00", [20 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s: clock %uHz busmode %u powermode %u cs %u Vdd %u width %u timing %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@system_freezable_wq = external dso_local local_unnamed_addr global ptr, align 4
@mmc_do_erase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.2, i32 1633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013mmc_erase: group start error %d, status %#x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mmc_do_erase\00", [19 x i8] zeroinitializer }, align 32
@mmc_do_erase._entry_ptr = internal global ptr @mmc_do_erase._entry, section ".printk_index", align 4
@mmc_do_erase._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str.2, i32 1648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013mmc_erase: group end error %d, status %#x\0A\00", [51 x i8] zeroinitializer }, align 32
@mmc_do_erase._entry_ptr.109 = internal global ptr @mmc_do_erase._entry.107, section ".printk_index", align 4
@mmc_do_erase._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.106, ptr @.str.2, i32 1662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013mmc_erase: erase error %d, status %#x\0A\00", [55 x i8] zeroinitializer }, align 32
@mmc_do_erase._entry_ptr.112 = internal global ptr @mmc_do_erase._entry.110, section ".printk_index", align 4
@mmc_rescan_try_freq.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.2, ptr @.str.114, i8 1, i8 -2, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mmc_rescan_try_freq\00", [44 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: %s: trying to init card at %u Hz\0A\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 19, i64 21]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 52, i64 53]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 12]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2147483648]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 10]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.121 = private unnamed_addr constant [28 x i8] c"str__mmc__trace_system_name\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 36, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant [37 x i8] c"trace_event_fields_mmc_request_start\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_mmc_request_start\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [28 x i8] c"print_fmt_mmc_request_start\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [24 x i8] c"event_mmc_request_start\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [36 x i8] c"trace_event_fields_mmc_request_done\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_mmc_request_done\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [27 x i8] c"print_fmt_mmc_request_done\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [23 x i8] c"event_mmc_request_done\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [12 x i8] c"use_spi_crc\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 61, i32 6 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 126, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 181, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 188, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 194, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 200, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 413, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 464, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 467, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 494, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 497, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 546, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 947, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1118, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1125, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1137, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1163, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1165, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1167, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1205, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1250, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1959, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 2012, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 2028, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 2104, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 2109, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 13, i32 1 }
@___asan_gen_.434 = private unnamed_addr constant [30 x i8] c"../include/trace/events/mmc.h\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 96, i32 1 }
@___asan_gen_.437 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 108, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant [12 x i8] c"data_errors\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 87, i32 19 }
@___asan_gen_.442 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.446 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 87, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 269, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 275, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 279, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 284, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 293, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 888, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1082, i32 35 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1632, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1647, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 1661, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.506 = private constant [27 x i8] c"../drivers/mmc/core/core.c\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 2039, i32 2 }
@llvm.compiler.used = appending global [187 x ptr] [ptr @__UNIQUE_ID_file359, ptr @__UNIQUE_ID_license360, ptr @__UNIQUE_ID_use_spi_crctype323, ptr @__bpf_trace_tp_map_mmc_request_done, ptr @__bpf_trace_tp_map_mmc_request_start, ptr @__event_mmc_request_done, ptr @__event_mmc_request_start, ptr @__exitcall_mmc_exit, ptr @__initcall__kmod_mmc_core__358_2332_mmc_init4, ptr @__ksymtab___mmc_claim_host, ptr @__ksymtab_mmc_calc_max_discard, ptr @__ksymtab_mmc_can_discard, ptr @__ksymtab_mmc_can_erase, ptr @__ksymtab_mmc_can_secure_erase_trim, ptr @__ksymtab_mmc_can_trim, ptr @__ksymtab_mmc_card_alternative_gpt_sector, ptr @__ksymtab_mmc_card_is_blockaddr, ptr @__ksymtab_mmc_command_done, ptr @__ksymtab_mmc_cqe_post_req, ptr @__ksymtab_mmc_cqe_recovery, ptr @__ksymtab_mmc_cqe_request_done, ptr @__ksymtab_mmc_cqe_start_req, ptr @__ksymtab_mmc_detect_card_removed, ptr @__ksymtab_mmc_detect_change, ptr @__ksymtab_mmc_erase, ptr @__ksymtab_mmc_erase_group_aligned, ptr @__ksymtab_mmc_get_card, ptr @__ksymtab_mmc_hw_reset, ptr @__ksymtab_mmc_is_req_done, ptr @__ksymtab_mmc_put_card, ptr @__ksymtab_mmc_release_host, ptr @__ksymtab_mmc_request_done, ptr @__ksymtab_mmc_set_blocklen, ptr @__ksymtab_mmc_set_data_timeout, ptr @__ksymtab_mmc_start_request, ptr @__ksymtab_mmc_sw_reset, ptr @__ksymtab_mmc_wait_for_cmd, ptr @__ksymtab_mmc_wait_for_req, ptr @__ksymtab_mmc_wait_for_req_done, ptr @__param_use_spi_crc, ptr @__tracepoint_mmc_request_done, ptr @__tracepoint_mmc_request_start, ptr @__tracepoint_ptr_mmc_request_done, ptr @__tracepoint_ptr_mmc_request_start, ptr @event_class_mmc_request_done, ptr @event_class_mmc_request_start, ptr @event_mmc_request_done, ptr @event_mmc_request_start, ptr @mmc_cqe_recovery._entry, ptr @mmc_cqe_recovery._entry_ptr, ptr @mmc_do_erase._entry, ptr @mmc_do_erase._entry.107, ptr @mmc_do_erase._entry.110, ptr @mmc_do_erase._entry_ptr, ptr @mmc_do_erase._entry_ptr.109, ptr @mmc_do_erase._entry_ptr.112, ptr @mmc_execute_tuning._entry, ptr @mmc_execute_tuning._entry_ptr, ptr @mmc_exit, ptr @mmc_hw_reset._entry, ptr @mmc_hw_reset._entry_ptr, ptr @mmc_select_voltage._entry, ptr @mmc_select_voltage._entry.26, ptr @mmc_select_voltage._entry.29, ptr @mmc_select_voltage._entry_ptr, ptr @mmc_select_voltage._entry_ptr.28, ptr @mmc_select_voltage._entry_ptr.31, ptr @mmc_set_uhs_voltage._entry, ptr @mmc_set_uhs_voltage._entry_ptr, ptr @mmc_sw_reset._entry, ptr @mmc_sw_reset._entry_ptr, ptr @str__mmc__trace_system_name, ptr @trace_event_fields_mmc_request_start, ptr @trace_event_type_funcs_mmc_request_start, ptr @print_fmt_mmc_request_start, ptr @trace_event_fields_mmc_request_done, ptr @trace_event_type_funcs_mmc_request_done, ptr @print_fmt_mmc_request_done, ptr @use_spi_crc, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @mmc_should_fail_request.data_errors, ptr @init_completion.__key, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.111, ptr @.str.113, ptr @.str.114], section "llvm.metadata"
@0 = internal global [129 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__mmc__trace_system_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mmc_request_start to i32), i32 624, i32 768, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mmc_request_start to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mmc_request_start to i32), i32 763, i32 928, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mmc_request_start to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mmc_request_done to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mmc_request_done to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mmc_request_done to i32), i32 921, i32 1152, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mmc_request_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_spi_crc to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_cqe_recovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_execute_tuning._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_select_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_select_voltage._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_select_voltage._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_set_uhs_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_hw_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_sw_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 370, i32 448, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_should_fail_request.data_errors to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_do_erase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_do_erase._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_do_erase._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mmc_request_start(ptr nocapture readnone %__data, ptr noundef %host, ptr noundef %mrq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mmc_request_start, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %host, ptr noundef %mrq) #18
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mmc_request_done(ptr nocapture readnone %__data, ptr noundef %host, ptr noundef %mrq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mmc_request_done, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %host, ptr noundef %mrq) #18
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mmc_request_start(ptr noundef %__data, ptr nocapture noundef readonly %host, ptr noundef %mrq) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #18
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !315

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !316

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #18
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.trace_event_get_offsets_mmc_request_start.exit_crit_edge

if.end.trace_event_get_offsets_mmc_request_start.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %trace_event_get_offsets_mmc_request_start.exit

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %5 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %class_dev.i, align 4
  %tobool.not.i237 = icmp eq ptr %6, null
  %spec.select = select i1 %tobool.not.i237, ptr @.str.48, ptr %6
  br label %trace_event_get_offsets_mmc_request_start.exit

trace_event_get_offsets_mmc_request_start.exit:   ; preds = %dev_name.exit.i, %if.end.trace_event_get_offsets_mmc_request_start.exit_crit_edge
  %cond.i = phi ptr [ %4, %if.end.trace_event_get_offsets_mmc_request_start.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #21
  %add = add i32 %call4.i, 109
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #18
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_mmc_request_start.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_mmc_request_start.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_mmc_request_start.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_mmc_request_start.exit
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65644
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call3, i32 0, i32 25
  %7 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.end5.cond.end_crit_edge, label %cond.true

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.true:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end5.cond.end_crit_edge
  %cond = phi i32 [ %11, %cond.true ], [ 0, %if.end5.cond.end_crit_edge ]
  %cmd_opcode = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call3, i32 0, i32 1
  %12 = ptrtoint ptr %cmd_opcode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond, ptr %cmd_opcode, align 4
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd, align 4
  %tobool9.not = icmp eq ptr %14, null
  br i1 %tobool9.not, label %cond.end.cond.end13_crit_edge, label %cond.true10

cond.end.cond.end13_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end13

cond.true10:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  %arg = getelementptr inbounds %struct.mmc_command, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arg, align 4
  br label %cond.end13

cond.end13:                                       ; preds = %cond.true10, %cond.end.cond.end13_crit_edge
  %cond14 = phi i32 [ %16, %cond.true10 ], [ 0, %cond.end.cond.end13_crit_edge ]
  %cmd_arg = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call3, i32 0, i32 2
  %17 = ptrtoint ptr %cmd_arg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond14, ptr %cmd_arg, align 4
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmd, align 4
  %tobool16.not = icmp eq ptr %19, null
  br i1 %tobool16.not, label %cond.end13.cond.end20_crit_edge, label %cond.true17

cond.end13.cond.end20_crit_edge:                  ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end20

cond.true17:                                      ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #20
  %flags = getelementptr inbounds %struct.mmc_command, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  br label %cond.end20

cond.end20:                                       ; preds = %cond.true17, %cond.end13.cond.end20_crit_edge
  %cond21 = phi i32 [ %21, %cond.true17 ], [ 0, %cond.end13.cond.end20_crit_edge ]
  %cmd_flags = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call3, i32 0, i32 3
  %22 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond21, ptr %cmd_flags, align 4
  %23 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cmd, align 4
  %tobool23.not = icmp eq ptr %24, null
  br i1 %tobool23.not, label %cond.end20.cond.end27_crit_edge, label %cond.true24

cond.end20.cond.end27_crit_edge:                  ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end27

cond.true24:                                      ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #20
  %retries = getelementptr inbounds %struct.mmc_command, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %retries, align 4
  br label %cond.end27

cond.end27:                                       ; preds = %cond.true24, %cond.end20.cond.end27_crit_edge
  %cond28 = phi i32 [ %26, %cond.true24 ], [ 0, %cond.end20.cond.end27_crit_edge ]
  %cmd_retries = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call3, i32 0, i32 4
  %27 = ptrtoint ptr %cmd_retries to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond28, ptr %cmd_retries, align 4
  %stop = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 3
  %28 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stop, align 4
  %tobool29.not = icmp eq ptr %29, null
  br i1 %tobool29.not, label %cond.end27.cond.end34_crit_edge, label %cond.true30

cond.end27.cond.end34_crit_edge:                  ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end34

cond.true30:                                      ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #20
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  br label %cond.end34

cond.end34:                                       ; preds = %cond.true30, %cond.end27.cond.end34_crit_edge
  %cond35 = phi i32 [ %31, %cond.true30 ], [ 0, %cond.end27.cond.end34_crit_edge ]
  %stop_opcode = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call3, i32 0, i32 5
  %32 = ptrtoint ptr %stop_opcode to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %cond35, ptr %stop_opcode, align 4
  %33 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %stop, align 4
  %tobool37.not = icmp eq ptr %34, null
  br i1 %tobool37.not, label %cond.end34.cond.end42_crit_edge, label %cond.true38

cond.end34.cond.end42_crit_edge:                  ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end42

cond.true38:                                      ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #20
  %arg40 = getelementptr inbounds %struct.mmc_command, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %arg40 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arg40, align 4
  br label %cond.end42

cond.end42:                                       ; preds = %cond.true38, %cond.end34.cond.end42_crit_edge
  %cond43 = phi i32 [ %36, %cond.true38 ], [ 0, %cond.end34.cond.end42_crit_edge ]
  %stop_arg = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call3, i32 0, i32 6
  %37 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %cond43, ptr %stop_arg, align 4
  %38 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %stop, align 4
  %tobool45.not = icmp eq ptr %39, null
  br i1 %tobool45.not, label %cond.end42.cond.end50_crit_edge, label %cond.true46

cond.end42.cond.end50_crit_edge:                  ; preds = %cond.end42
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end50

cond.true46:                                      ; preds = %cond.end42
  call void @__sanitizer_cov_trace_pc() #20
  %flags48 = getelementptr inbounds %struct.mmc_command, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %flags48 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags48, align 4
  br label %cond.end50

cond.end50:                                       ; preds = %cond.true46, %cond.end42.cond.end50_crit_edge
  %cond51 = phi i32 [ %41, %cond.true46 ], [ 0, %cond.end42.cond.end50_crit_edge ]
  %stop_flags = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call3, i32 0, i32 7
  %42 = ptrtoint ptr %stop_flags to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %cond51, ptr %stop_flags, align 4
  %43 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %stop, align 4
  %tobool53.not = icmp eq ptr %44, null
  br i1 %tobool53.not, label %cond.end50.cond.end58_crit_edge, label %cond.true54

cond.end50.cond.end58_crit_edge:                  ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end58

cond.true54:                                      ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #20
  %retries56 = getelementptr inbounds %struct.mmc_command, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %retries56 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %retries56, align 4
  br label %cond.end58

cond.end58:                                       ; preds = %cond.true54, %cond.end50.cond.end58_crit_edge
  %cond59 = phi i32 [ %46, %cond.true54 ], [ 0, %cond.end50.cond.end58_crit_edge ]
  %stop_retries = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call3, i32 0, i32 8
  %47 = ptrtoint ptr %stop_retries to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %cond59, ptr %stop_retries, align 4
  %48 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mrq, align 4
  %tobool60.not = icmp eq ptr %49, null
  br i1 %tobool60.not, label %cond.end58.cond.end65_crit_edge, label %cond.true61

cond.end58.cond.end65_crit_edge:                  ; preds = %cond.end58
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end65

cond.true61:                                      ; preds = %cond.end58
  call void @__sanitizer_cov_trace_pc() #20
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  br label %cond.end65

cond.end65:                                       ; preds = %cond.true61, %cond.end58.cond.end65_crit_edge
  %cond66 = phi i32 [ %51, %cond.true61 ], [ 0, %cond.end58.cond.end65_crit_edge ]
  %sbc_opcode = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call3, i32 0, i32 9
  %52 = ptrtoint ptr %sbc_opcode to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %cond66, ptr %sbc_opcode, align 4
  %53 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mrq, align 4
  %tobool68.not = icmp eq ptr %54, null
  br i1 %tobool68.not, label %cond.end65.cond.end73_crit_edge, label %cond.true69

cond.end65.cond.end73_crit_edge:                  ; preds = %cond.end65
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end73

cond.true69:                                      ; preds = %cond.end65
  call void @__sanitizer_cov_trace_pc() #20
  %arg71 = getelementptr inbounds %struct.mmc_command, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %arg71 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arg71, align 4
  br label %cond.end73

cond.end73:                                       ; preds = %cond.true69, %cond.end65.cond.end73_crit_edge
  %cond74 = phi i32 [ %56, %cond.true69 ], [ 0, %cond.end65.cond.end73_crit_edge ]
  %sbc_arg = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call3, i32 0, i32 10
  %57 = ptrtoint ptr %sbc_arg to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %cond74, ptr %sbc_arg, align 4
  %58 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mrq, align 4
  %tobool76.not = icmp eq ptr %59, null
  br i1 %tobool76.not, label %cond.end73.cond.end81_crit_edge, label %cond.true77

cond.end73.cond.end81_crit_edge:                  ; preds = %cond.end73
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end81

cond.true77:                                      ; preds = %cond.end73
  call void @__sanitizer_cov_trace_pc() #20
  %flags79 = getelementptr inbounds %struct.mmc_command, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %flags79 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags79, align 4
  br label %cond.end81

cond.end81:                                       ; preds = %cond.true77, %cond.end73.cond.end81_crit_edge
  %cond82 = phi i32 [ %61, %cond.true77 ], [ 0, %cond.end73.cond.end81_crit_edge ]
  %sbc_flags = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call3, i32 0, i32 11
  %62 = ptrtoint ptr %sbc_flags to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %cond82, ptr %sbc_flags, align 4
  %63 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mrq, align 4
  %tobool84.not = icmp eq ptr %64, null
  br i1 %tobool84.not, label %cond.end81.cond.end89_crit_edge, label %cond.true85

cond.end81.cond.end89_crit_edge:                  ; preds = %cond.end81
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end89

cond.true85:                                      ; preds = %cond.end81
  call void @__sanitizer_cov_trace_pc() #20
  %retries87 = getelementptr inbounds %struct.mmc_command, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %retries87 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %retries87, align 4
  br label %cond.end89

cond.end89:                                       ; preds = %cond.true85, %cond.end81.cond.end89_crit_edge
  %cond90 = phi i32 [ %66, %cond.true85 ], [ 0, %cond.end81.cond.end89_crit_edge ]
  %sbc_retries = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call3, i32 0, i32 12
  %67 = ptrtoint ptr %sbc_retries to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %cond90, ptr %sbc_retries, align 4
  %data = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %68 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data, align 4
  %tobool91.not = icmp eq ptr %69, null
  br i1 %tobool91.not, label %cond.end89.cond.end95_crit_edge, label %cond.true92

cond.end89.cond.end95_crit_edge:                  ; preds = %cond.end89
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end95

cond.true92:                                      ; preds = %cond.end89
  call void @__sanitizer_cov_trace_pc() #20
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %blksz, align 4
  br label %cond.end95

cond.end95:                                       ; preds = %cond.true92, %cond.end89.cond.end95_crit_edge
  %cond96 = phi i32 [ %71, %cond.true92 ], [ 0, %cond.end89.cond.end95_crit_edge ]
  %blksz97 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call3, i32 0, i32 15
  %72 = ptrtoint ptr %blksz97 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %cond96, ptr %blksz97, align 4
  %73 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data, align 4
  %tobool99.not = icmp eq ptr %74, null
  br i1 %tobool99.not, label %cond.end95.cond.end103_crit_edge, label %cond.true100

cond.end95.cond.end103_crit_edge:                 ; preds = %cond.end95
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end103

cond.true100:                                     ; preds = %cond.end95
  call void @__sanitizer_cov_trace_pc() #20
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %blocks, align 4
  br label %cond.end103

cond.end103:                                      ; preds = %cond.true100, %cond.end95.cond.end103_crit_edge
  %cond104 = phi i32 [ %76, %cond.true100 ], [ 0, %cond.end95.cond.end103_crit_edge ]
  %blocks105 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call3, i32 0, i32 13
  %77 = ptrtoint ptr %blocks105 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %cond104, ptr %blocks105, align 4
  %78 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data, align 4
  %tobool107.not = icmp eq ptr %79, null
  br i1 %tobool107.not, label %cond.end103.cond.end111_crit_edge, label %cond.true108

cond.end103.cond.end111_crit_edge:                ; preds = %cond.end103
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end111

cond.true108:                                     ; preds = %cond.end103
  call void @__sanitizer_cov_trace_pc() #20
  %blk_addr = getelementptr inbounds %struct.mmc_data, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %blk_addr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %blk_addr, align 4
  br label %cond.end111

cond.end111:                                      ; preds = %cond.true108, %cond.end103.cond.end111_crit_edge
  %cond112 = phi i32 [ %81, %cond.true108 ], [ 0, %cond.end103.cond.end111_crit_edge ]
  %blk_addr113 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call3, i32 0, i32 14
  %82 = ptrtoint ptr %blk_addr113 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %cond112, ptr %blk_addr113, align 4
  %83 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data, align 4
  %tobool115.not = icmp eq ptr %84, null
  br i1 %tobool115.not, label %cond.end111.cond.end120_crit_edge, label %cond.true116

cond.end111.cond.end120_crit_edge:                ; preds = %cond.end111
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end120

cond.true116:                                     ; preds = %cond.end111
  call void @__sanitizer_cov_trace_pc() #20
  %flags118 = getelementptr inbounds %struct.mmc_data, ptr %84, i32 0, i32 6
  %85 = ptrtoint ptr %flags118 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags118, align 4
  br label %cond.end120

cond.end120:                                      ; preds = %cond.true116, %cond.end111.cond.end120_crit_edge
  %cond121 = phi i32 [ %86, %cond.true116 ], [ 0, %cond.end111.cond.end120_crit_edge ]
  %data_flags = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call3, i32 0, i32 16
  %87 = ptrtoint ptr %data_flags to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %cond121, ptr %data_flags, align 4
  %tag = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 10
  %88 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tag, align 4
  %tag122 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call3, i32 0, i32 17
  %90 = ptrtoint ptr %tag122 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %tag122, align 4
  %can_retune = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 29
  %91 = ptrtoint ptr %can_retune to i32
  call void @__asan_load2_noabort(i32 %91)
  %bf.load = load i16, ptr %can_retune, align 8
  %bf.lshr = lshr i16 %bf.load, 12
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %can_retune123 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call3, i32 0, i32 18
  %92 = ptrtoint ptr %can_retune123 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %bf.cast, ptr %can_retune123, align 4
  %bf.load124 = load i16, ptr %can_retune, align 8
  %bf.lshr125 = lshr i16 %bf.load124, 11
  %bf.clear126 = and i16 %bf.lshr125, 1
  %bf.cast127 = zext i16 %bf.clear126 to i32
  %doing_retune128 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call3, i32 0, i32 19
  %93 = ptrtoint ptr %doing_retune128 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %bf.cast127, ptr %doing_retune128, align 4
  %bf.load129 = load i16, ptr %can_retune, align 8
  %bf.lshr130 = lshr i16 %bf.load129, 10
  %bf.clear131 = and i16 %bf.lshr130, 1
  %bf.cast132 = zext i16 %bf.clear131 to i32
  %retune_now133 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call3, i32 0, i32 20
  %94 = ptrtoint ptr %retune_now133 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %bf.cast132, ptr %retune_now133, align 4
  %need_retune = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 32
  %95 = ptrtoint ptr %need_retune to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %need_retune, align 4
  %need_retune134 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call3, i32 0, i32 21
  %97 = ptrtoint ptr %need_retune134 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %need_retune134, align 4
  %hold_retune = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 33
  %98 = ptrtoint ptr %hold_retune to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %hold_retune, align 8
  %hold_retune135 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call3, i32 0, i32 22
  %100 = ptrtoint ptr %hold_retune135 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %hold_retune135, align 4
  %retune_period = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 34
  %101 = ptrtoint ptr %retune_period to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %retune_period, align 4
  %retune_period136 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call3, i32 0, i32 23
  %103 = ptrtoint ptr %retune_period136 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %retune_period136, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 108
  %104 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i238 = icmp eq ptr %105, null
  br i1 %tobool.not.i238, label %dev_name.exit, label %cond.end120.cond.end144_crit_edge

cond.end120.cond.end144_crit_edge:                ; preds = %cond.end120
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end144

dev_name.exit:                                    ; preds = %cond.end120
  %106 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %class_dev.i, align 4
  %tobool139.not = icmp eq ptr %107, null
  br i1 %tobool139.not, label %dev_name.exit.cond.end144_crit_edge, label %if.end.i243

dev_name.exit.cond.end144_crit_edge:              ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end144

if.end.i243:                                      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #20
  %108 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %class_dev.i, align 4
  br label %cond.end144

cond.end144:                                      ; preds = %if.end.i243, %dev_name.exit.cond.end144_crit_edge, %cond.end120.cond.end144_crit_edge
  %cond145 = phi ptr [ @.str.48, %dev_name.exit.cond.end144_crit_edge ], [ %109, %if.end.i243 ], [ %105, %cond.end120.cond.end144_crit_edge ]
  %call146 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond145) #22
  %mrq147 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call3, i32 0, i32 24
  %110 = ptrtoint ptr %mrq147 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %mrq, ptr %mrq147, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #18
  br label %cleanup

cleanup:                                          ; preds = %cond.end144, %trace_event_get_offsets_mmc_request_start.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mmc_request_start(ptr noundef %__data, ptr nocapture noundef readonly %host, ptr noundef %mrq) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #18
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !317
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #18
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !317
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.trace_event_get_offsets_mmc_request_start.exit_crit_edge

entry.trace_event_get_offsets_mmc_request_start.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %trace_event_get_offsets_mmc_request_start.exit

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %4 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %class_dev.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %spec.select = select i1 %tobool.not.i, ptr @.str.48, ptr %5
  br label %trace_event_get_offsets_mmc_request_start.exit

trace_event_get_offsets_mmc_request_start.exit:   ; preds = %dev_name.exit.i, %entry.trace_event_get_offsets_mmc_request_start.exit_crit_edge
  %cond.i = phi ptr [ %3, %entry.trace_event_get_offsets_mmc_request_start.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #21
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65644
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %6 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %perf_events, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !305) #18
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %add = add i32 %14, %8
  %15 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %16 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %17, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_mmc_request_start.exit.if.end_crit_edge

trace_event_get_offsets_mmc_request_start.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_mmc_request_start.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_mmc_request_start.exit
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %15, align 4
  %tobool.not.i261.not = icmp eq ptr %19, null
  br i1 %tobool.not.i261.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_mmc_request_start.exit.if.end_crit_edge
  %add12 = add i32 %call4.i, 120
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #18
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %20 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %__regs, align 4
  %22 = call ptr @llvm.returnaddress(i32 0) #18
  %23 = ptrtoint ptr %22 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %21, i32 0, i32 15
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx.i, align 4
  %25 = call ptr @llvm.frameaddress.p0(i32 0) #18
  %26 = ptrtoint ptr %25 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %21, i32 0, i32 11
  %27 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx2.i, align 4
  %28 = call i32 @llvm.read_register.i32(metadata !305) #18
  %arrayidx4.i = getelementptr [18 x i32], ptr %21, i32 0, i32 13
  %29 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %21, i32 0, i32 16
  %30 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call13, i32 0, i32 25
  %31 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %32 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cmd, align 4
  %tobool17.not = icmp eq ptr %33, null
  br i1 %tobool17.not, label %if.end16.cond.end_crit_edge, label %cond.true

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.true:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end16.cond.end_crit_edge
  %cond = phi i32 [ %35, %cond.true ], [ 0, %if.end16.cond.end_crit_edge ]
  %cmd_opcode = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call13, i32 0, i32 1
  %36 = ptrtoint ptr %cmd_opcode to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cond, ptr %cmd_opcode, align 4
  %37 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cmd, align 4
  %tobool20.not = icmp eq ptr %38, null
  br i1 %tobool20.not, label %cond.end.cond.end24_crit_edge, label %cond.true21

cond.end.cond.end24_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end24

cond.true21:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  %arg = getelementptr inbounds %struct.mmc_command, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arg, align 4
  br label %cond.end24

cond.end24:                                       ; preds = %cond.true21, %cond.end.cond.end24_crit_edge
  %cond25 = phi i32 [ %40, %cond.true21 ], [ 0, %cond.end.cond.end24_crit_edge ]
  %cmd_arg = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call13, i32 0, i32 2
  %41 = ptrtoint ptr %cmd_arg to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %cond25, ptr %cmd_arg, align 4
  %42 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cmd, align 4
  %tobool27.not = icmp eq ptr %43, null
  br i1 %tobool27.not, label %cond.end24.cond.end31_crit_edge, label %cond.true28

cond.end24.cond.end31_crit_edge:                  ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end31

cond.true28:                                      ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #20
  %flags = getelementptr inbounds %struct.mmc_command, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags, align 4
  br label %cond.end31

cond.end31:                                       ; preds = %cond.true28, %cond.end24.cond.end31_crit_edge
  %cond32 = phi i32 [ %45, %cond.true28 ], [ 0, %cond.end24.cond.end31_crit_edge ]
  %cmd_flags = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call13, i32 0, i32 3
  %46 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %cond32, ptr %cmd_flags, align 4
  %47 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cmd, align 4
  %tobool34.not = icmp eq ptr %48, null
  br i1 %tobool34.not, label %cond.end31.cond.end38_crit_edge, label %cond.true35

cond.end31.cond.end38_crit_edge:                  ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end38

cond.true35:                                      ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #20
  %retries = getelementptr inbounds %struct.mmc_command, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %retries, align 4
  br label %cond.end38

cond.end38:                                       ; preds = %cond.true35, %cond.end31.cond.end38_crit_edge
  %cond39 = phi i32 [ %50, %cond.true35 ], [ 0, %cond.end31.cond.end38_crit_edge ]
  %cmd_retries = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call13, i32 0, i32 4
  %51 = ptrtoint ptr %cmd_retries to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %cond39, ptr %cmd_retries, align 4
  %stop = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 3
  %52 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %stop, align 4
  %tobool40.not = icmp eq ptr %53, null
  br i1 %tobool40.not, label %cond.end38.cond.end45_crit_edge, label %cond.true41

cond.end38.cond.end45_crit_edge:                  ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end45

cond.true41:                                      ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #20
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  br label %cond.end45

cond.end45:                                       ; preds = %cond.true41, %cond.end38.cond.end45_crit_edge
  %cond46 = phi i32 [ %55, %cond.true41 ], [ 0, %cond.end38.cond.end45_crit_edge ]
  %stop_opcode = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call13, i32 0, i32 5
  %56 = ptrtoint ptr %stop_opcode to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %cond46, ptr %stop_opcode, align 4
  %57 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %stop, align 4
  %tobool48.not = icmp eq ptr %58, null
  br i1 %tobool48.not, label %cond.end45.cond.end53_crit_edge, label %cond.true49

cond.end45.cond.end53_crit_edge:                  ; preds = %cond.end45
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end53

cond.true49:                                      ; preds = %cond.end45
  call void @__sanitizer_cov_trace_pc() #20
  %arg51 = getelementptr inbounds %struct.mmc_command, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %arg51 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arg51, align 4
  br label %cond.end53

cond.end53:                                       ; preds = %cond.true49, %cond.end45.cond.end53_crit_edge
  %cond54 = phi i32 [ %60, %cond.true49 ], [ 0, %cond.end45.cond.end53_crit_edge ]
  %stop_arg = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call13, i32 0, i32 6
  %61 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %cond54, ptr %stop_arg, align 4
  %62 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %stop, align 4
  %tobool56.not = icmp eq ptr %63, null
  br i1 %tobool56.not, label %cond.end53.cond.end61_crit_edge, label %cond.true57

cond.end53.cond.end61_crit_edge:                  ; preds = %cond.end53
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end61

cond.true57:                                      ; preds = %cond.end53
  call void @__sanitizer_cov_trace_pc() #20
  %flags59 = getelementptr inbounds %struct.mmc_command, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %flags59 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags59, align 4
  br label %cond.end61

cond.end61:                                       ; preds = %cond.true57, %cond.end53.cond.end61_crit_edge
  %cond62 = phi i32 [ %65, %cond.true57 ], [ 0, %cond.end53.cond.end61_crit_edge ]
  %stop_flags = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call13, i32 0, i32 7
  %66 = ptrtoint ptr %stop_flags to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %cond62, ptr %stop_flags, align 4
  %67 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %stop, align 4
  %tobool64.not = icmp eq ptr %68, null
  br i1 %tobool64.not, label %cond.end61.cond.end69_crit_edge, label %cond.true65

cond.end61.cond.end69_crit_edge:                  ; preds = %cond.end61
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end69

cond.true65:                                      ; preds = %cond.end61
  call void @__sanitizer_cov_trace_pc() #20
  %retries67 = getelementptr inbounds %struct.mmc_command, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %retries67 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %retries67, align 4
  br label %cond.end69

cond.end69:                                       ; preds = %cond.true65, %cond.end61.cond.end69_crit_edge
  %cond70 = phi i32 [ %70, %cond.true65 ], [ 0, %cond.end61.cond.end69_crit_edge ]
  %stop_retries = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call13, i32 0, i32 8
  %71 = ptrtoint ptr %stop_retries to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %cond70, ptr %stop_retries, align 4
  %72 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mrq, align 4
  %tobool71.not = icmp eq ptr %73, null
  br i1 %tobool71.not, label %cond.end69.cond.end76_crit_edge, label %cond.true72

cond.end69.cond.end76_crit_edge:                  ; preds = %cond.end69
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end76

cond.true72:                                      ; preds = %cond.end69
  call void @__sanitizer_cov_trace_pc() #20
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  br label %cond.end76

cond.end76:                                       ; preds = %cond.true72, %cond.end69.cond.end76_crit_edge
  %cond77 = phi i32 [ %75, %cond.true72 ], [ 0, %cond.end69.cond.end76_crit_edge ]
  %sbc_opcode = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call13, i32 0, i32 9
  %76 = ptrtoint ptr %sbc_opcode to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %cond77, ptr %sbc_opcode, align 4
  %77 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mrq, align 4
  %tobool79.not = icmp eq ptr %78, null
  br i1 %tobool79.not, label %cond.end76.cond.end84_crit_edge, label %cond.true80

cond.end76.cond.end84_crit_edge:                  ; preds = %cond.end76
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end84

cond.true80:                                      ; preds = %cond.end76
  call void @__sanitizer_cov_trace_pc() #20
  %arg82 = getelementptr inbounds %struct.mmc_command, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %arg82 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arg82, align 4
  br label %cond.end84

cond.end84:                                       ; preds = %cond.true80, %cond.end76.cond.end84_crit_edge
  %cond85 = phi i32 [ %80, %cond.true80 ], [ 0, %cond.end76.cond.end84_crit_edge ]
  %sbc_arg = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call13, i32 0, i32 10
  %81 = ptrtoint ptr %sbc_arg to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %cond85, ptr %sbc_arg, align 4
  %82 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mrq, align 4
  %tobool87.not = icmp eq ptr %83, null
  br i1 %tobool87.not, label %cond.end84.cond.end92_crit_edge, label %cond.true88

cond.end84.cond.end92_crit_edge:                  ; preds = %cond.end84
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end92

cond.true88:                                      ; preds = %cond.end84
  call void @__sanitizer_cov_trace_pc() #20
  %flags90 = getelementptr inbounds %struct.mmc_command, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %flags90 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %flags90, align 4
  br label %cond.end92

cond.end92:                                       ; preds = %cond.true88, %cond.end84.cond.end92_crit_edge
  %cond93 = phi i32 [ %85, %cond.true88 ], [ 0, %cond.end84.cond.end92_crit_edge ]
  %sbc_flags = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call13, i32 0, i32 11
  %86 = ptrtoint ptr %sbc_flags to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %cond93, ptr %sbc_flags, align 4
  %87 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mrq, align 4
  %tobool95.not = icmp eq ptr %88, null
  br i1 %tobool95.not, label %cond.end92.cond.end100_crit_edge, label %cond.true96

cond.end92.cond.end100_crit_edge:                 ; preds = %cond.end92
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end100

cond.true96:                                      ; preds = %cond.end92
  call void @__sanitizer_cov_trace_pc() #20
  %retries98 = getelementptr inbounds %struct.mmc_command, ptr %88, i32 0, i32 4
  %89 = ptrtoint ptr %retries98 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %retries98, align 4
  br label %cond.end100

cond.end100:                                      ; preds = %cond.true96, %cond.end92.cond.end100_crit_edge
  %cond101 = phi i32 [ %90, %cond.true96 ], [ 0, %cond.end92.cond.end100_crit_edge ]
  %sbc_retries = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call13, i32 0, i32 12
  %91 = ptrtoint ptr %sbc_retries to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %cond101, ptr %sbc_retries, align 4
  %data = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %92 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data, align 4
  %tobool102.not = icmp eq ptr %93, null
  br i1 %tobool102.not, label %cond.end100.cond.end106_crit_edge, label %cond.true103

cond.end100.cond.end106_crit_edge:                ; preds = %cond.end100
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end106

cond.true103:                                     ; preds = %cond.end100
  call void @__sanitizer_cov_trace_pc() #20
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %blksz, align 4
  br label %cond.end106

cond.end106:                                      ; preds = %cond.true103, %cond.end100.cond.end106_crit_edge
  %cond107 = phi i32 [ %95, %cond.true103 ], [ 0, %cond.end100.cond.end106_crit_edge ]
  %blksz108 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call13, i32 0, i32 15
  %96 = ptrtoint ptr %blksz108 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %cond107, ptr %blksz108, align 4
  %97 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data, align 4
  %tobool110.not = icmp eq ptr %98, null
  br i1 %tobool110.not, label %cond.end106.cond.end114_crit_edge, label %cond.true111

cond.end106.cond.end114_crit_edge:                ; preds = %cond.end106
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end114

cond.true111:                                     ; preds = %cond.end106
  call void @__sanitizer_cov_trace_pc() #20
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %98, i32 0, i32 3
  %99 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %blocks, align 4
  br label %cond.end114

cond.end114:                                      ; preds = %cond.true111, %cond.end106.cond.end114_crit_edge
  %cond115 = phi i32 [ %100, %cond.true111 ], [ 0, %cond.end106.cond.end114_crit_edge ]
  %blocks116 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call13, i32 0, i32 13
  %101 = ptrtoint ptr %blocks116 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %cond115, ptr %blocks116, align 4
  %102 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data, align 4
  %tobool118.not = icmp eq ptr %103, null
  br i1 %tobool118.not, label %cond.end114.cond.end122_crit_edge, label %cond.true119

cond.end114.cond.end122_crit_edge:                ; preds = %cond.end114
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end122

cond.true119:                                     ; preds = %cond.end114
  call void @__sanitizer_cov_trace_pc() #20
  %blk_addr = getelementptr inbounds %struct.mmc_data, ptr %103, i32 0, i32 4
  %104 = ptrtoint ptr %blk_addr to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %blk_addr, align 4
  br label %cond.end122

cond.end122:                                      ; preds = %cond.true119, %cond.end114.cond.end122_crit_edge
  %cond123 = phi i32 [ %105, %cond.true119 ], [ 0, %cond.end114.cond.end122_crit_edge ]
  %blk_addr124 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call13, i32 0, i32 14
  %106 = ptrtoint ptr %blk_addr124 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %cond123, ptr %blk_addr124, align 4
  %107 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %data, align 4
  %tobool126.not = icmp eq ptr %108, null
  br i1 %tobool126.not, label %cond.end122.cond.end131_crit_edge, label %cond.true127

cond.end122.cond.end131_crit_edge:                ; preds = %cond.end122
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end131

cond.true127:                                     ; preds = %cond.end122
  call void @__sanitizer_cov_trace_pc() #20
  %flags129 = getelementptr inbounds %struct.mmc_data, ptr %108, i32 0, i32 6
  %109 = ptrtoint ptr %flags129 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %flags129, align 4
  br label %cond.end131

cond.end131:                                      ; preds = %cond.true127, %cond.end122.cond.end131_crit_edge
  %cond132 = phi i32 [ %110, %cond.true127 ], [ 0, %cond.end122.cond.end131_crit_edge ]
  %data_flags = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call13, i32 0, i32 16
  %111 = ptrtoint ptr %data_flags to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %cond132, ptr %data_flags, align 4
  %tag = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 10
  %112 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %tag, align 4
  %tag133 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call13, i32 0, i32 17
  %114 = ptrtoint ptr %tag133 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %tag133, align 4
  %can_retune = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 29
  %115 = ptrtoint ptr %can_retune to i32
  call void @__asan_load2_noabort(i32 %115)
  %bf.load = load i16, ptr %can_retune, align 8
  %bf.lshr = lshr i16 %bf.load, 12
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %can_retune134 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call13, i32 0, i32 18
  %116 = ptrtoint ptr %can_retune134 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %bf.cast, ptr %can_retune134, align 4
  %bf.load135 = load i16, ptr %can_retune, align 8
  %bf.lshr136 = lshr i16 %bf.load135, 11
  %bf.clear137 = and i16 %bf.lshr136, 1
  %bf.cast138 = zext i16 %bf.clear137 to i32
  %doing_retune139 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call13, i32 0, i32 19
  %117 = ptrtoint ptr %doing_retune139 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %bf.cast138, ptr %doing_retune139, align 4
  %bf.load140 = load i16, ptr %can_retune, align 8
  %bf.lshr141 = lshr i16 %bf.load140, 10
  %bf.clear142 = and i16 %bf.lshr141, 1
  %bf.cast143 = zext i16 %bf.clear142 to i32
  %retune_now144 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call13, i32 0, i32 20
  %118 = ptrtoint ptr %retune_now144 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %bf.cast143, ptr %retune_now144, align 4
  %need_retune = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 32
  %119 = ptrtoint ptr %need_retune to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %need_retune, align 4
  %need_retune145 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call13, i32 0, i32 21
  %121 = ptrtoint ptr %need_retune145 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %need_retune145, align 4
  %hold_retune = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 33
  %122 = ptrtoint ptr %hold_retune to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %hold_retune, align 8
  %hold_retune146 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call13, i32 0, i32 22
  %124 = ptrtoint ptr %hold_retune146 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %hold_retune146, align 4
  %retune_period = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 34
  %125 = ptrtoint ptr %retune_period to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %retune_period, align 4
  %retune_period147 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call13, i32 0, i32 23
  %127 = ptrtoint ptr %retune_period147 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %retune_period147, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 108
  %128 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i262 = icmp eq ptr %129, null
  br i1 %tobool.not.i262, label %dev_name.exit, label %cond.end131.cond.end156_crit_edge

cond.end131.cond.end156_crit_edge:                ; preds = %cond.end131
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end156

dev_name.exit:                                    ; preds = %cond.end131
  %130 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %class_dev.i, align 4
  %tobool151.not = icmp eq ptr %131, null
  br i1 %tobool151.not, label %dev_name.exit.cond.end156_crit_edge, label %if.end.i265

dev_name.exit.cond.end156_crit_edge:              ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end156

if.end.i265:                                      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #20
  %132 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %class_dev.i, align 4
  br label %cond.end156

cond.end156:                                      ; preds = %if.end.i265, %dev_name.exit.cond.end156_crit_edge, %cond.end131.cond.end156_crit_edge
  %cond157 = phi ptr [ @.str.48, %dev_name.exit.cond.end156_crit_edge ], [ %133, %if.end.i265 ], [ %129, %cond.end131.cond.end156_crit_edge ]
  %call158 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond157) #22
  %mrq159 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %call13, i32 0, i32 24
  %134 = ptrtoint ptr %mrq159 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %mrq, ptr %mrq159, align 4
  %135 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %rctx, align 4
  %137 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %136, ptr noundef %__data, i64 noundef 1, ptr noundef %138, ptr noundef %15, ptr noundef null) #18
  br label %cleanup

cleanup:                                          ; preds = %cond.end156, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mmc_request_done(ptr noundef %__data, ptr nocapture noundef readonly %host, ptr noundef %mrq) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #18
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !315

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !316

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #18
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.trace_event_get_offsets_mmc_request_done.exit_crit_edge

if.end.trace_event_get_offsets_mmc_request_done.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %trace_event_get_offsets_mmc_request_done.exit

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %5 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %class_dev.i, align 4
  %tobool.not.i353 = icmp eq ptr %6, null
  %spec.select = select i1 %tobool.not.i353, ptr @.str.48, ptr %6
  br label %trace_event_get_offsets_mmc_request_done.exit

trace_event_get_offsets_mmc_request_done.exit:    ; preds = %dev_name.exit.i, %if.end.trace_event_get_offsets_mmc_request_done.exit_crit_edge
  %cond.i = phi ptr [ %4, %if.end.trace_event_get_offsets_mmc_request_done.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #21
  %add = add i32 %call4.i, 137
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #18
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_mmc_request_done.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_mmc_request_done.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_mmc_request_done.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_mmc_request_done.exit
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65672
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 23
  %7 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.end5.cond.end_crit_edge, label %cond.true

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.true:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end5.cond.end_crit_edge
  %cond = phi i32 [ %11, %cond.true ], [ 0, %if.end5.cond.end_crit_edge ]
  %cmd_opcode = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 1
  %12 = ptrtoint ptr %cmd_opcode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond, ptr %cmd_opcode, align 4
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd, align 4
  %tobool9.not = icmp eq ptr %14, null
  br i1 %tobool9.not, label %cond.end.cond.end13_crit_edge, label %cond.true10

cond.end.cond.end13_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end13

cond.true10:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  %error = getelementptr inbounds %struct.mmc_command, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %error, align 4
  br label %cond.end13

cond.end13:                                       ; preds = %cond.true10, %cond.end.cond.end13_crit_edge
  %cond14 = phi i32 [ %16, %cond.true10 ], [ 0, %cond.end.cond.end13_crit_edge ]
  %cmd_err = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 2
  %17 = ptrtoint ptr %cmd_err to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond14, ptr %cmd_err, align 4
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmd, align 4
  %tobool16.not = icmp eq ptr %19, null
  br i1 %tobool16.not, label %cond.end13.cond.end20_crit_edge, label %cond.true17

cond.end13.cond.end20_crit_edge:                  ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end20

cond.true17:                                      ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #20
  %resp = getelementptr inbounds %struct.mmc_command, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %resp, align 4
  br label %cond.end20

cond.end20:                                       ; preds = %cond.true17, %cond.end13.cond.end20_crit_edge
  %cond21 = phi i32 [ %21, %cond.true17 ], [ 0, %cond.end13.cond.end20_crit_edge ]
  %cmd_resp = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 3
  %22 = ptrtoint ptr %cmd_resp to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond21, ptr %cmd_resp, align 4
  %23 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cmd, align 4
  %tobool24.not = icmp eq ptr %24, null
  br i1 %tobool24.not, label %cond.end20.cond.end30_crit_edge, label %cond.true25

cond.end20.cond.end30_crit_edge:                  ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end30

cond.true25:                                      ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx28 = getelementptr %struct.mmc_command, ptr %24, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx28, align 4
  br label %cond.end30

cond.end30:                                       ; preds = %cond.true25, %cond.end20.cond.end30_crit_edge
  %cond31 = phi i32 [ %26, %cond.true25 ], [ 0, %cond.end20.cond.end30_crit_edge ]
  %arrayidx33 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond31, ptr %arrayidx33, align 4
  %28 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cmd, align 4
  %tobool35.not = icmp eq ptr %29, null
  br i1 %tobool35.not, label %cond.end30.cond.end41_crit_edge, label %cond.true36

cond.end30.cond.end41_crit_edge:                  ; preds = %cond.end30
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end41

cond.true36:                                      ; preds = %cond.end30
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx39 = getelementptr %struct.mmc_command, ptr %29, i32 0, i32 2, i32 2
  %30 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx39, align 4
  br label %cond.end41

cond.end41:                                       ; preds = %cond.true36, %cond.end30.cond.end41_crit_edge
  %cond42 = phi i32 [ %31, %cond.true36 ], [ 0, %cond.end30.cond.end41_crit_edge ]
  %arrayidx44 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %cond42, ptr %arrayidx44, align 4
  %33 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cmd, align 4
  %tobool46.not = icmp eq ptr %34, null
  br i1 %tobool46.not, label %cond.end41.cond.end52_crit_edge, label %cond.true47

cond.end41.cond.end52_crit_edge:                  ; preds = %cond.end41
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end52

cond.true47:                                      ; preds = %cond.end41
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx50 = getelementptr %struct.mmc_command, ptr %34, i32 0, i32 2, i32 3
  %35 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx50, align 4
  br label %cond.end52

cond.end52:                                       ; preds = %cond.true47, %cond.end41.cond.end52_crit_edge
  %cond53 = phi i32 [ %36, %cond.true47 ], [ 0, %cond.end41.cond.end52_crit_edge ]
  %arrayidx55 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 3, i32 3
  %37 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %cond53, ptr %arrayidx55, align 4
  %38 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cmd, align 4
  %tobool57.not = icmp eq ptr %39, null
  br i1 %tobool57.not, label %cond.end52.cond.end61_crit_edge, label %cond.true58

cond.end52.cond.end61_crit_edge:                  ; preds = %cond.end52
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end61

cond.true58:                                      ; preds = %cond.end52
  call void @__sanitizer_cov_trace_pc() #20
  %retries = getelementptr inbounds %struct.mmc_command, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %retries, align 4
  br label %cond.end61

cond.end61:                                       ; preds = %cond.true58, %cond.end52.cond.end61_crit_edge
  %cond62 = phi i32 [ %41, %cond.true58 ], [ 0, %cond.end52.cond.end61_crit_edge ]
  %cmd_retries = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 4
  %42 = ptrtoint ptr %cmd_retries to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %cond62, ptr %cmd_retries, align 4
  %stop = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 3
  %43 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %stop, align 4
  %tobool63.not = icmp eq ptr %44, null
  br i1 %tobool63.not, label %cond.end61.cond.end68_crit_edge, label %cond.true64

cond.end61.cond.end68_crit_edge:                  ; preds = %cond.end61
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end68

cond.true64:                                      ; preds = %cond.end61
  call void @__sanitizer_cov_trace_pc() #20
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  br label %cond.end68

cond.end68:                                       ; preds = %cond.true64, %cond.end61.cond.end68_crit_edge
  %cond69 = phi i32 [ %46, %cond.true64 ], [ 0, %cond.end61.cond.end68_crit_edge ]
  %stop_opcode = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 5
  %47 = ptrtoint ptr %stop_opcode to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %cond69, ptr %stop_opcode, align 4
  %48 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %stop, align 4
  %tobool71.not = icmp eq ptr %49, null
  br i1 %tobool71.not, label %cond.end68.cond.end76_crit_edge, label %cond.true72

cond.end68.cond.end76_crit_edge:                  ; preds = %cond.end68
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end76

cond.true72:                                      ; preds = %cond.end68
  call void @__sanitizer_cov_trace_pc() #20
  %error74 = getelementptr inbounds %struct.mmc_command, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %error74 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %error74, align 4
  br label %cond.end76

cond.end76:                                       ; preds = %cond.true72, %cond.end68.cond.end76_crit_edge
  %cond77 = phi i32 [ %51, %cond.true72 ], [ 0, %cond.end68.cond.end76_crit_edge ]
  %stop_err = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 6
  %52 = ptrtoint ptr %stop_err to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %cond77, ptr %stop_err, align 4
  %53 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %stop, align 4
  %tobool79.not = icmp eq ptr %54, null
  br i1 %tobool79.not, label %cond.end76.cond.end85_crit_edge, label %cond.true80

cond.end76.cond.end85_crit_edge:                  ; preds = %cond.end76
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end85

cond.true80:                                      ; preds = %cond.end76
  call void @__sanitizer_cov_trace_pc() #20
  %resp82 = getelementptr inbounds %struct.mmc_command, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %resp82 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %resp82, align 4
  br label %cond.end85

cond.end85:                                       ; preds = %cond.true80, %cond.end76.cond.end85_crit_edge
  %cond86 = phi i32 [ %56, %cond.true80 ], [ 0, %cond.end76.cond.end85_crit_edge ]
  %stop_resp = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 7
  %57 = ptrtoint ptr %stop_resp to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %cond86, ptr %stop_resp, align 4
  %58 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %stop, align 4
  %tobool89.not = icmp eq ptr %59, null
  br i1 %tobool89.not, label %cond.end85.cond.end95_crit_edge, label %cond.true90

cond.end85.cond.end95_crit_edge:                  ; preds = %cond.end85
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end95

cond.true90:                                      ; preds = %cond.end85
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx93 = getelementptr %struct.mmc_command, ptr %59, i32 0, i32 2, i32 1
  %60 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx93, align 4
  br label %cond.end95

cond.end95:                                       ; preds = %cond.true90, %cond.end85.cond.end95_crit_edge
  %cond96 = phi i32 [ %61, %cond.true90 ], [ 0, %cond.end85.cond.end95_crit_edge ]
  %arrayidx98 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 7, i32 1
  %62 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %cond96, ptr %arrayidx98, align 4
  %63 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %stop, align 4
  %tobool100.not = icmp eq ptr %64, null
  br i1 %tobool100.not, label %cond.end95.cond.end106_crit_edge, label %cond.true101

cond.end95.cond.end106_crit_edge:                 ; preds = %cond.end95
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end106

cond.true101:                                     ; preds = %cond.end95
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx104 = getelementptr %struct.mmc_command, ptr %64, i32 0, i32 2, i32 2
  %65 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx104, align 4
  br label %cond.end106

cond.end106:                                      ; preds = %cond.true101, %cond.end95.cond.end106_crit_edge
  %cond107 = phi i32 [ %66, %cond.true101 ], [ 0, %cond.end95.cond.end106_crit_edge ]
  %arrayidx109 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 7, i32 2
  %67 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %cond107, ptr %arrayidx109, align 4
  %68 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %stop, align 4
  %tobool111.not = icmp eq ptr %69, null
  br i1 %tobool111.not, label %cond.end106.cond.end117_crit_edge, label %cond.true112

cond.end106.cond.end117_crit_edge:                ; preds = %cond.end106
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end117

cond.true112:                                     ; preds = %cond.end106
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx115 = getelementptr %struct.mmc_command, ptr %69, i32 0, i32 2, i32 3
  %70 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx115, align 4
  br label %cond.end117

cond.end117:                                      ; preds = %cond.true112, %cond.end106.cond.end117_crit_edge
  %cond118 = phi i32 [ %71, %cond.true112 ], [ 0, %cond.end106.cond.end117_crit_edge ]
  %arrayidx120 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 7, i32 3
  %72 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %cond118, ptr %arrayidx120, align 4
  %73 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %stop, align 4
  %tobool122.not = icmp eq ptr %74, null
  br i1 %tobool122.not, label %cond.end117.cond.end127_crit_edge, label %cond.true123

cond.end117.cond.end127_crit_edge:                ; preds = %cond.end117
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end127

cond.true123:                                     ; preds = %cond.end117
  call void @__sanitizer_cov_trace_pc() #20
  %retries125 = getelementptr inbounds %struct.mmc_command, ptr %74, i32 0, i32 4
  %75 = ptrtoint ptr %retries125 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %retries125, align 4
  br label %cond.end127

cond.end127:                                      ; preds = %cond.true123, %cond.end117.cond.end127_crit_edge
  %cond128 = phi i32 [ %76, %cond.true123 ], [ 0, %cond.end117.cond.end127_crit_edge ]
  %stop_retries = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 8
  %77 = ptrtoint ptr %stop_retries to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %cond128, ptr %stop_retries, align 4
  %78 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mrq, align 4
  %tobool129.not = icmp eq ptr %79, null
  br i1 %tobool129.not, label %cond.end127.cond.end134_crit_edge, label %cond.true130

cond.end127.cond.end134_crit_edge:                ; preds = %cond.end127
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end134

cond.true130:                                     ; preds = %cond.end127
  call void @__sanitizer_cov_trace_pc() #20
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  br label %cond.end134

cond.end134:                                      ; preds = %cond.true130, %cond.end127.cond.end134_crit_edge
  %cond135 = phi i32 [ %81, %cond.true130 ], [ 0, %cond.end127.cond.end134_crit_edge ]
  %sbc_opcode = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 9
  %82 = ptrtoint ptr %sbc_opcode to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %cond135, ptr %sbc_opcode, align 4
  %83 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mrq, align 4
  %tobool137.not = icmp eq ptr %84, null
  br i1 %tobool137.not, label %cond.end134.cond.end142_crit_edge, label %cond.true138

cond.end134.cond.end142_crit_edge:                ; preds = %cond.end134
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end142

cond.true138:                                     ; preds = %cond.end134
  call void @__sanitizer_cov_trace_pc() #20
  %error140 = getelementptr inbounds %struct.mmc_command, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %error140 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %error140, align 4
  br label %cond.end142

cond.end142:                                      ; preds = %cond.true138, %cond.end134.cond.end142_crit_edge
  %cond143 = phi i32 [ %86, %cond.true138 ], [ 0, %cond.end134.cond.end142_crit_edge ]
  %sbc_err = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 10
  %87 = ptrtoint ptr %sbc_err to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %cond143, ptr %sbc_err, align 4
  %88 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mrq, align 4
  %tobool145.not = icmp eq ptr %89, null
  br i1 %tobool145.not, label %cond.end142.cond.end151_crit_edge, label %cond.true146

cond.end142.cond.end151_crit_edge:                ; preds = %cond.end142
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end151

cond.true146:                                     ; preds = %cond.end142
  call void @__sanitizer_cov_trace_pc() #20
  %resp148 = getelementptr inbounds %struct.mmc_command, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %resp148 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %resp148, align 4
  br label %cond.end151

cond.end151:                                      ; preds = %cond.true146, %cond.end142.cond.end151_crit_edge
  %cond152 = phi i32 [ %91, %cond.true146 ], [ 0, %cond.end142.cond.end151_crit_edge ]
  %sbc_resp = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 11
  %92 = ptrtoint ptr %sbc_resp to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %cond152, ptr %sbc_resp, align 4
  %93 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mrq, align 4
  %tobool155.not = icmp eq ptr %94, null
  br i1 %tobool155.not, label %cond.end151.cond.end161_crit_edge, label %cond.true156

cond.end151.cond.end161_crit_edge:                ; preds = %cond.end151
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end161

cond.true156:                                     ; preds = %cond.end151
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx159 = getelementptr %struct.mmc_command, ptr %94, i32 0, i32 2, i32 1
  %95 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx159, align 4
  br label %cond.end161

cond.end161:                                      ; preds = %cond.true156, %cond.end151.cond.end161_crit_edge
  %cond162 = phi i32 [ %96, %cond.true156 ], [ 0, %cond.end151.cond.end161_crit_edge ]
  %arrayidx164 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 11, i32 1
  %97 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %cond162, ptr %arrayidx164, align 4
  %98 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mrq, align 4
  %tobool166.not = icmp eq ptr %99, null
  br i1 %tobool166.not, label %cond.end161.cond.end172_crit_edge, label %cond.true167

cond.end161.cond.end172_crit_edge:                ; preds = %cond.end161
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end172

cond.true167:                                     ; preds = %cond.end161
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx170 = getelementptr %struct.mmc_command, ptr %99, i32 0, i32 2, i32 2
  %100 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx170, align 4
  br label %cond.end172

cond.end172:                                      ; preds = %cond.true167, %cond.end161.cond.end172_crit_edge
  %cond173 = phi i32 [ %101, %cond.true167 ], [ 0, %cond.end161.cond.end172_crit_edge ]
  %arrayidx175 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 11, i32 2
  %102 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %cond173, ptr %arrayidx175, align 4
  %103 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mrq, align 4
  %tobool177.not = icmp eq ptr %104, null
  br i1 %tobool177.not, label %cond.end172.cond.end183_crit_edge, label %cond.true178

cond.end172.cond.end183_crit_edge:                ; preds = %cond.end172
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end183

cond.true178:                                     ; preds = %cond.end172
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx181 = getelementptr %struct.mmc_command, ptr %104, i32 0, i32 2, i32 3
  %105 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx181, align 4
  br label %cond.end183

cond.end183:                                      ; preds = %cond.true178, %cond.end172.cond.end183_crit_edge
  %cond184 = phi i32 [ %106, %cond.true178 ], [ 0, %cond.end172.cond.end183_crit_edge ]
  %arrayidx186 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 11, i32 3
  %107 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %cond184, ptr %arrayidx186, align 4
  %108 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mrq, align 4
  %tobool188.not = icmp eq ptr %109, null
  br i1 %tobool188.not, label %cond.end183.cond.end193_crit_edge, label %cond.true189

cond.end183.cond.end193_crit_edge:                ; preds = %cond.end183
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end193

cond.true189:                                     ; preds = %cond.end183
  call void @__sanitizer_cov_trace_pc() #20
  %retries191 = getelementptr inbounds %struct.mmc_command, ptr %109, i32 0, i32 4
  %110 = ptrtoint ptr %retries191 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %retries191, align 4
  br label %cond.end193

cond.end193:                                      ; preds = %cond.true189, %cond.end183.cond.end193_crit_edge
  %cond194 = phi i32 [ %111, %cond.true189 ], [ 0, %cond.end183.cond.end193_crit_edge ]
  %sbc_retries = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 12
  %112 = ptrtoint ptr %sbc_retries to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %cond194, ptr %sbc_retries, align 4
  %data = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %113 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %data, align 4
  %tobool195.not = icmp eq ptr %114, null
  br i1 %tobool195.not, label %cond.end193.cond.end199_crit_edge, label %cond.true196

cond.end193.cond.end199_crit_edge:                ; preds = %cond.end193
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end199

cond.true196:                                     ; preds = %cond.end193
  call void @__sanitizer_cov_trace_pc() #20
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %114, i32 0, i32 7
  %115 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %bytes_xfered, align 4
  br label %cond.end199

cond.end199:                                      ; preds = %cond.true196, %cond.end193.cond.end199_crit_edge
  %cond200 = phi i32 [ %116, %cond.true196 ], [ 0, %cond.end193.cond.end199_crit_edge ]
  %bytes_xfered201 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 13
  %117 = ptrtoint ptr %bytes_xfered201 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %cond200, ptr %bytes_xfered201, align 4
  %118 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %data, align 4
  %tobool203.not = icmp eq ptr %119, null
  br i1 %tobool203.not, label %cond.end199.cond.end208_crit_edge, label %cond.true204

cond.end199.cond.end208_crit_edge:                ; preds = %cond.end199
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end208

cond.true204:                                     ; preds = %cond.end199
  call void @__sanitizer_cov_trace_pc() #20
  %error206 = getelementptr inbounds %struct.mmc_data, ptr %119, i32 0, i32 5
  %120 = ptrtoint ptr %error206 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %error206, align 4
  br label %cond.end208

cond.end208:                                      ; preds = %cond.true204, %cond.end199.cond.end208_crit_edge
  %cond209 = phi i32 [ %121, %cond.true204 ], [ 0, %cond.end199.cond.end208_crit_edge ]
  %data_err = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 14
  %122 = ptrtoint ptr %data_err to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %cond209, ptr %data_err, align 4
  %tag = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 10
  %123 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %tag, align 4
  %tag210 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 15
  %125 = ptrtoint ptr %tag210 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %tag210, align 4
  %can_retune = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 29
  %126 = ptrtoint ptr %can_retune to i32
  call void @__asan_load2_noabort(i32 %126)
  %bf.load = load i16, ptr %can_retune, align 8
  %bf.lshr = lshr i16 %bf.load, 12
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %can_retune211 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 16
  %127 = ptrtoint ptr %can_retune211 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %bf.cast, ptr %can_retune211, align 4
  %bf.load212 = load i16, ptr %can_retune, align 8
  %bf.lshr213 = lshr i16 %bf.load212, 11
  %bf.clear214 = and i16 %bf.lshr213, 1
  %bf.cast215 = zext i16 %bf.clear214 to i32
  %doing_retune216 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 17
  %128 = ptrtoint ptr %doing_retune216 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %bf.cast215, ptr %doing_retune216, align 4
  %bf.load217 = load i16, ptr %can_retune, align 8
  %bf.lshr218 = lshr i16 %bf.load217, 10
  %bf.clear219 = and i16 %bf.lshr218, 1
  %bf.cast220 = zext i16 %bf.clear219 to i32
  %retune_now221 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 18
  %129 = ptrtoint ptr %retune_now221 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %bf.cast220, ptr %retune_now221, align 4
  %need_retune = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 32
  %130 = ptrtoint ptr %need_retune to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %need_retune, align 4
  %need_retune222 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 19
  %132 = ptrtoint ptr %need_retune222 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %need_retune222, align 4
  %hold_retune = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 33
  %133 = ptrtoint ptr %hold_retune to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %hold_retune, align 8
  %hold_retune223 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 20
  %135 = ptrtoint ptr %hold_retune223 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %hold_retune223, align 4
  %retune_period = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 34
  %136 = ptrtoint ptr %retune_period to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %retune_period, align 4
  %retune_period224 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 21
  %138 = ptrtoint ptr %retune_period224 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %retune_period224, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 136
  %139 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i354 = icmp eq ptr %140, null
  br i1 %tobool.not.i354, label %dev_name.exit, label %cond.end208.cond.end232_crit_edge

cond.end208.cond.end232_crit_edge:                ; preds = %cond.end208
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end232

dev_name.exit:                                    ; preds = %cond.end208
  %141 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %class_dev.i, align 4
  %tobool227.not = icmp eq ptr %142, null
  br i1 %tobool227.not, label %dev_name.exit.cond.end232_crit_edge, label %if.end.i359

dev_name.exit.cond.end232_crit_edge:              ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end232

if.end.i359:                                      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #20
  %143 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %class_dev.i, align 4
  br label %cond.end232

cond.end232:                                      ; preds = %if.end.i359, %dev_name.exit.cond.end232_crit_edge, %cond.end208.cond.end232_crit_edge
  %cond233 = phi ptr [ @.str.48, %dev_name.exit.cond.end232_crit_edge ], [ %144, %if.end.i359 ], [ %140, %cond.end208.cond.end232_crit_edge ]
  %call234 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond233) #22
  %mrq235 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call3, i32 0, i32 22
  %145 = ptrtoint ptr %mrq235 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %mrq, ptr %mrq235, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #18
  br label %cleanup

cleanup:                                          ; preds = %cond.end232, %trace_event_get_offsets_mmc_request_done.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mmc_request_done(ptr noundef %__data, ptr nocapture noundef readonly %host, ptr noundef %mrq) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #18
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !317
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #18
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !317
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.trace_event_get_offsets_mmc_request_done.exit_crit_edge

entry.trace_event_get_offsets_mmc_request_done.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %trace_event_get_offsets_mmc_request_done.exit

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %4 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %class_dev.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %spec.select = select i1 %tobool.not.i, ptr @.str.48, ptr %5
  br label %trace_event_get_offsets_mmc_request_done.exit

trace_event_get_offsets_mmc_request_done.exit:    ; preds = %dev_name.exit.i, %entry.trace_event_get_offsets_mmc_request_done.exit_crit_edge
  %cond.i = phi ptr [ %3, %entry.trace_event_get_offsets_mmc_request_done.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #21
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65672
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %6 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %perf_events, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !305) #18
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %add = add i32 %14, %8
  %15 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %16 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %17, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_mmc_request_done.exit.if.end_crit_edge

trace_event_get_offsets_mmc_request_done.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_mmc_request_done.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_mmc_request_done.exit
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %15, align 4
  %tobool.not.i378.not = icmp eq ptr %19, null
  br i1 %tobool.not.i378.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_mmc_request_done.exit.if.end_crit_edge
  %add12 = add i32 %call4.i, 148
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #18
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %20 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %__regs, align 4
  %22 = call ptr @llvm.returnaddress(i32 0) #18
  %23 = ptrtoint ptr %22 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %21, i32 0, i32 15
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx.i, align 4
  %25 = call ptr @llvm.frameaddress.p0(i32 0) #18
  %26 = ptrtoint ptr %25 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %21, i32 0, i32 11
  %27 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx2.i, align 4
  %28 = call i32 @llvm.read_register.i32(metadata !305) #18
  %arrayidx4.i = getelementptr [18 x i32], ptr %21, i32 0, i32 13
  %29 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %21, i32 0, i32 16
  %30 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 23
  %31 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %32 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cmd, align 4
  %tobool17.not = icmp eq ptr %33, null
  br i1 %tobool17.not, label %if.end16.cond.end_crit_edge, label %cond.true

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.true:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end16.cond.end_crit_edge
  %cond = phi i32 [ %35, %cond.true ], [ 0, %if.end16.cond.end_crit_edge ]
  %cmd_opcode = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 1
  %36 = ptrtoint ptr %cmd_opcode to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cond, ptr %cmd_opcode, align 4
  %37 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cmd, align 4
  %tobool20.not = icmp eq ptr %38, null
  br i1 %tobool20.not, label %cond.end.cond.end24_crit_edge, label %cond.true21

cond.end.cond.end24_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end24

cond.true21:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  %error = getelementptr inbounds %struct.mmc_command, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %error, align 4
  br label %cond.end24

cond.end24:                                       ; preds = %cond.true21, %cond.end.cond.end24_crit_edge
  %cond25 = phi i32 [ %40, %cond.true21 ], [ 0, %cond.end.cond.end24_crit_edge ]
  %cmd_err = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 2
  %41 = ptrtoint ptr %cmd_err to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %cond25, ptr %cmd_err, align 4
  %42 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cmd, align 4
  %tobool27.not = icmp eq ptr %43, null
  br i1 %tobool27.not, label %cond.end24.cond.end32_crit_edge, label %cond.true28

cond.end24.cond.end32_crit_edge:                  ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end32

cond.true28:                                      ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #20
  %resp = getelementptr inbounds %struct.mmc_command, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %resp, align 4
  br label %cond.end32

cond.end32:                                       ; preds = %cond.true28, %cond.end24.cond.end32_crit_edge
  %cond33 = phi i32 [ %45, %cond.true28 ], [ 0, %cond.end24.cond.end32_crit_edge ]
  %cmd_resp = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 3
  %46 = ptrtoint ptr %cmd_resp to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %cond33, ptr %cmd_resp, align 4
  %47 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cmd, align 4
  %tobool36.not = icmp eq ptr %48, null
  br i1 %tobool36.not, label %cond.end32.cond.end42_crit_edge, label %cond.true37

cond.end32.cond.end42_crit_edge:                  ; preds = %cond.end32
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end42

cond.true37:                                      ; preds = %cond.end32
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx40 = getelementptr %struct.mmc_command, ptr %48, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx40, align 4
  br label %cond.end42

cond.end42:                                       ; preds = %cond.true37, %cond.end32.cond.end42_crit_edge
  %cond43 = phi i32 [ %50, %cond.true37 ], [ 0, %cond.end32.cond.end42_crit_edge ]
  %arrayidx45 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 3, i32 1
  %51 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %cond43, ptr %arrayidx45, align 4
  %52 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cmd, align 4
  %tobool47.not = icmp eq ptr %53, null
  br i1 %tobool47.not, label %cond.end42.cond.end53_crit_edge, label %cond.true48

cond.end42.cond.end53_crit_edge:                  ; preds = %cond.end42
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end53

cond.true48:                                      ; preds = %cond.end42
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx51 = getelementptr %struct.mmc_command, ptr %53, i32 0, i32 2, i32 2
  %54 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx51, align 4
  br label %cond.end53

cond.end53:                                       ; preds = %cond.true48, %cond.end42.cond.end53_crit_edge
  %cond54 = phi i32 [ %55, %cond.true48 ], [ 0, %cond.end42.cond.end53_crit_edge ]
  %arrayidx56 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 3, i32 2
  %56 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %cond54, ptr %arrayidx56, align 4
  %57 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cmd, align 4
  %tobool58.not = icmp eq ptr %58, null
  br i1 %tobool58.not, label %cond.end53.cond.end64_crit_edge, label %cond.true59

cond.end53.cond.end64_crit_edge:                  ; preds = %cond.end53
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end64

cond.true59:                                      ; preds = %cond.end53
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx62 = getelementptr %struct.mmc_command, ptr %58, i32 0, i32 2, i32 3
  %59 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx62, align 4
  br label %cond.end64

cond.end64:                                       ; preds = %cond.true59, %cond.end53.cond.end64_crit_edge
  %cond65 = phi i32 [ %60, %cond.true59 ], [ 0, %cond.end53.cond.end64_crit_edge ]
  %arrayidx67 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 3, i32 3
  %61 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %cond65, ptr %arrayidx67, align 4
  %62 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cmd, align 4
  %tobool69.not = icmp eq ptr %63, null
  br i1 %tobool69.not, label %cond.end64.cond.end73_crit_edge, label %cond.true70

cond.end64.cond.end73_crit_edge:                  ; preds = %cond.end64
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end73

cond.true70:                                      ; preds = %cond.end64
  call void @__sanitizer_cov_trace_pc() #20
  %retries = getelementptr inbounds %struct.mmc_command, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %retries, align 4
  br label %cond.end73

cond.end73:                                       ; preds = %cond.true70, %cond.end64.cond.end73_crit_edge
  %cond74 = phi i32 [ %65, %cond.true70 ], [ 0, %cond.end64.cond.end73_crit_edge ]
  %cmd_retries = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 4
  %66 = ptrtoint ptr %cmd_retries to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %cond74, ptr %cmd_retries, align 4
  %stop = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 3
  %67 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %stop, align 4
  %tobool75.not = icmp eq ptr %68, null
  br i1 %tobool75.not, label %cond.end73.cond.end80_crit_edge, label %cond.true76

cond.end73.cond.end80_crit_edge:                  ; preds = %cond.end73
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end80

cond.true76:                                      ; preds = %cond.end73
  call void @__sanitizer_cov_trace_pc() #20
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  br label %cond.end80

cond.end80:                                       ; preds = %cond.true76, %cond.end73.cond.end80_crit_edge
  %cond81 = phi i32 [ %70, %cond.true76 ], [ 0, %cond.end73.cond.end80_crit_edge ]
  %stop_opcode = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 5
  %71 = ptrtoint ptr %stop_opcode to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %cond81, ptr %stop_opcode, align 4
  %72 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %stop, align 4
  %tobool83.not = icmp eq ptr %73, null
  br i1 %tobool83.not, label %cond.end80.cond.end88_crit_edge, label %cond.true84

cond.end80.cond.end88_crit_edge:                  ; preds = %cond.end80
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end88

cond.true84:                                      ; preds = %cond.end80
  call void @__sanitizer_cov_trace_pc() #20
  %error86 = getelementptr inbounds %struct.mmc_command, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %error86 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %error86, align 4
  br label %cond.end88

cond.end88:                                       ; preds = %cond.true84, %cond.end80.cond.end88_crit_edge
  %cond89 = phi i32 [ %75, %cond.true84 ], [ 0, %cond.end80.cond.end88_crit_edge ]
  %stop_err = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 6
  %76 = ptrtoint ptr %stop_err to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %cond89, ptr %stop_err, align 4
  %77 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %stop, align 4
  %tobool91.not = icmp eq ptr %78, null
  br i1 %tobool91.not, label %cond.end88.cond.end97_crit_edge, label %cond.true92

cond.end88.cond.end97_crit_edge:                  ; preds = %cond.end88
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end97

cond.true92:                                      ; preds = %cond.end88
  call void @__sanitizer_cov_trace_pc() #20
  %resp94 = getelementptr inbounds %struct.mmc_command, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %resp94 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %resp94, align 4
  br label %cond.end97

cond.end97:                                       ; preds = %cond.true92, %cond.end88.cond.end97_crit_edge
  %cond98 = phi i32 [ %80, %cond.true92 ], [ 0, %cond.end88.cond.end97_crit_edge ]
  %stop_resp = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 7
  %81 = ptrtoint ptr %stop_resp to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %cond98, ptr %stop_resp, align 4
  %82 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %stop, align 4
  %tobool101.not = icmp eq ptr %83, null
  br i1 %tobool101.not, label %cond.end97.cond.end107_crit_edge, label %cond.true102

cond.end97.cond.end107_crit_edge:                 ; preds = %cond.end97
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end107

cond.true102:                                     ; preds = %cond.end97
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx105 = getelementptr %struct.mmc_command, ptr %83, i32 0, i32 2, i32 1
  %84 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx105, align 4
  br label %cond.end107

cond.end107:                                      ; preds = %cond.true102, %cond.end97.cond.end107_crit_edge
  %cond108 = phi i32 [ %85, %cond.true102 ], [ 0, %cond.end97.cond.end107_crit_edge ]
  %arrayidx110 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 7, i32 1
  %86 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %cond108, ptr %arrayidx110, align 4
  %87 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %stop, align 4
  %tobool112.not = icmp eq ptr %88, null
  br i1 %tobool112.not, label %cond.end107.cond.end118_crit_edge, label %cond.true113

cond.end107.cond.end118_crit_edge:                ; preds = %cond.end107
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end118

cond.true113:                                     ; preds = %cond.end107
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx116 = getelementptr %struct.mmc_command, ptr %88, i32 0, i32 2, i32 2
  %89 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx116, align 4
  br label %cond.end118

cond.end118:                                      ; preds = %cond.true113, %cond.end107.cond.end118_crit_edge
  %cond119 = phi i32 [ %90, %cond.true113 ], [ 0, %cond.end107.cond.end118_crit_edge ]
  %arrayidx121 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 7, i32 2
  %91 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %cond119, ptr %arrayidx121, align 4
  %92 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %stop, align 4
  %tobool123.not = icmp eq ptr %93, null
  br i1 %tobool123.not, label %cond.end118.cond.end129_crit_edge, label %cond.true124

cond.end118.cond.end129_crit_edge:                ; preds = %cond.end118
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end129

cond.true124:                                     ; preds = %cond.end118
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx127 = getelementptr %struct.mmc_command, ptr %93, i32 0, i32 2, i32 3
  %94 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx127, align 4
  br label %cond.end129

cond.end129:                                      ; preds = %cond.true124, %cond.end118.cond.end129_crit_edge
  %cond130 = phi i32 [ %95, %cond.true124 ], [ 0, %cond.end118.cond.end129_crit_edge ]
  %arrayidx132 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 7, i32 3
  %96 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %cond130, ptr %arrayidx132, align 4
  %97 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %stop, align 4
  %tobool134.not = icmp eq ptr %98, null
  br i1 %tobool134.not, label %cond.end129.cond.end139_crit_edge, label %cond.true135

cond.end129.cond.end139_crit_edge:                ; preds = %cond.end129
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end139

cond.true135:                                     ; preds = %cond.end129
  call void @__sanitizer_cov_trace_pc() #20
  %retries137 = getelementptr inbounds %struct.mmc_command, ptr %98, i32 0, i32 4
  %99 = ptrtoint ptr %retries137 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %retries137, align 4
  br label %cond.end139

cond.end139:                                      ; preds = %cond.true135, %cond.end129.cond.end139_crit_edge
  %cond140 = phi i32 [ %100, %cond.true135 ], [ 0, %cond.end129.cond.end139_crit_edge ]
  %stop_retries = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 8
  %101 = ptrtoint ptr %stop_retries to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %cond140, ptr %stop_retries, align 4
  %102 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mrq, align 4
  %tobool141.not = icmp eq ptr %103, null
  br i1 %tobool141.not, label %cond.end139.cond.end146_crit_edge, label %cond.true142

cond.end139.cond.end146_crit_edge:                ; preds = %cond.end139
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end146

cond.true142:                                     ; preds = %cond.end139
  call void @__sanitizer_cov_trace_pc() #20
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %103, align 4
  br label %cond.end146

cond.end146:                                      ; preds = %cond.true142, %cond.end139.cond.end146_crit_edge
  %cond147 = phi i32 [ %105, %cond.true142 ], [ 0, %cond.end139.cond.end146_crit_edge ]
  %sbc_opcode = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 9
  %106 = ptrtoint ptr %sbc_opcode to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %cond147, ptr %sbc_opcode, align 4
  %107 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mrq, align 4
  %tobool149.not = icmp eq ptr %108, null
  br i1 %tobool149.not, label %cond.end146.cond.end154_crit_edge, label %cond.true150

cond.end146.cond.end154_crit_edge:                ; preds = %cond.end146
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end154

cond.true150:                                     ; preds = %cond.end146
  call void @__sanitizer_cov_trace_pc() #20
  %error152 = getelementptr inbounds %struct.mmc_command, ptr %108, i32 0, i32 5
  %109 = ptrtoint ptr %error152 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %error152, align 4
  br label %cond.end154

cond.end154:                                      ; preds = %cond.true150, %cond.end146.cond.end154_crit_edge
  %cond155 = phi i32 [ %110, %cond.true150 ], [ 0, %cond.end146.cond.end154_crit_edge ]
  %sbc_err = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 10
  %111 = ptrtoint ptr %sbc_err to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %cond155, ptr %sbc_err, align 4
  %112 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mrq, align 4
  %tobool157.not = icmp eq ptr %113, null
  br i1 %tobool157.not, label %cond.end154.cond.end163_crit_edge, label %cond.true158

cond.end154.cond.end163_crit_edge:                ; preds = %cond.end154
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end163

cond.true158:                                     ; preds = %cond.end154
  call void @__sanitizer_cov_trace_pc() #20
  %resp160 = getelementptr inbounds %struct.mmc_command, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %resp160 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %resp160, align 4
  br label %cond.end163

cond.end163:                                      ; preds = %cond.true158, %cond.end154.cond.end163_crit_edge
  %cond164 = phi i32 [ %115, %cond.true158 ], [ 0, %cond.end154.cond.end163_crit_edge ]
  %sbc_resp = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 11
  %116 = ptrtoint ptr %sbc_resp to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %cond164, ptr %sbc_resp, align 4
  %117 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mrq, align 4
  %tobool167.not = icmp eq ptr %118, null
  br i1 %tobool167.not, label %cond.end163.cond.end173_crit_edge, label %cond.true168

cond.end163.cond.end173_crit_edge:                ; preds = %cond.end163
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end173

cond.true168:                                     ; preds = %cond.end163
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx171 = getelementptr %struct.mmc_command, ptr %118, i32 0, i32 2, i32 1
  %119 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx171, align 4
  br label %cond.end173

cond.end173:                                      ; preds = %cond.true168, %cond.end163.cond.end173_crit_edge
  %cond174 = phi i32 [ %120, %cond.true168 ], [ 0, %cond.end163.cond.end173_crit_edge ]
  %arrayidx176 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 11, i32 1
  %121 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %cond174, ptr %arrayidx176, align 4
  %122 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mrq, align 4
  %tobool178.not = icmp eq ptr %123, null
  br i1 %tobool178.not, label %cond.end173.cond.end184_crit_edge, label %cond.true179

cond.end173.cond.end184_crit_edge:                ; preds = %cond.end173
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end184

cond.true179:                                     ; preds = %cond.end173
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx182 = getelementptr %struct.mmc_command, ptr %123, i32 0, i32 2, i32 2
  %124 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx182, align 4
  br label %cond.end184

cond.end184:                                      ; preds = %cond.true179, %cond.end173.cond.end184_crit_edge
  %cond185 = phi i32 [ %125, %cond.true179 ], [ 0, %cond.end173.cond.end184_crit_edge ]
  %arrayidx187 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 11, i32 2
  %126 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %cond185, ptr %arrayidx187, align 4
  %127 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %mrq, align 4
  %tobool189.not = icmp eq ptr %128, null
  br i1 %tobool189.not, label %cond.end184.cond.end195_crit_edge, label %cond.true190

cond.end184.cond.end195_crit_edge:                ; preds = %cond.end184
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end195

cond.true190:                                     ; preds = %cond.end184
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx193 = getelementptr %struct.mmc_command, ptr %128, i32 0, i32 2, i32 3
  %129 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx193, align 4
  br label %cond.end195

cond.end195:                                      ; preds = %cond.true190, %cond.end184.cond.end195_crit_edge
  %cond196 = phi i32 [ %130, %cond.true190 ], [ 0, %cond.end184.cond.end195_crit_edge ]
  %arrayidx198 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 11, i32 3
  %131 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %cond196, ptr %arrayidx198, align 4
  %132 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %mrq, align 4
  %tobool200.not = icmp eq ptr %133, null
  br i1 %tobool200.not, label %cond.end195.cond.end205_crit_edge, label %cond.true201

cond.end195.cond.end205_crit_edge:                ; preds = %cond.end195
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end205

cond.true201:                                     ; preds = %cond.end195
  call void @__sanitizer_cov_trace_pc() #20
  %retries203 = getelementptr inbounds %struct.mmc_command, ptr %133, i32 0, i32 4
  %134 = ptrtoint ptr %retries203 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %retries203, align 4
  br label %cond.end205

cond.end205:                                      ; preds = %cond.true201, %cond.end195.cond.end205_crit_edge
  %cond206 = phi i32 [ %135, %cond.true201 ], [ 0, %cond.end195.cond.end205_crit_edge ]
  %sbc_retries = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 12
  %136 = ptrtoint ptr %sbc_retries to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %cond206, ptr %sbc_retries, align 4
  %data = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %137 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %data, align 4
  %tobool207.not = icmp eq ptr %138, null
  br i1 %tobool207.not, label %cond.end205.cond.end211_crit_edge, label %cond.true208

cond.end205.cond.end211_crit_edge:                ; preds = %cond.end205
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end211

cond.true208:                                     ; preds = %cond.end205
  call void @__sanitizer_cov_trace_pc() #20
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %138, i32 0, i32 7
  %139 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %bytes_xfered, align 4
  br label %cond.end211

cond.end211:                                      ; preds = %cond.true208, %cond.end205.cond.end211_crit_edge
  %cond212 = phi i32 [ %140, %cond.true208 ], [ 0, %cond.end205.cond.end211_crit_edge ]
  %bytes_xfered213 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 13
  %141 = ptrtoint ptr %bytes_xfered213 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %cond212, ptr %bytes_xfered213, align 4
  %142 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %data, align 4
  %tobool215.not = icmp eq ptr %143, null
  br i1 %tobool215.not, label %cond.end211.cond.end220_crit_edge, label %cond.true216

cond.end211.cond.end220_crit_edge:                ; preds = %cond.end211
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end220

cond.true216:                                     ; preds = %cond.end211
  call void @__sanitizer_cov_trace_pc() #20
  %error218 = getelementptr inbounds %struct.mmc_data, ptr %143, i32 0, i32 5
  %144 = ptrtoint ptr %error218 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %error218, align 4
  br label %cond.end220

cond.end220:                                      ; preds = %cond.true216, %cond.end211.cond.end220_crit_edge
  %cond221 = phi i32 [ %145, %cond.true216 ], [ 0, %cond.end211.cond.end220_crit_edge ]
  %data_err = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 14
  %146 = ptrtoint ptr %data_err to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %cond221, ptr %data_err, align 4
  %tag = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 10
  %147 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %tag, align 4
  %tag222 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 15
  %149 = ptrtoint ptr %tag222 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %tag222, align 4
  %can_retune = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 29
  %150 = ptrtoint ptr %can_retune to i32
  call void @__asan_load2_noabort(i32 %150)
  %bf.load = load i16, ptr %can_retune, align 8
  %bf.lshr = lshr i16 %bf.load, 12
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %can_retune223 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 16
  %151 = ptrtoint ptr %can_retune223 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %bf.cast, ptr %can_retune223, align 4
  %bf.load224 = load i16, ptr %can_retune, align 8
  %bf.lshr225 = lshr i16 %bf.load224, 11
  %bf.clear226 = and i16 %bf.lshr225, 1
  %bf.cast227 = zext i16 %bf.clear226 to i32
  %doing_retune228 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 17
  %152 = ptrtoint ptr %doing_retune228 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %bf.cast227, ptr %doing_retune228, align 4
  %bf.load229 = load i16, ptr %can_retune, align 8
  %bf.lshr230 = lshr i16 %bf.load229, 10
  %bf.clear231 = and i16 %bf.lshr230, 1
  %bf.cast232 = zext i16 %bf.clear231 to i32
  %retune_now233 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 18
  %153 = ptrtoint ptr %retune_now233 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %bf.cast232, ptr %retune_now233, align 4
  %need_retune = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 32
  %154 = ptrtoint ptr %need_retune to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %need_retune, align 4
  %need_retune234 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 19
  %156 = ptrtoint ptr %need_retune234 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %need_retune234, align 4
  %hold_retune = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 33
  %157 = ptrtoint ptr %hold_retune to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %hold_retune, align 8
  %hold_retune235 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 20
  %159 = ptrtoint ptr %hold_retune235 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %hold_retune235, align 4
  %retune_period = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 34
  %160 = ptrtoint ptr %retune_period to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %retune_period, align 4
  %retune_period236 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 21
  %162 = ptrtoint ptr %retune_period236 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %retune_period236, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 136
  %163 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i379 = icmp eq ptr %164, null
  br i1 %tobool.not.i379, label %dev_name.exit, label %cond.end220.cond.end245_crit_edge

cond.end220.cond.end245_crit_edge:                ; preds = %cond.end220
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end245

dev_name.exit:                                    ; preds = %cond.end220
  %165 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %class_dev.i, align 4
  %tobool240.not = icmp eq ptr %166, null
  br i1 %tobool240.not, label %dev_name.exit.cond.end245_crit_edge, label %if.end.i382

dev_name.exit.cond.end245_crit_edge:              ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end245

if.end.i382:                                      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #20
  %167 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %class_dev.i, align 4
  br label %cond.end245

cond.end245:                                      ; preds = %if.end.i382, %dev_name.exit.cond.end245_crit_edge, %cond.end220.cond.end245_crit_edge
  %cond246 = phi ptr [ @.str.48, %dev_name.exit.cond.end245_crit_edge ], [ %168, %if.end.i382 ], [ %164, %cond.end220.cond.end245_crit_edge ]
  %call247 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond246) #22
  %mrq248 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %call13, i32 0, i32 22
  %169 = ptrtoint ptr %mrq248 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %mrq, ptr %mrq248, align 4
  %170 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %rctx, align 4
  %172 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %171, ptr noundef %__data, i64 noundef 1, ptr noundef %173, ptr noundef %15, ptr noundef null) #18
  br label %cleanup

cleanup:                                          ; preds = %cond.end245, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mmc_request_start(ptr noundef %__data, ptr noundef %host, ptr noundef %mrq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %0 = ptrtoint ptr %host to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %mrq to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mmc_request_done(ptr noundef %__data, ptr noundef %host, ptr noundef %mrq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %0 = ptrtoint ptr %host to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %mrq to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_command_done(ptr nocapture noundef readonly %host, ptr noundef %mrq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %cap_cmd_during_tfr = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 9
  %0 = ptrtoint ptr %cap_cmd_during_tfr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cap_cmd_during_tfr, align 4, !range !318
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %land.lhs.true.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

land.lhs.true.i:                                  ; preds = %entry
  %cmd_completion.i = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 5
  %call.i = tail call zeroext i1 @completion_done(ptr noundef %cmd_completion.i) #18
  br i1 %call.i, label %land.lhs.true.i.mmc_complete_cmd.exit_crit_edge, label %if.then.i

land.lhs.true.i.mmc_complete_cmd.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_complete_cmd.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @complete_all(ptr noundef %cmd_completion.i) #18
  br label %mmc_complete_cmd.exit

mmc_complete_cmd.exit:                            ; preds = %if.then.i, %land.lhs.true.i.mmc_complete_cmd.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_command_done.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_command_done, %if.then4)) #18
          to label %do.end [label %if.then4], !srcloc !319

if.then4:                                         ; preds = %mmc_complete_cmd.exit
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i9 = icmp eq ptr %3, null
  br i1 %tobool.not.i9, label %if.end.i, label %if.then4.dev_name.exit_crit_edge

if.then4.dev_name.exit_crit_edge:                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %4 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then4.dev_name.exit_crit_edge
  %retval.0.i10 = phi ptr [ %5, %if.end.i ], [ %3, %if.then4.dev_name.exit_crit_edge ]
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_command_done.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.3, ptr noundef %retval.0.i10, i32 noundef %9) #18
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %mmc_complete_cmd.exit, %entry.do.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_request_done(ptr noundef %host, ptr noundef %mrq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %land.lhs.true4 [
    i32 19, label %entry.if.end_crit_edge
    i32 21, label %entry.if.end_crit_edge275
  ]

entry.if.end_crit_edge275:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true4:                                   ; preds = %entry
  %retune_crc_disable = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 29
  %7 = ptrtoint ptr %retune_crc_disable to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %retune_crc_disable, align 8
  %8 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %land.lhs.true5, label %land.lhs.true4.if.end_crit_edge

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -84, i32 %3)
  %cmp6 = icmp eq i32 %3, -84
  br i1 %cmp6, label %land.lhs.true5.if.then_crit_edge, label %lor.lhs.false

land.lhs.true5.if.then_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true5
  %9 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mrq, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %lor.lhs.false.lor.lhs.false12_crit_edge, label %land.lhs.true8

lor.lhs.false.lor.lhs.false12_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false12

land.lhs.true8:                                   ; preds = %lor.lhs.false
  %error10 = getelementptr inbounds %struct.mmc_command, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %error10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %error10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -84, i32 %12)
  %cmp11 = icmp eq i32 %12, -84
  br i1 %cmp11, label %land.lhs.true8.if.then_crit_edge, label %land.lhs.true8.lor.lhs.false12_crit_edge

land.lhs.true8.lor.lhs.false12_crit_edge:         ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false12

land.lhs.true8.if.then_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

lor.lhs.false12:                                  ; preds = %land.lhs.true8.lor.lhs.false12_crit_edge, %lor.lhs.false.lor.lhs.false12_crit_edge
  %data = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %tobool13.not = icmp eq ptr %14, null
  br i1 %tobool13.not, label %lor.lhs.false12.lor.lhs.false18_crit_edge, label %land.lhs.true14

lor.lhs.false12.lor.lhs.false18_crit_edge:        ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false18

land.lhs.true14:                                  ; preds = %lor.lhs.false12
  %error16 = getelementptr inbounds %struct.mmc_data, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %error16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %error16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -84, i32 %16)
  %cmp17 = icmp eq i32 %16, -84
  br i1 %cmp17, label %land.lhs.true14.if.then_crit_edge, label %land.lhs.true14.lor.lhs.false18_crit_edge

land.lhs.true14.lor.lhs.false18_crit_edge:        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false18

land.lhs.true14.if.then_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

lor.lhs.false18:                                  ; preds = %land.lhs.true14.lor.lhs.false18_crit_edge, %lor.lhs.false12.lor.lhs.false18_crit_edge
  %stop = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 3
  %17 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stop, align 4
  %tobool19.not = icmp eq ptr %18, null
  br i1 %tobool19.not, label %lor.lhs.false18.if.end_crit_edge, label %land.lhs.true20

lor.lhs.false18.if.end_crit_edge:                 ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true20:                                  ; preds = %lor.lhs.false18
  %error22 = getelementptr inbounds %struct.mmc_command, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %error22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %error22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -84, i32 %20)
  %cmp23 = icmp ne i32 %20, -84
  %21 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.i = icmp eq i16 %21, 0
  %or.cond = select i1 %cmp23, i1 true, i1 %tobool.not.i
  br i1 %or.cond, label %land.lhs.true20.if.end_crit_edge, label %land.lhs.true20.if.then.i_crit_edge

land.lhs.true20.if.then.i_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i

land.lhs.true20.if.end_crit_edge:                 ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %land.lhs.true14.if.then_crit_edge, %land.lhs.true8.if.then_crit_edge, %land.lhs.true5.if.then_crit_edge
  %.old = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.old)
  %tobool.not.i.old = icmp eq i16 %.old, 0
  br i1 %tobool.not.i.old, label %if.then.if.end_crit_edge, label %if.then.if.then.i_crit_edge

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then.i:                                        ; preds = %if.then.if.then.i_crit_edge, %land.lhs.true20.if.then.i_crit_edge
  %need_retune.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 32
  %22 = ptrtoint ptr %need_retune.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %need_retune.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %land.lhs.true20.if.end_crit_edge, %lor.lhs.false18.if.end_crit_edge, %land.lhs.true4.if.end_crit_edge, %entry.if.end_crit_edge, %entry.if.end_crit_edge275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool24.not = icmp eq i32 %3, 0
  br i1 %tobool24.not, label %if.end.if.end35_crit_edge, label %land.lhs.true25

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end35

land.lhs.true25:                                  ; preds = %if.end
  %retries = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool26.not = icmp eq i32 %24, 0
  br i1 %tobool26.not, label %land.lhs.true25.if.end35_crit_edge, label %land.lhs.true27

land.lhs.true25.if.end35_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end35

land.lhs.true27:                                  ; preds = %land.lhs.true25
  %caps = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %25 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %caps, align 32
  %and = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %land.lhs.true27.if.end35_crit_edge, label %if.then29

land.lhs.true27.if.end35_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end35

if.then29:                                        ; preds = %land.lhs.true27
  %resp = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %resp, align 4
  %and30 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.then29.if.end35_crit_edge, label %if.then32

if.then29.if.end35_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end35

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #20
  %29 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %retries, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.then29.if.end35_crit_edge, %land.lhs.true27.if.end35_crit_edge, %land.lhs.true25.if.end35_crit_edge, %if.end.if.end35_crit_edge
  %ongoing_mrq = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 56
  %30 = ptrtoint ptr %ongoing_mrq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ongoing_mrq, align 4
  %cmp36 = icmp eq ptr %31, %mrq
  br i1 %cmp36, label %if.then37, label %if.end35.if.end39_crit_edge

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end39

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #20
  %32 = ptrtoint ptr %ongoing_mrq to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %ongoing_mrq, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end35.if.end39_crit_edge
  %cap_cmd_during_tfr.i = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 9
  %33 = ptrtoint ptr %cap_cmd_during_tfr.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %cap_cmd_during_tfr.i, align 4, !range !318
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i248 = icmp eq i8 %34, 0
  br i1 %tobool.not.i248, label %if.end39.mmc_complete_cmd.exit_crit_edge, label %land.lhs.true.i

if.end39.mmc_complete_cmd.exit_crit_edge:         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_complete_cmd.exit

land.lhs.true.i:                                  ; preds = %if.end39
  %cmd_completion.i = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 5
  %call.i = tail call zeroext i1 @completion_done(ptr noundef %cmd_completion.i) #18
  br i1 %call.i, label %land.lhs.true.i.mmc_complete_cmd.exit_crit_edge, label %if.then.i249

land.lhs.true.i.mmc_complete_cmd.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_complete_cmd.exit

if.then.i249:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @complete_all(ptr noundef %cmd_completion.i) #18
  br label %mmc_complete_cmd.exit

mmc_complete_cmd.exit:                            ; preds = %if.then.i249, %land.lhs.true.i.mmc_complete_cmd.exit_crit_edge, %if.end39.mmc_complete_cmd.exit_crit_edge
  tail call fastcc void @trace_mmc_request_done(ptr noundef %host, ptr noundef %mrq)
  br i1 %tobool24.not, label %mmc_complete_cmd.exit.if.then50_crit_edge, label %lor.lhs.false41

mmc_complete_cmd.exit.if.then50_crit_edge:        ; preds = %mmc_complete_cmd.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then50

lor.lhs.false41:                                  ; preds = %mmc_complete_cmd.exit
  %retries42 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %retries42 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %retries42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool43.not = icmp eq i32 %36, 0
  br i1 %tobool43.not, label %lor.lhs.false41.if.then50_crit_edge, label %lor.lhs.false44

lor.lhs.false41.if.then50_crit_edge:              ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then50

lor.lhs.false44:                                  ; preds = %lor.lhs.false41
  %card = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %37 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %card, align 4
  %tobool45.not = icmp eq ptr %38, null
  br i1 %tobool45.not, label %lor.lhs.false44.if.end171_crit_edge, label %land.lhs.true46

lor.lhs.false44.if.end171_crit_edge:              ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end171

land.lhs.true46:                                  ; preds = %lor.lhs.false44
  %state = getelementptr inbounds %struct.mmc_card, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %state, align 4
  %and48 = and i32 %40, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %land.lhs.true46.if.end171_crit_edge, label %land.lhs.true46.if.then50_crit_edge

land.lhs.true46.if.then50_crit_edge:              ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then50

land.lhs.true46.if.end171_crit_edge:              ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end171

if.then50:                                        ; preds = %land.lhs.true46.if.then50_crit_edge, %lor.lhs.false41.if.then50_crit_edge, %mmc_complete_cmd.exit.if.then50_crit_edge
  %41 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cmd1, align 4
  %data2.i = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %43 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data2.i, align 4
  %tobool.not.i250 = icmp eq ptr %44, null
  br i1 %tobool.not.i250, label %if.then50.mmc_should_fail_request.exit_crit_edge, label %if.end.i

if.then50.mmc_should_fail_request.exit_crit_edge: ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_should_fail_request.exit

if.end.i:                                         ; preds = %if.then50
  %tobool3.not.i = icmp eq ptr %42, null
  br i1 %tobool3.not.i, label %if.end.i.lor.lhs.false.i_crit_edge, label %land.lhs.true.i251

if.end.i.lor.lhs.false.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false.i

land.lhs.true.i251:                               ; preds = %if.end.i
  %error.i = getelementptr inbounds %struct.mmc_command, ptr %42, i32 0, i32 5
  %45 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool4.not.i = icmp eq i32 %46, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i251.lor.lhs.false.i_crit_edge, label %land.lhs.true.i251.mmc_should_fail_request.exit_crit_edge

land.lhs.true.i251.mmc_should_fail_request.exit_crit_edge: ; preds = %land.lhs.true.i251
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_should_fail_request.exit

land.lhs.true.i251.lor.lhs.false.i_crit_edge:     ; preds = %land.lhs.true.i251
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i251.lor.lhs.false.i_crit_edge, %if.end.i.lor.lhs.false.i_crit_edge
  %error5.i = getelementptr inbounds %struct.mmc_data, ptr %44, i32 0, i32 5
  %47 = ptrtoint ptr %error5.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %error5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool6.not.i = icmp eq i32 %48, 0
  br i1 %tobool6.not.i, label %lor.lhs.false7.i, label %lor.lhs.false.i.mmc_should_fail_request.exit_crit_edge

lor.lhs.false.i.mmc_should_fail_request.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_should_fail_request.exit

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false.i
  %fail_mmc_request.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 57
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %44, i32 0, i32 2
  %49 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %blksz.i, align 4
  %blocks.i = getelementptr inbounds %struct.mmc_data, ptr %44, i32 0, i32 3
  %51 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %blocks.i, align 4
  %mul.i = mul i32 %52, %50
  %call.i252 = tail call zeroext i1 @should_fail(ptr noundef %fail_mmc_request.i, i32 noundef %mul.i) #18
  br i1 %call.i252, label %if.end9.i, label %lor.lhs.false7.i.mmc_should_fail_request.exit_crit_edge

lor.lhs.false7.i.mmc_should_fail_request.exit_crit_edge: ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_should_fail_request.exit

if.end9.i:                                        ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #20
  %call10.i = tail call i32 @prandom_u32() #18
  %rem.i = urem i32 %call10.i, 3
  %arrayidx.i = getelementptr [3 x i32], ptr @mmc_should_fail_request.data_errors, i32 0, i32 %rem.i
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i, align 4
  %55 = ptrtoint ptr %error5.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %error5.i, align 4
  %call12.i = tail call i32 @prandom_u32() #18
  %bytes_xfered.i = getelementptr inbounds %struct.mmc_data, ptr %44, i32 0, i32 7
  %56 = ptrtoint ptr %bytes_xfered.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bytes_xfered.i, align 4
  %shr.i = lshr i32 %57, 9
  %rem13.i = urem i32 %call12.i, %shr.i
  %shl.i = shl nuw i32 %rem13.i, 9
  store i32 %shl.i, ptr %bytes_xfered.i, align 4
  br label %mmc_should_fail_request.exit

mmc_should_fail_request.exit:                     ; preds = %if.end9.i, %lor.lhs.false7.i.mmc_should_fail_request.exit_crit_edge, %lor.lhs.false.i.mmc_should_fail_request.exit_crit_edge, %land.lhs.true.i251.mmc_should_fail_request.exit_crit_edge, %if.then50.mmc_should_fail_request.exit_crit_edge
  %58 = ptrtoint ptr %ongoing_mrq to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ongoing_mrq, align 4
  %tobool52.not = icmp eq ptr %59, null
  br i1 %tobool52.not, label %if.then53, label %mmc_should_fail_request.exit.if.end54_crit_edge

mmc_should_fail_request.exit.if.end54_crit_edge:  ; preds = %mmc_should_fail_request.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end54

if.then53:                                        ; preds = %mmc_should_fail_request.exit
  call void @__sanitizer_cov_trace_pc() #20
  %led = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 52
  %60 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %led, align 8
  tail call void @led_trigger_event(ptr noundef %61, i32 noundef 0) #18
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %mmc_should_fail_request.exit.if.end54_crit_edge
  %62 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mrq, align 4
  %tobool56.not = icmp eq ptr %63, null
  br i1 %tobool56.not, label %if.end54.do.body81_crit_edge, label %do.body

if.end54.do.body81_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body81

do.body:                                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_request_done.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_request_done, %if.then61)) #18
          to label %do.body81 [label %if.then61], !srcloc !319

if.then61:                                        ; preds = %do.body
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %64 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i253 = icmp eq ptr %65, null
  br i1 %tobool.not.i253, label %if.end.i254, label %if.then61.dev_name.exit_crit_edge

if.then61.dev_name.exit_crit_edge:                ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit

if.end.i254:                                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %66 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i254, %if.then61.dev_name.exit_crit_edge
  %retval.0.i255 = phi ptr [ %67, %if.end.i254 ], [ %65, %if.then61.dev_name.exit_crit_edge ]
  %68 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mrq, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  %error66 = getelementptr inbounds %struct.mmc_command, ptr %69, i32 0, i32 5
  %72 = ptrtoint ptr %error66 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %error66, align 4
  %resp68 = getelementptr inbounds %struct.mmc_command, ptr %69, i32 0, i32 2
  %74 = ptrtoint ptr %resp68 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %resp68, align 4
  %arrayidx72 = getelementptr %struct.mmc_command, ptr %69, i32 0, i32 2, i32 1
  %76 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx72, align 4
  %arrayidx75 = getelementptr %struct.mmc_command, ptr %69, i32 0, i32 2, i32 2
  %78 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx75, align 4
  %arrayidx78 = getelementptr %struct.mmc_command, ptr %69, i32 0, i32 2, i32 3
  %80 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx78, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_request_done.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.5, ptr noundef %retval.0.i255, i32 noundef %71, i32 noundef %73, i32 noundef %75, i32 noundef %77, i32 noundef %79, i32 noundef %81) #18
  br label %do.body81

do.body81:                                        ; preds = %dev_name.exit, %do.body, %if.end54.do.body81_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_request_done.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_request_done, %if.then93)) #18
          to label %do.end107 [label %if.then93], !srcloc !319

if.then93:                                        ; preds = %do.body81
  %init_name.i256 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %82 = ptrtoint ptr %init_name.i256 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %init_name.i256, align 8
  %tobool.not.i257 = icmp eq ptr %83, null
  br i1 %tobool.not.i257, label %if.end.i258, label %if.then93.dev_name.exit260_crit_edge

if.then93.dev_name.exit260_crit_edge:             ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit260

if.end.i258:                                      ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev94 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %84 = ptrtoint ptr %class_dev94 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %class_dev94, align 4
  br label %dev_name.exit260

dev_name.exit260:                                 ; preds = %if.end.i258, %if.then93.dev_name.exit260_crit_edge
  %retval.0.i259 = phi ptr [ %85, %if.end.i258 ], [ %83, %if.then93.dev_name.exit260_crit_edge ]
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %1, align 4
  %resp97 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 2
  %88 = ptrtoint ptr %resp97 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %resp97, align 4
  %arrayidx100 = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 1
  %90 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx100, align 4
  %arrayidx102 = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 2
  %92 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx102, align 4
  %arrayidx104 = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 3
  %94 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx104, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_request_done.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.6, ptr noundef %retval.0.i259, i32 noundef %87, i32 noundef %3, i32 noundef %89, i32 noundef %91, i32 noundef %93, i32 noundef %95) #18
  br label %do.end107

do.end107:                                        ; preds = %dev_name.exit260, %do.body81
  %96 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %data2.i, align 4
  %tobool109.not = icmp eq ptr %97, null
  br i1 %tobool109.not, label %do.end107.if.end132_crit_edge, label %do.body111

do.end107.if.end132_crit_edge:                    ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end132

do.body111:                                       ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_request_done.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_request_done, %if.then123)) #18
          to label %if.end132 [label %if.then123], !srcloc !319

if.then123:                                       ; preds = %do.body111
  %init_name.i261 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %98 = ptrtoint ptr %init_name.i261 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %init_name.i261, align 8
  %tobool.not.i262 = icmp eq ptr %99, null
  br i1 %tobool.not.i262, label %if.end.i263, label %if.then123.dev_name.exit265_crit_edge

if.then123.dev_name.exit265_crit_edge:            ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit265

if.end.i263:                                      ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev124 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %100 = ptrtoint ptr %class_dev124 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %class_dev124, align 4
  br label %dev_name.exit265

dev_name.exit265:                                 ; preds = %if.end.i263, %if.then123.dev_name.exit265_crit_edge
  %retval.0.i264 = phi ptr [ %101, %if.end.i263 ], [ %99, %if.then123.dev_name.exit265_crit_edge ]
  %102 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data2.i, align 4
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %103, i32 0, i32 7
  %104 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %bytes_xfered, align 4
  %error128 = getelementptr inbounds %struct.mmc_data, ptr %103, i32 0, i32 5
  %106 = ptrtoint ptr %error128 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %error128, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_request_done.__UNIQUE_ID_ddebug327, ptr noundef nonnull @.str.7, ptr noundef %retval.0.i264, i32 noundef %105, i32 noundef %107) #18
  br label %if.end132

if.end132:                                        ; preds = %dev_name.exit265, %do.body111, %do.end107.if.end132_crit_edge
  %stop133 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 3
  %108 = ptrtoint ptr %stop133 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %stop133, align 4
  %tobool134.not = icmp eq ptr %109, null
  br i1 %tobool134.not, label %if.end132.if.end171_crit_edge, label %do.body136

if.end132.if.end171_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end171

do.body136:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_request_done.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_request_done, %if.then148)) #18
          to label %if.end171 [label %if.then148], !srcloc !319

if.then148:                                       ; preds = %do.body136
  %init_name.i266 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %110 = ptrtoint ptr %init_name.i266 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %init_name.i266, align 8
  %tobool.not.i267 = icmp eq ptr %111, null
  br i1 %tobool.not.i267, label %if.end.i268, label %if.then148.dev_name.exit270_crit_edge

if.then148.dev_name.exit270_crit_edge:            ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit270

if.end.i268:                                      ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev149 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %112 = ptrtoint ptr %class_dev149 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %class_dev149, align 4
  br label %dev_name.exit270

dev_name.exit270:                                 ; preds = %if.end.i268, %if.then148.dev_name.exit270_crit_edge
  %retval.0.i269 = phi ptr [ %113, %if.end.i268 ], [ %111, %if.then148.dev_name.exit270_crit_edge ]
  %114 = ptrtoint ptr %stop133 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %stop133, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %115, align 4
  %error154 = getelementptr inbounds %struct.mmc_command, ptr %115, i32 0, i32 5
  %118 = ptrtoint ptr %error154 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %error154, align 4
  %resp156 = getelementptr inbounds %struct.mmc_command, ptr %115, i32 0, i32 2
  %120 = ptrtoint ptr %resp156 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %resp156, align 4
  %arrayidx160 = getelementptr %struct.mmc_command, ptr %115, i32 0, i32 2, i32 1
  %122 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx160, align 4
  %arrayidx163 = getelementptr %struct.mmc_command, ptr %115, i32 0, i32 2, i32 2
  %124 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx163, align 4
  %arrayidx166 = getelementptr %struct.mmc_command, ptr %115, i32 0, i32 2, i32 3
  %126 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx166, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_request_done.__UNIQUE_ID_ddebug328, ptr noundef nonnull @.str.8, ptr noundef %retval.0.i269, i32 noundef %117, i32 noundef %119, i32 noundef %121, i32 noundef %123, i32 noundef %125, i32 noundef %127) #18
  br label %if.end171

if.end171:                                        ; preds = %dev_name.exit270, %do.body136, %if.end132.if.end171_crit_edge, %land.lhs.true46.if.end171_crit_edge, %lor.lhs.false44.if.end171_crit_edge
  %done = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 6
  %128 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %done, align 4
  %tobool172.not = icmp eq ptr %129, null
  br i1 %tobool172.not, label %if.end171.if.end175_crit_edge, label %if.then173

if.end171.if.end175_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end175

if.then173:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %129(ptr noundef %mrq) #18
  br label %if.end175

if.end175:                                        ; preds = %if.then173, %if.end171.if.end175_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mmc_request_done(ptr noundef %host, ptr noundef %mrq) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mmc_request_done, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mmc_request_done, %do.body)) #18
          to label %if.end48 [label %do.body], !srcloc !319

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !305) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !315

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.92, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !305) #18
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !320
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mmc_request_done, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %host, ptr noundef %mrq) #18
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !321
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !321
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !305) #18
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !305) #18
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !315

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.92, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !305) #18
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !322
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mmc_request_done, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mmc_request_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_mmc_request_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.90, i32 noundef 188, ptr noundef nonnull @.str.91) #18
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !323
  %38 = tail call i32 @llvm.read_register.i32(metadata !305) #18
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_event(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_start_request(ptr noundef %host, ptr noundef %mrq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_completion = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 5
  %0 = ptrtoint ptr %cmd_completion to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cmd_completion, align 4
  %wait.i = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.93, ptr noundef nonnull @init_completion.__key) #18
  tail call void @mmc_retune_hold(ptr noundef %host) #18
  %card = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.mmc_card, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call fastcc void @mmc_mrq_pr_debug(ptr noundef %host, ptr noundef %mrq, i1 noundef zeroext false)
  %claimed = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 29
  %5 = ptrtoint ptr %claimed to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %claimed, align 8
  %6 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool3.not = icmp eq i16 %6, 0
  br i1 %tobool3.not, label %do.end, label %if.end.if.end19_crit_edge, !prof !316

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end19

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 349, i32 noundef 9, ptr noundef null) #18
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.end.if.end19_crit_edge
  %call = tail call fastcc i32 @mmc_mrq_prep(ptr noundef %host, ptr noundef %mrq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool26.not = icmp eq i32 %call, 0
  br i1 %tobool26.not, label %if.end28, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end28:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  %led = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 52
  %7 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %led, align 8
  tail call void @led_trigger_event(ptr noundef %8, i32 noundef 255) #18
  tail call fastcc void @__mmc_start_request(ptr noundef %host, ptr noundef %mrq)
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end19.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -123, %land.lhs.true.cleanup_crit_edge ], [ %call, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_retune_hold(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_mrq_pr_debug(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %mrq, i1 noundef zeroext %cqe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %do.body

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_mrq_pr_debug.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_mrq_pr_debug, %if.then5)) #18
          to label %if.end10 [label %if.then5], !srcloc !319

if.then5:                                         ; preds = %do.body
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then5.dev_name.exit_crit_edge

if.then5.dev_name.exit_crit_edge:                 ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %4 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then5.dev_name.exit_crit_edge
  %retval.0.i147 = phi ptr [ %5, %if.end.i ], [ %3, %if.then5.dev_name.exit_crit_edge ]
  %6 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mrq, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %arg = getelementptr inbounds %struct.mmc_command, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arg, align 4
  %flags = getelementptr inbounds %struct.mmc_command, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_mrq_pr_debug.__UNIQUE_ID_ddebug329, ptr noundef nonnull @.str.95, ptr noundef %retval.0.i147, i32 noundef %9, i32 noundef %11, i32 noundef %13) #18
  br label %if.end10

if.end10:                                         ; preds = %dev_name.exit, %do.body, %entry.if.end10_crit_edge
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %14 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmd, align 4
  %tobool11.not = icmp eq ptr %15, null
  br i1 %tobool11.not, label %if.else, label %do.body13

do.body13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_mrq_pr_debug.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_mrq_pr_debug, %if.then25)) #18
          to label %if.end57 [label %if.then25], !srcloc !319

if.then25:                                        ; preds = %do.body13
  %init_name.i148 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %init_name.i148 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i148, align 8
  %tobool.not.i149 = icmp eq ptr %17, null
  br i1 %tobool.not.i149, label %if.end.i150, label %if.then25.dev_name.exit152_crit_edge

if.then25.dev_name.exit152_crit_edge:             ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit152

if.end.i150:                                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev26 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %18 = ptrtoint ptr %class_dev26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %class_dev26, align 4
  br label %dev_name.exit152

dev_name.exit152:                                 ; preds = %if.end.i150, %if.then25.dev_name.exit152_crit_edge
  %retval.0.i151 = phi ptr [ %19, %if.end.i150 ], [ %17, %if.then25.dev_name.exit152_crit_edge ]
  %cond = select i1 %cqe, ptr @.str.97, ptr @.str.98
  %20 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cmd, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %arg32 = getelementptr inbounds %struct.mmc_command, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %arg32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arg32, align 4
  %flags34 = getelementptr inbounds %struct.mmc_command, ptr %21, i32 0, i32 3
  %26 = ptrtoint ptr %flags34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags34, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_mrq_pr_debug.__UNIQUE_ID_ddebug330, ptr noundef nonnull @.str.96, ptr noundef %retval.0.i151, ptr noundef nonnull %cond, i32 noundef %23, i32 noundef %25, i32 noundef %27) #18
  br label %if.end57

if.else:                                          ; preds = %if.end10
  br i1 %cqe, label %do.body39, label %if.else.if.end57_crit_edge

if.else.if.end57_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end57

do.body39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_mrq_pr_debug.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_mrq_pr_debug, %if.then51)) #18
          to label %if.end57 [label %if.then51], !srcloc !319

if.then51:                                        ; preds = %do.body39
  %init_name.i153 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %init_name.i153 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i153, align 8
  %tobool.not.i154 = icmp eq ptr %29, null
  br i1 %tobool.not.i154, label %if.end.i155, label %if.then51.dev_name.exit157_crit_edge

if.then51.dev_name.exit157_crit_edge:             ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit157

if.end.i155:                                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev52 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %30 = ptrtoint ptr %class_dev52 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %class_dev52, align 4
  br label %dev_name.exit157

dev_name.exit157:                                 ; preds = %if.end.i155, %if.then51.dev_name.exit157_crit_edge
  %retval.0.i156 = phi ptr [ %31, %if.end.i155 ], [ %29, %if.then51.dev_name.exit157_crit_edge ]
  %tag = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 10
  %32 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tag, align 4
  %data = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %blk_addr = getelementptr inbounds %struct.mmc_data, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %blk_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %blk_addr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_mrq_pr_debug.__UNIQUE_ID_ddebug331, ptr noundef nonnull @.str.99, ptr noundef %retval.0.i156, i32 noundef %33, i32 noundef %37) #18
  br label %if.end57

if.end57:                                         ; preds = %dev_name.exit157, %do.body39, %if.else.if.end57_crit_edge, %dev_name.exit152, %do.body13
  %data58 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %38 = ptrtoint ptr %data58 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data58, align 4
  %tobool59.not = icmp eq ptr %39, null
  br i1 %tobool59.not, label %if.end57.if.end84_crit_edge, label %do.body61

if.end57.if.end84_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end84

do.body61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_mrq_pr_debug.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_mrq_pr_debug, %if.then73)) #18
          to label %if.end84 [label %if.then73], !srcloc !319

if.then73:                                        ; preds = %do.body61
  %init_name.i158 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %40 = ptrtoint ptr %init_name.i158 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_name.i158, align 8
  %tobool.not.i159 = icmp eq ptr %41, null
  br i1 %tobool.not.i159, label %if.end.i160, label %if.then73.dev_name.exit162_crit_edge

if.then73.dev_name.exit162_crit_edge:             ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit162

if.end.i160:                                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev74 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %42 = ptrtoint ptr %class_dev74 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %class_dev74, align 4
  br label %dev_name.exit162

dev_name.exit162:                                 ; preds = %if.end.i160, %if.then73.dev_name.exit162_crit_edge
  %retval.0.i161 = phi ptr [ %43, %if.end.i160 ], [ %41, %if.then73.dev_name.exit162_crit_edge ]
  %44 = ptrtoint ptr %data58 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data58, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %blksz, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %45, i32 0, i32 3
  %48 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %blocks, align 4
  %flags79 = getelementptr inbounds %struct.mmc_data, ptr %45, i32 0, i32 6
  %50 = ptrtoint ptr %flags79 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags79, align 4
  %52 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %45, align 4
  %div = udiv i32 %53, 1000000
  %timeout_clks = getelementptr inbounds %struct.mmc_data, ptr %45, i32 0, i32 1
  %54 = ptrtoint ptr %timeout_clks to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %timeout_clks, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_mrq_pr_debug.__UNIQUE_ID_ddebug332, ptr noundef nonnull @.str.100, ptr noundef %retval.0.i161, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %div, i32 noundef %55) #18
  br label %if.end84

if.end84:                                         ; preds = %dev_name.exit162, %do.body61, %if.end57.if.end84_crit_edge
  %stop = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 3
  %56 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %stop, align 4
  %tobool85.not = icmp eq ptr %57, null
  br i1 %tobool85.not, label %if.end84.if.end110_crit_edge, label %do.body87

if.end84.if.end110_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end110

do.body87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_mrq_pr_debug.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_mrq_pr_debug, %if.then99)) #18
          to label %if.end110 [label %if.then99], !srcloc !319

if.then99:                                        ; preds = %do.body87
  %init_name.i163 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %58 = ptrtoint ptr %init_name.i163 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %init_name.i163, align 8
  %tobool.not.i164 = icmp eq ptr %59, null
  br i1 %tobool.not.i164, label %if.end.i165, label %if.then99.dev_name.exit167_crit_edge

if.then99.dev_name.exit167_crit_edge:             ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit167

if.end.i165:                                      ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev100 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %60 = ptrtoint ptr %class_dev100 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %class_dev100, align 4
  br label %dev_name.exit167

dev_name.exit167:                                 ; preds = %if.end.i165, %if.then99.dev_name.exit167_crit_edge
  %retval.0.i166 = phi ptr [ %61, %if.end.i165 ], [ %59, %if.then99.dev_name.exit167_crit_edge ]
  %62 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %stop, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %arg105 = getelementptr inbounds %struct.mmc_command, ptr %63, i32 0, i32 1
  %66 = ptrtoint ptr %arg105 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arg105, align 4
  %flags107 = getelementptr inbounds %struct.mmc_command, ptr %63, i32 0, i32 3
  %68 = ptrtoint ptr %flags107 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags107, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_mrq_pr_debug.__UNIQUE_ID_ddebug333, ptr noundef nonnull @.str.101, ptr noundef %retval.0.i166, i32 noundef %65, i32 noundef %67, i32 noundef %69) #18
  br label %if.end110

if.end110:                                        ; preds = %dev_name.exit167, %do.body87, %if.end84.if.end110_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_mrq_prep(ptr nocapture noundef readonly %host, ptr noundef %mrq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %error = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %error, align 4
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmd, align 4
  %mrq3 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %mrq3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mrq, ptr %mrq3, align 4
  %data = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = load ptr, ptr %cmd, align 4
  %data5 = getelementptr inbounds %struct.mmc_command, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %data5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %data5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mrq, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %if.end.if.end12_crit_edge, label %if.then7

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %error9 = getelementptr inbounds %struct.mmc_command, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %error9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %error9, align 4
  %13 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mrq, align 4
  %mrq11 = getelementptr inbounds %struct.mmc_command, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %mrq11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %mrq, ptr %mrq11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end.if.end12_crit_edge
  %data13 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %16 = ptrtoint ptr %data13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data13, align 4
  %tobool14.not = icmp eq ptr %17, null
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.then15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then15:                                        ; preds = %if.end12
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %blksz, align 4
  %max_blk_size = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 24
  %20 = ptrtoint ptr %max_blk_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_blk_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp = icmp ugt i32 %19, %21
  br i1 %cmp, label %if.then15.cleanup_crit_edge, label %lor.lhs.false

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then15
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %17, i32 0, i32 3
  %22 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %blocks, align 4
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 25
  %24 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_blk_count, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp18 = icmp ugt i32 %23, %25
  br i1 %cmp18, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false19

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %mul = mul i32 %23, %19
  %max_req_size = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 23
  %26 = ptrtoint ptr %max_req_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_req_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %27)
  %cmp24 = icmp ugt i32 %mul, %27
  br i1 %cmp24, label %lor.lhs.false19.cleanup_crit_edge, label %if.end26

lor.lhs.false19.cleanup_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false19
  %28 = ptrtoint ptr %data13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data13, align 4
  %sg_len93 = getelementptr inbounds %struct.mmc_data, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %sg_len93 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sg_len93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp3094.not = icmp eq i32 %31, 0
  br i1 %cmp3094.not, label %if.end26.for.end_crit_edge, label %for.body.preheader

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.preheader:                               ; preds = %if.end26
  %sg28 = getelementptr inbounds %struct.mmc_data, ptr %17, i32 0, i32 12
  %32 = ptrtoint ptr %sg28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sg28, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %sg.097 = phi ptr [ %call, %for.body.for.body_crit_edge ], [ %33, %for.body.preheader ]
  %sz.096 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.095 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.097, i32 0, i32 2
  %34 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length, align 4
  %add = add i32 %35, %sz.096
  %inc = add nuw i32 %i.095, 1
  %call = tail call ptr @sg_next(ptr noundef %sg.097) #18
  %36 = ptrtoint ptr %data13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data13, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sg_len, align 4
  %cmp30 = icmp ult i32 %inc, %39
  br i1 %cmp30, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end26.for.end_crit_edge
  %sz.0.lcssa = phi i32 [ 0, %if.end26.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %.lcssa = phi ptr [ %29, %if.end26.for.end_crit_edge ], [ %37, %for.body.for.end_crit_edge ]
  %blocks32 = getelementptr inbounds %struct.mmc_data, ptr %.lcssa, i32 0, i32 3
  %40 = ptrtoint ptr %blocks32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %blocks32, align 4
  %blksz34 = getelementptr inbounds %struct.mmc_data, ptr %.lcssa, i32 0, i32 2
  %42 = ptrtoint ptr %blksz34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %blksz34, align 4
  %mul35 = mul i32 %43, %41
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.0.lcssa, i32 %mul35)
  %cmp36.not = icmp eq i32 %sz.0.lcssa, %mul35
  br i1 %cmp36.not, label %if.end38, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end38:                                         ; preds = %for.end
  %error40 = getelementptr inbounds %struct.mmc_data, ptr %.lcssa, i32 0, i32 5
  %44 = ptrtoint ptr %error40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %error40, align 4
  %45 = ptrtoint ptr %data13 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data13, align 4
  %mrq42 = getelementptr inbounds %struct.mmc_data, ptr %46, i32 0, i32 9
  %47 = ptrtoint ptr %mrq42 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %mrq, ptr %mrq42, align 4
  %stop = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 3
  %48 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %stop, align 4
  %tobool43.not = icmp eq ptr %49, null
  br i1 %tobool43.not, label %if.end38.cleanup_crit_edge, label %if.then44

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then44:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #20
  %50 = ptrtoint ptr %data13 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data13, align 4
  %stop47 = getelementptr inbounds %struct.mmc_data, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %stop47 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %stop47, align 4
  %53 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %stop, align 4
  %error49 = getelementptr inbounds %struct.mmc_command, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %error49 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %error49, align 4
  %56 = load ptr, ptr %stop, align 4
  %mrq51 = getelementptr inbounds %struct.mmc_command, ptr %56, i32 0, i32 8
  %57 = ptrtoint ptr %mrq51 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %mrq, ptr %mrq51, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %if.end38.cleanup_crit_edge, %for.end.cleanup_crit_edge, %lor.lhs.false19.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false19.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then15.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ], [ 0, %if.then44 ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__mmc_start_request(ptr noundef %host, ptr noundef %mrq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mmc_retune(ptr noundef %host) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %cmd1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 4
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %error = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %error, align 4
  tail call void @mmc_request_done(ptr noundef %host, ptr noundef %mrq)
  br label %cleanup23

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %4, label %if.end.if.end15_crit_edge [
    i32 53, label %if.end.land.lhs.true_crit_edge
    i32 52, label %sdio_is_io_busy.exit
  ]

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

sdio_is_io_busy.exit:                             ; preds = %if.end
  %arg = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arg, align 4
  %shr.i = lshr i32 %7, 9
  %and.i = and i32 %shr.i, 131071
  %8 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %and.i, label %sdio_is_io_busy.exit.land.lhs.true_crit_edge [
    i32 12, label %sdio_is_io_busy.exit.if.end15_crit_edge
    i32 6, label %sdio_is_io_busy.exit.if.end15_crit_edge55
  ]

sdio_is_io_busy.exit.if.end15_crit_edge55:        ; preds = %sdio_is_io_busy.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

sdio_is_io_busy.exit.if.end15_crit_edge:          ; preds = %sdio_is_io_busy.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

sdio_is_io_busy.exit.land.lhs.true_crit_edge:     ; preds = %sdio_is_io_busy.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %sdio_is_io_busy.exit.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %ops = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 3
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %card_busy = getelementptr inbounds %struct.mmc_host_ops, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %card_busy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card_busy, align 4
  %tobool4.not = icmp eq ptr %12, null
  br i1 %tobool4.not, label %land.lhs.true.if.end15_crit_edge, label %while.cond.preheader

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

while.cond.preheader:                             ; preds = %land.lhs.true
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %card_busy751 = getelementptr inbounds %struct.mmc_host_ops, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %card_busy751 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card_busy751, align 4
  %call852 = tail call i32 %16(ptr noundef %host) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call852)
  %tobool9.not53 = icmp eq i32 %call852, 0
  br i1 %tobool9.not53, label %while.cond.preheader.if.end15_crit_edge, label %while.cond.preheader.land.rhs_crit_edge

while.cond.preheader.land.rhs_crit_edge:          ; preds = %while.cond.preheader
  br label %land.rhs

while.cond.preheader.if.end15_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %while.cond.preheader.land.rhs_crit_edge
  %tries.054 = phi i32 [ %dec, %while.body.land.rhs_crit_edge ], [ 500, %while.cond.preheader.land.rhs_crit_edge ]
  %dec = add nsw i32 %tries.054, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool10.not = icmp eq i32 %dec, 0
  br i1 %tobool10.not, label %if.then11.critedge, label %while.body

while.body:                                       ; preds = %land.rhs
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1250, i32 noundef 2) #18
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %card_busy7 = getelementptr inbounds %struct.mmc_host_ops, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %card_busy7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card_busy7, align 4
  %call8 = tail call i32 %20(ptr noundef %host) #18
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %while.body.if.end15_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs

while.body.if.end15_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

if.then11.critedge:                               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  %21 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cmd1, align 4
  %error13 = getelementptr inbounds %struct.mmc_command, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %error13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -16, ptr %error13, align 4
  tail call void @mmc_request_done(ptr noundef %host, ptr noundef %mrq)
  br label %cleanup23

if.end15:                                         ; preds = %while.body.if.end15_crit_edge, %while.cond.preheader.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %sdio_is_io_busy.exit.if.end15_crit_edge, %sdio_is_io_busy.exit.if.end15_crit_edge55, %if.end.if.end15_crit_edge
  %cap_cmd_during_tfr = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 9
  %24 = ptrtoint ptr %cap_cmd_during_tfr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cap_cmd_during_tfr, align 4, !range !318
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool16.not = icmp eq i8 %25, 0
  br i1 %tobool16.not, label %if.end15.if.end18_crit_edge, label %if.then17

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  %ongoing_mrq = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 56
  %26 = ptrtoint ptr %ongoing_mrq to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %mrq, ptr %ongoing_mrq, align 4
  %cmd_completion = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 5
  %27 = ptrtoint ptr %cmd_completion to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %cmd_completion, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15.if.end18_crit_edge
  tail call fastcc void @trace_mmc_request_start(ptr noundef %host, ptr noundef %mrq)
  %cqe_on = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 66
  %28 = ptrtoint ptr %cqe_on to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %cqe_on, align 1, !range !318
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool19.not = icmp eq i8 %29, 0
  br i1 %tobool19.not, label %if.end18.if.end21_crit_edge, label %if.then20

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end21

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  %cqe_ops = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 62
  %30 = ptrtoint ptr %cqe_ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cqe_ops, align 8
  %cqe_off = getelementptr inbounds %struct.mmc_cqe_ops, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %cqe_off to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cqe_off, align 4
  tail call void %33(ptr noundef %host) #18
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18.if.end21_crit_edge
  %ops22 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 3
  %34 = ptrtoint ptr %ops22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops22, align 4
  %request = getelementptr inbounds %struct.mmc_host_ops, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %request, align 4
  tail call void %37(ptr noundef %host, ptr noundef %mrq) #18
  br label %cleanup23

cleanup23:                                        ; preds = %if.end21, %if.then11.critedge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_wait_for_req_done(ptr noundef %host, ptr noundef %mrq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %completion = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 4
  tail call void @wait_for_completion(ptr noundef %completion) #18
  %cmd1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 4
  %error30 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %error30 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not31 = icmp eq i32 %3, 0
  br i1 %tobool.not31, label %entry.while.end_crit_edge, label %lor.lhs.false.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

lor.lhs.false.lr.ph:                              ; preds = %entry
  %card = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %hold_retune.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 33
  %retune_now.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 29
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  %error32 = phi ptr [ %error30, %lor.lhs.false.lr.ph ], [ %error, %do.end.lor.lhs.false_crit_edge ]
  %4 = phi ptr [ %1, %lor.lhs.false.lr.ph ], [ %26, %do.end.lor.lhs.false_crit_edge ]
  %retries = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %lor.lhs.false.while.end_crit_edge, label %lor.lhs.false3

lor.lhs.false.while.end_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %lor.lhs.false3.if.end_crit_edge, label %land.lhs.true

lor.lhs.false3.if.end_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false3
  %state = getelementptr inbounds %struct.mmc_card, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  %and = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.while.end_crit_edge

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false3.if.end_crit_edge
  %11 = ptrtoint ptr %hold_retune.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hold_retune.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i = icmp slt i32 %12, 2
  br i1 %cmp.i, label %if.then.i, label %if.end.mmc_retune_recheck.exit_crit_edge

if.end.mmc_retune_recheck.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_retune_recheck.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %13 = ptrtoint ptr %retune_now.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load.i = load i16, ptr %retune_now.i, align 8
  %bf.set.i = or i16 %bf.load.i, 1024
  store i16 %bf.set.i, ptr %retune_now.i, align 8
  br label %mmc_retune_recheck.exit

mmc_retune_recheck.exit:                          ; preds = %if.then.i, %if.end.mmc_retune_recheck.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_wait_for_req_done.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_wait_for_req_done, %if.then10)) #18
          to label %do.end [label %if.then10], !srcloc !319

if.then10:                                        ; preds = %mmc_retune_recheck.exit
  %14 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then10.dev_name.exit_crit_edge

if.then10.dev_name.exit_crit_edge:                ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #20
  %16 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then10.dev_name.exit_crit_edge
  %retval.0.i28 = phi ptr [ %17, %if.end.i ], [ %15, %if.then10.dev_name.exit_crit_edge ]
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %4, align 4
  %20 = ptrtoint ptr %error32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %error32, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_wait_for_req_done.__UNIQUE_ID_ddebug335, ptr noundef nonnull @.str.10, ptr noundef %retval.0.i28, i32 noundef %19, i32 noundef %21) #18
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %mmc_retune_recheck.exit
  %22 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %retries, align 4
  %dec = add i32 %23, -1
  store i32 %dec, ptr %retries, align 4
  %24 = ptrtoint ptr %error32 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %error32, align 4
  tail call fastcc void @__mmc_start_request(ptr noundef %host, ptr noundef %mrq)
  tail call void @wait_for_completion(ptr noundef %completion) #18
  %25 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cmd1, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %error, align 4
  %tobool.not = icmp eq i32 %28, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.lor.lhs.false_crit_edge

do.end.lor.lhs.false_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %land.lhs.true.while.end_crit_edge, %lor.lhs.false.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @mmc_retune_release(ptr noundef %host) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_retune_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_cqe_start_req(ptr noundef %host, ptr noundef %mrq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mmc_retune(ptr noundef %host) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_err_crit_edge

entry.out_err_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_err

if.end:                                           ; preds = %entry
  %host1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 8
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %host, ptr %host1, align 4
  tail call fastcc void @mmc_mrq_pr_debug(ptr noundef %host, ptr noundef %mrq, i1 noundef zeroext true)
  %call2 = tail call fastcc i32 @mmc_mrq_prep(ptr noundef %host, ptr noundef %mrq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_err_crit_edge

if.end.out_err_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_err

if.end5:                                          ; preds = %if.end
  %cqe_ops = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 62
  %1 = ptrtoint ptr %cqe_ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cqe_ops, align 8
  %cqe_request = getelementptr inbounds %struct.mmc_cqe_ops, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %cqe_request to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cqe_request, align 4
  %call6 = tail call i32 %4(ptr noundef %host, ptr noundef %mrq) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.out_err_crit_edge

if.end5.out_err_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_err

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @trace_mmc_request_start(ptr noundef %host, ptr noundef %mrq)
  br label %cleanup

out_err:                                          ; preds = %if.end5.out_err_crit_edge, %if.end.out_err_crit_edge, %entry.out_err_crit_edge
  %err.0 = phi i32 [ %call, %entry.out_err_crit_edge ], [ %call2, %if.end.out_err_crit_edge ], [ %call6, %if.end5.out_err_crit_edge ]
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body20, label %do.body

do.body:                                          ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_cqe_start_req.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_cqe_start_req, %if.then16)) #18
          to label %cleanup [label %if.then16], !srcloc !319

if.then16:                                        ; preds = %do.body
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then16.dev_name.exit_crit_edge

if.then16.dev_name.exit_crit_edge:                ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %9 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then16.dev_name.exit_crit_edge
  %retval.0.i62 = phi ptr [ %10, %if.end.i ], [ %8, %if.then16.dev_name.exit_crit_edge ]
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cmd, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_cqe_start_req.__UNIQUE_ID_ddebug336, ptr noundef nonnull @.str.12, ptr noundef %retval.0.i62, i32 noundef %14, i32 noundef %err.0) #18
  br label %cleanup

do.body20:                                        ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_cqe_start_req.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_cqe_start_req, %if.then32)) #18
          to label %cleanup [label %if.then32], !srcloc !319

if.then32:                                        ; preds = %do.body20
  %init_name.i63 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %init_name.i63 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i63, align 8
  %tobool.not.i64 = icmp eq ptr %16, null
  br i1 %tobool.not.i64, label %if.end.i65, label %if.then32.dev_name.exit67_crit_edge

if.then32.dev_name.exit67_crit_edge:              ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit67

if.end.i65:                                       ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev33 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %17 = ptrtoint ptr %class_dev33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %class_dev33, align 4
  br label %dev_name.exit67

dev_name.exit67:                                  ; preds = %if.end.i65, %if.then32.dev_name.exit67_crit_edge
  %retval.0.i66 = phi ptr [ %18, %if.end.i65 ], [ %16, %if.then32.dev_name.exit67_crit_edge ]
  %tag = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 10
  %19 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tag, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_cqe_start_req.__UNIQUE_ID_ddebug337, ptr noundef nonnull @.str.13, ptr noundef %retval.0.i66, i32 noundef %20, i32 noundef %err.0) #18
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit67, %do.body20, %dev_name.exit, %do.body, %if.end9
  %retval.0 = phi i32 [ 0, %if.end9 ], [ %err.0, %dev_name.exit67 ], [ %err.0, %dev_name.exit ], [ %err.0, %do.body ], [ %err.0, %do.body20 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_retune(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mmc_request_start(ptr noundef %host, ptr noundef %mrq) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mmc_request_start, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mmc_request_start, %do.body)) #18
          to label %if.end48 [label %do.body], !srcloc !319

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !305) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !315

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.92, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !305) #18
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !324
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mmc_request_start, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %host, ptr noundef %mrq) #18
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !325
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !325
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !305) #18
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !305) #18
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !315

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.92, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !305) #18
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !322
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mmc_request_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mmc_request_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_mmc_request_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.90, i32 noundef 94, ptr noundef nonnull @.str.91) #18
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !323
  %38 = tail call i32 @llvm.read_register.i32(metadata !305) #18
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_cqe_request_done(ptr noundef %host, ptr noundef %mrq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1.i = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %0 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1.i, align 4
  %data2.i = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %2 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.mmc_should_fail_request.exit_crit_edge, label %if.end.i

entry.mmc_should_fail_request.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_should_fail_request.exit

if.end.i:                                         ; preds = %entry
  %tobool3.not.i = icmp eq ptr %1, null
  br i1 %tobool3.not.i, label %if.end.i.lor.lhs.false.i_crit_edge, label %land.lhs.true.i

if.end.i.lor.lhs.false.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %error.i = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not.i = icmp eq i32 %5, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.lor.lhs.false.i_crit_edge, label %land.lhs.true.i.mmc_should_fail_request.exitthread-pre-split_crit_edge

land.lhs.true.i.mmc_should_fail_request.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_should_fail_request.exitthread-pre-split

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.lor.lhs.false.i_crit_edge, %if.end.i.lor.lhs.false.i_crit_edge
  %error5.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %error5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not.i = icmp eq i32 %7, 0
  br i1 %tobool6.not.i, label %lor.lhs.false7.i, label %lor.lhs.false.i.mmc_should_fail_request.exitthread-pre-split_crit_edge

lor.lhs.false.i.mmc_should_fail_request.exitthread-pre-split_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_should_fail_request.exitthread-pre-split

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false.i
  %fail_mmc_request.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 57
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %blksz.i, align 4
  %blocks.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %blocks.i, align 4
  %mul.i = mul i32 %11, %9
  %call.i = tail call zeroext i1 @should_fail(ptr noundef %fail_mmc_request.i, i32 noundef %mul.i) #18
  br i1 %call.i, label %if.end9.i, label %lor.lhs.false7.i.mmc_should_fail_request.exitthread-pre-split_crit_edge

lor.lhs.false7.i.mmc_should_fail_request.exitthread-pre-split_crit_edge: ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_should_fail_request.exitthread-pre-split

if.end9.i:                                        ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #20
  %call10.i = tail call i32 @prandom_u32() #18
  %rem.i = urem i32 %call10.i, 3
  %arrayidx.i = getelementptr [3 x i32], ptr @mmc_should_fail_request.data_errors, i32 0, i32 %rem.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %14 = ptrtoint ptr %error5.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %error5.i, align 4
  %call12.i = tail call i32 @prandom_u32() #18
  %bytes_xfered.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 7
  %15 = ptrtoint ptr %bytes_xfered.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bytes_xfered.i, align 4
  %shr.i = lshr i32 %16, 9
  %rem13.i = urem i32 %call12.i, %shr.i
  %shl.i = shl nuw i32 %rem13.i, 9
  store i32 %shl.i, ptr %bytes_xfered.i, align 4
  br label %mmc_should_fail_request.exitthread-pre-split

mmc_should_fail_request.exitthread-pre-split:     ; preds = %if.end9.i, %lor.lhs.false7.i.mmc_should_fail_request.exitthread-pre-split_crit_edge, %lor.lhs.false.i.mmc_should_fail_request.exitthread-pre-split_crit_edge, %land.lhs.true.i.mmc_should_fail_request.exitthread-pre-split_crit_edge
  %17 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load ptr, ptr %cmd1.i, align 4
  br label %mmc_should_fail_request.exit

mmc_should_fail_request.exit:                     ; preds = %mmc_should_fail_request.exitthread-pre-split, %entry.mmc_should_fail_request.exit_crit_edge
  %18 = phi ptr [ %.pr, %mmc_should_fail_request.exitthread-pre-split ], [ %1, %entry.mmc_should_fail_request.exit_crit_edge ]
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %mmc_should_fail_request.exit.lor.lhs.false_crit_edge, label %land.lhs.true

mmc_should_fail_request.exit.lor.lhs.false_crit_edge: ; preds = %mmc_should_fail_request.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %mmc_should_fail_request.exit
  %error = getelementptr inbounds %struct.mmc_command, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -84, i32 %20)
  %cmp = icmp eq i32 %20, -84
  br i1 %cmp, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %mmc_should_fail_request.exit.lor.lhs.false_crit_edge
  %21 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data2.i, align 4
  %tobool2.not = icmp eq ptr %22, null
  br i1 %tobool2.not, label %lor.lhs.false.if.end_crit_edge, label %land.lhs.true3

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true3:                                   ; preds = %lor.lhs.false
  %error5 = getelementptr inbounds %struct.mmc_data, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %error5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %error5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -84, i32 %24)
  %cmp6 = icmp eq i32 %24, -84
  br i1 %cmp6, label %land.lhs.true3.if.then_crit_edge, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true3.if.then_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.then:                                          ; preds = %land.lhs.true3.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %can_retune.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 29
  %25 = ptrtoint ptr %can_retune.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load.i = load i16, ptr %can_retune.i, align 8
  %26 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool.not.i87 = icmp eq i16 %26, 0
  br i1 %tobool.not.i87, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %need_retune.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 32
  %27 = ptrtoint ptr %need_retune.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %need_retune.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %land.lhs.true3.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  tail call fastcc void @trace_mmc_request_done(ptr noundef %host, ptr noundef %mrq)
  %28 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cmd1.i, align 4
  %tobool8.not = icmp eq ptr %29, null
  br i1 %tobool8.not, label %do.body19, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_cqe_request_done.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_cqe_request_done, %if.then13)) #18
          to label %if.end36 [label %if.then13], !srcloc !319

if.then13:                                        ; preds = %do.body
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i89 = icmp eq ptr %31, null
  br i1 %tobool.not.i89, label %if.end.i90, label %if.then13.dev_name.exit_crit_edge

if.then13.dev_name.exit_crit_edge:                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit

if.end.i90:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %32 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i90, %if.then13.dev_name.exit_crit_edge
  %retval.0.i91 = phi ptr [ %33, %if.end.i90 ], [ %31, %if.then13.dev_name.exit_crit_edge ]
  %34 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cmd1.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %error17 = getelementptr inbounds %struct.mmc_command, ptr %35, i32 0, i32 5
  %38 = ptrtoint ptr %error17 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %error17, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_cqe_request_done.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.15, ptr noundef %retval.0.i91, i32 noundef %37, i32 noundef %39) #18
  br label %if.end36

do.body19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_cqe_request_done.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_cqe_request_done, %if.then31)) #18
          to label %if.end36 [label %if.then31], !srcloc !319

if.then31:                                        ; preds = %do.body19
  %init_name.i92 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %40 = ptrtoint ptr %init_name.i92 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_name.i92, align 8
  %tobool.not.i93 = icmp eq ptr %41, null
  br i1 %tobool.not.i93, label %if.end.i94, label %if.then31.dev_name.exit96_crit_edge

if.then31.dev_name.exit96_crit_edge:              ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit96

if.end.i94:                                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev32 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %42 = ptrtoint ptr %class_dev32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %class_dev32, align 4
  br label %dev_name.exit96

dev_name.exit96:                                  ; preds = %if.end.i94, %if.then31.dev_name.exit96_crit_edge
  %retval.0.i95 = phi ptr [ %43, %if.end.i94 ], [ %41, %if.then31.dev_name.exit96_crit_edge ]
  %tag = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 10
  %44 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tag, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_cqe_request_done.__UNIQUE_ID_ddebug339, ptr noundef nonnull @.str.16, ptr noundef %retval.0.i95, i32 noundef %45) #18
  br label %if.end36

if.end36:                                         ; preds = %dev_name.exit96, %do.body19, %dev_name.exit, %do.body
  %46 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data2.i, align 4
  %tobool38.not = icmp eq ptr %47, null
  br i1 %tobool38.not, label %if.end36.if.end60_crit_edge, label %do.body40

if.end36.if.end60_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end60

do.body40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_cqe_request_done.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_cqe_request_done, %if.then52)) #18
          to label %if.end60 [label %if.then52], !srcloc !319

if.then52:                                        ; preds = %do.body40
  %init_name.i97 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %48 = ptrtoint ptr %init_name.i97 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %init_name.i97, align 8
  %tobool.not.i98 = icmp eq ptr %49, null
  br i1 %tobool.not.i98, label %if.end.i99, label %if.then52.dev_name.exit101_crit_edge

if.then52.dev_name.exit101_crit_edge:             ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit101

if.end.i99:                                       ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev53 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %50 = ptrtoint ptr %class_dev53 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %class_dev53, align 4
  br label %dev_name.exit101

dev_name.exit101:                                 ; preds = %if.end.i99, %if.then52.dev_name.exit101_crit_edge
  %retval.0.i100 = phi ptr [ %51, %if.end.i99 ], [ %49, %if.then52.dev_name.exit101_crit_edge ]
  %52 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data2.i, align 4
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bytes_xfered, align 4
  %error57 = getelementptr inbounds %struct.mmc_data, ptr %53, i32 0, i32 5
  %56 = ptrtoint ptr %error57 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %error57, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_cqe_request_done.__UNIQUE_ID_ddebug340, ptr noundef nonnull @.str.7, ptr noundef %retval.0.i100, i32 noundef %55, i32 noundef %57) #18
  br label %if.end60

if.end60:                                         ; preds = %dev_name.exit101, %do.body40, %if.end36.if.end60_crit_edge
  %done = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 6
  %58 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %done, align 4
  tail call void %59(ptr noundef %mrq) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_cqe_post_req(ptr noundef %host, ptr noundef %mrq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_ops = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 62
  %0 = ptrtoint ptr %cqe_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe_ops, align 8
  %cqe_post_req = getelementptr inbounds %struct.mmc_cqe_ops, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cqe_post_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cqe_post_req, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %3(ptr noundef %host, ptr noundef %mrq) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_cqe_recovery(ptr noundef %host) #0 align 64 {
entry:
  %mrq.i22 = alloca %struct.mmc_request, align 4
  %mrq.i = alloca %struct.mmc_request, align 4
  %cmd = alloca %struct.mmc_command, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #18
  %retune_now.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 29
  %0 = ptrtoint ptr %retune_now.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %retune_now.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1025
  store i16 %bf.clear.i, ptr %retune_now.i, align 8
  %hold_retune.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 33
  %1 = ptrtoint ptr %hold_retune.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hold_retune.i, align 8
  %add.i = add i32 %2, 1
  store i32 %add.i, ptr %hold_retune.i, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %5 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.end.i ], [ %4, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %retval.0.i) #23
  %cqe_ops = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 62
  %7 = ptrtoint ptr %cqe_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cqe_ops, align 8
  %cqe_recovery_start = getelementptr inbounds %struct.mmc_cqe_ops, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %cqe_recovery_start to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cqe_recovery_start, align 4
  tail call void %10(ptr noundef %host) #18
  %11 = getelementptr inbounds i8, ptr %cmd, i32 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 44)
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 12, ptr %cmd, align 4
  %flags = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 25, ptr %flags, align 4
  %busy_timeout = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 6
  %15 = ptrtoint ptr %busy_timeout to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1000, ptr %busy_timeout, align 4
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %mrq.i) #18
  %16 = call ptr @memset(ptr %mrq.i, i32 0, i32 156)
  %17 = ptrtoint ptr %retune_now.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load.i19 = load i16, ptr %retune_now.i, align 8
  %18 = and i16 %bf.load.i19, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.i20 = icmp eq i16 %18, 0
  br i1 %tobool.not.i20, label %do.end.i, label %dev_name.exit.mmc_wait_for_cmd.exit_crit_edge, !prof !316

dev_name.exit.mmc_wait_for_cmd.exit_crit_edge:    ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_wait_for_cmd.exit

do.end.i:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 626, i32 noundef 9, ptr noundef null) #18
  br label %mmc_wait_for_cmd.exit

mmc_wait_for_cmd.exit:                            ; preds = %do.end.i, %dev_name.exit.mmc_wait_for_cmd.exit_crit_edge
  %resp.i = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  %19 = call ptr @memset(ptr %resp.i, i32 0, i32 16)
  %retries21.i = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 4
  %20 = ptrtoint ptr %retries21.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %retries21.i, align 4
  %cmd22.i = getelementptr inbounds %struct.mmc_request, ptr %mrq.i, i32 0, i32 1
  %21 = ptrtoint ptr %cmd22.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %cmd, ptr %cmd22.i, align 4
  %data.i = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 7
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %data.i, align 4
  call void @mmc_wait_for_req(ptr noundef %host, ptr noundef nonnull %mrq.i) #18
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %mrq.i) #18
  %23 = getelementptr inbounds i8, ptr %cmd, i32 8
  %24 = call ptr @memset(ptr %23, i32 0, i32 40)
  %25 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 48, ptr %cmd, align 4
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %26 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %arg, align 4
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 25, ptr %flags, align 4
  %28 = ptrtoint ptr %busy_timeout to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1000, ptr %busy_timeout, align 4
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %mrq.i22) #18
  %29 = call ptr @memset(ptr %mrq.i22, i32 0, i32 156)
  %30 = ptrtoint ptr %retune_now.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load.i24 = load i16, ptr %retune_now.i, align 8
  %31 = and i16 %bf.load.i24, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not.i25 = icmp eq i16 %31, 0
  br i1 %tobool.not.i25, label %do.end.i26, label %mmc_wait_for_cmd.exit.mmc_wait_for_cmd.exit33_crit_edge, !prof !316

mmc_wait_for_cmd.exit.mmc_wait_for_cmd.exit33_crit_edge: ; preds = %mmc_wait_for_cmd.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_wait_for_cmd.exit33

do.end.i26:                                       ; preds = %mmc_wait_for_cmd.exit
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 626, i32 noundef 9, ptr noundef null) #18
  br label %mmc_wait_for_cmd.exit33

mmc_wait_for_cmd.exit33:                          ; preds = %do.end.i26, %mmc_wait_for_cmd.exit.mmc_wait_for_cmd.exit33_crit_edge
  %error.i = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %32 = call ptr @memset(ptr %resp.i, i32 0, i32 16)
  %33 = ptrtoint ptr %retries21.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %retries21.i, align 4
  %cmd22.i29 = getelementptr inbounds %struct.mmc_request, ptr %mrq.i22, i32 0, i32 1
  %34 = ptrtoint ptr %cmd22.i29 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %cmd, ptr %cmd22.i29, align 4
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %data.i, align 4
  call void @mmc_wait_for_req(ptr noundef %host, ptr noundef nonnull %mrq.i22) #18
  %36 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %mrq.i22) #18
  %38 = ptrtoint ptr %cqe_ops to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cqe_ops, align 8
  %cqe_recovery_finish = getelementptr inbounds %struct.mmc_cqe_ops, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %cqe_recovery_finish to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cqe_recovery_finish, align 4
  call void %41(ptr noundef %host) #18
  call void @mmc_retune_release(ptr noundef %host) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #18
  ret i32 %37
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_wait_for_cmd(ptr noundef %host, ptr noundef %cmd, i32 noundef %retries) #0 align 64 {
entry:
  %mrq = alloca %struct.mmc_request, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %mrq) #18
  %0 = call ptr @memset(ptr %mrq, i32 0, i32 156)
  %claimed = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 29
  %1 = ptrtoint ptr %claimed to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %claimed, align 8
  %2 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !316

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 626, i32 noundef 9, ptr noundef null) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %resp = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  %3 = call ptr @memset(ptr %resp, i32 0, i32 16)
  %retries21 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 4
  %4 = ptrtoint ptr %retries21 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %retries, ptr %retries21, align 4
  %cmd22 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %5 = ptrtoint ptr %cmd22 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cmd, ptr %cmd22, align 4
  %data = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 7
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %data, align 4
  call void @mmc_wait_for_req(ptr noundef %host, ptr noundef nonnull %mrq)
  %error = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %7 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error, align 4
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %mrq) #18
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mmc_is_req_done(ptr nocapture readnone %host, ptr noundef %mrq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %completion = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 4
  %call = tail call zeroext i1 @completion_done(ptr noundef %completion) #18
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_wait_for_req(ptr noundef %host, ptr noundef %mrq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ongoing_mrq1.i.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 56
  %0 = ptrtoint ptr %ongoing_mrq1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ongoing_mrq1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.mmc_wait_ongoing_tfr_cmd.exit.i_crit_edge, label %land.lhs.true.i.i

entry.mmc_wait_ongoing_tfr_cmd.exit.i_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_wait_ongoing_tfr_cmd.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %cmd_completion.i.i = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @completion_done(ptr noundef %cmd_completion.i.i) #18
  br i1 %call.i.i, label %land.lhs.true.i.i.mmc_wait_ongoing_tfr_cmd.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.mmc_wait_ongoing_tfr_cmd.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_wait_ongoing_tfr_cmd.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @wait_for_completion(ptr noundef %cmd_completion.i.i) #18
  br label %mmc_wait_ongoing_tfr_cmd.exit.i

mmc_wait_ongoing_tfr_cmd.exit.i:                  ; preds = %if.then.i.i, %land.lhs.true.i.i.mmc_wait_ongoing_tfr_cmd.exit.i_crit_edge, %entry.mmc_wait_ongoing_tfr_cmd.exit.i_crit_edge
  %completion.i = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 4
  %2 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %completion.i, align 4
  %wait.i.i = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.93, ptr noundef nonnull @init_completion.__key) #18
  %done.i = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 6
  %3 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @mmc_wait_done, ptr %done.i, align 4
  %call.i = tail call i32 @mmc_start_request(ptr noundef %host, ptr noundef %mrq) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %mmc_wait_ongoing_tfr_cmd.exit.i.__mmc_start_req.exit_crit_edge, label %if.then.i

mmc_wait_ongoing_tfr_cmd.exit.i.__mmc_start_req.exit_crit_edge: ; preds = %mmc_wait_ongoing_tfr_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__mmc_start_req.exit

if.then.i:                                        ; preds = %mmc_wait_ongoing_tfr_cmd.exit.i
  %cmd.i = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %4 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd.i, align 4
  %error.i = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.i, ptr %error.i, align 4
  %cap_cmd_during_tfr.i.i = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 9
  %7 = ptrtoint ptr %cap_cmd_during_tfr.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cap_cmd_during_tfr.i.i, align 4, !range !318
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i1.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i1.i, label %if.then.i.mmc_complete_cmd.exit.i_crit_edge, label %land.lhs.true.i4.i

if.then.i.mmc_complete_cmd.exit.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_complete_cmd.exit.i

land.lhs.true.i4.i:                               ; preds = %if.then.i
  %cmd_completion.i2.i = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 5
  %call.i3.i = tail call zeroext i1 @completion_done(ptr noundef %cmd_completion.i2.i) #18
  br i1 %call.i3.i, label %land.lhs.true.i4.i.mmc_complete_cmd.exit.i_crit_edge, label %if.then.i5.i

land.lhs.true.i4.i.mmc_complete_cmd.exit.i_crit_edge: ; preds = %land.lhs.true.i4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_complete_cmd.exit.i

if.then.i5.i:                                     ; preds = %land.lhs.true.i4.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @complete_all(ptr noundef %cmd_completion.i2.i) #18
  br label %mmc_complete_cmd.exit.i

mmc_complete_cmd.exit.i:                          ; preds = %if.then.i5.i, %land.lhs.true.i4.i.mmc_complete_cmd.exit.i_crit_edge, %if.then.i.mmc_complete_cmd.exit.i_crit_edge
  tail call void @complete(ptr noundef %completion.i) #18
  br label %__mmc_start_req.exit

__mmc_start_req.exit:                             ; preds = %mmc_complete_cmd.exit.i, %mmc_wait_ongoing_tfr_cmd.exit.i.__mmc_start_req.exit_crit_edge
  %cap_cmd_during_tfr = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 9
  %9 = ptrtoint ptr %cap_cmd_during_tfr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cap_cmd_during_tfr, align 4, !range !318
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.then, label %__mmc_start_req.exit.if.end_crit_edge

__mmc_start_req.exit.if.end_crit_edge:            ; preds = %__mmc_start_req.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %__mmc_start_req.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @mmc_wait_for_req_done(ptr noundef %host, ptr noundef %mrq)
  br label %if.end

if.end:                                           ; preds = %if.then, %__mmc_start_req.exit.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mmc_set_data_timeout(ptr nocapture noundef %data, ptr nocapture noundef readonly %card) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1000000000, ptr %data, align 4
  %timeout_clks = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %timeout_clks to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %timeout_clks, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp2 = icmp eq i32 %1, 1
  %cond = select i1 %cmp2, i32 100, i32 10
  %flags = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %r2w_factor = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 6
  %6 = ptrtoint ptr %r2w_factor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %r2w_factor, align 8
  %shl = shl i32 %cond, %7
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %mult.0 = phi i32 [ %shl, %if.then3 ], [ %cond, %if.end.if.end4_crit_edge ]
  %taac_ns = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 4
  %8 = ptrtoint ptr %taac_ns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %taac_ns, align 8
  %mul = mul i32 %9, %mult.0
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %data, align 4
  %taac_clks = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 3
  %11 = ptrtoint ptr %taac_clks to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %taac_clks, align 4
  %conv = zext i16 %12 to i32
  %mul8 = mul i32 %mult.0, %conv
  %timeout_clks9 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 1
  %13 = ptrtoint ptr %timeout_clks9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul8, ptr %timeout_clks9, align 4
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp11 = icmp eq i32 %15, 1
  br i1 %cmp11, label %if.then13, label %if.end4.if.end43_crit_edge

if.end4.if.end43_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end43

if.then13:                                        ; preds = %if.end4
  %div = udiv i32 %mul, 1000
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 8
  %ios = getelementptr inbounds %struct.mmc_host, ptr %17, i32 0, i32 28
  %18 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool15.not = icmp eq i32 %19, 0
  br i1 %tobool15.not, label %if.then13.if.end24_crit_edge, label %if.then16

if.then13.if.end24_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  %mul18 = mul i32 %mul8, 1000
  %div22 = udiv i32 %19, 1000
  %div23 = udiv i32 %mul18, %div22
  %add = add i32 %div23, %div
  br label %if.end24

if.end24:                                         ; preds = %if.then16, %if.then13.if.end24_crit_edge
  %timeout_us.0 = phi i32 [ %add, %if.then16 ], [ %div, %if.then13.if.end24_crit_edge ]
  %. = select i1 %tobool.not, i32 100000, i32 3000000
  call void @__sanitizer_cov_trace_cmp4(i32 %timeout_us.0, i32 %.)
  %cmp30 = icmp ugt i32 %timeout_us.0, %.
  br i1 %cmp30, label %if.end36.thread, label %if.end36

if.end36.thread:                                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #20
  %mul33 = mul nuw i32 %., 1000
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul33, ptr %data, align 4
  %21 = ptrtoint ptr %timeout_clks9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %timeout_clks9, align 4
  br label %if.end43

if.end36:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout_us.0)
  %cmp37 = icmp eq i32 %timeout_us.0, 0
  br i1 %cmp37, label %if.then39, label %if.end36.if.end43_crit_edge

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end43

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #20
  %mul40 = mul nuw i32 %., 1000
  %22 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul40, ptr %data, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.end36.if.end43_crit_edge, %if.end36.thread, %if.end4.if.end43_crit_edge
  %quirks.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 6
  %23 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %quirks.i, align 8
  %and.i = and i32 %24, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool44.not = icmp eq i32 %and.i, 0
  %and46 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  %or.cond = select i1 %tobool44.not, i1 true, i1 %tobool47.not
  br i1 %or.cond, label %if.end43.if.end51_crit_edge, label %if.then48

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end51

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #20
  %25 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 600000000, ptr %data, align 4
  %26 = ptrtoint ptr %timeout_clks9 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %timeout_clks9, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end43.if.end51_crit_edge
  %27 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %card, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %28, i32 0, i32 16
  %29 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %caps, align 32
  %and53 = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end51.cleanup_crit_edge, label %if.then55

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then55:                                        ; preds = %if.end51
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data, align 4
  br i1 %tobool.not, label %if.else66, label %if.then59

if.then59:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %32)
  %cmp61 = icmp ult i32 %32, 1000000000
  br i1 %cmp61, label %if.then63, label %if.then59.cleanup_crit_edge

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then63:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #20
  %33 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1000000000, ptr %data, align 4
  br label %cleanup

if.else66:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %32)
  %cmp68 = icmp ult i32 %32, 100000000
  br i1 %cmp68, label %if.then70, label %if.else66.cleanup_crit_edge

if.else66.cleanup_crit_edge:                      ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then70:                                        ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #20
  %34 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 100000000, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %if.else66.cleanup_crit_edge, %if.then63, %if.then59.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__mmc_claim_host(ptr noundef %host, ptr noundef %ctx, ptr noundef %abort) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %0 = tail call i32 @llvm.read_register.i32(metadata !305) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task1, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.false ], [ null, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #18
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %wait, align 4
  %9 = tail call i32 @llvm.read_register.i32(metadata !305) #18
  %and.i238 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i238 to ptr
  %task3 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task3, align 8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @default_wake_function, ptr %5, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %6, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %7, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 789) #18
  %wq = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 38
  call void @add_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #18
  %lock = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 27
  %call12 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  %tobool84.not = icmp eq ptr %abort, null
  %claimed = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 29
  %claimer.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 39
  %tobool.not.i = icmp ne ptr %ctx, null
  %tobool1.not.i = icmp eq ptr %cond, null
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br label %__here

__here:                                           ; preds = %if.end96, %cond.end
  %flags5.0 = phi i32 [ %call12, %cond.end ], [ %call107, %if.end96 ]
  %17 = ptrtoint ptr %task3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task3, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 212
  %19 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 ptrtoint (ptr blockaddress(@__mmc_claim_host, %__here) to i32), ptr %task_state_change, align 4
  %20 = load ptr, ptr %task3, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 2, ptr %20, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !326
  br i1 %tobool84.not, label %__here.lor.lhs.false_crit_edge, label %cond.end88

__here.lor.lhs.false_crit_edge:                   ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false

cond.end88:                                       ; preds = %__here
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %abort, i32 noundef 4) #18
  %22 = ptrtoint ptr %abort to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %abort, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool90.not = icmp eq i32 %23, 0
  br i1 %tobool90.not, label %cond.end88.lor.lhs.false_crit_edge, label %if.else.critedge

cond.end88.lor.lhs.false_crit_edge:               ; preds = %cond.end88
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end88.lor.lhs.false_crit_edge, %__here.lor.lhs.false_crit_edge
  %24 = ptrtoint ptr %claimed to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load = load i16, ptr %claimed, align 8
  %25 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool91.not = icmp eq i16 %25, 0
  br i1 %tobool91.not, label %if.then194.critedge235, label %lor.lhs.false92

lor.lhs.false92:                                  ; preds = %lor.lhs.false
  %26 = ptrtoint ptr %claimer.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %claimer.i, align 4
  %cmp.i = icmp eq ptr %27, %ctx
  br i1 %cmp.i, label %lor.lhs.false92.if.then194.critedge_crit_edge, label %lor.rhs.i

lor.lhs.false92.if.then194.critedge_crit_edge:    ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then194.critedge

lor.rhs.i:                                        ; preds = %lor.lhs.false92
  br i1 %or.cond.i, label %lor.rhs.i.if.end96_crit_edge, label %mmc_ctx_matches.exit

lor.rhs.i.if.end96_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end96

mmc_ctx_matches.exit:                             ; preds = %lor.rhs.i
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %cmp4.i = icmp eq ptr %29, %cond
  br i1 %cmp4.i, label %mmc_ctx_matches.exit.if.then194.critedge_crit_edge, label %mmc_ctx_matches.exit.if.end96_crit_edge

mmc_ctx_matches.exit.if.end96_crit_edge:          ; preds = %mmc_ctx_matches.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end96

mmc_ctx_matches.exit.if.then194.critedge_crit_edge: ; preds = %mmc_ctx_matches.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then194.critedge

if.end96:                                         ; preds = %mmc_ctx_matches.exit.if.end96_crit_edge, %lor.rhs.i.if.end96_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags5.0) #18
  call void @schedule() #18
  %call107 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  br label %__here

if.then194.critedge:                              ; preds = %mmc_ctx_matches.exit.if.then194.critedge_crit_edge, %lor.lhs.false92.if.then194.critedge_crit_edge
  %30 = ptrtoint ptr %task3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task3, align 8
  %task_state_change167.c = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 212
  %32 = ptrtoint ptr %task_state_change167.c to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %task_state_change167.c, align 4
  %33 = load ptr, ptr %task3, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 0, ptr %33, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !327
  br label %if.then194

if.then194.critedge235:                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  %35 = ptrtoint ptr %task3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task3, align 8
  %task_state_change167.c236 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 212
  %37 = ptrtoint ptr %task_state_change167.c236 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %task_state_change167.c236, align 4
  %38 = load ptr, ptr %task3, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 0, ptr %38, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !327
  br label %if.then194

if.then194:                                       ; preds = %if.then194.critedge235, %if.then194.critedge
  %40 = ptrtoint ptr %claimed to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load196 = load i16, ptr %claimed, align 8
  %bf.set = or i16 %bf.load196, 16384
  store i16 %bf.set, ptr %claimed, align 8
  %41 = ptrtoint ptr %claimer.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %claimer.i, align 4
  %tobool.not.i240 = icmp eq ptr %42, null
  br i1 %tobool.not.i240, label %if.then.i, label %if.then194.if.end5.i_crit_edge

if.then194.if.end5.i_crit_edge:                   ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5.i

if.then.i:                                        ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #20
  %default_ctx.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 41
  %ctx.sink.i = select i1 %tobool.not, ptr %default_ctx.i, ptr %ctx
  %43 = ptrtoint ptr %claimer.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %ctx.sink.i, ptr %claimer.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i, %if.then194.if.end5.i_crit_edge
  br i1 %tobool1.not.i, label %if.end5.i.mmc_ctx_set_claimer.exit_crit_edge, label %if.then7.i

if.end5.i.mmc_ctx_set_claimer.exit_crit_edge:     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_ctx_set_claimer.exit

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #20
  %44 = ptrtoint ptr %claimer.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %claimer.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %cond, ptr %45, align 4
  br label %mmc_ctx_set_claimer.exit

mmc_ctx_set_claimer.exit:                         ; preds = %if.then7.i, %if.end5.i.mmc_ctx_set_claimer.exit_crit_edge
  %claim_cnt = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 40
  %47 = ptrtoint ptr %claim_cnt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %claim_cnt, align 16
  %add = add i32 %48, 1
  store i32 %add, ptr %claim_cnt, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp199 = icmp eq i32 %48, 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags5.0) #18
  call void @remove_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #18
  br i1 %cmp199, label %if.then208, label %mmc_ctx_set_claimer.exit.if.end210_crit_edge

mmc_ctx_set_claimer.exit.if.end210_crit_edge:     ; preds = %mmc_ctx_set_claimer.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end210

if.else.critedge:                                 ; preds = %cond.end88
  call void @__sanitizer_cov_trace_pc() #20
  %49 = ptrtoint ptr %task3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task3, align 8
  %task_state_change167.c237 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 212
  %51 = ptrtoint ptr %task_state_change167.c237 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %task_state_change167.c237, align 4
  %52 = load ptr, ptr %task3, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 0, ptr %52, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !327
  call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags5.0) #18
  call void @remove_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #18
  br label %if.end210

if.then208:                                       ; preds = %mmc_ctx_set_claimer.exit
  call void @__sanitizer_cov_trace_pc() #20
  %54 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %host, align 128
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %55, i32 noundef 4) #18
  br label %if.end210

if.end210:                                        ; preds = %if.then208, %if.else.critedge, %mmc_ctx_set_claimer.exit.if.end210_crit_edge
  %cond89244 = phi i32 [ %23, %if.else.critedge ], [ 0, %if.then208 ], [ 0, %mmc_ctx_set_claimer.exit.if.end210_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #18
  ret i32 %cond89244
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_release_host(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %claimed = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 29
  %0 = ptrtoint ptr %claimed to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %claimed, align 8
  %1 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !316

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 832, i32 noundef 9, ptr noundef null) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %lock = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 27
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  %claim_cnt = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 40
  %2 = ptrtoint ptr %claim_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %claim_cnt, align 16
  %dec = add i32 %3, -1
  store i32 %dec, ptr %claim_cnt, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool29.not = icmp eq i32 %dec, 0
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call24) #18
  br label %if.end45

if.else:                                          ; preds = %if.end
  %4 = ptrtoint ptr %claimed to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load33 = load i16, ptr %claimed, align 8
  %bf.clear34 = and i16 %bf.load33, -16385
  store i16 %bf.clear34, ptr %claimed, align 8
  %claimer = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 39
  %5 = ptrtoint ptr %claimer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %claimer, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %6, align 4
  store ptr null, ptr %claimer, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call24) #18
  %wq = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 38
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  %8 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host, align 128
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #18
  %last_busy.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 12, i32 22
  %10 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %11 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %caps, align 32
  %and = and i32 %12, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  %13 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %host, align 128
  br i1 %tobool37.not, label %if.else41, label %if.then38

if.then38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %call.i60 = tail call i32 @__pm_runtime_suspend(ptr noundef %14, i32 noundef 4) #18
  br label %if.end45

if.else41:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %call.i61 = tail call i32 @__pm_runtime_suspend(ptr noundef %14, i32 noundef 13) #18
  br label %if.end45

if.end45:                                         ; preds = %if.else41, %if.then38, %if.then30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_get_card(ptr noundef %card, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 1
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #18
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  %call1 = tail call i32 @__mmc_claim_host(ptr noundef %1, ptr noundef %ctx, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_put_card(ptr noundef %card, ptr noundef readnone %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.rhs:                                         ; preds = %entry
  %claimer = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %claimer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %claimer, align 4
  %cmp.not = icmp eq ptr %3, %ctx
  br i1 %cmp.not, label %land.rhs.if.end_crit_edge, label %do.end, !prof !315

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 872, i32 noundef 9, ptr noundef null) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mmc_release_host(ptr noundef %1)
  %dev = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 1
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #18
  %last_busy.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 1, i32 12, i32 22
  %4 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %call.i27 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_set_chip_select(ptr noundef %host, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %mode to i8
  %chip_select = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 4
  %0 = ptrtoint ptr %chip_select to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %chip_select, align 1
  %ios1.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_set_ios.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_set_chip_select, %if.then.i)) #18
          to label %mmc_set_ios.exit [label %if.then.i], !srcloc !319

if.then.i:                                        ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %1 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %3 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i20.i = phi ptr [ %4, %if.end.i.i ], [ %2, %if.then.i.dev_name.exit.i_crit_edge ]
  %5 = ptrtoint ptr %ios1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ios1.i, align 4
  %bus_mode.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 3
  %7 = ptrtoint ptr %bus_mode.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bus_mode.i, align 4
  %conv.i = zext i8 %8 to i32
  %power_mode.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 5
  %9 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %power_mode.i, align 2
  %conv5.i = zext i8 %10 to i32
  %11 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %chip_select, align 1
  %conv6.i = zext i8 %12 to i32
  %vdd.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 1
  %13 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vdd.i, align 4
  %conv7.i = zext i16 %14 to i32
  %bus_width.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 6
  %15 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bus_width.i, align 1
  %conv8.i = zext i8 %16 to i32
  %shl.i = shl nuw i32 1, %conv8.i
  %timing.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 7
  %17 = ptrtoint ptr %timing.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %timing.i, align 4
  %conv9.i = zext i8 %18 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_set_ios.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.103, ptr noundef %retval.0.i20.i, i32 noundef %6, i32 noundef %conv.i, i32 noundef %conv5.i, i32 noundef %conv6.i, i32 noundef %conv7.i, i32 noundef %shl.i, i32 noundef %conv9.i) #18
  br label %mmc_set_ios.exit

mmc_set_ios.exit:                                 ; preds = %dev_name.exit.i, %entry
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 3
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %set_ios.i = getelementptr inbounds %struct.mmc_host_ops, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %set_ios.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_ios.i, align 4
  tail call void %22(ptr noundef %host, ptr noundef %ios1.i) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_set_clock(ptr noundef %host, i32 noundef %hz) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hz)
  %tobool.not = icmp eq i32 %hz, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.rhs:                                         ; preds = %entry
  %f_min = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %f_min to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %hz)
  %cmp = icmp ugt i32 %1, %hz
  br i1 %cmp, label %do.end, label %land.rhs.if.end_crit_edge, !prof !316

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 912, i32 noundef 9, ptr noundef null) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 6
  %2 = ptrtoint ptr %f_max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_max, align 8
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 %hz)
  %ios = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28
  %5 = ptrtoint ptr %ios to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ios, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_set_ios.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_set_clock, %if.then.i)) #18
          to label %mmc_set_ios.exit [label %if.then.i], !srcloc !319

if.then.i:                                        ; preds = %if.end
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %8 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i20.i = phi ptr [ %9, %if.end.i.i ], [ %7, %if.then.i.dev_name.exit.i_crit_edge ]
  %10 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ios, align 4
  %bus_mode.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 3
  %12 = ptrtoint ptr %bus_mode.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bus_mode.i, align 4
  %conv.i = zext i8 %13 to i32
  %power_mode.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 5
  %14 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %power_mode.i, align 2
  %conv5.i = zext i8 %15 to i32
  %chip_select.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 4
  %16 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %chip_select.i, align 1
  %conv6.i = zext i8 %17 to i32
  %vdd.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 1
  %18 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vdd.i, align 4
  %conv7.i = zext i16 %19 to i32
  %bus_width.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 6
  %20 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bus_width.i, align 1
  %conv8.i = zext i8 %21 to i32
  %shl.i = shl nuw i32 1, %conv8.i
  %timing.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 7
  %22 = ptrtoint ptr %timing.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %timing.i, align 4
  %conv9.i = zext i8 %23 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_set_ios.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.103, ptr noundef %retval.0.i20.i, i32 noundef %11, i32 noundef %conv.i, i32 noundef %conv5.i, i32 noundef %conv6.i, i32 noundef %conv7.i, i32 noundef %shl.i, i32 noundef %conv9.i) #18
  br label %mmc_set_ios.exit

mmc_set_ios.exit:                                 ; preds = %dev_name.exit.i, %if.end
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 3
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i, align 4
  %set_ios.i = getelementptr inbounds %struct.mmc_host_ops, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %set_ios.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_ios.i, align 4
  tail call void %27(ptr noundef %host, ptr noundef %ios) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_execute_tuning(ptr nocapture noundef readonly %card) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  %ops = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %execute_tuning = getelementptr inbounds %struct.mmc_host_ops, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %execute_tuning to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %execute_tuning, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %cqe_on = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 66
  %6 = ptrtoint ptr %cqe_on to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cqe_on, align 1, !range !318
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %cqe_ops = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 62
  %8 = ptrtoint ptr %cqe_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cqe_ops, align 8
  %cqe_off = getelementptr inbounds %struct.mmc_cqe_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %cqe_off to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cqe_off, align 4
  tail call void %11(ptr noundef %1) #18
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %type = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 4
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  %. = select i1 %cmp, i32 21, i32 19
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %execute_tuning8 = getelementptr inbounds %struct.mmc_host_ops, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %execute_tuning8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %execute_tuning8, align 4
  %call = tail call i32 %17(ptr noundef %1, i32 noundef %.) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  %retune_now.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 29
  %18 = ptrtoint ptr %retune_now.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load.i = load i16, ptr %retune_now.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1025
  store i16 %bf.clear.i, ptr %retune_now.i, align 8
  %need_retune.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 32
  %19 = ptrtoint ptr %need_retune.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %need_retune.i, align 4
  tail call void @mmc_retune_enable(ptr noundef %1) #18
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %detect_change = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 43
  %20 = ptrtoint ptr %detect_change to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %detect_change, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool12.not = icmp eq i32 %21, 0
  br i1 %tobool12.not, label %do.end, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end:                                           ; preds = %if.end11
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1, i32 3
  %22 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %25, %if.end.i ], [ %23, %do.end.dev_name.exit_crit_edge ]
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %retval.0.i, i32 noundef %call) #23
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %if.end11.cleanup_crit_edge, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then10 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %dev_name.exit ], [ %call, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_retune_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_set_bus_mode(ptr noundef %host, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %mode to i8
  %bus_mode = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 3
  %0 = ptrtoint ptr %bus_mode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %bus_mode, align 4
  %ios1.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_set_ios.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_set_bus_mode, %if.then.i)) #18
          to label %mmc_set_ios.exit [label %if.then.i], !srcloc !319

if.then.i:                                        ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %1 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %3 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i20.i = phi ptr [ %4, %if.end.i.i ], [ %2, %if.then.i.dev_name.exit.i_crit_edge ]
  %5 = ptrtoint ptr %ios1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ios1.i, align 4
  %7 = ptrtoint ptr %bus_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bus_mode, align 4
  %conv.i = zext i8 %8 to i32
  %power_mode.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 5
  %9 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %power_mode.i, align 2
  %conv5.i = zext i8 %10 to i32
  %chip_select.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 4
  %11 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %chip_select.i, align 1
  %conv6.i = zext i8 %12 to i32
  %vdd.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 1
  %13 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vdd.i, align 4
  %conv7.i = zext i16 %14 to i32
  %bus_width.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 6
  %15 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bus_width.i, align 1
  %conv8.i = zext i8 %16 to i32
  %shl.i = shl nuw i32 1, %conv8.i
  %timing.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 7
  %17 = ptrtoint ptr %timing.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %timing.i, align 4
  %conv9.i = zext i8 %18 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_set_ios.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.103, ptr noundef %retval.0.i20.i, i32 noundef %6, i32 noundef %conv.i, i32 noundef %conv5.i, i32 noundef %conv6.i, i32 noundef %conv7.i, i32 noundef %shl.i, i32 noundef %conv9.i) #18
  br label %mmc_set_ios.exit

mmc_set_ios.exit:                                 ; preds = %dev_name.exit.i, %entry
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 3
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %set_ios.i = getelementptr inbounds %struct.mmc_host_ops, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %set_ios.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_ios.i, align 4
  tail call void %22(ptr noundef %host, ptr noundef %ios1.i) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_set_bus_width(ptr noundef %host, i32 noundef %width) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %width to i8
  %bus_width = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 6
  %0 = ptrtoint ptr %bus_width to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %bus_width, align 1
  %ios1.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_set_ios.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_set_bus_width, %if.then.i)) #18
          to label %mmc_set_ios.exit [label %if.then.i], !srcloc !319

if.then.i:                                        ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %1 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %3 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i20.i = phi ptr [ %4, %if.end.i.i ], [ %2, %if.then.i.dev_name.exit.i_crit_edge ]
  %5 = ptrtoint ptr %ios1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ios1.i, align 4
  %bus_mode.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 3
  %7 = ptrtoint ptr %bus_mode.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bus_mode.i, align 4
  %conv.i = zext i8 %8 to i32
  %power_mode.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 5
  %9 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %power_mode.i, align 2
  %conv5.i = zext i8 %10 to i32
  %chip_select.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 4
  %11 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %chip_select.i, align 1
  %conv6.i = zext i8 %12 to i32
  %vdd.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 1
  %13 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vdd.i, align 4
  %conv7.i = zext i16 %14 to i32
  %15 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bus_width, align 1
  %conv8.i = zext i8 %16 to i32
  %shl.i = shl nuw i32 1, %conv8.i
  %timing.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 7
  %17 = ptrtoint ptr %timing.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %timing.i, align 4
  %conv9.i = zext i8 %18 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_set_ios.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.103, ptr noundef %retval.0.i20.i, i32 noundef %6, i32 noundef %conv.i, i32 noundef %conv5.i, i32 noundef %conv6.i, i32 noundef %conv7.i, i32 noundef %shl.i, i32 noundef %conv9.i) #18
  br label %mmc_set_ios.exit

mmc_set_ios.exit:                                 ; preds = %dev_name.exit.i, %entry
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 3
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %set_ios.i = getelementptr inbounds %struct.mmc_host_ops, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %set_ios.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_ios.i, align 4
  tail call void %22(ptr noundef %host, ptr noundef %ios1.i) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_set_initial_state(ptr noundef %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_on = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 66
  %0 = ptrtoint ptr %cqe_on to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cqe_on, align 1, !range !318
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %cqe_ops = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 62
  %2 = ptrtoint ptr %cqe_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cqe_ops, align 8
  %cqe_off = getelementptr inbounds %struct.mmc_cqe_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %cqe_off to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cqe_off, align 4
  tail call void %5(ptr noundef %host) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mmc_retune_disable(ptr noundef %host) #18
  %caps = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %6 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %caps, align 32
  %8 = trunc i32 %7 to i8
  %9 = lshr i8 %8, 4
  %10 = and i8 %9, 1
  %11 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %10, ptr %11, align 1
  %ios6 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28
  %bus_mode = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 3
  %13 = ptrtoint ptr %bus_mode to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %bus_mode, align 4
  %bus_width = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 6
  %14 = ptrtoint ptr %bus_width to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %bus_width, align 1
  %timing = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 7
  %15 = ptrtoint ptr %timing to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %timing, align 4
  %drv_type = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 9
  %16 = ptrtoint ptr %drv_type to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %drv_type, align 2
  %enhanced_strobe = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 10
  %17 = ptrtoint ptr %enhanced_strobe to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %enhanced_strobe, align 1
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 17
  %18 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %caps2, align 4
  %and11 = and i32 %19, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end.if.end18_crit_edge, label %land.lhs.true

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end
  %ops = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 3
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %hs400_enhanced_strobe = getelementptr inbounds %struct.mmc_host_ops, ptr %21, i32 0, i32 18
  %22 = ptrtoint ptr %hs400_enhanced_strobe to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hs400_enhanced_strobe, align 4
  %tobool13.not = icmp eq ptr %23, null
  br i1 %tobool13.not, label %land.lhs.true.if.end18_crit_edge, label %if.then14

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %23(ptr noundef %host, ptr noundef %ios6) #18
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %land.lhs.true.if.end18_crit_edge, %if.end.if.end18_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_set_ios.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_set_initial_state, %if.then.i)) #18
          to label %mmc_set_ios.exit [label %if.then.i], !srcloc !319

if.then.i:                                        ; preds = %if.end18
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %26 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i20.i = phi ptr [ %27, %if.end.i.i ], [ %25, %if.then.i.dev_name.exit.i_crit_edge ]
  %28 = ptrtoint ptr %ios6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ios6, align 4
  %30 = ptrtoint ptr %bus_mode to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bus_mode, align 4
  %conv.i = zext i8 %31 to i32
  %power_mode.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 5
  %32 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %power_mode.i, align 2
  %conv5.i = zext i8 %33 to i32
  %34 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %11, align 1
  %conv6.i = zext i8 %35 to i32
  %vdd.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 1
  %36 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vdd.i, align 4
  %conv7.i = zext i16 %37 to i32
  %38 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bus_width, align 1
  %conv8.i = zext i8 %39 to i32
  %shl.i = shl nuw i32 1, %conv8.i
  %40 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %timing, align 4
  %conv9.i = zext i8 %41 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_set_ios.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.103, ptr noundef %retval.0.i20.i, i32 noundef %29, i32 noundef %conv.i, i32 noundef %conv5.i, i32 noundef %conv6.i, i32 noundef %conv7.i, i32 noundef %shl.i, i32 noundef %conv9.i) #18
  br label %mmc_set_ios.exit

mmc_set_ios.exit:                                 ; preds = %dev_name.exit.i, %if.end18
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 3
  %42 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i, align 4
  %set_ios.i = getelementptr inbounds %struct.mmc_host_ops, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %set_ios.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %set_ios.i, align 4
  tail call void %45(ptr noundef %host, ptr noundef %ios6) #18
  tail call void @mmc_crypto_set_initial_state(ptr noundef %host) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_retune_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_crypto_set_initial_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_vddrange_to_ocrmask(i32 noundef %vdd_min, i32 noundef %vdd_max) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %vdd_max, i32 %vdd_min)
  %cmp = icmp slt i32 %vdd_max, %vdd_min
  %0 = add i32 %vdd_max, -3601
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1951, i32 %0)
  %1 = icmp ult i32 %0, -1951
  %or.cond = or i1 %cmp, %1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %land.lhs.true.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1951, i32 %vdd_max)
  %cmp3.i = icmp ult i32 %vdd_max, 1951
  br i1 %cmp3.i, label %land.lhs.true.i.if.end3_crit_edge, label %if.end5.i

land.lhs.true.i.if.end3_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

if.end5.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3599, i32 %vdd_max)
  %cmp9.i = icmp ugt i32 %vdd_max, 3599
  br i1 %cmp9.i, label %if.end5.i.if.end3_crit_edge, label %if.end11.i

if.end5.i.if.end3_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

if.end11.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #20
  %2 = trunc i32 %vdd_max to i16
  %div.lhs.trunc.i = add nsw i16 %2, -2000
  %div19.i = sdiv i16 %div.lhs.trunc.i, 100
  %narrow.i = add nuw nsw i16 %div19.i, 8
  %add20.i = zext i16 %narrow.i to i32
  br label %if.end3

if.end3:                                          ; preds = %if.end11.i, %if.end5.i.if.end3_crit_edge, %land.lhs.true.i.if.end3_crit_edge
  %retval.0.i.ph = phi i32 [ 23, %if.end5.i.if.end3_crit_edge ], [ 7, %land.lhs.true.i.if.end3_crit_edge ], [ %add20.i, %if.end11.i ]
  %3 = add i32 %vdd_min, -3601
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1951, i32 %3)
  %4 = icmp ult i32 %3, -1951
  br i1 %4, label %if.end3.cleanup_crit_edge, label %land.lhs.true.i18

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true.i18:                                ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1951, i32 %vdd_min)
  %cmp3.i17 = icmp ult i32 %vdd_min, 1951
  %5 = trunc i32 %vdd_min to i16
  %div.lhs.trunc.i21 = add nsw i16 %5, -2001
  %div19.i22 = sdiv i16 %div.lhs.trunc.i21, 100
  %narrow.i23 = add nuw nsw i16 %div19.i22, 8
  %add20.i24 = zext i16 %narrow.i23 to i32
  %retval.0.i26 = select i1 %cmp3.i17, i32 7, i32 %add20.i24
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.ph, i32 %retval.0.i26)
  %cmp8.not34 = icmp ult i32 %retval.0.i.ph, %retval.0.i26
  br i1 %cmp8.not34, label %land.lhs.true.i18.cleanup_crit_edge, label %land.lhs.true.i18.while.body_crit_edge

land.lhs.true.i18.while.body_crit_edge:           ; preds = %land.lhs.true.i18
  br label %while.body

land.lhs.true.i18.cleanup_crit_edge:              ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %land.lhs.true.i18.while.body_crit_edge
  %mask.036 = phi i32 [ %or, %while.body.while.body_crit_edge ], [ 0, %land.lhs.true.i18.while.body_crit_edge ]
  %vdd_max.addr.035 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %retval.0.i.ph, %land.lhs.true.i18.while.body_crit_edge ]
  %dec = add nsw i32 %vdd_max.addr.035, -1
  %shl = shl nuw i32 1, %vdd_max.addr.035
  %or = or i32 %mask.036, %shl
  %cmp8.not.not = icmp sgt i32 %vdd_max.addr.035, %retval.0.i26
  br i1 %cmp8.not.not, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %land.lhs.true.i18.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ 0, %land.lhs.true.i18.cleanup_crit_edge ], [ %or, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mmc_of_find_child_device(ptr nocapture noundef readonly %host, i32 noundef %func_num) local_unnamed_addr #0 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call ptr @of_get_next_child(ptr noundef nonnull %3, ptr noundef null) #18
  %cmp.not19 = icmp eq ptr %call, null
  br i1 %cmp.not19, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %node.020 = phi ptr [ %call11, %for.inc.for.body_crit_edge ], [ %call, %if.end.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #18
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %reg.i, align 4, !annotation !317
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node.020, ptr noundef nonnull @.str.104, ptr noundef nonnull %reg.i, i32 noundef 1, i32 noundef 0) #18
  %5 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %for.body.mmc_of_get_func_num.exit_crit_edge, label %if.end.i

for.body.mmc_of_get_func_num.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_of_get_func_num.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %6 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg.i, align 4
  br label %mmc_of_get_func_num.exit

mmc_of_get_func_num.exit:                         ; preds = %if.end.i, %for.body.mmc_of_get_func_num.exit_crit_edge
  %retval.0.i = phi i32 [ %7, %if.end.i ], [ %5, %for.body.mmc_of_get_func_num.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %func_num)
  %cmp6 = icmp eq i32 %retval.0.i, %func_num
  br i1 %cmp6, label %mmc_of_get_func_num.exit.cleanup_crit_edge, label %for.inc

mmc_of_get_func_num.exit.cleanup_crit_edge:       ; preds = %mmc_of_get_func_num.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.inc:                                          ; preds = %mmc_of_get_func_num.exit
  %8 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host, align 128
  %of_node10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %of_node10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node10, align 8
  %call11 = call ptr @of_get_next_child(ptr noundef %11, ptr noundef nonnull %node.020) #18
  %cmp.not = icmp eq ptr %call11, null
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %mmc_of_get_func_num.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %node.020, %mmc_of_get_func_num.exit.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_select_voltage(ptr noundef %host, i32 noundef %ocr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %ocr, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.22) #23
  %and1 = and i32 %ocr, -128
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %ocr.addr.0 = phi i32 [ %and1, %do.end ], [ %ocr, %entry.if.end_crit_edge ]
  %ocr_avail = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 8
  %2 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ocr_avail, align 64
  %and2 = and i32 %3, %ocr.addr.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.27) #23
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 17
  %6 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %caps2, align 4
  %and10 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end9
  %8 = tail call i32 @llvm.cttz.i32(i32 %and2, i1 true), !range !328
  %shl = shl i32 3, %8
  %and13 = and i32 %shl, %and2
  %power_mode.i.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 5
  %9 = ptrtoint ptr %power_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %power_mode.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.i.i = icmp eq i8 %10, 0
  br i1 %cmp.i.i, label %if.then12.mmc_power_cycle.exit_crit_edge, label %if.end.i.i

if.then12.mmc_power_cycle.exit_crit_edge:         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_power_cycle.exit

if.end.i.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #20
  %ios.i.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28
  tail call void @mmc_pwrseq_power_off(ptr noundef %host) #18
  %11 = ptrtoint ptr %ios.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %ios.i.i, align 4
  %vdd.i.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 1
  %12 = ptrtoint ptr %vdd.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %vdd.i.i, align 4
  %13 = ptrtoint ptr %power_mode.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %power_mode.i.i, align 2
  tail call void @mmc_set_initial_state(ptr noundef %host) #18
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1250, i32 noundef 2) #18
  br label %mmc_power_cycle.exit

mmc_power_cycle.exit:                             ; preds = %if.end.i.i, %if.then12.mmc_power_cycle.exit_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1250, i32 noundef 2) #18
  tail call void @mmc_power_up(ptr noundef %host, i32 noundef %and13) #18
  br label %cleanup

if.else:                                          ; preds = %if.end9
  %14 = tail call i32 @llvm.ctlz.i32(i32 %and2, i1 true) #18, !range !328
  %sub14 = xor i32 %14, 31
  %shl15 = shl i32 3, %sub14
  %and16 = and i32 %shl15, %and2
  %vdd = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 1
  %15 = ptrtoint ptr %vdd to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vdd, align 4
  %conv = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub14, i32 %conv)
  %cmp.not = icmp eq i32 %sub14, %conv
  br i1 %cmp.not, label %if.else.cleanup_crit_edge, label %do.end21

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end21:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %17 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %host, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.30) #23
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %if.else.cleanup_crit_edge, %mmc_power_cycle.exit, %do.end7
  %retval.0 = phi i32 [ 0, %do.end7 ], [ %and13, %mmc_power_cycle.exit ], [ %and16, %do.end21 ], [ %and16, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_power_cycle(ptr noundef %host, i32 noundef %ocr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %power_mode.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 5
  %0 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i = icmp eq i8 %1, 0
  br i1 %cmp.i, label %entry.mmc_power_off.exit_crit_edge, label %if.end.i

entry.mmc_power_off.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_power_off.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %ios.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28
  tail call void @mmc_pwrseq_power_off(ptr noundef %host) #18
  %2 = ptrtoint ptr %ios.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ios.i, align 4
  %vdd.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 1
  %3 = ptrtoint ptr %vdd.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %vdd.i, align 4
  %4 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %power_mode.i, align 2
  tail call void @mmc_set_initial_state(ptr noundef %host) #18
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1250, i32 noundef 2) #18
  br label %mmc_power_off.exit

mmc_power_off.exit:                               ; preds = %if.end.i, %entry.mmc_power_off.exit_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1250, i32 noundef 2) #18
  tail call void @mmc_power_up(ptr noundef %host, i32 noundef %ocr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_set_signal_voltage(ptr noundef %host, i32 noundef %signal_voltage) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %signal_voltage1 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 8
  %0 = ptrtoint ptr %signal_voltage1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %signal_voltage1, align 1
  %conv2 = trunc i32 %signal_voltage to i8
  store i8 %conv2, ptr %signal_voltage1, align 1
  %ops = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 3
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %start_signal_voltage_switch = getelementptr inbounds %struct.mmc_host_ops, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %start_signal_voltage_switch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %start_signal_voltage_switch, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.end

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13

if.end:                                           ; preds = %entry
  %ios = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28
  %call = tail call i32 %5(ptr noundef %host, ptr noundef %ios) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end.if.end13_crit_edge, label %if.then9

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %6 = ptrtoint ptr %signal_voltage1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %1, ptr %signal_voltage1, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.if.end13_crit_edge, %entry.if.end13_crit_edge
  %err.023 = phi i32 [ %call, %if.then9 ], [ 0, %if.end.if.end13_crit_edge ], [ 0, %entry.if.end13_crit_edge ]
  ret i32 %err.023
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_set_initial_signal_voltage(ptr noundef %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %signal_voltage1.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 8
  %0 = ptrtoint ptr %signal_voltage1.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %signal_voltage1.i, align 1
  store i8 0, ptr %signal_voltage1.i, align 1
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 3
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %start_signal_voltage_switch.i = getelementptr inbounds %struct.mmc_host_ops, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %start_signal_voltage_switch.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %start_signal_voltage_switch.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.do.body_crit_edge, label %if.end.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

if.end.i:                                         ; preds = %entry
  %ios.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28
  %call.i = tail call i32 %5(ptr noundef %host, ptr noundef %ios.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %if.end.i.do.body_crit_edge, label %if.else

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

do.body:                                          ; preds = %if.end.i.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_set_initial_signal_voltage.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_set_initial_signal_voltage, %if.then5)) #18
          to label %if.end47 [label %if.then5], !srcloc !319

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_set_initial_signal_voltage.__UNIQUE_ID_ddebug344, ptr noundef %7, ptr noundef nonnull @.str.33) #18
  br label %if.end47

if.else:                                          ; preds = %if.end.i
  %8 = ptrtoint ptr %signal_voltage1.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %signal_voltage1.i, align 1
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %start_signal_voltage_switch.i61 = getelementptr inbounds %struct.mmc_host_ops, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %start_signal_voltage_switch.i61 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %start_signal_voltage_switch.i61, align 4
  %tobool.not.i62 = icmp eq ptr %12, null
  br i1 %tobool.not.i62, label %if.else.do.body9_crit_edge, label %if.end.i66

if.else.do.body9_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body9

if.end.i66:                                       ; preds = %if.else
  %call.i64 = tail call i32 %12(ptr noundef %host, ptr noundef %ios.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool8.not.i65 = icmp eq i32 %call.i64, 0
  br i1 %tobool8.not.i65, label %if.end.i66.do.body9_crit_edge, label %if.else25

if.end.i66.do.body9_crit_edge:                    ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body9

do.body9:                                         ; preds = %if.end.i66.do.body9_crit_edge, %if.else.do.body9_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_set_initial_signal_voltage.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_set_initial_signal_voltage, %if.then21)) #18
          to label %if.end47 [label %if.then21], !srcloc !319

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #20
  %13 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %host, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_set_initial_signal_voltage.__UNIQUE_ID_ddebug345, ptr noundef %14, ptr noundef nonnull @.str.34) #18
  br label %if.end47

if.else25:                                        ; preds = %if.end.i66
  %15 = ptrtoint ptr %signal_voltage1.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %signal_voltage1.i, align 1
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %start_signal_voltage_switch.i72 = getelementptr inbounds %struct.mmc_host_ops, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %start_signal_voltage_switch.i72 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %start_signal_voltage_switch.i72, align 4
  %tobool.not.i73 = icmp eq ptr %19, null
  br i1 %tobool.not.i73, label %if.else25.do.body29_crit_edge, label %if.end.i77

if.else25.do.body29_crit_edge:                    ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body29

if.end.i77:                                       ; preds = %if.else25
  %call.i75 = tail call i32 %19(ptr noundef %host, ptr noundef %ios.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool8.not.i76 = icmp eq i32 %call.i75, 0
  br i1 %tobool8.not.i76, label %if.end.i77.do.body29_crit_edge, label %mmc_set_signal_voltage.exit80

if.end.i77.do.body29_crit_edge:                   ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body29

mmc_set_signal_voltage.exit80:                    ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #20
  %20 = ptrtoint ptr %signal_voltage1.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %1, ptr %signal_voltage1.i, align 1
  br label %if.end47

do.body29:                                        ; preds = %if.end.i77.do.body29_crit_edge, %if.else25.do.body29_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_set_initial_signal_voltage.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_set_initial_signal_voltage, %if.then41)) #18
          to label %if.end47 [label %if.then41], !srcloc !319

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #20
  %21 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %host, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_set_initial_signal_voltage.__UNIQUE_ID_ddebug346, ptr noundef %22, ptr noundef nonnull @.str.35) #18
  br label %if.end47

if.end47:                                         ; preds = %if.then41, %do.body29, %mmc_set_signal_voltage.exit80, %if.then21, %do.body9, %if.then5, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_host_set_uhs_voltage(ptr noundef %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ios = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28
  %0 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ios, align 4
  store i32 0, ptr %ios, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_set_ios.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_host_set_uhs_voltage, %if.then.i)) #18
          to label %mmc_set_ios.exit [label %if.then.i], !srcloc !319

if.then.i:                                        ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %4 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i20.i = phi ptr [ %5, %if.end.i.i ], [ %3, %if.then.i.dev_name.exit.i_crit_edge ]
  %6 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ios, align 4
  %bus_mode.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 3
  %8 = ptrtoint ptr %bus_mode.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bus_mode.i, align 4
  %conv.i = zext i8 %9 to i32
  %power_mode.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 5
  %10 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %power_mode.i, align 2
  %conv5.i = zext i8 %11 to i32
  %chip_select.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 4
  %12 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %chip_select.i, align 1
  %conv6.i = zext i8 %13 to i32
  %vdd.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 1
  %14 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vdd.i, align 4
  %conv7.i = zext i16 %15 to i32
  %bus_width.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 6
  %16 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bus_width.i, align 1
  %conv8.i = zext i8 %17 to i32
  %shl.i = shl nuw i32 1, %conv8.i
  %timing.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 7
  %18 = ptrtoint ptr %timing.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %timing.i, align 4
  %conv9.i = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_set_ios.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.103, ptr noundef %retval.0.i20.i, i32 noundef %7, i32 noundef %conv.i, i32 noundef %conv5.i, i32 noundef %conv6.i, i32 noundef %conv7.i, i32 noundef %shl.i, i32 noundef %conv9.i) #18
  br label %mmc_set_ios.exit

mmc_set_ios.exit:                                 ; preds = %dev_name.exit.i, %entry
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 3
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  %set_ios.i = getelementptr inbounds %struct.mmc_host_ops, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %set_ios.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_ios.i, align 4
  tail call void %23(ptr noundef %host, ptr noundef %ios) #18
  %signal_voltage1.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 8
  %24 = ptrtoint ptr %signal_voltage1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %signal_voltage1.i, align 1
  store i8 1, ptr %signal_voltage1.i, align 1
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i, align 4
  %start_signal_voltage_switch.i = getelementptr inbounds %struct.mmc_host_ops, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %start_signal_voltage_switch.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %start_signal_voltage_switch.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %mmc_set_ios.exit.if.end_crit_edge, label %if.end.i

mmc_set_ios.exit.if.end_crit_edge:                ; preds = %mmc_set_ios.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end.i:                                         ; preds = %mmc_set_ios.exit
  %call.i = tail call i32 %29(ptr noundef %host, ptr noundef %ios) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %if.end.i.if.end_crit_edge, label %mmc_set_signal_voltage.exit

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

mmc_set_signal_voltage.exit:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %30 = ptrtoint ptr %signal_voltage1.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %25, ptr %signal_voltage1.i, align 1
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %mmc_set_ios.exit.if.end_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12500, i32 noundef 2) #18
  %31 = ptrtoint ptr %ios to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %1, ptr %ios, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_set_ios.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_host_set_uhs_voltage, %if.then.i17)) #18
          to label %mmc_set_ios.exit37 [label %if.then.i17], !srcloc !319

if.then.i17:                                      ; preds = %if.end
  %init_name.i.i15 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %init_name.i.i15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i.i15, align 8
  %tobool.not.i.i16 = icmp eq ptr %33, null
  br i1 %tobool.not.i.i16, label %if.end.i.i19, label %if.then.i17.dev_name.exit.i34_crit_edge

if.then.i17.dev_name.exit.i34_crit_edge:          ; preds = %if.then.i17
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit.i34

if.end.i.i19:                                     ; preds = %if.then.i17
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev.i18 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %34 = ptrtoint ptr %class_dev.i18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %class_dev.i18, align 4
  br label %dev_name.exit.i34

dev_name.exit.i34:                                ; preds = %if.end.i.i19, %if.then.i17.dev_name.exit.i34_crit_edge
  %retval.0.i20.i20 = phi ptr [ %35, %if.end.i.i19 ], [ %33, %if.then.i17.dev_name.exit.i34_crit_edge ]
  %36 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ios, align 4
  %bus_mode.i21 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 3
  %38 = ptrtoint ptr %bus_mode.i21 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bus_mode.i21, align 4
  %conv.i22 = zext i8 %39 to i32
  %power_mode.i23 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 5
  %40 = ptrtoint ptr %power_mode.i23 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %power_mode.i23, align 2
  %conv5.i24 = zext i8 %41 to i32
  %chip_select.i25 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 4
  %42 = ptrtoint ptr %chip_select.i25 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %chip_select.i25, align 1
  %conv6.i26 = zext i8 %43 to i32
  %vdd.i27 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 1
  %44 = ptrtoint ptr %vdd.i27 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %vdd.i27, align 4
  %conv7.i28 = zext i16 %45 to i32
  %bus_width.i29 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 6
  %46 = ptrtoint ptr %bus_width.i29 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bus_width.i29, align 1
  %conv8.i30 = zext i8 %47 to i32
  %shl.i31 = shl nuw i32 1, %conv8.i30
  %timing.i32 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 7
  %48 = ptrtoint ptr %timing.i32 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %timing.i32, align 4
  %conv9.i33 = zext i8 %49 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_set_ios.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.103, ptr noundef %retval.0.i20.i20, i32 noundef %37, i32 noundef %conv.i22, i32 noundef %conv5.i24, i32 noundef %conv6.i26, i32 noundef %conv7.i28, i32 noundef %shl.i31, i32 noundef %conv9.i33) #18
  br label %mmc_set_ios.exit37

mmc_set_ios.exit37:                               ; preds = %dev_name.exit.i34, %if.end
  %50 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops.i, align 4
  %set_ios.i36 = getelementptr inbounds %struct.mmc_host_ops, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %set_ios.i36 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %set_ios.i36, align 4
  tail call void %53(ptr noundef %host, ptr noundef %ios) #18
  br label %cleanup

cleanup:                                          ; preds = %mmc_set_ios.exit37, %mmc_set_signal_voltage.exit
  %retval.0 = phi i32 [ 0, %mmc_set_ios.exit37 ], [ -11, %mmc_set_signal_voltage.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_set_uhs_voltage(ptr noundef %host, i32 noundef %ocr) local_unnamed_addr #0 align 64 {
entry:
  %mrq.i = alloca %struct.mmc_request, align 4
  %cmd = alloca %struct.mmc_command, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #18
  %0 = getelementptr inbounds i8, ptr %cmd, i32 32
  %1 = call ptr @memset(ptr %0, i32 0, i32 16)
  %ops = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 3
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %start_signal_voltage_switch = getelementptr inbounds %struct.mmc_host_ops, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %start_signal_voltage_switch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %start_signal_voltage_switch, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %card_busy = getelementptr inbounds %struct.mmc_host_ops, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %card_busy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card_busy, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %do.end, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

do.end:                                           ; preds = %if.end
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %10 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i71 = phi ptr [ %11, %if.end.i ], [ %9, %do.end.dev_name.exit_crit_edge ]
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %retval.0.i71) #23
  br label %if.end5

if.end5:                                          ; preds = %dev_name.exit, %if.end.if.end5_crit_edge
  %12 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 11, ptr %cmd, align 4
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %13 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arg, align 4
  %flags = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 21, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %mrq.i) #18
  %15 = call ptr @memset(ptr %mrq.i, i32 0, i32 156)
  %claimed.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 29
  %16 = ptrtoint ptr %claimed.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i = load i16, ptr %claimed.i, align 8
  %17 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i72 = icmp eq i16 %17, 0
  br i1 %tobool.not.i72, label %do.end.i, label %if.end5.mmc_wait_for_cmd.exit_crit_edge, !prof !316

if.end5.mmc_wait_for_cmd.exit_crit_edge:          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_wait_for_cmd.exit

do.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 626, i32 noundef 9, ptr noundef null) #18
  br label %mmc_wait_for_cmd.exit

mmc_wait_for_cmd.exit:                            ; preds = %do.end.i, %if.end5.mmc_wait_for_cmd.exit_crit_edge
  %resp.i = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  %18 = call ptr @memset(ptr %resp.i, i32 0, i32 16)
  %retries21.i = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 4
  %19 = ptrtoint ptr %retries21.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %retries21.i, align 4
  %cmd22.i = getelementptr inbounds %struct.mmc_request, ptr %mrq.i, i32 0, i32 1
  %20 = ptrtoint ptr %cmd22.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %cmd, ptr %cmd22.i, align 4
  %data.i = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 7
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %data.i, align 4
  call void @mmc_wait_for_req(ptr noundef %host, ptr noundef nonnull %mrq.i) #18
  %error.i = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %22 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %mrq.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool7.not = icmp eq i32 %23, 0
  br i1 %tobool7.not, label %if.end9, label %mmc_wait_for_cmd.exit.do.body41_crit_edge

mmc_wait_for_cmd.exit.do.body41_crit_edge:        ; preds = %mmc_wait_for_cmd.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body41

if.end9:                                          ; preds = %mmc_wait_for_cmd.exit
  %caps = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %24 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %caps, align 32
  %and = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %land.lhs.true, label %if.end9.if.end14_crit_edge

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end9
  %26 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %resp.i, align 4
  %and11 = and i32 %27, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end14_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %if.end9.if.end14_crit_edge
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1250, i32 noundef 2) #18
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops, align 4
  %card_busy16 = getelementptr inbounds %struct.mmc_host_ops, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %card_busy16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %card_busy16, align 4
  %tobool17.not = icmp eq ptr %31, null
  br i1 %tobool17.not, label %if.end14.if.end24_crit_edge, label %land.lhs.true18

if.end14.if.end24_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24

land.lhs.true18:                                  ; preds = %if.end14
  %call21 = call i32 %31(ptr noundef %host) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true18.do.body41_crit_edge, label %land.lhs.true18.if.end24_crit_edge

land.lhs.true18.if.end24_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24

land.lhs.true18.do.body41_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body41

if.end24:                                         ; preds = %land.lhs.true18.if.end24_crit_edge, %if.end14.if.end24_crit_edge
  %call25 = call i32 @mmc_host_set_uhs_voltage(ptr noundef %host)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.do.body41_crit_edge

if.end24.do.body41_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body41

if.end28:                                         ; preds = %if.end24
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1250, i32 noundef 2) #18
  %32 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops, align 4
  %card_busy30 = getelementptr inbounds %struct.mmc_host_ops, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %card_busy30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %card_busy30, align 4
  %tobool31.not = icmp eq ptr %35, null
  br i1 %tobool31.not, label %if.end28.cleanup_crit_edge, label %land.lhs.true32

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true32:                                  ; preds = %if.end28
  %call35 = call i32 %35(ptr noundef %host) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %land.lhs.true32.cleanup_crit_edge, label %land.lhs.true32.do.body41_crit_edge

land.lhs.true32.do.body41_crit_edge:              ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body41

land.lhs.true32.cleanup_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body41:                                        ; preds = %land.lhs.true32.do.body41_crit_edge, %if.end24.do.body41_crit_edge, %land.lhs.true18.do.body41_crit_edge, %mmc_wait_for_cmd.exit.do.body41_crit_edge
  %err.0.ph = phi i32 [ -11, %land.lhs.true32.do.body41_crit_edge ], [ -11, %if.end24.do.body41_crit_edge ], [ -11, %land.lhs.true18.do.body41_crit_edge ], [ %23, %mmc_wait_for_cmd.exit.do.body41_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_set_uhs_voltage.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_set_uhs_voltage, %if.then47)) #18
          to label %do.end52 [label %if.then47], !srcloc !319

if.then47:                                        ; preds = %do.body41
  %init_name.i76 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %init_name.i76 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i76, align 8
  %tobool.not.i77 = icmp eq ptr %37, null
  br i1 %tobool.not.i77, label %if.end.i78, label %if.then47.dev_name.exit80_crit_edge

if.then47.dev_name.exit80_crit_edge:              ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit80

if.end.i78:                                       ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev48 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %38 = ptrtoint ptr %class_dev48 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %class_dev48, align 4
  br label %dev_name.exit80

dev_name.exit80:                                  ; preds = %if.end.i78, %if.then47.dev_name.exit80_crit_edge
  %retval.0.i79 = phi ptr [ %39, %if.end.i78 ], [ %37, %if.then47.dev_name.exit80_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_set_uhs_voltage.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.38, ptr noundef %retval.0.i79) #18
  br label %do.end52

do.end52:                                         ; preds = %dev_name.exit80, %do.body41
  %power_mode.i.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 5
  %40 = ptrtoint ptr %power_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %power_mode.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp.i.i = icmp eq i8 %41, 0
  br i1 %cmp.i.i, label %do.end52.mmc_power_cycle.exit_crit_edge, label %if.end.i.i

do.end52.mmc_power_cycle.exit_crit_edge:          ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_power_cycle.exit

if.end.i.i:                                       ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #20
  %ios.i.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28
  call void @mmc_pwrseq_power_off(ptr noundef %host) #18
  %42 = ptrtoint ptr %ios.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %ios.i.i, align 4
  %vdd.i.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 1
  %43 = ptrtoint ptr %vdd.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %vdd.i.i, align 4
  %44 = ptrtoint ptr %power_mode.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %power_mode.i.i, align 2
  call void @mmc_set_initial_state(ptr noundef %host) #18
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1250, i32 noundef 2) #18
  br label %mmc_power_cycle.exit

mmc_power_cycle.exit:                             ; preds = %if.end.i.i, %do.end52.mmc_power_cycle.exit_crit_edge
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1250, i32 noundef 2) #18
  call void @mmc_power_up(ptr noundef %host, i32 noundef %ocr) #18
  br label %cleanup

cleanup:                                          ; preds = %mmc_power_cycle.exit, %land.lhs.true32.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -5, %land.lhs.true.cleanup_crit_edge ], [ %err.0.ph, %mmc_power_cycle.exit ], [ 0, %if.end28.cleanup_crit_edge ], [ 0, %land.lhs.true32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_set_timing(ptr noundef %host, i32 noundef %timing) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %timing to i8
  %timing1 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 7
  %0 = ptrtoint ptr %timing1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %timing1, align 4
  %ios1.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_set_ios.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_set_timing, %if.then.i)) #18
          to label %mmc_set_ios.exit [label %if.then.i], !srcloc !319

if.then.i:                                        ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %1 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %3 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i20.i = phi ptr [ %4, %if.end.i.i ], [ %2, %if.then.i.dev_name.exit.i_crit_edge ]
  %5 = ptrtoint ptr %ios1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ios1.i, align 4
  %bus_mode.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 3
  %7 = ptrtoint ptr %bus_mode.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bus_mode.i, align 4
  %conv.i = zext i8 %8 to i32
  %power_mode.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 5
  %9 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %power_mode.i, align 2
  %conv5.i = zext i8 %10 to i32
  %chip_select.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 4
  %11 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %chip_select.i, align 1
  %conv6.i = zext i8 %12 to i32
  %vdd.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 1
  %13 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vdd.i, align 4
  %conv7.i = zext i16 %14 to i32
  %bus_width.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 6
  %15 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bus_width.i, align 1
  %conv8.i = zext i8 %16 to i32
  %shl.i = shl nuw i32 1, %conv8.i
  %17 = ptrtoint ptr %timing1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %timing1, align 4
  %conv9.i = zext i8 %18 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_set_ios.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.103, ptr noundef %retval.0.i20.i, i32 noundef %6, i32 noundef %conv.i, i32 noundef %conv5.i, i32 noundef %conv6.i, i32 noundef %conv7.i, i32 noundef %shl.i, i32 noundef %conv9.i) #18
  br label %mmc_set_ios.exit

mmc_set_ios.exit:                                 ; preds = %dev_name.exit.i, %entry
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 3
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %set_ios.i = getelementptr inbounds %struct.mmc_host_ops, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %set_ios.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_ios.i, align 4
  tail call void %22(ptr noundef %host, ptr noundef %ios1.i) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_set_driver_type(ptr noundef %host, i32 noundef %drv_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %drv_type to i8
  %drv_type1 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 9
  %0 = ptrtoint ptr %drv_type1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %drv_type1, align 2
  %ios1.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_set_ios.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_set_driver_type, %if.then.i)) #18
          to label %mmc_set_ios.exit [label %if.then.i], !srcloc !319

if.then.i:                                        ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %1 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %3 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i20.i = phi ptr [ %4, %if.end.i.i ], [ %2, %if.then.i.dev_name.exit.i_crit_edge ]
  %5 = ptrtoint ptr %ios1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ios1.i, align 4
  %bus_mode.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 3
  %7 = ptrtoint ptr %bus_mode.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bus_mode.i, align 4
  %conv.i = zext i8 %8 to i32
  %power_mode.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 5
  %9 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %power_mode.i, align 2
  %conv5.i = zext i8 %10 to i32
  %chip_select.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 4
  %11 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %chip_select.i, align 1
  %conv6.i = zext i8 %12 to i32
  %vdd.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 1
  %13 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vdd.i, align 4
  %conv7.i = zext i16 %14 to i32
  %bus_width.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 6
  %15 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bus_width.i, align 1
  %conv8.i = zext i8 %16 to i32
  %shl.i = shl nuw i32 1, %conv8.i
  %timing.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 7
  %17 = ptrtoint ptr %timing.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %timing.i, align 4
  %conv9.i = zext i8 %18 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_set_ios.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.103, ptr noundef %retval.0.i20.i, i32 noundef %6, i32 noundef %conv.i, i32 noundef %conv5.i, i32 noundef %conv6.i, i32 noundef %conv7.i, i32 noundef %shl.i, i32 noundef %conv9.i) #18
  br label %mmc_set_ios.exit

mmc_set_ios.exit:                                 ; preds = %dev_name.exit.i, %entry
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 3
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %set_ios.i = getelementptr inbounds %struct.mmc_host_ops, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %set_ios.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_ios.i, align 4
  tail call void %22(ptr noundef %host, ptr noundef %ios1.i) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_select_drive_strength(ptr noundef %card, i32 noundef %max_dtr, i32 noundef %card_drv_type, ptr noundef %drv_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  %2 = ptrtoint ptr %drv_type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %drv_type, align 4
  %ops = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %select_drive_strength = getelementptr inbounds %struct.mmc_host_ops, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %select_drive_strength to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %select_drive_strength, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %caps = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 16
  %7 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %caps, align 32
  %and = and i32 %8, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool2.not, i32 1, i32 3
  %and6 = lshr i32 %8, 22
  %9 = and i32 %and6, 12
  %10 = or i32 %9, %spec.select
  %call = tail call i32 %6(ptr noundef %card, i32 noundef %max_dtr, i32 noundef %10, i32 noundef %card_drv_type, ptr noundef %drv_type) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_power_up(ptr noundef %host, i32 noundef %ocr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %power_mode = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 5
  %0 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp eq i8 %1, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %entry
  %ios = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28
  tail call void @mmc_pwrseq_pre_power_on(ptr noundef %host) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ocr)
  %tobool.not.i = icmp eq i32 %ocr, 0
  %2 = tail call i32 @llvm.ctlz.i32(i32 %ocr, i1 true) #18, !range !328
  %3 = trunc i32 %2 to i16
  %.op = xor i16 %3, 31
  %conv2 = select i1 %tobool.not.i, i16 -1, i16 %.op
  %vdd = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 1
  %4 = ptrtoint ptr %vdd to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv2, ptr %vdd, align 4
  %5 = ptrtoint ptr %power_mode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %power_mode, align 2
  tail call void @mmc_set_initial_state(ptr noundef %host)
  tail call void @mmc_set_initial_signal_voltage(ptr noundef %host)
  %power_delay_ms = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 2
  %6 = ptrtoint ptr %power_delay_ms to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %power_delay_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %7)
  %cmp.i = icmp ult i32 %7, 21
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %mul.i = mul nuw nsw i32 %7, 1000
  %mul1.i = mul nuw nsw i32 %7, 1250
  tail call void @usleep_range_state(i32 noundef %mul.i, i32 noundef %mul1.i, i32 noundef 2) #18
  br label %mmc_delay.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @msleep(i32 noundef %7) #18
  br label %mmc_delay.exit

mmc_delay.exit:                                   ; preds = %if.else.i, %if.then.i
  tail call void @mmc_pwrseq_post_power_on(ptr noundef %host) #18
  %f_init = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 7
  %8 = ptrtoint ptr %f_init to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_init, align 4
  %10 = ptrtoint ptr %ios to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ios, align 4
  %11 = ptrtoint ptr %power_mode to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %power_mode, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_set_ios.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_power_up, %if.then.i24)) #18
          to label %mmc_set_ios.exit [label %if.then.i24], !srcloc !319

if.then.i24:                                      ; preds = %mmc_delay.exit
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i24.dev_name.exit.i_crit_edge

if.then.i24.dev_name.exit.i_crit_edge:            ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %14 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i24.dev_name.exit.i_crit_edge
  %retval.0.i20.i = phi ptr [ %15, %if.end.i.i ], [ %13, %if.then.i24.dev_name.exit.i_crit_edge ]
  %16 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ios, align 4
  %bus_mode.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 3
  %18 = ptrtoint ptr %bus_mode.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bus_mode.i, align 4
  %conv.i = zext i8 %19 to i32
  %20 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %power_mode, align 2
  %conv5.i = zext i8 %21 to i32
  %chip_select.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 4
  %22 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %chip_select.i, align 1
  %conv6.i = zext i8 %23 to i32
  %24 = ptrtoint ptr %vdd to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vdd, align 4
  %conv7.i = zext i16 %25 to i32
  %bus_width.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 6
  %26 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bus_width.i, align 1
  %conv8.i = zext i8 %27 to i32
  %shl.i = shl nuw i32 1, %conv8.i
  %timing.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 7
  %28 = ptrtoint ptr %timing.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %timing.i, align 4
  %conv9.i = zext i8 %29 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_set_ios.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.103, ptr noundef %retval.0.i20.i, i32 noundef %17, i32 noundef %conv.i, i32 noundef %conv5.i, i32 noundef %conv6.i, i32 noundef %conv7.i, i32 noundef %shl.i, i32 noundef %conv9.i) #18
  br label %mmc_set_ios.exit

mmc_set_ios.exit:                                 ; preds = %dev_name.exit.i, %mmc_delay.exit
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 3
  %30 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i, align 4
  %set_ios.i = getelementptr inbounds %struct.mmc_host_ops, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %set_ios.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_ios.i, align 4
  tail call void %33(ptr noundef %host, ptr noundef %ios) #18
  %34 = ptrtoint ptr %power_delay_ms to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %power_delay_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %35)
  %cmp.i25 = icmp ult i32 %35, 21
  br i1 %cmp.i25, label %if.then.i28, label %if.else.i29

if.then.i28:                                      ; preds = %mmc_set_ios.exit
  call void @__sanitizer_cov_trace_pc() #20
  %mul.i26 = mul nuw nsw i32 %35, 1000
  %mul1.i27 = mul nuw nsw i32 %35, 1250
  tail call void @usleep_range_state(i32 noundef %mul.i26, i32 noundef %mul1.i27, i32 noundef 2) #18
  br label %return

if.else.i29:                                      ; preds = %mmc_set_ios.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @msleep(i32 noundef %35) #18
  br label %return

return:                                           ; preds = %if.else.i29, %if.then.i28, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_pwrseq_pre_power_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_pwrseq_post_power_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_power_off(ptr noundef %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %power_mode = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 5
  %0 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %ios = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28
  tail call void @mmc_pwrseq_power_off(ptr noundef %host) #18
  %2 = ptrtoint ptr %ios to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ios, align 4
  %vdd = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 1
  %3 = ptrtoint ptr %vdd to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %vdd, align 4
  %4 = ptrtoint ptr %power_mode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %power_mode, align 2
  tail call void @mmc_set_initial_state(ptr noundef %host)
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1250, i32 noundef 2) #18
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_pwrseq_power_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mmc_attach_bus(ptr nocapture noundef writeonly %host, ptr noundef %ops) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_ops = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 45
  %0 = ptrtoint ptr %bus_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ops, ptr %bus_ops, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mmc_detach_bus(ptr nocapture noundef writeonly %host) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_ops = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 45
  %0 = ptrtoint ptr %bus_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bus_ops, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_mmc_detect_change(ptr noundef %host, i32 noundef %delay, i1 noundef zeroext %cd_irq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %cd_irq, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %caps = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %caps, align 32
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %ws = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 12
  %2 = ptrtoint ptr %ws to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ws, align 16
  tail call void @pm_wakeup_ws_event(ptr noundef %3, i32 noundef 5000, i1 noundef zeroext false) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %detect_change = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 43
  %4 = ptrtoint ptr %detect_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %detect_change, align 4
  %detect = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_wq to i32))
  %5 = load ptr, ptr @system_freezable_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %detect, i32 noundef %delay) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_detect_change(ptr noundef %host, i32 noundef %delay) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %0 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %caps.i, align 32
  %and.i = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.then.i, label %entry._mmc_detect_change.exit_crit_edge

entry._mmc_detect_change.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %_mmc_detect_change.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %ws.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 12
  %2 = ptrtoint ptr %ws.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ws.i, align 16
  tail call void @pm_wakeup_ws_event(ptr noundef %3, i32 noundef 5000, i1 noundef zeroext false) #18
  br label %_mmc_detect_change.exit

_mmc_detect_change.exit:                          ; preds = %if.then.i, %entry._mmc_detect_change.exit_crit_edge
  %detect_change.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 43
  %4 = ptrtoint ptr %detect_change.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %detect_change.i, align 4
  %detect.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_wq to i32))
  %5 = load ptr, ptr @system_freezable_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %detect.i, i32 noundef %delay) #18
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mmc_init_erase(ptr nocapture noundef %card) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %erase_size = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %erase_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %erase_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  %2 = tail call i32 @llvm.ctpop.i32(i32 %1) #18, !range !328
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %.not = icmp eq i32 %2, 1
  %3 = tail call i32 @llvm.cttz.i32(i32 %1, i1 true), !range !328
  %spec.select = select i1 %.not, i32 %3, i32 0
  %4 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 10
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select, ptr %4, align 8
  %type = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 4
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.else12_crit_edge

entry.if.else12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else12

land.lhs.true:                                    ; preds = %entry
  %ssr = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 23
  %8 = ptrtoint ptr %ssr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ssr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %land.lhs.true.if.else12_crit_edge, label %if.then3

land.lhs.true.if.else12_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else12

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %pref_erase = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 11
  %10 = ptrtoint ptr %pref_erase to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pref_erase, align 4
  %11 = tail call i32 @llvm.cttz.i32(i32 %9, i1 true), !range !328
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %4, align 8
  br label %if.end53

if.else12:                                        ; preds = %land.lhs.true.if.else12_crit_edge, %entry.if.else12_crit_edge
  br i1 %cmp.not.i, label %if.else50, label %if.then15

if.then15:                                        ; preds = %if.else12
  %capacity = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 11
  %13 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %capacity, align 4
  %read_blkbits = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 9
  %15 = ptrtoint ptr %read_blkbits to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %read_blkbits, align 4
  %sub17 = add i32 %16, -9
  %shl = shl i32 %14, %sub17
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %shl)
  %cmp18 = icmp ult i32 %shl, 262144
  br i1 %cmp18, label %if.then19, label %if.else21

if.then19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #20
  %pref_erase20 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 11
  %17 = ptrtoint ptr %pref_erase20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1024, ptr %pref_erase20, align 4
  br label %if.end33

if.else21:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %shl)
  %cmp22 = icmp ult i32 %shl, 1048576
  br i1 %cmp22, label %if.then23, label %if.else25

if.then23:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #20
  %pref_erase24 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 11
  %18 = ptrtoint ptr %pref_erase24 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2048, ptr %pref_erase24, align 4
  br label %if.end33

if.else25:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %shl)
  %cmp26 = icmp ult i32 %shl, 2097152
  %pref_erase28 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 11
  br i1 %cmp26, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #20
  %19 = ptrtoint ptr %pref_erase28 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4096, ptr %pref_erase28, align 4
  br label %if.end33

if.else29:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #20
  %20 = ptrtoint ptr %pref_erase28 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8192, ptr %pref_erase28, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else29, %if.then27, %if.then23, %if.then19
  %pref_erase34 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 11
  %21 = ptrtoint ptr %pref_erase34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pref_erase34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %1)
  %cmp36 = icmp ult i32 %22, %1
  br i1 %cmp36, label %if.then37, label %if.else40

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #20
  %23 = ptrtoint ptr %pref_erase34 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %1, ptr %pref_erase34, align 4
  br label %if.end53

if.else40:                                        ; preds = %if.end33
  %rem = urem i32 %22, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool43.not = icmp eq i32 %rem, 0
  br i1 %tobool43.not, label %if.else40.if.end53_crit_edge, label %if.then44

if.else40.if.end53_crit_edge:                     ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end53

if.then44:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #20
  %sub46 = add i32 %22, %1
  %add = sub i32 %sub46, %rem
  %24 = ptrtoint ptr %pref_erase34 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add, ptr %pref_erase34, align 4
  br label %if.end53

if.else50:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #20
  %pref_erase51 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 11
  %25 = ptrtoint ptr %pref_erase51 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %pref_erase51, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.else50, %if.then44, %if.else40.if.end53_crit_edge, %if.then37, %if.then3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_erase(ptr noundef %card, i32 noundef %from, i32 noundef %nr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %nr, %from
  %cmdclass = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 2
  %0 = ptrtoint ptr %cmdclass to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cmdclass, align 2
  %2 = and i16 %1, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %erase_size = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 9
  %3 = ptrtoint ptr %erase_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %erase_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 4
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 8
  %.fr = freeze i32 %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.fr)
  %cmp = icmp ne i32 %.fr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %arg)
  %switch = icmp ult i32 %arg, 2
  %or.cond = or i1 %switch, %cmp
  br i1 %or.cond, label %if.end11, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end11:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.fr)
  %cmp13 = icmp ne i32 %.fr, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %arg)
  %tobool17.not = icmp sgt i32 %arg, -1
  %or.cond118 = or i1 %tobool17.not, %cmp13
  br i1 %or.cond118, label %if.end11.if.end23_crit_edge, label %land.lhs.true18

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23

land.lhs.true18:                                  ; preds = %if.end11
  %sec_feature_support = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 2
  %7 = ptrtoint ptr %sec_feature_support to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sec_feature_support, align 2
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool21.not = icmp eq i8 %9, 0
  br i1 %tobool21.not, label %land.lhs.true18.cleanup_crit_edge, label %land.lhs.true18.if.end23_crit_edge

land.lhs.true18.if.end23_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23

land.lhs.true18.cleanup_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end23:                                         ; preds = %land.lhs.true18.if.end23_crit_edge, %if.end11.if.end23_crit_edge
  %and28 = and i32 %arg, 32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %or.cond119 = or i1 %tobool29.not, %cmp13
  br i1 %or.cond119, label %if.end23.if.end37_crit_edge, label %land.lhs.true30

if.end23.if.end37_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end37

land.lhs.true30:                                  ; preds = %if.end23
  %sec_feature_support32 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 2
  %10 = ptrtoint ptr %sec_feature_support32 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sec_feature_support32, align 2
  %12 = and i8 %11, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool35.not = icmp eq i8 %12, 0
  br i1 %tobool35.not, label %land.lhs.true30.cleanup_crit_edge, label %land.lhs.true30.if.end37_crit_edge

land.lhs.true30.if.end37_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end37

land.lhs.true30.cleanup_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end37:                                         ; preds = %land.lhs.true30.if.end37_crit_edge, %if.end23.if.end37_crit_edge
  %13 = zext i32 %arg to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %arg, label %if.end37.if.end53_crit_edge [
    i32 -2147483648, label %if.then40
    i32 0, label %if.then52
  ]

if.end37.if.end53_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end53

if.then40:                                        ; preds = %if.end37
  %rem42 = urem i32 %from, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem42)
  %tobool43.not = icmp eq i32 %rem42, 0
  br i1 %tobool43.not, label %lor.lhs.false, label %if.then40.cleanup_crit_edge

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then40
  %rem45 = urem i32 %nr, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem45)
  %tobool46.not = icmp eq i32 %rem45, 0
  br i1 %tobool46.not, label %lor.lhs.false.if.end53_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false.if.end53_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end53

if.then52:                                        ; preds = %if.end37
  %14 = tail call i32 @llvm.ctpop.i32(i32 %4) #18, !range !328
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %if.then.i, label %if.else8.i

if.then.i:                                        ; preds = %if.then52
  %sub.i = add i32 %from, -1
  %sub2.i = add i32 %4, -1
  %or.i = or i32 %sub2.i, %sub.i
  %add.i = add i32 %or.i, 1
  %sub3.i = sub i32 %add.i, %from
  call void @__sanitizer_cov_trace_cmp4(i32 %sub3.i, i32 %nr)
  %cmp.i = icmp ult i32 %sub3.i, %nr
  %sub5.i = sub i32 %nr, %sub3.i
  %neg.i = sub i32 0, %4
  %and.i = and i32 %sub5.i, %neg.i
  br i1 %cmp.i, label %if.then.i.if.end27.i_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then.i.if.end27.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27.i

if.else8.i:                                       ; preds = %if.then52
  %rem10.i = urem i32 %from, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem10.i)
  %tobool.not.i = icmp eq i32 %rem10.i, 0
  br i1 %tobool.not.i, label %if.else8.i.if.end20.i_crit_edge, label %if.then11.i

if.else8.i.if.end20.i_crit_edge:                  ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20.i

if.then11.i:                                      ; preds = %if.else8.i
  %sub13.i = sub i32 %4, %rem10.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub13.i, i32 %nr)
  %cmp15.i = icmp ult i32 %sub13.i, %nr
  br i1 %cmp15.i, label %if.then16.i, label %if.then11.i.cleanup_crit_edge

if.then11.i.cleanup_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then16.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #20
  %add14.i = add i32 %sub13.i, %from
  %sub17.i = sub i32 %nr, %sub13.i
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then16.i, %if.else8.i.if.end20.i_crit_edge
  %from_new.0.i = phi i32 [ %add14.i, %if.then16.i ], [ %from, %if.else8.i.if.end20.i_crit_edge ]
  %nr_new.1.i = phi i32 [ %sub17.i, %if.then16.i ], [ %nr, %if.else8.i.if.end20.i_crit_edge ]
  %rem22.i = urem i32 %nr_new.1.i, %4
  %sub25.i = sub i32 %nr_new.1.i, %rem22.i
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.end20.i, %if.then.i.if.end27.i_crit_edge
  %from_new.1.i = phi i32 [ %add.i, %if.then.i.if.end27.i_crit_edge ], [ %from_new.0.i, %if.end20.i ]
  %nr_new.2.i = phi i32 [ %and.i, %if.then.i.if.end27.i_crit_edge ], [ %sub25.i, %if.end20.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_new.2.i)
  %cmp28.i = icmp eq i32 %nr_new.2.i, 0
  br i1 %cmp28.i, label %if.end27.i.cleanup_crit_edge, label %if.end53.thread132

if.end27.i.cleanup_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end53.thread132:                               ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #20
  %add31.i = add i32 %nr_new.2.i, %from_new.1.i
  br label %if.end57

if.end53:                                         ; preds = %lor.lhs.false.if.end53_crit_edge, %if.end37.if.end53_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %cmp54 = icmp eq i32 %nr, 0
  br i1 %cmp54, label %if.end53.cleanup_crit_edge, label %if.end53.if.end57_crit_edge

if.end53.if.end57_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end57

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end57:                                         ; preds = %if.end53.if.end57_crit_edge, %if.end53.thread132
  %nr.addr.0139 = phi i32 [ %nr_new.2.i, %if.end53.thread132 ], [ %nr, %if.end53.if.end57_crit_edge ]
  %to.1138 = phi i32 [ %add31.i, %if.end53.thread132 ], [ %add, %if.end53.if.end57_crit_edge ]
  %from.addr.1137 = phi i32 [ %from_new.1.i, %if.end53.thread132 ], [ %from, %if.end53.if.end57_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %to.1138, i32 %from.addr.1137)
  %cmp58.not = icmp ugt i32 %to.1138, %from.addr.1137
  br i1 %cmp58.not, label %if.end61, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end61:                                         ; preds = %if.end57
  %sub = add i32 %to.1138, -1
  %rem64 = urem i32 %from.addr.1137, %4
  %sub65 = sub i32 %4, %rem64
  br i1 %tobool29.not, label %if.end61.if.end84_crit_edge, label %land.lhs.true68

if.end61.if.end84_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end84

land.lhs.true68:                                  ; preds = %if.end61
  %eg_boundary = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 12
  %16 = ptrtoint ptr %eg_boundary to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %eg_boundary, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool69.not = icmp ne i32 %17, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %nr.addr.0139, i32 %sub65)
  %cmp71 = icmp ugt i32 %nr.addr.0139, %sub65
  %or.cond120 = select i1 %tobool69.not, i1 %cmp71, i1 false
  br i1 %or.cond120, label %if.then73, label %land.lhs.true68.if.end84_crit_edge

land.lhs.true68.if.end84_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end84

if.then73:                                        ; preds = %land.lhs.true68
  %add74 = add i32 %sub65, %from.addr.1137
  %sub75 = add i32 %add74, -1
  %call76 = tail call fastcc i32 @mmc_do_erase(ptr noundef %card, i32 noundef %from.addr.1137, i32 noundef %sub75, i32 noundef %arg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool78.not = icmp eq i32 %call76, 0
  br i1 %tobool78.not, label %lor.lhs.false79, label %if.then73.cleanup_crit_edge

if.then73.cleanup_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false79:                                  ; preds = %if.then73
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %add74)
  %cmp80.not = icmp ugt i32 %sub, %add74
  br i1 %cmp80.not, label %lor.lhs.false79.if.end84_crit_edge, label %lor.lhs.false79.cleanup_crit_edge

lor.lhs.false79.cleanup_crit_edge:                ; preds = %lor.lhs.false79
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false79.if.end84_crit_edge:               ; preds = %lor.lhs.false79
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end84

if.end84:                                         ; preds = %lor.lhs.false79.if.end84_crit_edge, %land.lhs.true68.if.end84_crit_edge, %if.end61.if.end84_crit_edge
  %from.addr.2 = phi i32 [ %from.addr.1137, %if.end61.if.end84_crit_edge ], [ %add74, %lor.lhs.false79.if.end84_crit_edge ], [ %from.addr.1137, %land.lhs.true68.if.end84_crit_edge ]
  %call85 = tail call fastcc i32 @mmc_do_erase(ptr noundef %card, i32 noundef %from.addr.2, i32 noundef %sub, i32 noundef %arg)
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %lor.lhs.false79.cleanup_crit_edge, %if.then73.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.end27.i.cleanup_crit_edge, %if.then11.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then40.cleanup_crit_edge, %land.lhs.true30.cleanup_crit_edge, %land.lhs.true18.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call85, %if.end84 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -95, %land.lhs.true18.cleanup_crit_edge ], [ -95, %land.lhs.true30.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then40.cleanup_crit_edge ], [ 0, %if.end53.cleanup_crit_edge ], [ -22, %if.end57.cleanup_crit_edge ], [ 0, %lor.lhs.false79.cleanup_crit_edge ], [ %call76, %if.then73.cleanup_crit_edge ], [ -95, %if.end3.cleanup_crit_edge ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %if.then11.i.cleanup_crit_edge ], [ 0, %if.end27.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_do_erase(ptr noundef %card, i32 noundef %from, i32 noundef %to, i32 noundef %arg) unnamed_addr #0 align 64 {
entry:
  %mrq.i133 = alloca %struct.mmc_request, align 4
  %mrq.i122 = alloca %struct.mmc_request, align 4
  %mrq.i = alloca %struct.mmc_request, align 4
  %cmd = alloca %struct.mmc_command, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #18
  %0 = getelementptr inbounds i8, ptr %cmd, i32 32
  %1 = call ptr @memset(ptr %0, i32 0, i32 16)
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 8
  tail call void @mmc_retune_hold(ptr noundef %3) #18
  %erase_shift = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 10
  %4 = ptrtoint ptr %erase_shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %erase_shift, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %shr = lshr i32 %to, %5
  %shr3 = lshr i32 %from, %5
  %sub = sub nsw i32 %shr, %shr3
  br label %if.end15

if.else:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 4
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then5, label %if.else9

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %sub6 = sub i32 %to, %from
  br label %if.end15

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %erase_size = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 9
  %8 = ptrtoint ptr %erase_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %erase_size, align 4
  %div = udiv i32 %to, %9
  %div11 = udiv i32 %from, %9
  %sub12 = sub i32 %div, %div11
  br label %if.end15

if.end15:                                         ; preds = %if.else9, %if.then5, %if.then
  %qty.0.in = phi i32 [ %sub, %if.then ], [ %sub6, %if.then5 ], [ %sub12, %if.else9 ]
  %qty.0 = add i32 %qty.0.in, 1
  %state = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 5
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  %and = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  %shl = shl i32 %from, 9
  %shl18 = shl i32 %to, 9
  %to.addr.0 = select i1 %tobool16.not, i32 %shl18, i32 %to
  %from.addr.0 = select i1 %tobool16.not, i32 %shl, i32 %from
  %type20 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 4
  %12 = ptrtoint ptr %type20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp21 = icmp eq i32 %13, 1
  %storemerge = select i1 %cmp21, i32 32, i32 35
  %14 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %storemerge, ptr %cmd, align 4
  %arg26 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %15 = ptrtoint ptr %arg26 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %from.addr.0, ptr %arg26, align 4
  %flags = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 149, ptr %flags, align 4
  %17 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card, align 8
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %mrq.i) #18
  %19 = call ptr @memset(ptr %mrq.i, i32 0, i32 156)
  %claimed.i = getelementptr inbounds %struct.mmc_host, ptr %18, i32 0, i32 29
  %20 = ptrtoint ptr %claimed.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load.i = load i16, ptr %claimed.i, align 8
  %21 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.i = icmp eq i16 %21, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end15.mmc_wait_for_cmd.exit_crit_edge, !prof !316

if.end15.mmc_wait_for_cmd.exit_crit_edge:         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_wait_for_cmd.exit

do.end.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 626, i32 noundef 9, ptr noundef null) #18
  br label %mmc_wait_for_cmd.exit

mmc_wait_for_cmd.exit:                            ; preds = %do.end.i, %if.end15.mmc_wait_for_cmd.exit_crit_edge
  %resp.i = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  %22 = call ptr @memset(ptr %resp.i, i32 0, i32 16)
  %retries21.i = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 4
  %23 = ptrtoint ptr %retries21.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %retries21.i, align 4
  %cmd22.i = getelementptr inbounds %struct.mmc_request, ptr %mrq.i, i32 0, i32 1
  %24 = ptrtoint ptr %cmd22.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %cmd, ptr %cmd22.i, align 4
  %data.i = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 7
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %data.i, align 4
  call void @mmc_wait_for_req(ptr noundef %18, ptr noundef nonnull %mrq.i) #18
  %error.i = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %26 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %mrq.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool28.not = icmp eq i32 %27, 0
  br i1 %tobool28.not, label %if.end31, label %do.end

do.end:                                           ; preds = %mmc_wait_for_cmd.exit
  call void @__sanitizer_cov_trace_pc() #20
  %28 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %resp.i, align 4
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i32 noundef %27, i32 noundef %29) #23
  br label %out

if.end31:                                         ; preds = %mmc_wait_for_cmd.exit
  %30 = getelementptr inbounds i8, ptr %cmd, i32 8
  %31 = call ptr @memset(ptr %30, i32 0, i32 40)
  %32 = ptrtoint ptr %type20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %type20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp33 = icmp eq i32 %33, 1
  %. = select i1 %cmp33, i32 33, i32 36
  %34 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %., ptr %cmd, align 4
  %35 = ptrtoint ptr %arg26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %to.addr.0, ptr %arg26, align 4
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 149, ptr %flags, align 4
  %37 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %card, align 8
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %mrq.i122) #18
  %39 = call ptr @memset(ptr %mrq.i122, i32 0, i32 156)
  %claimed.i123 = getelementptr inbounds %struct.mmc_host, ptr %38, i32 0, i32 29
  %40 = ptrtoint ptr %claimed.i123 to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load.i124 = load i16, ptr %claimed.i123, align 8
  %41 = and i16 %bf.load.i124, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool.not.i125 = icmp eq i16 %41, 0
  br i1 %tobool.not.i125, label %do.end.i126, label %if.end31.mmc_wait_for_cmd.exit132_crit_edge, !prof !316

if.end31.mmc_wait_for_cmd.exit132_crit_edge:      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_wait_for_cmd.exit132

do.end.i126:                                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 626, i32 noundef 9, ptr noundef null) #18
  br label %mmc_wait_for_cmd.exit132

mmc_wait_for_cmd.exit132:                         ; preds = %do.end.i126, %if.end31.mmc_wait_for_cmd.exit132_crit_edge
  %42 = call ptr @memset(ptr %resp.i, i32 0, i32 16)
  %43 = ptrtoint ptr %retries21.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %retries21.i, align 4
  %cmd22.i129 = getelementptr inbounds %struct.mmc_request, ptr %mrq.i122, i32 0, i32 1
  %44 = ptrtoint ptr %cmd22.i129 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %cmd, ptr %cmd22.i129, align 4
  %45 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %data.i, align 4
  call void @mmc_wait_for_req(ptr noundef %38, ptr noundef nonnull %mrq.i122) #18
  %46 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %mrq.i122) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool43.not = icmp eq i32 %47, 0
  br i1 %tobool43.not, label %if.end52, label %do.end47

do.end47:                                         ; preds = %mmc_wait_for_cmd.exit132
  call void @__sanitizer_cov_trace_pc() #20
  %48 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %resp.i, align 4
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, i32 noundef %47, i32 noundef %49) #23
  br label %out

if.end52:                                         ; preds = %mmc_wait_for_cmd.exit132
  %50 = getelementptr inbounds i8, ptr %cmd, i32 8
  %51 = call ptr @memset(ptr %50, i32 0, i32 40)
  %52 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 38, ptr %cmd, align 4
  %53 = ptrtoint ptr %arg26 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %arg, ptr %arg26, align 4
  %call55 = call fastcc i32 @mmc_erase_timeout(ptr noundef %card, i32 noundef %arg, i32 noundef %qty.0)
  %54 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %card, align 8
  %call57 = call zeroext i1 @mmc_prepare_busy_cmd(ptr noundef %55, ptr noundef nonnull %cmd, i32 noundef %call55) #18
  %56 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %card, align 8
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %mrq.i133) #18
  %58 = call ptr @memset(ptr %mrq.i133, i32 0, i32 156)
  %claimed.i134 = getelementptr inbounds %struct.mmc_host, ptr %57, i32 0, i32 29
  %59 = ptrtoint ptr %claimed.i134 to i32
  call void @__asan_load2_noabort(i32 %59)
  %bf.load.i135 = load i16, ptr %claimed.i134, align 8
  %60 = and i16 %bf.load.i135, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool.not.i136 = icmp eq i16 %60, 0
  br i1 %tobool.not.i136, label %do.end.i137, label %if.end52.mmc_wait_for_cmd.exit143_crit_edge, !prof !316

if.end52.mmc_wait_for_cmd.exit143_crit_edge:      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_wait_for_cmd.exit143

do.end.i137:                                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 626, i32 noundef 9, ptr noundef null) #18
  br label %mmc_wait_for_cmd.exit143

mmc_wait_for_cmd.exit143:                         ; preds = %do.end.i137, %if.end52.mmc_wait_for_cmd.exit143_crit_edge
  %61 = call ptr @memset(ptr %resp.i, i32 0, i32 16)
  %62 = ptrtoint ptr %retries21.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %retries21.i, align 4
  %cmd22.i140 = getelementptr inbounds %struct.mmc_request, ptr %mrq.i133, i32 0, i32 1
  %63 = ptrtoint ptr %cmd22.i140 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %cmd, ptr %cmd22.i140, align 4
  %64 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %data.i, align 4
  call void @mmc_wait_for_req(ptr noundef %57, ptr noundef nonnull %mrq.i133) #18
  %65 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %mrq.i133) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool60.not = icmp eq i32 %66, 0
  br i1 %tobool60.not, label %if.end69, label %do.end64

do.end64:                                         ; preds = %mmc_wait_for_cmd.exit143
  call void @__sanitizer_cov_trace_pc() #20
  %67 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %resp.i, align 4
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, i32 noundef %66, i32 noundef %68) #23
  br label %out

if.end69:                                         ; preds = %mmc_wait_for_cmd.exit143
  %69 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %card, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %70, i32 0, i32 16
  %71 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %caps, align 32
  %and71 = and i32 %72, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end74, label %if.end69.out_crit_edge

if.end69.out_crit_edge:                           ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end74:                                         ; preds = %if.end69
  %and77 = and i32 %72, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  %call57.not = xor i1 %call57, true
  %brmerge = select i1 %tobool78.not, i1 true, i1 %call57.not
  br i1 %brmerge, label %if.end81, label %if.end74.out_crit_edge

if.end74.out_crit_edge:                           ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end81:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #20
  %call82 = call i32 @mmc_poll_for_busy(ptr noundef %card, i32 noundef %call55, i1 noundef zeroext false, i32 noundef 1) #18
  br label %out

out:                                              ; preds = %if.end81, %if.end74.out_crit_edge, %if.end69.out_crit_edge, %do.end64, %do.end47, %do.end
  %err.0 = phi i32 [ -5, %do.end ], [ -5, %do.end47 ], [ -5, %do.end64 ], [ 0, %if.end69.out_crit_edge ], [ %call82, %if.end81 ], [ 0, %if.end74.out_crit_edge ]
  %73 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %card, align 8
  call void @mmc_retune_release(ptr noundef %74) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #18
  ret i32 %err.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mmc_can_erase(ptr nocapture noundef readonly %card) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdclass = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 2
  %0 = ptrtoint ptr %cmdclass to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cmdclass, align 2
  %2 = and i16 %1, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %erase_size = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 9
  %3 = ptrtoint ptr %erase_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %erase_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mmc_can_trim(ptr nocapture noundef readonly %card) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sec_feature_support = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 2
  %0 = ptrtoint ptr %sec_feature_support to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sec_feature_support, align 2
  %2 = and i8 %1, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %quirks = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 6
  %3 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %quirks, align 8
  %and1 = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mmc_can_discard(ptr nocapture noundef readonly %card) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %feature_support = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 76
  %0 = ptrtoint ptr %feature_support to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %feature_support, align 4
  %and = and i32 %1, 1
  ret i32 %and
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mmc_can_sanitize(ptr nocapture noundef readonly %card) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sec_feature_support.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 2
  %0 = ptrtoint ptr %sec_feature_support.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sec_feature_support.i, align 2
  %2 = and i8 %1, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %entry.land.lhs.true_crit_edge, label %land.lhs.true.i

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true

land.lhs.true.i:                                  ; preds = %entry
  %quirks.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 6
  %3 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %quirks.i, align 8
  %and1.i = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.land.lhs.true_crit_edge

land.lhs.true.i.land.lhs.true_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %land.lhs.true.i.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %cmdclass.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 2
  %5 = ptrtoint ptr %cmdclass.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %cmdclass.i, align 2
  %7 = and i16 %6, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i8 = icmp eq i16 %7, 0
  br i1 %tobool.not.i8, label %land.lhs.true.return_crit_edge, label %land.lhs.true.i9

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

land.lhs.true.i9:                                 ; preds = %land.lhs.true
  %erase_size.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 9
  %8 = ptrtoint ptr %erase_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %erase_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not.i = icmp eq i32 %9, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i9.return_crit_edge, label %land.lhs.true.i9.if.end_crit_edge

land.lhs.true.i9.if.end_crit_edge:                ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true.i9.return_crit_edge:                ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %land.lhs.true.i9.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge
  %10 = lshr i8 %1, 6
  %.lobit = and i8 %10, 1
  %11 = zext i8 %.lobit to i32
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.i9.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ %11, %if.end ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %land.lhs.true.i9.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mmc_can_secure_erase_trim(ptr nocapture noundef readonly %card) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sec_feature_support = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 2
  %0 = ptrtoint ptr %sec_feature_support to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sec_feature_support, align 2
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %quirks = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 6
  %3 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %quirks, align 8
  %and1 = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mmc_erase_group_aligned(ptr nocapture noundef readonly %card, i32 noundef %from, i32 noundef %nr) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %erase_size = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %erase_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %erase_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %entry
  %rem = urem i32 %from, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool2.not = icmp eq i32 %rem, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %rem4 = urem i32 %nr, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem4)
  %tobool5.not = icmp eq i32 %rem4, 0
  %spec.select = zext i1 %tobool5.not to i32
  br label %return

return:                                           ; preds = %lor.lhs.false, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_calc_max_discard(ptr nocapture noundef %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  %type = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %erase_group_def = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 1
  %4 = ptrtoint ptr %erase_group_def to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %erase_group_def, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %pref_erase = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 11
  %7 = ptrtoint ptr %pref_erase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pref_erase, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call = tail call fastcc i32 @mmc_do_calc_max_discard(ptr noundef %card, i32 noundef 0)
  %sec_feature_support.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 2
  %9 = ptrtoint ptr %sec_feature_support.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sec_feature_support.i, align 2
  %11 = and i8 %10, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.end.if.else_crit_edge, label %land.lhs.true.i

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

land.lhs.true.i:                                  ; preds = %if.end
  %quirks.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 6
  %12 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %quirks.i, align 8
  %and1.i = and i32 %13, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.then4, label %land.lhs.true.i.if.else_crit_edge

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

if.then4:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  %call5 = tail call fastcc i32 @mmc_do_calc_max_discard(ptr noundef %card, i32 noundef 1)
  %14 = add i32 %call, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %call5)
  %.not = icmp ult i32 %14, %call5
  %spec.select42 = select i1 %.not, i32 %call, i32 %call5
  br label %do.body

if.else:                                          ; preds = %land.lhs.true.i.if.else_crit_edge, %if.end.if.else_crit_edge
  %erase_size = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 9
  %15 = ptrtoint ptr %erase_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %erase_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %16)
  %cmp12 = icmp ult i32 %call, %16
  %spec.store.select = select i1 %cmp12, i32 0, i32 %call
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then4
  %max_discard.0 = phi i32 [ %spec.store.select, %if.else ], [ %spec.select42, %if.then4 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_calc_max_discard.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_calc_max_discard, %if.then21)) #18
          to label %cleanup [label %if.then21], !srcloc !319

if.then21:                                        ; preds = %do.body
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i44 = icmp eq ptr %18, null
  br i1 %tobool.not.i44, label %if.end.i45, label %if.then21.dev_name.exit_crit_edge

if.then21.dev_name.exit_crit_edge:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit

if.end.i45:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i45, %if.then21.dev_name.exit_crit_edge
  %retval.0.i46 = phi ptr [ %20, %if.end.i45 ], [ %18, %if.then21.dev_name.exit_crit_edge ]
  %max_busy_timeout = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 26
  %21 = ptrtoint ptr %max_busy_timeout to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_busy_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool23.not = icmp eq i32 %22, 0
  %spec.select = select i1 %tobool23.not, i32 60000, i32 %22
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_calc_max_discard.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.40, ptr noundef %retval.0.i46, i32 noundef %max_discard.0, i32 noundef %spec.select) #18
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %do.body, %if.then
  %retval.0 = phi i32 [ %8, %if.then ], [ %max_discard.0, %dev_name.exit ], [ %max_discard.0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_do_calc_max_discard(ptr nocapture noundef %card, i32 noundef %arg) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  %max_busy_timeout2 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %max_busy_timeout2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_busy_timeout2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %spec.select = select i1 %tobool.not, i32 60000, i32 %3
  %erase_shift = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 10
  %4 = ptrtoint ptr %erase_shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %erase_shift, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %shr = lshr i32 -1, %5
  %pref_erase = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 11
  %6 = ptrtoint ptr %pref_erase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pref_erase, align 4
  %shr7 = lshr i32 %7, %5
  br label %if.end14

if.else:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 4
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %pref_erase9 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 11
  %10 = ptrtoint ptr %pref_erase9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pref_erase9, align 4
  br label %if.end14

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %erase_size = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 9
  %12 = ptrtoint ptr %erase_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %erase_size, align 4
  %div = udiv i32 -1, %13
  %pref_erase11 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 11
  %14 = ptrtoint ptr %pref_erase11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pref_erase11, align 4
  %div13 = udiv i32 %15, %13
  br label %if.end14

if.end14:                                         ; preds = %if.else10, %if.then8, %if.then
  %max_qty.0 = phi i32 [ %shr, %if.then ], [ -1, %if.then8 ], [ %div, %if.else10 ]
  %min_qty.0 = phi i32 [ %shr7, %if.then ], [ %11, %if.then8 ], [ %div13, %if.else10 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_qty.0)
  %cmp16.not100 = icmp eq i32 %max_qty.0, 0
  %sub102 = add i32 %max_qty.0, -1
  br label %do.body

do.body:                                          ; preds = %for.end.do.body_crit_edge, %if.end14
  %qty.0 = phi i32 [ 0, %if.end14 ], [ %add27, %for.end.do.body_crit_edge ]
  %last_timeout.0 = phi i32 [ 0, %if.end14 ], [ %last_timeout.1.lcssa, %for.end.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub102, i32 %qty.0)
  %cmp17.not103 = icmp ult i32 %sub102, %qty.0
  %or.cond97104 = select i1 %cmp16.not100, i1 true, i1 %cmp17.not103
  br i1 %or.cond97104, label %do.body.do.end_crit_edge, label %for.body.preheader

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

for.body.preheader:                               ; preds = %do.body
  %add116 = add i32 %qty.0, 1
  %call117 = tail call fastcc i32 @mmc_erase_timeout(ptr noundef %card, i32 noundef %arg, i32 noundef %add116)
  call void @__sanitizer_cov_trace_cmp4(i32 %add116, i32 %min_qty.0)
  %cmp19118 = icmp ugt i32 %add116, %min_qty.0
  call void @__sanitizer_cov_trace_cmp4(i32 %call117, i32 %spec.select)
  %cmp21119 = icmp ugt i32 %call117, %spec.select
  %or.cond98120 = select i1 %cmp19118, i1 %cmp21119, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %call117, i32 %last_timeout.0)
  %cmp24121 = icmp ult i32 %call117, %last_timeout.0
  %or.cond99122 = select i1 %or.cond98120, i1 true, i1 %cmp24121
  br i1 %or.cond99122, label %for.body.preheader.for.end_crit_edge, label %for.body.preheader.for.cond_crit_edge

for.body.preheader.for.cond_crit_edge:            ; preds = %for.body.preheader
  br label %for.cond

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.body.preheader.for.cond_crit_edge
  %call124 = phi i32 [ %call, %for.body.for.cond_crit_edge ], [ %call117, %for.body.preheader.for.cond_crit_edge ]
  %x.0105123 = phi i32 [ %shl, %for.body.for.cond_crit_edge ], [ 1, %for.body.preheader.for.cond_crit_edge ]
  %shl = shl i32 %x.0105123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl)
  %tobool15.not = icmp eq i32 %shl, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %max_qty.0, i32 %shl)
  %cmp16.not = icmp ult i32 %max_qty.0, %shl
  %or.cond = select i1 %tobool15.not, i1 true, i1 %cmp16.not
  %sub = sub i32 %max_qty.0, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %qty.0)
  %cmp17.not = icmp ult i32 %sub, %qty.0
  %or.cond97 = select i1 %or.cond, i1 true, i1 %cmp17.not
  br i1 %or.cond97, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.cond
  %add = add i32 %shl, %qty.0
  %call = tail call fastcc i32 @mmc_erase_timeout(ptr noundef %card, i32 noundef %arg, i32 noundef %add)
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %min_qty.0)
  %cmp19 = icmp ugt i32 %add, %min_qty.0
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %spec.select)
  %cmp21 = icmp ugt i32 %call, %spec.select
  %or.cond98 = select i1 %cmp19, i1 %cmp21, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %call124)
  %cmp24 = icmp ult i32 %call, %call124
  %or.cond99 = select i1 %or.cond98, i1 true, i1 %cmp24
  br i1 %or.cond99, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %for.body.preheader.for.end_crit_edge
  %y.0.lcssa = phi i32 [ 0, %for.body.preheader.for.end_crit_edge ], [ %x.0105123, %for.cond.for.end_crit_edge ], [ %x.0105123, %for.body.for.end_crit_edge ]
  %last_timeout.1.lcssa = phi i32 [ %last_timeout.0, %for.body.preheader.for.end_crit_edge ], [ %call124, %for.cond.for.end_crit_edge ], [ %call124, %for.body.for.end_crit_edge ]
  %add27 = add i32 %y.0.lcssa, %qty.0
  %tobool28.not = icmp eq i32 %y.0.lcssa, 0
  br i1 %tobool28.not, label %for.end.do.end_crit_edge, label %for.end.do.body_crit_edge

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %do.body.do.end_crit_edge
  %add27115 = phi i32 [ %add27, %for.end.do.end_crit_edge ], [ %qty.0, %do.body.do.end_crit_edge ]
  %16 = zext i32 %add27115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %add27115, label %if.else34 [
    i32 0, label %do.end.cleanup_crit_edge
    i32 1, label %if.then33
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then33:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %eg_boundary = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 12
  %17 = ptrtoint ptr %eg_boundary to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %eg_boundary, align 8
  br label %if.end35

if.else34:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %dec = add i32 %add27115, -1
  br label %if.end35

if.end35:                                         ; preds = %if.else34, %if.then33
  %qty.1 = phi i32 [ 1, %if.then33 ], [ %dec, %if.else34 ]
  br i1 %tobool4.not, label %if.else41, label %if.then38

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #20
  %shl40 = shl i32 %qty.1, %5
  br label %cleanup

if.else41:                                        ; preds = %if.end35
  %type42 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 4
  %18 = ptrtoint ptr %type42 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type42, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp43 = icmp eq i32 %19, 1
  br i1 %cmp43, label %if.then44, label %if.else46

if.then44:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #20
  %add45 = add nuw i32 %qty.1, 1
  br label %cleanup

if.else46:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #20
  %erase_size47 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 9
  %20 = ptrtoint ptr %erase_size47 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %erase_size47, align 4
  %mul = mul i32 %21, %qty.1
  br label %cleanup

cleanup:                                          ; preds = %if.else46, %if.then44, %if.then38, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %add27115, %do.end.cleanup_crit_edge ], [ %shl40, %if.then38 ], [ %add45, %if.then44 ], [ %mul, %if.else46 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mmc_card_is_blockaddr(ptr noundef readonly %card) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %card, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %state = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %phi.cmp = icmp ne i32 %and, 0
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i1 [ %phi.cmp, %cond.true ], [ false, %entry.cond.end_crit_edge ]
  ret i1 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_set_blocklen(ptr nocapture noundef readonly %card, i32 noundef %blocklen) #0 align 64 {
entry:
  %mrq.i = alloca %struct.mmc_request, align 4
  %cmd = alloca %struct.mmc_command, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #18
  %0 = getelementptr inbounds i8, ptr %cmd, i32 32
  %1 = call ptr @memset(ptr %0, i32 0, i32 16)
  %state = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 8
  %timing.i = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 28, i32 7
  %6 = ptrtoint ptr %timing.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %timing.i, align 4
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.119)
  switch i8 %7, label %lor.lhs.false3 [
    i8 8, label %lor.lhs.false.cleanup_crit_edge
    i8 10, label %lor.lhs.false.cleanup_crit_edge12
  ]

lor.lhs.false.cleanup_crit_edge12:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %enhanced_strobe.i = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 28, i32 10
  %9 = ptrtoint ptr %enhanced_strobe.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enhanced_strobe.i, align 1, !range !318
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.i.not = icmp eq i8 %10, 0
  br i1 %tobool.i.not, label %if.end, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16, ptr %cmd, align 4
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %12 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %blocklen, ptr %arg, align 4
  %flags = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 149, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %mrq.i) #18
  %14 = call ptr @memset(ptr %mrq.i, i32 0, i32 156)
  %claimed.i = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 29
  %15 = ptrtoint ptr %claimed.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i = load i16, ptr %claimed.i, align 8
  %16 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not.i = icmp eq i16 %16, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.mmc_wait_for_cmd.exit_crit_edge, !prof !316

if.end.mmc_wait_for_cmd.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_wait_for_cmd.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 626, i32 noundef 9, ptr noundef null) #18
  br label %mmc_wait_for_cmd.exit

mmc_wait_for_cmd.exit:                            ; preds = %do.end.i, %if.end.mmc_wait_for_cmd.exit_crit_edge
  %resp.i = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  %17 = call ptr @memset(ptr %resp.i, i32 0, i32 16)
  %retries21.i = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 4
  %18 = ptrtoint ptr %retries21.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5, ptr %retries21.i, align 4
  %cmd22.i = getelementptr inbounds %struct.mmc_request, ptr %mrq.i, i32 0, i32 1
  %19 = ptrtoint ptr %cmd22.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %cmd, ptr %cmd22.i, align 4
  %data.i = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 7
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %data.i, align 4
  call void @mmc_wait_for_req(ptr noundef %5, ptr noundef nonnull %mrq.i) #18
  %error.i = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %21 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %mrq.i) #18
  br label %cleanup

cleanup:                                          ; preds = %mmc_wait_for_cmd.exit, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %22, %mmc_wait_for_cmd.exit ], [ 0, %lor.lhs.false3.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge12 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_hw_reset(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_ops = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 45
  %0 = ptrtoint ptr %bus_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_ops, align 4
  %hw_reset = getelementptr inbounds %struct.mmc_bus_ops, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %hw_reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_reset, align 4
  %call = tail call i32 %3(ptr noundef %host) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %6 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %do.end.dev_name.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %retval.0.i, i32 noundef %call) #23
  br label %if.end

if.end:                                           ; preds = %dev_name.exit, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_sw_reset(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_ops = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 45
  %0 = ptrtoint ptr %bus_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_ops, align 4
  %sw_reset = getelementptr inbounds %struct.mmc_bus_ops, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %sw_reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sw_reset, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 %3(ptr noundef %host) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end:                                           ; preds = %if.end
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %6 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %do.end.dev_name.exit_crit_edge ]
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %retval.0.i, i32 noundef %call) #23
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call, %dev_name.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_mmc_detect_card_removed(ptr noundef %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %bus_ops = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 45
  %4 = ptrtoint ptr %bus_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus_ops, align 4
  %alive = getelementptr inbounds %struct.mmc_bus_ops, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %alive to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %alive, align 4
  %call = tail call i32 %7(ptr noundef %host) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %if.then24.critedge

land.lhs.true6:                                   ; preds = %if.end
  %ops = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 3
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %get_cd = getelementptr inbounds %struct.mmc_host_ops, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %get_cd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_cd, align 4
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %land.lhs.true6.cleanup_crit_edge, label %land.lhs.true8

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %call11 = tail call i32 %11(ptr noundef %host) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %land.lhs.true8.cleanup_crit_edge

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then13:                                        ; preds = %land.lhs.true8
  %caps.i.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %12 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %caps.i.i, align 32
  %and.i.i = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then.i.i, label %if.then13.mmc_detect_change.exit_crit_edge

if.then13.mmc_detect_change.exit_crit_edge:       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_detect_change.exit

if.then.i.i:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  %ws.i.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 12
  %14 = ptrtoint ptr %ws.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ws.i.i, align 16
  tail call void @pm_wakeup_ws_event(ptr noundef %15, i32 noundef 5000, i1 noundef zeroext false) #18
  br label %mmc_detect_change.exit

mmc_detect_change.exit:                           ; preds = %if.then.i.i, %if.then13.mmc_detect_change.exit_crit_edge
  %detect_change.i.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 43
  %16 = ptrtoint ptr %detect_change.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %detect_change.i.i, align 4
  %detect.i.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_wq to i32))
  %17 = load ptr, ptr @system_freezable_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %detect.i.i, i32 noundef 20) #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_mmc_detect_card_removed.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_mmc_detect_card_removed, %if.then19)) #18
          to label %cleanup [label %if.then19], !srcloc !319

if.then19:                                        ; preds = %mmc_detect_change.exit
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then19.dev_name.exit_crit_edge

if.then19.dev_name.exit_crit_edge:                ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %20 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then19.dev_name.exit_crit_edge
  %retval.0.i66 = phi ptr [ %21, %if.end.i ], [ %19, %if.then19.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_mmc_detect_card_removed.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.46, ptr noundef %retval.0.i66) #18
  br label %cleanup

if.then24.critedge:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %22 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card, align 4
  %state26 = getelementptr inbounds %struct.mmc_card, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %state26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state26, align 4
  %or = or i32 %25, 16
  store i32 %or, ptr %state26, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_mmc_detect_card_removed.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_mmc_detect_card_removed, %if.then39)) #18
          to label %cleanup [label %if.then39], !srcloc !319

if.then39:                                        ; preds = %if.then24.critedge
  %init_name.i67 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %init_name.i67 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i67, align 8
  %tobool.not.i68 = icmp eq ptr %27, null
  br i1 %tobool.not.i68, label %if.end.i69, label %if.then39.dev_name.exit71_crit_edge

if.then39.dev_name.exit71_crit_edge:              ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit71

if.end.i69:                                       ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev40 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %28 = ptrtoint ptr %class_dev40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %class_dev40, align 4
  br label %dev_name.exit71

dev_name.exit71:                                  ; preds = %if.end.i69, %if.then39.dev_name.exit71_crit_edge
  %retval.0.i70 = phi ptr [ %29, %if.end.i69 ], [ %27, %if.then39.dev_name.exit71_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_mmc_detect_card_removed.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.47, ptr noundef %retval.0.i70) #18
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit71, %if.then24.critedge, %dev_name.exit, %mmc_detect_change.exit, %land.lhs.true8.cleanup_crit_edge, %land.lhs.true6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true6.cleanup_crit_edge ], [ 0, %land.lhs.true8.cleanup_crit_edge ], [ 0, %dev_name.exit ], [ %call, %dev_name.exit71 ], [ 0, %mmc_detect_change.exit ], [ %call, %if.then24.critedge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_detect_card_removed(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %claimed = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 29
  %2 = ptrtoint ptr %claimed to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %claimed, align 8
  %3 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !316

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2120, i32 noundef 9, ptr noundef null) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool22.not = icmp eq ptr %1, null
  br i1 %tobool22.not, label %if.end.cleanup_crit_edge, label %if.end24

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end24:                                         ; preds = %if.end
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %4 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps.i, align 32
  %6 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool25.not.not = icmp eq i32 %6, 0
  br i1 %tobool25.not.not, label %land.rhs, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.rhs:                                         ; preds = %if.end24
  %state = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  %and = and i32 %8, 16
  %and.lobit = lshr exact i32 %and, 4
  %detect_change = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 43
  %9 = ptrtoint ptr %detect_change to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %detect_change, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool30.not = icmp eq i32 %10, 0
  %and31 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %or.cond = select i1 %tobool30.not, i1 %tobool32.not, i1 false
  br i1 %or.cond, label %land.rhs.cleanup_crit_edge, label %if.end34

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end34:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  %11 = ptrtoint ptr %detect_change to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %detect_change, align 4
  br i1 %tobool29.not, label %if.then37, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then37:                                        ; preds = %if.end34
  %call38 = tail call i32 @_mmc_detect_card_removed(ptr noundef %host)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then37.cleanup_crit_edge, label %land.lhs.true40

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true40:                                  ; preds = %if.then37
  %12 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %caps.i, align 32
  %and42 = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %land.lhs.true40.cleanup_crit_edge, label %if.then44

land.lhs.true40.cleanup_crit_edge:                ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then44:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #20
  %detect = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 42
  %call45 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %detect) #18
  %14 = ptrtoint ptr %detect_change to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %detect_change, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_wq to i32))
  %15 = load ptr, ptr @system_freezable_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %detect, i32 noundef 0) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %land.lhs.true40.cleanup_crit_edge, %if.then37.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ], [ %and.lobit, %if.end34.cleanup_crit_edge ], [ %call38, %if.then44 ], [ %call38, %land.lhs.true40.cleanup_crit_edge ], [ 0, %if.then37.cleanup_crit_edge ], [ %and.lobit, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mmc_card_alternative_gpt_sector(ptr noundef readonly %card, ptr nocapture noundef writeonly %gpt_sector) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps2, align 4
  %and = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %ext_csd = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21
  %4 = ptrtoint ptr %ext_csd to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ext_csd, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp = icmp ult i8 %5, 3
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %type = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 4
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2 = icmp ne i32 %7, 0
  %tobool.not.i = icmp eq ptr %card, null
  %or.cond = or i1 %tobool.not.i, %cmp2
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %mmc_card_is_blockaddr.exit

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

mmc_card_is_blockaddr.exit:                       ; preds = %lor.lhs.false
  %state.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 5
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 4
  %and.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %phi.cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %phi.cmp.i.not, label %mmc_card_is_blockaddr.exit.cleanup_crit_edge, label %lor.lhs.false5

mmc_card_is_blockaddr.exit.cleanup_crit_edge:     ; preds = %mmc_card_is_blockaddr.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false5:                                   ; preds = %mmc_card_is_blockaddr.exit
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %caps.i, align 32
  %12 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not.not = icmp eq i32 %12, 0
  br i1 %tobool8.not.not, label %lor.lhs.false5.cleanup_crit_edge, label %if.end10

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #20
  %raw_boot_mult = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 61
  %13 = ptrtoint ptr %raw_boot_mult to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %raw_boot_mult, align 1
  %conv12 = zext i8 %14 to i32
  %mul13.neg = mul nsw i32 %conv12, -512
  %sectors = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 19
  %15 = ptrtoint ptr %sectors to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sectors, align 8
  %sub = add i32 %16, -1
  %sub15 = add i32 %sub, %mul13.neg
  %conv16 = zext i32 %sub15 to i64
  %17 = ptrtoint ptr %gpt_sector to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv16, ptr %gpt_sector, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %lor.lhs.false5.cleanup_crit_edge, %mmc_card_is_blockaddr.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -95, %entry.cleanup_crit_edge ], [ -2, %lor.lhs.false5.cleanup_crit_edge ], [ -2, %mmc_card_is_blockaddr.exit.cleanup_crit_edge ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_rescan(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1240
  %rescan_disable = getelementptr i8, ptr %work, i32 -140
  %0 = ptrtoint ptr %rescan_disable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rescan_disable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup60_crit_edge

entry.cleanup60_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup60

if.end:                                           ; preds = %entry
  %caps.i = getelementptr i8, ptr %work, i32 -248
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps.i, align 32
  %4 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not.not = icmp eq i32 %4, 0
  br i1 %tobool1.not.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %rescan_entered = getelementptr i8, ptr %work, i32 -136
  %5 = ptrtoint ptr %rescan_entered to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rescan_entered, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end4_crit_edge, label %land.lhs.true.cleanup60_crit_edge

land.lhs.true.cleanup60_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup60

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %rescan_entered5 = getelementptr i8, ptr %work, i32 -136
  %7 = ptrtoint ptr %rescan_entered5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %rescan_entered5, align 16
  %trigger_card_event = getelementptr i8, ptr %work, i32 -72
  %8 = ptrtoint ptr %trigger_card_event to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %trigger_card_event, align 16, !range !318
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %if.end4.if.end13_crit_edge, label %land.lhs.true7

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13

land.lhs.true7:                                   ; preds = %if.end4
  %ops = getelementptr i8, ptr %work, i32 -300
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %card_event = getelementptr inbounds %struct.mmc_host_ops, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %card_event to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card_event, align 4
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %land.lhs.true7.if.end13_crit_edge, label %if.then9

land.lhs.true7.if.end13_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = tail call i32 @__mmc_claim_host(ptr noundef %add.ptr, ptr noundef null, ptr noundef null) #18
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %card_event11 = getelementptr inbounds %struct.mmc_host_ops, ptr %15, i32 0, i32 21
  %16 = ptrtoint ptr %card_event11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card_event11, align 4
  tail call void %17(ptr noundef %add.ptr) #18
  tail call void @mmc_release_host(ptr noundef %add.ptr)
  %18 = ptrtoint ptr %trigger_card_event to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %trigger_card_event, align 16
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %land.lhs.true7.if.end13_crit_edge, %if.end4.if.end13_crit_edge
  %bus_ops = getelementptr i8, ptr %work, i32 116
  %19 = ptrtoint ptr %bus_ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus_ops, align 4
  %tobool14.not = icmp eq ptr %20, null
  br i1 %tobool14.not, label %if.end17.thread, label %if.end17

if.end17.thread:                                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  %detect_change111 = getelementptr i8, ptr %work, i32 100
  %21 = ptrtoint ptr %detect_change111 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %detect_change111, align 4
  br label %if.end20

if.end17:                                         ; preds = %if.end13
  %detect = getelementptr inbounds %struct.mmc_bus_ops, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %detect to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %detect, align 4
  tail call void %23(ptr noundef %add.ptr) #18
  %24 = ptrtoint ptr %bus_ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load ptr, ptr %bus_ops, align 4
  %detect_change = getelementptr i8, ptr %work, i32 100
  %25 = ptrtoint ptr %detect_change to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %detect_change, align 4
  %cmp.not = icmp eq ptr %.pr, null
  br i1 %cmp.not, label %if.end17.if.end20_crit_edge, label %if.end17.out_crit_edge

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

if.end20:                                         ; preds = %if.end17.if.end20_crit_edge, %if.end17.thread
  %call.i107 = tail call i32 @__mmc_claim_host(ptr noundef %add.ptr, ptr noundef null, ptr noundef null) #18
  %26 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %caps.i, align 32
  %28 = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool22.not.not = icmp eq i32 %28, 0
  br i1 %tobool22.not.not, label %land.lhs.true23, label %if.end20.if.end32_crit_edge

if.end20.if.end32_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32

land.lhs.true23:                                  ; preds = %if.end20
  %ops24 = getelementptr i8, ptr %work, i32 -300
  %29 = ptrtoint ptr %ops24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops24, align 4
  %get_cd = getelementptr inbounds %struct.mmc_host_ops, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %get_cd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %get_cd, align 4
  %tobool25.not = icmp eq ptr %32, null
  br i1 %tobool25.not, label %land.lhs.true23.if.end32_crit_edge, label %land.lhs.true26

land.lhs.true23.if.end32_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32

land.lhs.true26:                                  ; preds = %land.lhs.true23
  %call29 = tail call i32 %32(ptr noundef %add.ptr) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %land.lhs.true26.if.end32_crit_edge

land.lhs.true26.if.end32_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32

if.then31:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @mmc_power_off(ptr noundef %add.ptr)
  br label %out.sink.split

if.end32:                                         ; preds = %land.lhs.true26.if.end32_crit_edge, %land.lhs.true23.if.end32_crit_edge, %if.end20.if.end32_crit_edge
  %timing.i = getelementptr i8, ptr %work, i32 -148
  %33 = ptrtoint ptr %timing.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %timing.i, align 4
  %35 = add i8 %34, -11
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %36 = icmp ult i8 %35, 2
  br i1 %36, label %if.end32.out.sink.split_crit_edge, label %for.cond.preheader

if.end32.out.sink.split_crit_edge:                ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.sink.split

for.cond.preheader:                               ; preds = %if.end32
  %f_max = getelementptr i8, ptr %work, i32 -288
  %f_min = getelementptr i8, ptr %work, i32 -292
  %37 = ptrtoint ptr %f_max to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %f_max, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %38)
  %cmp37 = icmp ult i32 %38, 400000
  br i1 %cmp37, label %for.cond.preheader.for.inc_crit_edge, label %if.end43

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end43:                                         ; preds = %for.cond.preheader
  %39 = ptrtoint ptr %f_min to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %f_min, align 4
  %41 = tail call i32 @llvm.umax.i32(i32 %40, i32 400000)
  %call46 = tail call fastcc i32 @mmc_rescan_try_freq(ptr noundef %add.ptr, i32 noundef %41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end43.out.sink.split_crit_edge, label %cleanup

if.end43.out.sink.split_crit_edge:                ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.sink.split

cleanup:                                          ; preds = %if.end43
  %42 = ptrtoint ptr %f_min to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %f_min, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %43)
  %cmp52.not.not = icmp ult i32 %43, 400000
  br i1 %cmp52.not.not, label %for.incthread-pre-split, label %cleanup.out.sink.split_crit_edge

cleanup.out.sink.split_crit_edge:                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.sink.split

for.incthread-pre-split:                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  %44 = ptrtoint ptr %f_max to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr123 = load i32, ptr %f_max, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.incthread-pre-split, %for.cond.preheader.for.inc_crit_edge
  %45 = phi i32 [ %.pr123, %for.incthread-pre-split ], [ %38, %for.cond.preheader.for.inc_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000, i32 %45)
  %cmp37.1 = icmp ult i32 %45, 300000
  br i1 %cmp37.1, label %for.inc.for.inc.1_crit_edge, label %if.end43.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1

if.end43.1:                                       ; preds = %for.inc
  %46 = ptrtoint ptr %f_min to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %f_min, align 4
  %48 = tail call i32 @llvm.umax.i32(i32 %47, i32 300000)
  %call46.1 = tail call fastcc i32 @mmc_rescan_try_freq(ptr noundef %add.ptr, i32 noundef %48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.1)
  %tobool47.not.1 = icmp eq i32 %call46.1, 0
  br i1 %tobool47.not.1, label %if.end43.1.out.sink.split_crit_edge, label %cleanup.1

if.end43.1.out.sink.split_crit_edge:              ; preds = %if.end43.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.sink.split

cleanup.1:                                        ; preds = %if.end43.1
  %49 = ptrtoint ptr %f_min to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %f_min, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000, i32 %50)
  %cmp52.not.not.1 = icmp ult i32 %50, 300000
  br i1 %cmp52.not.not.1, label %cleanup.1.for.inc.1_crit_edge, label %cleanup.1.out.sink.split_crit_edge

cleanup.1.out.sink.split_crit_edge:               ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.sink.split

cleanup.1.for.inc.1_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1

for.inc.1:                                        ; preds = %cleanup.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %51 = ptrtoint ptr %f_max to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %f_max, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %52)
  %cmp37.2 = icmp ult i32 %52, 200000
  br i1 %cmp37.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end43.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.2

if.end43.2:                                       ; preds = %for.inc.1
  %53 = ptrtoint ptr %f_min to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %f_min, align 4
  %55 = tail call i32 @llvm.umax.i32(i32 %54, i32 200000)
  %call46.2 = tail call fastcc i32 @mmc_rescan_try_freq(ptr noundef %add.ptr, i32 noundef %55)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.2)
  %tobool47.not.2 = icmp eq i32 %call46.2, 0
  br i1 %tobool47.not.2, label %if.end43.2.out.sink.split_crit_edge, label %cleanup.2

if.end43.2.out.sink.split_crit_edge:              ; preds = %if.end43.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.sink.split

cleanup.2:                                        ; preds = %if.end43.2
  %56 = ptrtoint ptr %f_min to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %f_min, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %57)
  %cmp52.not.not.2 = icmp ult i32 %57, 200000
  br i1 %cmp52.not.not.2, label %for.inc.2thread-pre-split, label %cleanup.2.out.sink.split_crit_edge

cleanup.2.out.sink.split_crit_edge:               ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.sink.split

for.inc.2thread-pre-split:                        ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #20
  %58 = ptrtoint ptr %f_max to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pr124 = load i32, ptr %f_max, align 8
  br label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.2thread-pre-split, %for.inc.1.for.inc.2_crit_edge
  %59 = phi i32 [ %.pr124, %for.inc.2thread-pre-split ], [ %52, %for.inc.1.for.inc.2_crit_edge ]
  %60 = call i32 @llvm.umin.i32(i32 %59, i32 100000)
  %61 = ptrtoint ptr %f_min to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %f_min, align 4
  %63 = tail call i32 @llvm.umax.i32(i32 %60, i32 %62)
  %call46.3 = tail call fastcc i32 @mmc_rescan_try_freq(ptr noundef %add.ptr, i32 noundef %63)
  br label %out.sink.split

out.sink.split:                                   ; preds = %for.inc.2, %cleanup.2.out.sink.split_crit_edge, %if.end43.2.out.sink.split_crit_edge, %cleanup.1.out.sink.split_crit_edge, %if.end43.1.out.sink.split_crit_edge, %cleanup.out.sink.split_crit_edge, %if.end43.out.sink.split_crit_edge, %if.end32.out.sink.split_crit_edge, %if.then31
  tail call void @mmc_release_host(ptr noundef %add.ptr)
  br label %out

out:                                              ; preds = %out.sink.split, %if.end17.out_crit_edge
  %64 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %caps.i, align 32
  %and = and i32 %65, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool55.not = icmp eq i32 %and, 0
  br i1 %tobool55.not, label %out.cleanup60_crit_edge, label %if.then56

out.cleanup60_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup60

if.then56:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_wq to i32))
  %66 = load ptr, ptr @system_freezable_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %66, ptr noundef %work, i32 noundef 100) #18
  br label %cleanup60

cleanup60:                                        ; preds = %if.then56, %out.cleanup60_crit_edge, %land.lhs.true.cleanup60_crit_edge, %entry.cleanup60_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_rescan_try_freq(ptr noundef %host, i32 noundef %freq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_init = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 7
  %0 = ptrtoint ptr %f_init to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %freq, ptr %f_init, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_rescan_try_freq.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_rescan_try_freq, %if.then)) #18
          to label %do.end [label %if.then], !srcloc !319

if.then:                                          ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %1 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %3 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i69 = phi ptr [ %4, %if.end.i ], [ %2, %if.then.dev_name.exit_crit_edge ]
  %5 = ptrtoint ptr %f_init to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f_init, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_rescan_try_freq.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.114, ptr noundef %retval.0.i69, ptr noundef nonnull @.str.113, i32 noundef %6) #18
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %entry
  %ocr_avail = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 8
  %7 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ocr_avail, align 64
  tail call void @mmc_power_up(ptr noundef %host, i32 noundef %8)
  tail call void @mmc_pwrseq_reset(ptr noundef %host) #18
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %9 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %caps.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %tobool.not.i70 = icmp sgt i32 %10, -1
  br i1 %tobool.not.i70, label %do.end.mmc_hw_reset_for_init.exit_crit_edge, label %lor.lhs.false.i

do.end.mmc_hw_reset_for_init.exit_crit_edge:      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_hw_reset_for_init.exit

lor.lhs.false.i:                                  ; preds = %do.end
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 3
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %hw_reset.i = getelementptr inbounds %struct.mmc_host_ops, ptr %12, i32 0, i32 20
  %13 = ptrtoint ptr %hw_reset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_reset.i, align 4
  %tobool1.not.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.mmc_hw_reset_for_init.exit_crit_edge, label %if.end.i71

lor.lhs.false.i.mmc_hw_reset_for_init.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_hw_reset_for_init.exit

if.end.i71:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %14(ptr noundef %host) #18
  br label %mmc_hw_reset_for_init.exit

mmc_hw_reset_for_init.exit:                       ; preds = %if.end.i71, %lor.lhs.false.i.mmc_hw_reset_for_init.exit_crit_edge, %do.end.mmc_hw_reset_for_init.exit_crit_edge
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 17
  %15 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %caps2, align 4
  %and = and i32 %16, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then6, label %mmc_hw_reset_for_init.exit.if.end8_crit_edge

mmc_hw_reset_for_init.exit.if.end8_crit_edge:     ; preds = %mmc_hw_reset_for_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then6:                                         ; preds = %mmc_hw_reset_for_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call7 = tail call i32 @sdio_reset(ptr noundef %host) #18
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %mmc_hw_reset_for_init.exit.if.end8_crit_edge
  %call9 = tail call i32 @mmc_go_idle(ptr noundef %host) #18
  %17 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %caps2, align 4
  %and11 = and i32 %18, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end8.if.end22_crit_edge

if.end8.if.end22_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22

if.then13:                                        ; preds = %if.end8
  %19 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ocr_avail, align 64
  %call15 = tail call i32 @mmc_send_if_cond_pcie(ptr noundef %host, i32 noundef %20) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then13.out_crit_edge

if.then13.out_crit_edge:                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end18:                                         ; preds = %if.then13
  %timing.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 7
  %21 = ptrtoint ptr %timing.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %timing.i, align 4
  %23 = add i8 %22, -11
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %24 = icmp ult i8 %23, 2
  br i1 %24, label %if.end18.return_crit_edge, label %if.end18.if.end22_crit_edge

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22

if.end18.return_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end22:                                         ; preds = %if.end18.if.end22_crit_edge, %if.end8.if.end22_crit_edge
  %25 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %caps2, align 4
  %and24 = and i32 %26, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.then26, label %if.end22.if.end31_crit_edge

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end31

if.then26:                                        ; preds = %if.end22
  %call27 = tail call i32 @mmc_attach_sdio(ptr noundef %host) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then26.return_crit_edge, label %if.then26.if.end31_crit_edge

if.then26.if.end31_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end31

if.then26.return_crit_edge:                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end31:                                         ; preds = %if.then26.if.end31_crit_edge, %if.end22.if.end31_crit_edge
  %27 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %caps2, align 4
  %and33 = and i32 %28, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.then35, label %if.end31.if.end40_crit_edge

if.end31.if.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end40

if.then35:                                        ; preds = %if.end31
  %call36 = tail call i32 @mmc_attach_sd(ptr noundef %host) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then35.return_crit_edge, label %if.then35.if.end40_crit_edge

if.then35.if.end40_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end40

if.then35.return_crit_edge:                       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end40:                                         ; preds = %if.then35.if.end40_crit_edge, %if.end31.if.end40_crit_edge
  %29 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %caps2, align 4
  %and42 = and i32 %30, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.then44, label %if.end40.out_crit_edge

if.end40.out_crit_edge:                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.then44:                                        ; preds = %if.end40
  %call45 = tail call i32 @mmc_attach_mmc(ptr noundef %host) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then44.return_crit_edge, label %if.then44.out_crit_edge

if.then44.out_crit_edge:                          ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.then44.return_crit_edge:                       ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

out:                                              ; preds = %if.then44.out_crit_edge, %if.end40.out_crit_edge, %if.then13.out_crit_edge
  %power_mode.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 5
  %31 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %power_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp.i = icmp eq i8 %32, 0
  br i1 %cmp.i, label %out.return_crit_edge, label %if.end.i72

out.return_crit_edge:                             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end.i72:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #20
  %ios.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28
  tail call void @mmc_pwrseq_power_off(ptr noundef %host) #18
  %33 = ptrtoint ptr %ios.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %ios.i, align 4
  %vdd.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 1
  %34 = ptrtoint ptr %vdd.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %vdd.i, align 4
  %35 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %power_mode.i, align 2
  tail call void @mmc_set_initial_state(ptr noundef %host) #18
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1250, i32 noundef 2) #18
  br label %return

return:                                           ; preds = %if.end.i72, %out.return_crit_edge, %if.then44.return_crit_edge, %if.then35.return_crit_edge, %if.then26.return_crit_edge, %if.end18.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18.return_crit_edge ], [ 0, %if.then26.return_crit_edge ], [ 0, %if.then35.return_crit_edge ], [ 0, %if.then44.return_crit_edge ], [ -5, %out.return_crit_edge ], [ -5, %if.end.i72 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_start_host(ptr noundef %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 6
  %0 = ptrtoint ptr %f_max to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_max, align 8
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 400000)
  %f_min = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 5
  %3 = ptrtoint ptr %f_min to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f_min, align 4
  %5 = tail call i32 @llvm.umax.i32(i32 %2, i32 %4)
  %f_init = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 7
  %6 = ptrtoint ptr %f_init to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %f_init, align 4
  %rescan_disable = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 30
  %7 = ptrtoint ptr %rescan_disable to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %rescan_disable, align 4
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 17
  %8 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %caps2, align 4
  %and = and i32 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = tail call i32 @__mmc_claim_host(ptr noundef %host, ptr noundef null, ptr noundef null) #18
  %ocr_avail = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 8
  %10 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ocr_avail, align 64
  tail call void @mmc_power_up(ptr noundef %host, i32 noundef %11)
  tail call void @mmc_release_host(ptr noundef %host)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mmc_gpiod_request_cd_irq(ptr noundef %host) #18
  %detect_change.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 43
  %12 = ptrtoint ptr %detect_change.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %detect_change.i, align 4
  %detect.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_wq to i32))
  %13 = load ptr, ptr @system_freezable_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %detect.i, i32 noundef 0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_gpiod_request_cd_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__mmc_stop_host(ptr noundef %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %slot = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 44
  %0 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slot, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp sgt i32 %1, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call i32 @mmc_gpio_set_cd_wake(ptr noundef %host, i1 noundef zeroext false) #18
  %2 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slot, align 64
  tail call void @disable_irq(i32 noundef %3) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rescan_disable = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 30
  %4 = ptrtoint ptr %rescan_disable to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %rescan_disable, align 4
  %detect = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 42
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %detect) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_set_cd_wake(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_stop_host(ptr noundef %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %slot.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 44
  %0 = ptrtoint ptr %slot.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slot.i, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i = icmp sgt i32 %1, -1
  br i1 %cmp.i, label %if.then.i, label %entry.__mmc_stop_host.exit_crit_edge

entry.__mmc_stop_host.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %__mmc_stop_host.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = tail call i32 @mmc_gpio_set_cd_wake(ptr noundef %host, i1 noundef zeroext false) #18
  %2 = ptrtoint ptr %slot.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slot.i, align 64
  tail call void @disable_irq(i32 noundef %3) #18
  br label %__mmc_stop_host.exit

__mmc_stop_host.exit:                             ; preds = %if.then.i, %entry.__mmc_stop_host.exit_crit_edge
  %rescan_disable.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 30
  %4 = ptrtoint ptr %rescan_disable.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %rescan_disable.i, align 4
  %detect.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 42
  %call3.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %detect.i) #18
  %pm_flags = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 51
  %5 = ptrtoint ptr %pm_flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %pm_flags, align 4
  %bus_ops = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 45
  %6 = ptrtoint ptr %bus_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_ops, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %__mmc_stop_host.exit
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void %9(ptr noundef %host) #18
  %call.i13 = tail call i32 @__mmc_claim_host(ptr noundef %host, ptr noundef null, ptr noundef null) #18
  %10 = ptrtoint ptr %bus_ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %bus_ops, align 4
  %power_mode.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 5
  %11 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %power_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp.i14 = icmp eq i8 %12, 0
  br i1 %cmp.i14, label %if.then.return_crit_edge, label %if.then.return.sink.split_crit_edge

if.then.return.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %return.sink.split

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %__mmc_stop_host.exit
  %call.i15 = tail call i32 @__mmc_claim_host(ptr noundef %host, ptr noundef null, ptr noundef null) #18
  %power_mode.i16 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 5
  %13 = ptrtoint ptr %power_mode.i16 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %power_mode.i16, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.i17 = icmp eq i8 %14, 0
  br i1 %cmp.i17, label %if.end.return_crit_edge, label %if.end.return.sink.split_crit_edge

if.end.return.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %return.sink.split

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

return.sink.split:                                ; preds = %if.end.return.sink.split_crit_edge, %if.then.return.sink.split_crit_edge
  %power_mode.i16.sink = phi ptr [ %power_mode.i, %if.then.return.sink.split_crit_edge ], [ %power_mode.i16, %if.end.return.sink.split_crit_edge ]
  %ios.i18 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28
  tail call void @mmc_pwrseq_power_off(ptr noundef %host) #18
  %15 = ptrtoint ptr %ios.i18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ios.i18, align 4
  %vdd.i19 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 1
  %16 = ptrtoint ptr %vdd.i19 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %vdd.i19, align 4
  %17 = ptrtoint ptr %power_mode.i16.sink to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %power_mode.i16.sink, align 2
  tail call void @mmc_set_initial_state(ptr noundef %host) #18
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1250, i32 noundef 2) #18
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.return_crit_edge, %if.then.return_crit_edge
  tail call void @mmc_release_host(ptr noundef %host)
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mmc_exit() #12 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @sdio_unregister_bus() #18
  tail call void @mmc_unregister_host_class() #18
  tail call void @mmc_unregister_bus() #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_unregister_bus() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_unregister_host_class() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_unregister_bus() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_init() #12 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mmc_register_bus() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @mmc_register_host_class() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.unregister_bus_crit_edge

if.end.unregister_bus_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %unregister_bus

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @sdio_register_bus() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %unregister_host_class

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

unregister_host_class:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @mmc_unregister_host_class() #18
  br label %unregister_bus

unregister_bus:                                   ; preds = %unregister_host_class, %if.end.unregister_bus_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.unregister_bus_crit_edge ], [ %call5, %unregister_host_class ]
  tail call void @mmc_unregister_bus() #18
  br label %cleanup

cleanup:                                          ; preds = %unregister_bus, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unregister_bus ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mmc_request_start(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %mrq = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mrq, align 4
  %cmd_opcode = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %cmd_opcode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmd_opcode, align 4
  %cmd_arg = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %cmd_arg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmd_arg, align 4
  %cmd_flags = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cmd_flags, align 4
  %cmd_retries = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %cmd_retries to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cmd_retries, align 4
  %stop_opcode = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %stop_opcode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stop_opcode, align 4
  %stop_arg = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stop_arg, align 4
  %stop_flags = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %stop_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stop_flags, align 4
  %stop_retries = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %stop_retries to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stop_retries, align 4
  %sbc_opcode = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %sbc_opcode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sbc_opcode, align 4
  %sbc_arg = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %1, i32 0, i32 10
  %24 = ptrtoint ptr %sbc_arg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sbc_arg, align 4
  %sbc_flags = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %1, i32 0, i32 11
  %26 = ptrtoint ptr %sbc_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sbc_flags, align 4
  %sbc_retries = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %1, i32 0, i32 12
  %28 = ptrtoint ptr %sbc_retries to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sbc_retries, align 4
  %blocks = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %1, i32 0, i32 13
  %30 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %blocks, align 4
  %blksz = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %1, i32 0, i32 15
  %32 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %blksz, align 4
  %blk_addr = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %1, i32 0, i32 14
  %34 = ptrtoint ptr %blk_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %blk_addr, align 4
  %data_flags = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %1, i32 0, i32 16
  %36 = ptrtoint ptr %data_flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data_flags, align 4
  %tag = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %1, i32 0, i32 17
  %38 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tag, align 4
  %can_retune = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %1, i32 0, i32 18
  %40 = ptrtoint ptr %can_retune to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %can_retune, align 4
  %doing_retune = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %1, i32 0, i32 19
  %42 = ptrtoint ptr %doing_retune to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %doing_retune, align 4
  %retune_now = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %1, i32 0, i32 20
  %44 = ptrtoint ptr %retune_now to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %retune_now, align 4
  %need_retune = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %1, i32 0, i32 21
  %46 = ptrtoint ptr %need_retune to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %need_retune, align 4
  %hold_retune = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %1, i32 0, i32 22
  %48 = ptrtoint ptr %hold_retune to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hold_retune, align 4
  %retune_period = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %1, i32 0, i32 23
  %50 = ptrtoint ptr %retune_period to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %retune_period, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.79, ptr noundef %add.ptr, ptr noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51) #18
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mmc_request_done(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %mrq = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mrq, align 4
  %cmd_opcode = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %cmd_opcode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmd_opcode, align 4
  %cmd_err = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %cmd_err to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmd_err, align 4
  %cmd_resp = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %cmd_resp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cmd_resp, align 4
  %arrayidx2 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx6, align 4
  %cmd_retries = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %cmd_retries to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cmd_retries, align 4
  %stop_opcode = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %stop_opcode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stop_opcode, align 4
  %stop_err = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %stop_err to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stop_err, align 4
  %stop_resp = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %stop_resp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stop_resp, align 4
  %arrayidx9 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 7, i32 1
  %26 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx9, align 4
  %arrayidx11 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 7, i32 2
  %28 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx11, align 4
  %arrayidx13 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 7, i32 3
  %30 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx13, align 4
  %stop_retries = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 8
  %32 = ptrtoint ptr %stop_retries to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stop_retries, align 4
  %sbc_opcode = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 9
  %34 = ptrtoint ptr %sbc_opcode to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sbc_opcode, align 4
  %sbc_err = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 10
  %36 = ptrtoint ptr %sbc_err to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sbc_err, align 4
  %sbc_resp = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 11
  %38 = ptrtoint ptr %sbc_resp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sbc_resp, align 4
  %arrayidx16 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 11, i32 1
  %40 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx16, align 4
  %arrayidx18 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 11, i32 2
  %42 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx18, align 4
  %arrayidx20 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 11, i32 3
  %44 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx20, align 4
  %sbc_retries = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 12
  %46 = ptrtoint ptr %sbc_retries to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sbc_retries, align 4
  %bytes_xfered = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 13
  %48 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bytes_xfered, align 4
  %data_err = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 14
  %50 = ptrtoint ptr %data_err to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %data_err, align 4
  %tag = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 15
  %52 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tag, align 4
  %can_retune = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 16
  %54 = ptrtoint ptr %can_retune to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %can_retune, align 4
  %doing_retune = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 17
  %56 = ptrtoint ptr %doing_retune to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %doing_retune, align 4
  %retune_now = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 18
  %58 = ptrtoint ptr %retune_now to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %retune_now, align 4
  %need_retune = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 19
  %60 = ptrtoint ptr %need_retune to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %need_retune, align 4
  %hold_retune = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 20
  %62 = ptrtoint ptr %hold_retune to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %hold_retune, align 4
  %retune_period = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %1, i32 0, i32 21
  %64 = ptrtoint ptr %retune_period to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %retune_period, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.89, ptr noundef %add.ptr, ptr noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef %65) #18
  %call21 = tail call i32 @trace_handle_return(ptr noundef %seq) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #15

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_wait_done(ptr noundef %mrq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %completion = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 4
  tail call void @complete(ptr noundef %completion) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_ws_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @mmc_erase_timeout(ptr nocapture noundef readonly %card, i32 noundef %arg, i32 noundef %qty) unnamed_addr #17 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %arg)
  %cmp.i = icmp eq i32 %arg, 1
  br i1 %cmp.i, label %if.then.return_crit_edge, label %if.end.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end.i:                                         ; preds = %if.then
  %erase_timeout1.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 23, i32 1
  %2 = ptrtoint ptr %erase_timeout1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %erase_timeout1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %mul.i = mul i32 %3, %qty
  %erase_offset.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 23, i32 2
  %4 = ptrtoint ptr %erase_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %erase_offset.i, align 8
  %add.i = add i32 %5, %mul.i
  br label %if.end7.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %mul6.i = mul i32 %qty, 250
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.then2.i
  %erase_timeout.0.i = phi i32 [ %add.i, %if.then2.i ], [ %mul6.i, %if.else.i ]
  %6 = tail call i32 @llvm.umax.i32(i32 %erase_timeout.0.i, i32 1000) #18
  br label %return

if.else:                                          ; preds = %entry
  %7 = zext i32 %arg to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %arg, label %if.else.thread.i [
    i32 3, label %if.else.if.end40.thread.i_crit_edge
    i32 1, label %land.lhs.true.i
  ]

if.else.if.end40.thread.i_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end40.thread.i

land.lhs.true.i:                                  ; preds = %if.else
  %ext_csd.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21
  %8 = ptrtoint ptr %ext_csd.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ext_csd.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %9)
  %cmp2.i = icmp ugt i8 %9, 5
  br i1 %cmp2.i, label %land.lhs.true.i.if.end40.thread.i_crit_edge, label %if.else.i7

land.lhs.true.i.if.end40.thread.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end40.thread.i

if.end40.thread.i:                                ; preds = %land.lhs.true.i.if.end40.thread.i_crit_edge, %if.else.if.end40.thread.i_crit_edge
  %trim_timeout.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 24
  %10 = ptrtoint ptr %trim_timeout.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %trim_timeout.i, align 4
  br label %mmc_mmc_erase_timeout.exit

if.else.i7:                                       ; preds = %land.lhs.true.i
  %erase_group_def.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 1
  %12 = ptrtoint ptr %erase_group_def.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %erase_group_def.i, align 1
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i6 = icmp eq i8 %14, 0
  br i1 %tobool.not.i6, label %if.else.i7.if.else15.i_crit_edge, label %if.end40.thread94.i

if.else.i7.if.else15.i_crit_edge:                 ; preds = %if.else.i7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else15.i

if.else.thread.i:                                 ; preds = %if.else
  %erase_group_def90.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 1
  %15 = ptrtoint ptr %erase_group_def90.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %erase_group_def90.i, align 1
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not91.i = icmp eq i8 %17, 0
  br i1 %tobool.not91.i, label %if.else.thread.i.if.else15.i_crit_edge, label %if.else13.i

if.else.thread.i.if.else15.i_crit_edge:           ; preds = %if.else.thread.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else15.i

if.end40.thread94.i:                              ; preds = %if.else.i7
  call void @__sanitizer_cov_trace_pc() #20
  %trim_timeout12.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 24
  %18 = ptrtoint ptr %trim_timeout12.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %trim_timeout12.i, align 4
  br label %mmc_mmc_erase_timeout.exit

if.else13.i:                                      ; preds = %if.else.thread.i
  call void @__sanitizer_cov_trace_pc() #20
  %hc_erase_timeout.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 21
  %20 = ptrtoint ptr %hc_erase_timeout.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hc_erase_timeout.i, align 8
  br label %if.end40.i

if.else15.i:                                      ; preds = %if.else.thread.i.if.else15.i_crit_edge, %if.else.i7.if.else15.i_crit_edge
  %r2w_factor.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 6
  %22 = ptrtoint ptr %r2w_factor.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %r2w_factor.i, align 8
  %shl.i = shl i32 10, %23
  %taac_clks.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 3
  %24 = ptrtoint ptr %taac_clks.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %taac_clks.i, align 4
  %conv17.i = zext i16 %25 to i32
  %taac_ns.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 20, i32 4
  %26 = ptrtoint ptr %taac_ns.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %taac_ns.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %27)
  %cmp19.i = icmp ult i32 %27, 1000000
  %mul24.i = mul i32 %27, %shl.i
  %div.i = udiv i32 %mul24.i, 1000
  %div28.i = udiv i32 %27, 1000
  %mul29.i = mul i32 %div28.i, %shl.i
  %timeout_us.0.i = select i1 %cmp19.i, i32 %div.i, i32 %mul29.i
  %mul.i8 = mul i32 %shl.i, 2000
  %mul32.i = mul i32 %mul.i8, %conv17.i
  %28 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card, align 8
  %ios.i = getelementptr inbounds %struct.mmc_host, ptr %29, i32 0, i32 28
  %30 = ptrtoint ptr %ios.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ios.i, align 4
  %div33.i = udiv i32 %31, 1000
  %div34.i = udiv i32 %mul32.i, %div33.i
  %add.i9 = add i32 %timeout_us.0.i, %div34.i
  %div35.i = udiv i32 %add.i9, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %add.i9)
  %32 = icmp ult i32 %add.i9, 1000
  %spec.store.select.i = select i1 %32, i32 1, i32 %div35.i
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.else15.i, %if.else13.i
  %erase_timeout.0.i10 = phi i32 [ %21, %if.else13.i ], [ %spec.store.select.i, %if.else15.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %arg)
  %tobool42.not.i = icmp sgt i32 %arg, -1
  br i1 %tobool42.not.i, label %if.end40.i.mmc_mmc_erase_timeout.exit_crit_edge, label %if.then43.i

if.end40.i.mmc_mmc_erase_timeout.exit_crit_edge:  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mmc_mmc_erase_timeout.exit

if.then43.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %arg)
  %cmp44.i = icmp eq i32 %arg, -2147483648
  br i1 %cmp44.i, label %if.then46.i, label %if.else49.i

if.then46.i:                                      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #20
  %sec_erase_mult.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 23
  %33 = ptrtoint ptr %sec_erase_mult.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sec_erase_mult.i, align 8
  %mul48.i = mul i32 %34, %erase_timeout.0.i10
  br label %mmc_mmc_erase_timeout.exit

if.else49.i:                                      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #20
  %sec_trim_mult.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 22
  %35 = ptrtoint ptr %sec_trim_mult.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sec_trim_mult.i, align 4
  %mul51.i = mul i32 %36, %erase_timeout.0.i10
  br label %mmc_mmc_erase_timeout.exit

mmc_mmc_erase_timeout.exit:                       ; preds = %if.else49.i, %if.then46.i, %if.end40.i.mmc_mmc_erase_timeout.exit_crit_edge, %if.end40.thread94.i, %if.end40.thread.i
  %erase_timeout.1.i = phi i32 [ %mul48.i, %if.then46.i ], [ %mul51.i, %if.else49.i ], [ %erase_timeout.0.i10, %if.end40.i.mmc_mmc_erase_timeout.exit_crit_edge ], [ %11, %if.end40.thread.i ], [ %19, %if.end40.thread94.i ]
  %mul54.i = mul i32 %erase_timeout.1.i, %qty
  %37 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %card, align 8
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %38, i32 0, i32 16
  %39 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %caps.i, align 32
  %and56.i = and i32 %40, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  %41 = tail call i32 @llvm.umax.i32(i32 %mul54.i, i32 1000) #18
  %spec.select.i = select i1 %tobool57.not.i, i32 %mul54.i, i32 %41
  br label %return

return:                                           ; preds = %mmc_mmc_erase_timeout.exit, %if.end7.i, %if.then.return_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %mmc_mmc_erase_timeout.exit ], [ %6, %if.end7.i ], [ 250, %if.then.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mmc_prepare_busy_cmd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_poll_for_busy(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_go_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_if_cond_pcie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_attach_sdio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_attach_sd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_attach_mmc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_pwrseq_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_register_bus() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_register_host_class() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_register_bus() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 129)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 129)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #16 = { nounwind readonly }
attributes #17 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { nobuiltin nounwind }
attributes #22 = { nobuiltin }
attributes #23 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !20, !21, !23, !24, !25, !26, !27, !29, !31, !32, !33, !35, !36, !38, !39, !41, !42, !44, !46, !48, !49, !50, !52, !54, !55, !56, !58, !59, !61, !63, !64, !65, !67, !68, !70, !72, !74, !76, !77, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !104, !105, !106, !108, !109, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !130, !131, !133, !134, !135, !136, !138, !139, !141, !143, !145, !147, !149, !151, !153, !155, !156, !157, !159, !161, !163, !165, !166, !167, !168, !170, !172, !173, !174, !175, !177, !179, !180, !181, !183, !184, !186, !188, !190, !192, !194, !195, !196, !197, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !254, !255, !257, !259, !260, !262, !263, !264, !266, !267, !268, !269, !271, !272, !274, !275, !277, !278, !279, !280, !282, !283, !284, !286, !288, !289, !290, !291, !293, !294, !295, !297, !298, !299, !301, !303, !304}
!llvm.named.register.sp = !{!305}
!llvm.module.flags = !{!306, !307, !308, !309, !310, !311, !312, !313}
!llvm.ident = !{!314}

!0 = !{ptr @__tracepoint_mmc_request_start, !1, !"__tracepoint_mmc_request_start", i1 false, i1 false}
!1 = !{!"../include/trace/events/mmc.h", i32 13, i32 1}
!2 = !{ptr @__tracepoint_ptr_mmc_request_start, !1, !"__tracepoint_ptr_mmc_request_start", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_mmc_request_start, !1, !"__SCK__tp_func_mmc_request_start", i1 false, i1 false}
!4 = !{ptr @__tracepoint_mmc_request_done, !5, !"__tracepoint_mmc_request_done", i1 false, i1 false}
!5 = !{!"../include/trace/events/mmc.h", i32 96, i32 1}
!6 = !{ptr @__tracepoint_ptr_mmc_request_done, !5, !"__tracepoint_ptr_mmc_request_done", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_mmc_request_done, !5, !"__SCK__tp_func_mmc_request_done", i1 false, i1 false}
!8 = !{ptr @event_class_mmc_request_start, !1, !"event_class_mmc_request_start", i1 false, i1 false}
!9 = !{ptr @event_mmc_request_start, !1, !"event_mmc_request_start", i1 false, i1 false}
!10 = !{ptr @__event_mmc_request_start, !1, !"__event_mmc_request_start", i1 false, i1 false}
!11 = !{ptr @event_class_mmc_request_done, !5, !"event_class_mmc_request_done", i1 false, i1 false}
!12 = !{ptr @event_mmc_request_done, !5, !"event_mmc_request_done", i1 false, i1 false}
!13 = !{ptr @__event_mmc_request_done, !5, !"__event_mmc_request_done", i1 false, i1 false}
!14 = !{ptr @__bpf_trace_tp_map_mmc_request_start, !1, !"__bpf_trace_tp_map_mmc_request_start", i1 false, i1 false}
!15 = !{ptr @__bpf_trace_tp_map_mmc_request_done, !5, !"__bpf_trace_tp_map_mmc_request_done", i1 false, i1 false}
!16 = !{ptr @use_spi_crc, !17, !"use_spi_crc", i1 false, i1 false}
!17 = !{!"../drivers/mmc/core/core.c", i32 61, i32 6}
!18 = !{ptr @__param_use_spi_crc, !19, !"__param_use_spi_crc", i1 false, i1 false}
!19 = !{!"../drivers/mmc/core/core.c", i32 62, i32 1}
!20 = !{ptr @__UNIQUE_ID_use_spi_crctype323, !19, !"__UNIQUE_ID_use_spi_crctype323", i1 false, i1 false}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mmc/core/core.c", i32 126, i32 2}
!23 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mmc_command_done.__UNIQUE_ID_ddebug324, !22, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!27 = !{ptr @__ksymtab_mmc_command_done, !28, !"__ksymtab_mmc_command_done", i1 false, i1 false}
!28 = !{!"../drivers/mmc/core/core.c", i32 129, i32 1}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mmc/core/core.c", i32 181, i32 4}
!31 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @mmc_request_done.__UNIQUE_ID_ddebug325, !30, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mmc/core/core.c", i32 188, i32 3}
!35 = !{ptr @mmc_request_done.__UNIQUE_ID_ddebug326, !34, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mmc/core/core.c", i32 194, i32 4}
!38 = !{ptr @mmc_request_done.__UNIQUE_ID_ddebug327, !37, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mmc/core/core.c", i32 200, i32 4}
!41 = !{ptr @mmc_request_done.__UNIQUE_ID_ddebug328, !40, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!42 = !{ptr @__ksymtab_mmc_request_done, !43, !"__ksymtab_mmc_request_done", i1 false, i1 false}
!43 = !{!"../drivers/mmc/core/core.c", i32 215, i32 1}
!44 = !{ptr @__ksymtab_mmc_start_request, !45, !"__ksymtab_mmc_start_request", i1 false, i1 false}
!45 = !{!"../drivers/mmc/core/core.c", i32 360, i32 1}
!46 = !{ptr @.str.9, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mmc/core/core.c", i32 413, i32 3}
!48 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mmc_wait_for_req_done.__UNIQUE_ID_ddebug335, !47, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!50 = !{ptr @__ksymtab_mmc_wait_for_req_done, !51, !"__ksymtab_mmc_wait_for_req_done", i1 false, i1 false}
!51 = !{!"../drivers/mmc/core/core.c", i32 422, i32 1}
!52 = !{ptr @.str.11, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mmc/core/core.c", i32 464, i32 3}
!54 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mmc_cqe_start_req.__UNIQUE_ID_ddebug336, !53, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!56 = !{ptr @.str.13, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mmc/core/core.c", i32 467, i32 3}
!58 = !{ptr @mmc_cqe_start_req.__UNIQUE_ID_ddebug337, !57, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!59 = !{ptr @__ksymtab_mmc_cqe_start_req, !60, !"__ksymtab_mmc_cqe_start_req", i1 false, i1 false}
!60 = !{!"../drivers/mmc/core/core.c", i32 472, i32 1}
!61 = !{ptr @.str.14, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mmc/core/core.c", i32 494, i32 3}
!63 = !{ptr @.str.15, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @mmc_cqe_request_done.__UNIQUE_ID_ddebug338, !62, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!65 = !{ptr @.str.16, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mmc/core/core.c", i32 497, i32 3}
!67 = !{ptr @mmc_cqe_request_done.__UNIQUE_ID_ddebug339, !66, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!68 = !{ptr @mmc_cqe_request_done.__UNIQUE_ID_ddebug340, !69, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!69 = !{!"../drivers/mmc/core/core.c", i32 502, i32 3}
!70 = !{ptr @__ksymtab_mmc_cqe_request_done, !71, !"__ksymtab_mmc_cqe_request_done", i1 false, i1 false}
!71 = !{!"../drivers/mmc/core/core.c", i32 509, i32 1}
!72 = !{ptr @__ksymtab_mmc_cqe_post_req, !73, !"__ksymtab_mmc_cqe_post_req", i1 false, i1 false}
!73 = !{!"../drivers/mmc/core/core.c", i32 521, i32 1}
!74 = !{ptr @.str.17, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mmc/core/core.c", i32 546, i32 2}
!76 = !{ptr @.str.18, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @mmc_cqe_recovery._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @mmc_cqe_recovery._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @__ksymtab_mmc_cqe_recovery, !80, !"__ksymtab_mmc_cqe_recovery", i1 false, i1 false}
!80 = !{!"../drivers/mmc/core/core.c", i32 571, i32 1}
!81 = !{ptr @__ksymtab_mmc_is_req_done, !82, !"__ksymtab_mmc_is_req_done", i1 false, i1 false}
!82 = !{!"../drivers/mmc/core/core.c", i32 589, i32 1}
!83 = !{ptr @__ksymtab_mmc_wait_for_req, !84, !"__ksymtab_mmc_wait_for_req", i1 false, i1 false}
!84 = !{!"../drivers/mmc/core/core.c", i32 610, i32 1}
!85 = !{ptr @__ksymtab_mmc_wait_for_cmd, !86, !"__ksymtab_mmc_wait_for_cmd", i1 false, i1 false}
!86 = !{!"../drivers/mmc/core/core.c", i32 639, i32 1}
!87 = !{ptr @__ksymtab_mmc_set_data_timeout, !88, !"__ksymtab_mmc_set_data_timeout", i1 false, i1 false}
!88 = !{!"../drivers/mmc/core/core.c", i32 741, i32 1}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../drivers/mmc/core/core.c", i32 794, i32 3}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../drivers/mmc/core/core.c", i32 802, i32 2}
!93 = !{ptr @__ksymtab___mmc_claim_host, !94, !"__ksymtab___mmc_claim_host", i1 false, i1 false}
!94 = !{!"../drivers/mmc/core/core.c", i32 819, i32 1}
!95 = !{ptr @__ksymtab_mmc_release_host, !96, !"__ksymtab_mmc_release_host", i1 false, i1 false}
!96 = !{!"../drivers/mmc/core/core.c", i32 851, i32 1}
!97 = !{ptr @__ksymtab_mmc_get_card, !98, !"__ksymtab_mmc_get_card", i1 false, i1 false}
!98 = !{!"../drivers/mmc/core/core.c", i32 862, i32 1}
!99 = !{ptr @__ksymtab_mmc_put_card, !100, !"__ksymtab_mmc_put_card", i1 false, i1 false}
!100 = !{!"../drivers/mmc/core/core.c", i32 878, i32 1}
!101 = !{ptr @.str.20, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mmc/core/core.c", i32 947, i32 3}
!103 = !{ptr @.str.21, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @mmc_execute_tuning._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @mmc_execute_tuning._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.22, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/mmc/core/core.c", i32 1118, i32 3}
!108 = !{ptr @.str.23, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.24, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.25, !107, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @mmc_select_voltage._entry, !107, !"_entry", i1 false, i1 false}
!112 = !{ptr @mmc_select_voltage._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.27, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mmc/core/core.c", i32 1125, i32 3}
!115 = !{ptr @mmc_select_voltage._entry.26, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @mmc_select_voltage._entry_ptr.28, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.30, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mmc/core/core.c", i32 1137, i32 4}
!119 = !{ptr @mmc_select_voltage._entry.29, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @mmc_select_voltage._entry_ptr.31, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.32, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mmc/core/core.c", i32 1163, i32 3}
!123 = !{ptr @.str.33, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @mmc_set_initial_signal_voltage.__UNIQUE_ID_ddebug344, !122, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!125 = !{ptr @.str.34, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mmc/core/core.c", i32 1165, i32 3}
!127 = !{ptr @mmc_set_initial_signal_voltage.__UNIQUE_ID_ddebug345, !126, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!128 = !{ptr @.str.35, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/mmc/core/core.c", i32 1167, i32 3}
!130 = !{ptr @mmc_set_initial_signal_voltage.__UNIQUE_ID_ddebug346, !129, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!131 = !{ptr @.str.36, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/mmc/core/core.c", i32 1205, i32 3}
!133 = !{ptr @.str.37, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @mmc_set_uhs_voltage._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @mmc_set_uhs_voltage._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.38, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/mmc/core/core.c", i32 1250, i32 3}
!138 = !{ptr @mmc_set_uhs_voltage.__UNIQUE_ID_ddebug347, !137, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!139 = !{ptr @__ksymtab_mmc_detect_change, !140, !"__ksymtab_mmc_detect_change", i1 false, i1 false}
!140 = !{!"../drivers/mmc/core/core.c", i32 1429, i32 1}
!141 = !{ptr @__ksymtab_mmc_erase, !142, !"__ksymtab_mmc_erase", i1 false, i1 false}
!142 = !{!"../drivers/mmc/core/core.c", i32 1800, i32 1}
!143 = !{ptr @__ksymtab_mmc_can_erase, !144, !"__ksymtab_mmc_can_erase", i1 false, i1 false}
!144 = !{!"../drivers/mmc/core/core.c", i32 1808, i32 1}
!145 = !{ptr @__ksymtab_mmc_can_trim, !146, !"__ksymtab_mmc_can_trim", i1 false, i1 false}
!146 = !{!"../drivers/mmc/core/core.c", i32 1817, i32 1}
!147 = !{ptr @__ksymtab_mmc_can_discard, !148, !"__ksymtab_mmc_can_discard", i1 false, i1 false}
!148 = !{!"../drivers/mmc/core/core.c", i32 1829, i32 1}
!149 = !{ptr @__ksymtab_mmc_can_secure_erase_trim, !150, !"__ksymtab_mmc_can_secure_erase_trim", i1 false, i1 false}
!150 = !{!"../drivers/mmc/core/core.c", i32 1847, i32 1}
!151 = !{ptr @__ksymtab_mmc_erase_group_aligned, !152, !"__ksymtab_mmc_erase_group_aligned", i1 false, i1 false}
!152 = !{!"../drivers/mmc/core/core.c", i32 1858, i32 1}
!153 = !{ptr @.str.39, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/mmc/core/core.c", i32 1959, i32 2}
!155 = !{ptr @.str.40, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @mmc_calc_max_discard.__UNIQUE_ID_ddebug348, !154, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!157 = !{ptr @__ksymtab_mmc_calc_max_discard, !158, !"__ksymtab_mmc_calc_max_discard", i1 false, i1 false}
!158 = !{!"../drivers/mmc/core/core.c", i32 1964, i32 1}
!159 = !{ptr @__ksymtab_mmc_card_is_blockaddr, !160, !"__ksymtab_mmc_card_is_blockaddr", i1 false, i1 false}
!160 = !{!"../drivers/mmc/core/core.c", i32 1970, i32 1}
!161 = !{ptr @__ksymtab_mmc_set_blocklen, !162, !"__ksymtab_mmc_set_blocklen", i1 false, i1 false}
!162 = !{!"../drivers/mmc/core/core.c", i32 1985, i32 1}
!163 = !{ptr @.str.41, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/mmc/core/core.c", i32 2012, i32 3}
!165 = !{ptr @.str.42, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @mmc_hw_reset._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @mmc_hw_reset._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @__ksymtab_mmc_hw_reset, !169, !"__ksymtab_mmc_hw_reset", i1 false, i1 false}
!169 = !{!"../drivers/mmc/core/core.c", i32 2017, i32 1}
!170 = !{ptr @.str.43, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/mmc/core/core.c", i32 2028, i32 3}
!172 = !{ptr @.str.44, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @mmc_sw_reset._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @mmc_sw_reset._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @__ksymtab_mmc_sw_reset, !176, !"__ksymtab_mmc_sw_reset", i1 false, i1 false}
!176 = !{!"../drivers/mmc/core/core.c", i32 2033, i32 1}
!177 = !{ptr @.str.45, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/mmc/core/core.c", i32 2104, i32 3}
!179 = !{ptr @.str.46, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @_mmc_detect_card_removed.__UNIQUE_ID_ddebug350, !178, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!181 = !{ptr @.str.47, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/mmc/core/core.c", i32 2109, i32 3}
!183 = !{ptr @_mmc_detect_card_removed.__UNIQUE_ID_ddebug351, !182, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!184 = !{ptr @__ksymtab_mmc_detect_card_removed, !185, !"__ksymtab_mmc_detect_card_removed", i1 false, i1 false}
!185 = !{!"../drivers/mmc/core/core.c", i32 2151, i32 1}
!186 = !{ptr @__ksymtab_mmc_card_alternative_gpt_sector, !187, !"__ksymtab_mmc_card_alternative_gpt_sector", i1 false, i1 false}
!187 = !{!"../drivers/mmc/core/core.c", i32 2186, i32 1}
!188 = !{ptr @__initcall__kmod_mmc_core__358_2332_mmc_init4, !189, !"__initcall__kmod_mmc_core__358_2332_mmc_init4", i1 false, i1 false}
!189 = !{!"../drivers/mmc/core/core.c", i32 2332, i32 1}
!190 = !{ptr @__exitcall_mmc_exit, !191, !"__exitcall_mmc_exit", i1 false, i1 false}
!191 = !{!"../drivers/mmc/core/core.c", i32 2333, i32 1}
!192 = !{ptr @__UNIQUE_ID_file359, !193, !"__UNIQUE_ID_file359", i1 false, i1 false}
!193 = !{!"../drivers/mmc/core/core.c", i32 2335, i32 1}
!194 = !{ptr @__UNIQUE_ID_license360, !193, !"__UNIQUE_ID_license360", i1 false, i1 false}
!195 = !{ptr @__tpstrtab_mmc_request_start, !1, !"__tpstrtab_mmc_request_start", i1 false, i1 false}
!196 = !{ptr @__tpstrtab_mmc_request_done, !5, !"__tpstrtab_mmc_request_done", i1 false, i1 false}
!197 = !{ptr @str__mmc__trace_system_name, !198, !"str__mmc__trace_system_name", i1 false, i1 false}
!198 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!199 = !{ptr @.str.48, !1, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.49, !1, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.50, !1, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.51, !1, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.52, !1, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.53, !1, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.54, !1, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.55, !1, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.56, !1, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.57, !1, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.58, !1, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.59, !1, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.60, !1, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.61, !1, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.62, !1, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.63, !1, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.64, !1, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.65, !1, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.66, !1, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @.str.67, !1, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.68, !1, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.69, !1, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.70, !1, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.71, !1, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.72, !1, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.73, !1, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.74, !1, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.75, !1, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.76, !1, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.77, !1, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @.str.78, !1, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @trace_event_fields_mmc_request_start, !1, !"trace_event_fields_mmc_request_start", i1 false, i1 false}
!231 = !{ptr @trace_event_type_funcs_mmc_request_start, !1, !"trace_event_type_funcs_mmc_request_start", i1 false, i1 false}
!232 = !{ptr @.str.79, !1, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @print_fmt_mmc_request_start, !1, !"print_fmt_mmc_request_start", i1 false, i1 false}
!234 = !{ptr @.str.80, !5, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @.str.81, !5, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @.str.82, !5, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @.str.83, !5, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @.str.84, !5, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.85, !5, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @.str.86, !5, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @.str.87, !5, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @.str.88, !5, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @trace_event_fields_mmc_request_done, !5, !"trace_event_fields_mmc_request_done", i1 false, i1 false}
!244 = !{ptr @trace_event_type_funcs_mmc_request_done, !5, !"trace_event_type_funcs_mmc_request_done", i1 false, i1 false}
!245 = !{ptr @.str.89, !5, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @print_fmt_mmc_request_done, !5, !"print_fmt_mmc_request_done", i1 false, i1 false}
!247 = !{ptr @__param_str_use_spi_crc, !19, !"__param_str_use_spi_crc", i1 false, i1 false}
!248 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!249 = !{ptr @.str.90, !5, !"<string literal>", i1 false, i1 false}
!250 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!251 = !{ptr @.str.91, !5, !"<string literal>", i1 false, i1 false}
!252 = distinct !{null, !253, !"__already_done", i1 false, i1 false}
!253 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!254 = !{ptr @.str.92, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @mmc_should_fail_request.data_errors, !256, !"data_errors", i1 false, i1 false}
!256 = !{!"../drivers/mmc/core/core.c", i32 87, i32 19}
!257 = !{ptr @init_completion.__key, !258, !"__key", i1 false, i1 false}
!258 = !{!"../include/linux/completion.h", i32 87, i32 2}
!259 = !{ptr @.str.93, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.94, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/mmc/core/core.c", i32 269, i32 3}
!262 = !{ptr @.str.95, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @mmc_mrq_pr_debug.__UNIQUE_ID_ddebug329, !261, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!264 = !{ptr @.str.96, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/mmc/core/core.c", i32 275, i32 3}
!266 = !{ptr @mmc_mrq_pr_debug.__UNIQUE_ID_ddebug330, !265, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!267 = !{ptr @.str.97, !265, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @.str.98, !265, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @.str.99, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/mmc/core/core.c", i32 279, i32 3}
!271 = !{ptr @mmc_mrq_pr_debug.__UNIQUE_ID_ddebug331, !270, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!272 = !{ptr @.str.100, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/mmc/core/core.c", i32 284, i32 3}
!274 = !{ptr @mmc_mrq_pr_debug.__UNIQUE_ID_ddebug332, !273, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!275 = !{ptr @.str.101, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/mmc/core/core.c", i32 293, i32 3}
!277 = !{ptr @mmc_mrq_pr_debug.__UNIQUE_ID_ddebug333, !276, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!278 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!279 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!280 = !{ptr @.str.102, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/mmc/core/core.c", i32 888, i32 2}
!282 = !{ptr @.str.103, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @mmc_set_ios.__UNIQUE_ID_ddebug343, !281, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!284 = !{ptr @.str.104, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/mmc/core/core.c", i32 1082, i32 35}
!286 = !{ptr @.str.105, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/mmc/core/core.c", i32 1632, i32 3}
!288 = !{ptr @.str.106, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @mmc_do_erase._entry, !287, !"_entry", i1 false, i1 false}
!290 = !{ptr @mmc_do_erase._entry_ptr, !287, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.108, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/mmc/core/core.c", i32 1647, i32 3}
!293 = !{ptr @mmc_do_erase._entry.107, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @mmc_do_erase._entry_ptr.109, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.111, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/mmc/core/core.c", i32 1661, i32 3}
!297 = !{ptr @mmc_do_erase._entry.110, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @mmc_do_erase._entry_ptr.112, !296, !"_entry_ptr", i1 false, i1 false}
!299 = distinct !{null, !300, !"freqs", i1 false, i1 false}
!300 = !{!"../drivers/mmc/core/core.c", i32 54, i32 23}
!301 = !{ptr @.str.113, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/mmc/core/core.c", i32 2039, i32 2}
!303 = !{ptr @.str.114, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @mmc_rescan_try_freq.__UNIQUE_ID_ddebug349, !302, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!305 = !{!"sp"}
!306 = !{i32 1, !"wchar_size", i32 2}
!307 = !{i32 1, !"min_enum_size", i32 4}
!308 = !{i32 8, !"branch-target-enforcement", i32 0}
!309 = !{i32 8, !"sign-return-address", i32 0}
!310 = !{i32 8, !"sign-return-address-all", i32 0}
!311 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!312 = !{i32 7, !"uwtable", i32 1}
!313 = !{i32 7, !"frame-pointer", i32 2}
!314 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!315 = !{!"branch_weights", i32 2000, i32 1}
!316 = !{!"branch_weights", i32 1, i32 2000}
!317 = !{!"auto-init"}
!318 = !{i8 0, i8 2}
!319 = !{i64 2149010835, i64 2149010840, i64 2149010853, i64 2149010897, i64 2149010931, i64 2149010952}
!320 = !{i64 2155410770}
!321 = !{i64 2155410983}
!322 = !{i64 2149422176}
!323 = !{i64 2149423212}
!324 = !{i64 2155394111}
!325 = !{i64 2155394326}
!326 = !{i64 2156602343}
!327 = !{i64 2156607425}
!328 = !{i32 0, i32 33}
