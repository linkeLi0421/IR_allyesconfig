; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/verbs.c_pt.bc'
source_filename = "../drivers/infiniband/core/verbs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ib_event_msg\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_event_msg\09\09\09\09"
module asm "\09.long\09__crc_ib_event_msg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_event_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_event_msg\22\09\09\09\09\09"
module asm "__kstrtabns_ib_event_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_wc_status_msg\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_wc_status_msg\09\09\09\09"
module asm "\09.long\09__crc_ib_wc_status_msg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_wc_status_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_wc_status_msg\22\09\09\09\09\09"
module asm "__kstrtabns_ib_wc_status_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_rate_to_mult\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_rate_to_mult\09\09\09\09"
module asm "\09.long\09__crc_ib_rate_to_mult\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_rate_to_mult:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_rate_to_mult\22\09\09\09\09\09"
module asm "__kstrtabns_ib_rate_to_mult:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mult_to_ib_rate\22, \22a\22\09"
module asm "\09.weak\09__crc_mult_to_ib_rate\09\09\09\09"
module asm "\09.long\09__crc_mult_to_ib_rate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mult_to_ib_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22mult_to_ib_rate\22\09\09\09\09\09"
module asm "__kstrtabns_mult_to_ib_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_rate_to_mbps\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_rate_to_mbps\09\09\09\09"
module asm "\09.long\09__crc_ib_rate_to_mbps\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_rate_to_mbps:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_rate_to_mbps\22\09\09\09\09\09"
module asm "__kstrtabns_ib_rate_to_mbps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rdma_node_get_transport\22, \22a\22\09"
module asm "\09.weak\09__crc_rdma_node_get_transport\09\09\09\09"
module asm "\09.long\09__crc_rdma_node_get_transport\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rdma_node_get_transport:\09\09\09\09\09"
module asm "\09.asciz \09\22rdma_node_get_transport\22\09\09\09\09\09"
module asm "__kstrtabns_rdma_node_get_transport:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rdma_port_get_link_layer\22, \22a\22\09"
module asm "\09.weak\09__crc_rdma_port_get_link_layer\09\09\09\09"
module asm "\09.long\09__crc_rdma_port_get_link_layer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rdma_port_get_link_layer:\09\09\09\09\09"
module asm "\09.asciz \09\22rdma_port_get_link_layer\22\09\09\09\09\09"
module asm "__kstrtabns_rdma_port_get_link_layer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__ib_alloc_pd\22, \22a\22\09"
module asm "\09.weak\09__crc___ib_alloc_pd\09\09\09\09"
module asm "\09.long\09__crc___ib_alloc_pd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ib_alloc_pd:\09\09\09\09\09"
module asm "\09.asciz \09\22__ib_alloc_pd\22\09\09\09\09\09"
module asm "__kstrtabns___ib_alloc_pd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_dealloc_pd_user\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_dealloc_pd_user\09\09\09\09"
module asm "\09.long\09__crc_ib_dealloc_pd_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_dealloc_pd_user:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_dealloc_pd_user\22\09\09\09\09\09"
module asm "__kstrtabns_ib_dealloc_pd_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rdma_copy_ah_attr\22, \22a\22\09"
module asm "\09.weak\09__crc_rdma_copy_ah_attr\09\09\09\09"
module asm "\09.long\09__crc_rdma_copy_ah_attr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rdma_copy_ah_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22rdma_copy_ah_attr\22\09\09\09\09\09"
module asm "__kstrtabns_rdma_copy_ah_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rdma_replace_ah_attr\22, \22a\22\09"
module asm "\09.weak\09__crc_rdma_replace_ah_attr\09\09\09\09"
module asm "\09.long\09__crc_rdma_replace_ah_attr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rdma_replace_ah_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22rdma_replace_ah_attr\22\09\09\09\09\09"
module asm "__kstrtabns_rdma_replace_ah_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rdma_move_ah_attr\22, \22a\22\09"
module asm "\09.weak\09__crc_rdma_move_ah_attr\09\09\09\09"
module asm "\09.long\09__crc_rdma_move_ah_attr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rdma_move_ah_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22rdma_move_ah_attr\22\09\09\09\09\09"
module asm "__kstrtabns_rdma_move_ah_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rdma_create_ah\22, \22a\22\09"
module asm "\09.weak\09__crc_rdma_create_ah\09\09\09\09"
module asm "\09.long\09__crc_rdma_create_ah\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rdma_create_ah:\09\09\09\09\09"
module asm "\09.asciz \09\22rdma_create_ah\22\09\09\09\09\09"
module asm "__kstrtabns_rdma_create_ah:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rdma_create_user_ah\22, \22a\22\09"
module asm "\09.weak\09__crc_rdma_create_user_ah\09\09\09\09"
module asm "\09.long\09__crc_rdma_create_user_ah\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rdma_create_user_ah:\09\09\09\09\09"
module asm "\09.asciz \09\22rdma_create_user_ah\22\09\09\09\09\09"
module asm "__kstrtabns_rdma_create_user_ah:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_get_rdma_header_version\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_get_rdma_header_version\09\09\09\09"
module asm "\09.long\09__crc_ib_get_rdma_header_version\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_get_rdma_header_version:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_get_rdma_header_version\22\09\09\09\09\09"
module asm "__kstrtabns_ib_get_rdma_header_version:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_get_gids_from_rdma_hdr\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_get_gids_from_rdma_hdr\09\09\09\09"
module asm "\09.long\09__crc_ib_get_gids_from_rdma_hdr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_get_gids_from_rdma_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_get_gids_from_rdma_hdr\22\09\09\09\09\09"
module asm "__kstrtabns_ib_get_gids_from_rdma_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_init_ah_attr_from_wc\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_init_ah_attr_from_wc\09\09\09\09"
module asm "\09.long\09__crc_ib_init_ah_attr_from_wc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_init_ah_attr_from_wc:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_init_ah_attr_from_wc\22\09\09\09\09\09"
module asm "__kstrtabns_ib_init_ah_attr_from_wc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rdma_move_grh_sgid_attr\22, \22a\22\09"
module asm "\09.weak\09__crc_rdma_move_grh_sgid_attr\09\09\09\09"
module asm "\09.long\09__crc_rdma_move_grh_sgid_attr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rdma_move_grh_sgid_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22rdma_move_grh_sgid_attr\22\09\09\09\09\09"
module asm "__kstrtabns_rdma_move_grh_sgid_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rdma_destroy_ah_attr\22, \22a\22\09"
module asm "\09.weak\09__crc_rdma_destroy_ah_attr\09\09\09\09"
module asm "\09.long\09__crc_rdma_destroy_ah_attr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rdma_destroy_ah_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22rdma_destroy_ah_attr\22\09\09\09\09\09"
module asm "__kstrtabns_rdma_destroy_ah_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_create_ah_from_wc\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_create_ah_from_wc\09\09\09\09"
module asm "\09.long\09__crc_ib_create_ah_from_wc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_create_ah_from_wc:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_create_ah_from_wc\22\09\09\09\09\09"
module asm "__kstrtabns_ib_create_ah_from_wc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rdma_modify_ah\22, \22a\22\09"
module asm "\09.weak\09__crc_rdma_modify_ah\09\09\09\09"
module asm "\09.long\09__crc_rdma_modify_ah\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rdma_modify_ah:\09\09\09\09\09"
module asm "\09.asciz \09\22rdma_modify_ah\22\09\09\09\09\09"
module asm "__kstrtabns_rdma_modify_ah:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rdma_query_ah\22, \22a\22\09"
module asm "\09.weak\09__crc_rdma_query_ah\09\09\09\09"
module asm "\09.long\09__crc_rdma_query_ah\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rdma_query_ah:\09\09\09\09\09"
module asm "\09.asciz \09\22rdma_query_ah\22\09\09\09\09\09"
module asm "__kstrtabns_rdma_query_ah:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rdma_destroy_ah_user\22, \22a\22\09"
module asm "\09.weak\09__crc_rdma_destroy_ah_user\09\09\09\09"
module asm "\09.long\09__crc_rdma_destroy_ah_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rdma_destroy_ah_user:\09\09\09\09\09"
module asm "\09.asciz \09\22rdma_destroy_ah_user\22\09\09\09\09\09"
module asm "__kstrtabns_rdma_destroy_ah_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_create_srq_user\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_create_srq_user\09\09\09\09"
module asm "\09.long\09__crc_ib_create_srq_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_create_srq_user:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_create_srq_user\22\09\09\09\09\09"
module asm "__kstrtabns_ib_create_srq_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_modify_srq\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_modify_srq\09\09\09\09"
module asm "\09.long\09__crc_ib_modify_srq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_modify_srq:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_modify_srq\22\09\09\09\09\09"
module asm "__kstrtabns_ib_modify_srq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_query_srq\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_query_srq\09\09\09\09"
module asm "\09.long\09__crc_ib_query_srq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_query_srq:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_query_srq\22\09\09\09\09\09"
module asm "__kstrtabns_ib_query_srq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_destroy_srq_user\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_destroy_srq_user\09\09\09\09"
module asm "\09.long\09__crc_ib_destroy_srq_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_destroy_srq_user:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_destroy_srq_user\22\09\09\09\09\09"
module asm "__kstrtabns_ib_destroy_srq_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_open_qp\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_open_qp\09\09\09\09"
module asm "\09.long\09__crc_ib_open_qp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_open_qp:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_open_qp\22\09\09\09\09\09"
module asm "__kstrtabns_ib_open_qp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_create_qp_user\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_create_qp_user\09\09\09\09"
module asm "\09.long\09__crc_ib_create_qp_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_create_qp_user:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_create_qp_user\22\09\09\09\09\09"
module asm "__kstrtabns_ib_create_qp_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_qp_usecnt_inc\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_qp_usecnt_inc\09\09\09\09"
module asm "\09.long\09__crc_ib_qp_usecnt_inc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_qp_usecnt_inc:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_qp_usecnt_inc\22\09\09\09\09\09"
module asm "__kstrtabns_ib_qp_usecnt_inc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_qp_usecnt_dec\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_qp_usecnt_dec\09\09\09\09"
module asm "\09.long\09__crc_ib_qp_usecnt_dec\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_qp_usecnt_dec:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_qp_usecnt_dec\22\09\09\09\09\09"
module asm "__kstrtabns_ib_qp_usecnt_dec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_create_qp_kernel\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_create_qp_kernel\09\09\09\09"
module asm "\09.long\09__crc_ib_create_qp_kernel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_create_qp_kernel:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_create_qp_kernel\22\09\09\09\09\09"
module asm "__kstrtabns_ib_create_qp_kernel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_modify_qp_is_ok\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_modify_qp_is_ok\09\09\09\09"
module asm "\09.long\09__crc_ib_modify_qp_is_ok\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_modify_qp_is_ok:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_modify_qp_is_ok\22\09\09\09\09\09"
module asm "__kstrtabns_ib_modify_qp_is_ok:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_modify_qp_with_udata\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_modify_qp_with_udata\09\09\09\09"
module asm "\09.long\09__crc_ib_modify_qp_with_udata\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_modify_qp_with_udata:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_modify_qp_with_udata\22\09\09\09\09\09"
module asm "__kstrtabns_ib_modify_qp_with_udata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_get_eth_speed\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_get_eth_speed\09\09\09\09"
module asm "\09.long\09__crc_ib_get_eth_speed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_get_eth_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_get_eth_speed\22\09\09\09\09\09"
module asm "__kstrtabns_ib_get_eth_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_modify_qp\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_modify_qp\09\09\09\09"
module asm "\09.long\09__crc_ib_modify_qp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_modify_qp:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_modify_qp\22\09\09\09\09\09"
module asm "__kstrtabns_ib_modify_qp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_query_qp\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_query_qp\09\09\09\09"
module asm "\09.long\09__crc_ib_query_qp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_query_qp:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_query_qp\22\09\09\09\09\09"
module asm "__kstrtabns_ib_query_qp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_close_qp\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_close_qp\09\09\09\09"
module asm "\09.long\09__crc_ib_close_qp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_close_qp:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_close_qp\22\09\09\09\09\09"
module asm "__kstrtabns_ib_close_qp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_destroy_qp_user\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_destroy_qp_user\09\09\09\09"
module asm "\09.long\09__crc_ib_destroy_qp_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_destroy_qp_user:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_destroy_qp_user\22\09\09\09\09\09"
module asm "__kstrtabns_ib_destroy_qp_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__ib_create_cq\22, \22a\22\09"
module asm "\09.weak\09__crc___ib_create_cq\09\09\09\09"
module asm "\09.long\09__crc___ib_create_cq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ib_create_cq:\09\09\09\09\09"
module asm "\09.asciz \09\22__ib_create_cq\22\09\09\09\09\09"
module asm "__kstrtabns___ib_create_cq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rdma_set_cq_moderation\22, \22a\22\09"
module asm "\09.weak\09__crc_rdma_set_cq_moderation\09\09\09\09"
module asm "\09.long\09__crc_rdma_set_cq_moderation\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rdma_set_cq_moderation:\09\09\09\09\09"
module asm "\09.asciz \09\22rdma_set_cq_moderation\22\09\09\09\09\09"
module asm "__kstrtabns_rdma_set_cq_moderation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_destroy_cq_user\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_destroy_cq_user\09\09\09\09"
module asm "\09.long\09__crc_ib_destroy_cq_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_destroy_cq_user:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_destroy_cq_user\22\09\09\09\09\09"
module asm "__kstrtabns_ib_destroy_cq_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_resize_cq\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_resize_cq\09\09\09\09"
module asm "\09.long\09__crc_ib_resize_cq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_resize_cq:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_resize_cq\22\09\09\09\09\09"
module asm "__kstrtabns_ib_resize_cq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_reg_user_mr\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_reg_user_mr\09\09\09\09"
module asm "\09.long\09__crc_ib_reg_user_mr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_reg_user_mr:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_reg_user_mr\22\09\09\09\09\09"
module asm "__kstrtabns_ib_reg_user_mr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_advise_mr\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_advise_mr\09\09\09\09"
module asm "\09.long\09__crc_ib_advise_mr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_advise_mr:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_advise_mr\22\09\09\09\09\09"
module asm "__kstrtabns_ib_advise_mr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_dereg_mr_user\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_dereg_mr_user\09\09\09\09"
module asm "\09.long\09__crc_ib_dereg_mr_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_dereg_mr_user:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_dereg_mr_user\22\09\09\09\09\09"
module asm "__kstrtabns_ib_dereg_mr_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_alloc_mr\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_alloc_mr\09\09\09\09"
module asm "\09.long\09__crc_ib_alloc_mr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_alloc_mr:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_alloc_mr\22\09\09\09\09\09"
module asm "__kstrtabns_ib_alloc_mr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_alloc_mr_integrity\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_alloc_mr_integrity\09\09\09\09"
module asm "\09.long\09__crc_ib_alloc_mr_integrity\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_alloc_mr_integrity:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_alloc_mr_integrity\22\09\09\09\09\09"
module asm "__kstrtabns_ib_alloc_mr_integrity:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_attach_mcast\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_attach_mcast\09\09\09\09"
module asm "\09.long\09__crc_ib_attach_mcast\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_attach_mcast:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_attach_mcast\22\09\09\09\09\09"
module asm "__kstrtabns_ib_attach_mcast:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_detach_mcast\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_detach_mcast\09\09\09\09"
module asm "\09.long\09__crc_ib_detach_mcast\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_detach_mcast:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_detach_mcast\22\09\09\09\09\09"
module asm "__kstrtabns_ib_detach_mcast:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_alloc_xrcd_user\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_alloc_xrcd_user\09\09\09\09"
module asm "\09.long\09__crc_ib_alloc_xrcd_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_alloc_xrcd_user:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_alloc_xrcd_user\22\09\09\09\09\09"
module asm "__kstrtabns_ib_alloc_xrcd_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_dealloc_xrcd_user\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_dealloc_xrcd_user\09\09\09\09"
module asm "\09.long\09__crc_ib_dealloc_xrcd_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_dealloc_xrcd_user:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_dealloc_xrcd_user\22\09\09\09\09\09"
module asm "__kstrtabns_ib_dealloc_xrcd_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_create_wq\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_create_wq\09\09\09\09"
module asm "\09.long\09__crc_ib_create_wq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_create_wq:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_create_wq\22\09\09\09\09\09"
module asm "__kstrtabns_ib_create_wq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_destroy_wq_user\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_destroy_wq_user\09\09\09\09"
module asm "\09.long\09__crc_ib_destroy_wq_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_destroy_wq_user:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_destroy_wq_user\22\09\09\09\09\09"
module asm "__kstrtabns_ib_destroy_wq_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_check_mr_status\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_check_mr_status\09\09\09\09"
module asm "\09.long\09__crc_ib_check_mr_status\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_check_mr_status:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_check_mr_status\22\09\09\09\09\09"
module asm "__kstrtabns_ib_check_mr_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_set_vf_link_state\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_set_vf_link_state\09\09\09\09"
module asm "\09.long\09__crc_ib_set_vf_link_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_set_vf_link_state:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_set_vf_link_state\22\09\09\09\09\09"
module asm "__kstrtabns_ib_set_vf_link_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_get_vf_config\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_get_vf_config\09\09\09\09"
module asm "\09.long\09__crc_ib_get_vf_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_get_vf_config:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_get_vf_config\22\09\09\09\09\09"
module asm "__kstrtabns_ib_get_vf_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_get_vf_stats\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_get_vf_stats\09\09\09\09"
module asm "\09.long\09__crc_ib_get_vf_stats\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_get_vf_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_get_vf_stats\22\09\09\09\09\09"
module asm "__kstrtabns_ib_get_vf_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_set_vf_guid\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_set_vf_guid\09\09\09\09"
module asm "\09.long\09__crc_ib_set_vf_guid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_set_vf_guid:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_set_vf_guid\22\09\09\09\09\09"
module asm "__kstrtabns_ib_set_vf_guid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_get_vf_guid\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_get_vf_guid\09\09\09\09"
module asm "\09.long\09__crc_ib_get_vf_guid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_get_vf_guid:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_get_vf_guid\22\09\09\09\09\09"
module asm "__kstrtabns_ib_get_vf_guid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_map_mr_sg_pi\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_map_mr_sg_pi\09\09\09\09"
module asm "\09.long\09__crc_ib_map_mr_sg_pi\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_map_mr_sg_pi:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_map_mr_sg_pi\22\09\09\09\09\09"
module asm "__kstrtabns_ib_map_mr_sg_pi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_map_mr_sg\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_map_mr_sg\09\09\09\09"
module asm "\09.long\09__crc_ib_map_mr_sg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_map_mr_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_map_mr_sg\22\09\09\09\09\09"
module asm "__kstrtabns_ib_map_mr_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_sg_to_pages\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_sg_to_pages\09\09\09\09"
module asm "\09.long\09__crc_ib_sg_to_pages\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_sg_to_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_sg_to_pages\22\09\09\09\09\09"
module asm "__kstrtabns_ib_sg_to_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_drain_sq\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_drain_sq\09\09\09\09"
module asm "\09.long\09__crc_ib_drain_sq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_drain_sq:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_drain_sq\22\09\09\09\09\09"
module asm "__kstrtabns_ib_drain_sq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_drain_rq\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_drain_rq\09\09\09\09"
module asm "\09.long\09__crc_ib_drain_rq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_drain_rq:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_drain_rq\22\09\09\09\09\09"
module asm "__kstrtabns_ib_drain_rq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_drain_qp\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_drain_qp\09\09\09\09"
module asm "\09.long\09__crc_ib_drain_qp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_drain_qp:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_drain_qp\22\09\09\09\09\09"
module asm "__kstrtabns_ib_drain_qp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rdma_alloc_netdev\22, \22a\22\09"
module asm "\09.weak\09__crc_rdma_alloc_netdev\09\09\09\09"
module asm "\09.long\09__crc_rdma_alloc_netdev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rdma_alloc_netdev:\09\09\09\09\09"
module asm "\09.asciz \09\22rdma_alloc_netdev\22\09\09\09\09\09"
module asm "__kstrtabns_rdma_alloc_netdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rdma_init_netdev\22, \22a\22\09"
module asm "\09.weak\09__crc_rdma_init_netdev\09\09\09\09"
module asm "\09.long\09__crc_rdma_init_netdev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rdma_init_netdev:\09\09\09\09\09"
module asm "\09.asciz \09\22rdma_init_netdev\22\09\09\09\09\09"
module asm "__kstrtabns_rdma_init_netdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__rdma_block_iter_start\22, \22a\22\09"
module asm "\09.weak\09__crc___rdma_block_iter_start\09\09\09\09"
module asm "\09.long\09__crc___rdma_block_iter_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___rdma_block_iter_start:\09\09\09\09\09"
module asm "\09.asciz \09\22__rdma_block_iter_start\22\09\09\09\09\09"
module asm "__kstrtabns___rdma_block_iter_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__rdma_block_iter_next\22, \22a\22\09"
module asm "\09.weak\09__crc___rdma_block_iter_next\09\09\09\09"
module asm "\09.long\09__crc___rdma_block_iter_next\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___rdma_block_iter_next:\09\09\09\09\09"
module asm "\09.asciz \09\22__rdma_block_iter_next\22\09\09\09\09\09"
module asm "__kstrtabns___rdma_block_iter_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rdma_alloc_hw_stats_struct\22, \22a\22\09"
module asm "\09.weak\09__crc_rdma_alloc_hw_stats_struct\09\09\09\09"
module asm "\09.long\09__crc_rdma_alloc_hw_stats_struct\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rdma_alloc_hw_stats_struct:\09\09\09\09\09"
module asm "\09.asciz \09\22rdma_alloc_hw_stats_struct\22\09\09\09\09\09"
module asm "__kstrtabns_rdma_alloc_hw_stats_struct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rdma_free_hw_stats_struct\22, \22a\22\09"
module asm "\09.weak\09__crc_rdma_free_hw_stats_struct\09\09\09\09"
module asm "\09.long\09__crc_rdma_free_hw_stats_struct\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rdma_free_hw_stats_struct:\09\09\09\09\09"
module asm "\09.asciz \09\22rdma_free_hw_stats_struct\22\09\09\09\09\09"
module asm "__kstrtabns_rdma_free_hw_stats_struct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.183 = type { i32, [11 x i32], [11 x i32] }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.128 }
%union.anon.128 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.181, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.181 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.168 }
%struct.anon.168 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.129, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.129 = type { %struct.list_head }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.169 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.164 }
%struct.anon.164 = type { i64, i64 }
%union.anon.169 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.ib_port_data = type { ptr, %struct.ib_port_immutable, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.ib_port_cache, ptr, %struct.hlist_node, %struct.rdma_port_counter, ptr }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%struct.ib_port_cache = type { i64, ptr, ptr, i8, i32 }
%struct.rdma_port_counter = type { %struct.rdma_counter_mode, ptr, i32, %struct.mutex }
%struct.rdma_counter_mode = type { i32, i32, %struct.auto_mode_param }
%struct.auto_mode_param = type { i32 }
%struct.ib_gid_attr = type { ptr, ptr, %union.ib_gid, i32, i16, i32 }
%struct.rdma_ah_init_attr = type { ptr, i32, ptr }
%struct.ib_ah = type { ptr, ptr, ptr, ptr, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.anon.182 = type { [20 x i8], %struct.iphdr }
%struct.ib_grh = type { i32, i16, i8, i8, %union.ib_gid, %union.ib_gid }
%struct.find_gid_index_context = type { i16, i32 }
%struct.ib_wc = type { %union.anon.139, i32, i32, i32, i32, ptr, %union.anon.140, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.139 = type { i64 }
%union.anon.140 = type { i32 }
%struct.ib_ah_attr = type { i16, i8 }
%struct.ib_srq = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.anon.132, %struct.rdma_restrack_entry }
%struct.anon.132 = type { ptr, %union.anon.133 }
%union.anon.133 = type { %struct.anon.134 }
%struct.anon.134 = type { ptr, i32 }
%struct.ib_srq_init_attr = type { ptr, ptr, %struct.ib_srq_attr, i32, %struct.anon.170 }
%struct.ib_srq_attr = type { i32, i32, i32 }
%struct.anon.170 = type { ptr, %union.anon.171 }
%union.anon.171 = type { %struct.anon.172 }
%struct.anon.172 = type { ptr }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.141, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.141 = type { %struct.work_struct }
%struct.ib_xrcd = type { ptr, %struct.atomic_t, ptr, %struct.rw_semaphore, %struct.xarray }
%struct.ib_qp_open_attr = type { ptr, ptr, i32, i32 }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.ib_rwq_ind_table = type { ptr, ptr, %struct.atomic_t, i32, i32, ptr }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.158, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.158 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.142, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.163, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.142 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.163 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ib_dm = type { ptr, i32, i32, ptr, %struct.atomic_t }
%struct.ib_wq_init_attr = type { ptr, i32, i32, i32, ptr, ptr, i32 }
%struct.ib_wq = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ib_drain_cqe = type { %struct.ib_cqe, %struct.completion }
%struct.ib_cqe = type { ptr }
%struct.ib_rdma_wr = type { %struct.ib_send_wr, i64, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.165, ptr, i32, i32, i32, %union.anon.166 }
%union.anon.165 = type { i64 }
%union.anon.166 = type { i32 }
%struct.ib_recv_wr = type { ptr, %union.anon.167, ptr, i32 }
%union.anon.167 = type { i64 }
%struct.rdma_netdev_alloc_params = type { i32, i32, i32, ptr, ptr }
%struct.ib_block_iter = type { ptr, i32, i32, i32, i32 }
%struct.rdma_hw_stats = type { %struct.mutex, i32, i32, ptr, ptr, i32, [0 x i64] }
%struct.ib_event = type { ptr, %union.anon.131, i32 }
%union.anon.131 = type { ptr }

@ib_events = internal constant { [19 x ptr], [52 x i8] } { [19 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unrecognized event\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_ib_event_msg = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_event_msg = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_event_msg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_event_msg to i32), ptr @__kstrtab_ib_event_msg, ptr @__kstrtabns_ib_event_msg }, section "___ksymtab+ib_event_msg", align 4
@wc_statuses = internal constant { [22 x ptr], [40 x i8] } { [22 x ptr] [ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unrecognized status\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_ib_wc_status_msg = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_wc_status_msg = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_wc_status_msg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_wc_status_msg to i32), ptr @__kstrtab_ib_wc_status_msg, ptr @__kstrtabns_ib_wc_status_msg }, section "___ksymtab+ib_wc_status_msg", align 4
@__kstrtab_ib_rate_to_mult = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_rate_to_mult = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_rate_to_mult = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_rate_to_mult to i32), ptr @__kstrtab_ib_rate_to_mult, ptr @__kstrtabns_ib_rate_to_mult }, section "___ksymtab+ib_rate_to_mult", align 4
@__kstrtab_mult_to_ib_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_mult_to_ib_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_mult_to_ib_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mult_to_ib_rate to i32), ptr @__kstrtab_mult_to_ib_rate, ptr @__kstrtabns_mult_to_ib_rate }, section "___ksymtab+mult_to_ib_rate", align 4
@__kstrtab_ib_rate_to_mbps = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_rate_to_mbps = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_rate_to_mbps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_rate_to_mbps to i32), ptr @__kstrtab_ib_rate_to_mbps, ptr @__kstrtabns_ib_rate_to_mbps }, section "___ksymtab+ib_rate_to_mbps", align 4
@__kstrtab_rdma_node_get_transport = external dso_local constant [0 x i8], align 1
@__kstrtabns_rdma_node_get_transport = external dso_local constant [0 x i8], align 1
@__ksymtab_rdma_node_get_transport = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rdma_node_get_transport to i32), ptr @__kstrtab_rdma_node_get_transport, ptr @__kstrtabns_rdma_node_get_transport }, section "___ksymtab+rdma_node_get_transport", align 4
@__kstrtab_rdma_port_get_link_layer = external dso_local constant [0 x i8], align 1
@__kstrtabns_rdma_port_get_link_layer = external dso_local constant [0 x i8], align 1
@__ksymtab_rdma_port_get_link_layer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rdma_port_get_link_layer to i32), ptr @__kstrtab_rdma_port_get_link_layer, ptr @__kstrtabns_rdma_port_get_link_layer }, section "___ksymtab+rdma_port_get_link_layer", align 4
@__ib_alloc_pd._entry = internal constant %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 293, ptr null, ptr null }, align 1
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014%s: enabling unsafe global rkey\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"__ib_alloc_pd\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/infiniband/core/verbs.c\00", [32 x i8] zeroinitializer }, align 32
@__ib_alloc_pd._entry_ptr = internal global ptr @__ib_alloc_pd._entry, section ".printk_index", align 4
@__kstrtab___ib_alloc_pd = external dso_local constant [0 x i8], align 1
@__kstrtabns___ib_alloc_pd = external dso_local constant [0 x i8], align 1
@__ksymtab___ib_alloc_pd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ib_alloc_pd to i32), ptr @__kstrtab___ib_alloc_pd, ptr @__kstrtabns___ib_alloc_pd }, section "___ksymtab+__ib_alloc_pd", align 4
@__kstrtab_ib_dealloc_pd_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_dealloc_pd_user = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_dealloc_pd_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_dealloc_pd_user to i32), ptr @__kstrtab_ib_dealloc_pd_user, ptr @__kstrtabns_ib_dealloc_pd_user }, section "___ksymtab+ib_dealloc_pd_user", align 4
@__kstrtab_rdma_copy_ah_attr = external dso_local constant [0 x i8], align 1
@__kstrtabns_rdma_copy_ah_attr = external dso_local constant [0 x i8], align 1
@__ksymtab_rdma_copy_ah_attr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rdma_copy_ah_attr to i32), ptr @__kstrtab_rdma_copy_ah_attr, ptr @__kstrtabns_rdma_copy_ah_attr }, section "___ksymtab+rdma_copy_ah_attr", align 4
@__kstrtab_rdma_replace_ah_attr = external dso_local constant [0 x i8], align 1
@__kstrtabns_rdma_replace_ah_attr = external dso_local constant [0 x i8], align 1
@__ksymtab_rdma_replace_ah_attr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rdma_replace_ah_attr to i32), ptr @__kstrtab_rdma_replace_ah_attr, ptr @__kstrtabns_rdma_replace_ah_attr }, section "___ksymtab+rdma_replace_ah_attr", align 4
@__kstrtab_rdma_move_ah_attr = external dso_local constant [0 x i8], align 1
@__kstrtabns_rdma_move_ah_attr = external dso_local constant [0 x i8], align 1
@__ksymtab_rdma_move_ah_attr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rdma_move_ah_attr to i32), ptr @__kstrtab_rdma_move_ah_attr, ptr @__kstrtabns_rdma_move_ah_attr }, section "___ksymtab+rdma_move_ah_attr", align 4
@__kstrtab_rdma_create_ah = external dso_local constant [0 x i8], align 1
@__kstrtabns_rdma_create_ah = external dso_local constant [0 x i8], align 1
@__ksymtab_rdma_create_ah = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rdma_create_ah to i32), ptr @__kstrtab_rdma_create_ah, ptr @__kstrtabns_rdma_create_ah }, section "___ksymtab+rdma_create_ah", align 4
@__kstrtab_rdma_create_user_ah = external dso_local constant [0 x i8], align 1
@__kstrtabns_rdma_create_user_ah = external dso_local constant [0 x i8], align 1
@__ksymtab_rdma_create_user_ah = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rdma_create_user_ah to i32), ptr @__kstrtab_rdma_create_user_ah, ptr @__kstrtabns_rdma_create_user_ah }, section "___ksymtab+rdma_create_user_ah", align 4
@__kstrtab_ib_get_rdma_header_version = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_get_rdma_header_version = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_get_rdma_header_version = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_get_rdma_header_version to i32), ptr @__kstrtab_ib_get_rdma_header_version, ptr @__kstrtabns_ib_get_rdma_header_version }, section "___ksymtab+ib_get_rdma_header_version", align 4
@__kstrtab_ib_get_gids_from_rdma_hdr = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_get_gids_from_rdma_hdr = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_get_gids_from_rdma_hdr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_get_gids_from_rdma_hdr to i32), ptr @__kstrtab_ib_get_gids_from_rdma_hdr, ptr @__kstrtabns_ib_get_gids_from_rdma_hdr }, section "___ksymtab+ib_get_gids_from_rdma_hdr", align 4
@__kstrtab_ib_init_ah_attr_from_wc = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_init_ah_attr_from_wc = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_init_ah_attr_from_wc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_init_ah_attr_from_wc to i32), ptr @__kstrtab_ib_init_ah_attr_from_wc, ptr @__kstrtabns_ib_init_ah_attr_from_wc }, section "___ksymtab+ib_init_ah_attr_from_wc", align 4
@__kstrtab_rdma_move_grh_sgid_attr = external dso_local constant [0 x i8], align 1
@__kstrtabns_rdma_move_grh_sgid_attr = external dso_local constant [0 x i8], align 1
@__ksymtab_rdma_move_grh_sgid_attr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rdma_move_grh_sgid_attr to i32), ptr @__kstrtab_rdma_move_grh_sgid_attr, ptr @__kstrtabns_rdma_move_grh_sgid_attr }, section "___ksymtab+rdma_move_grh_sgid_attr", align 4
@__kstrtab_rdma_destroy_ah_attr = external dso_local constant [0 x i8], align 1
@__kstrtabns_rdma_destroy_ah_attr = external dso_local constant [0 x i8], align 1
@__ksymtab_rdma_destroy_ah_attr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rdma_destroy_ah_attr to i32), ptr @__kstrtab_rdma_destroy_ah_attr, ptr @__kstrtabns_rdma_destroy_ah_attr }, section "___ksymtab+rdma_destroy_ah_attr", align 4
@__kstrtab_ib_create_ah_from_wc = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_create_ah_from_wc = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_create_ah_from_wc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_create_ah_from_wc to i32), ptr @__kstrtab_ib_create_ah_from_wc, ptr @__kstrtabns_ib_create_ah_from_wc }, section "___ksymtab+ib_create_ah_from_wc", align 4
@__kstrtab_rdma_modify_ah = external dso_local constant [0 x i8], align 1
@__kstrtabns_rdma_modify_ah = external dso_local constant [0 x i8], align 1
@__ksymtab_rdma_modify_ah = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rdma_modify_ah to i32), ptr @__kstrtab_rdma_modify_ah, ptr @__kstrtabns_rdma_modify_ah }, section "___ksymtab+rdma_modify_ah", align 4
@__kstrtab_rdma_query_ah = external dso_local constant [0 x i8], align 1
@__kstrtabns_rdma_query_ah = external dso_local constant [0 x i8], align 1
@__ksymtab_rdma_query_ah = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rdma_query_ah to i32), ptr @__kstrtab_rdma_query_ah, ptr @__kstrtabns_rdma_query_ah }, section "___ksymtab+rdma_query_ah", align 4
@__kstrtab_rdma_destroy_ah_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_rdma_destroy_ah_user = external dso_local constant [0 x i8], align 1
@__ksymtab_rdma_destroy_ah_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rdma_destroy_ah_user to i32), ptr @__kstrtab_rdma_destroy_ah_user, ptr @__kstrtabns_rdma_destroy_ah_user }, section "___ksymtab+rdma_destroy_ah_user", align 4
@__kstrtab_ib_create_srq_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_create_srq_user = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_create_srq_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_create_srq_user to i32), ptr @__kstrtab_ib_create_srq_user, ptr @__kstrtabns_ib_create_srq_user }, section "___ksymtab+ib_create_srq_user", align 4
@__kstrtab_ib_modify_srq = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_modify_srq = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_modify_srq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_modify_srq to i32), ptr @__kstrtab_ib_modify_srq, ptr @__kstrtabns_ib_modify_srq }, section "___ksymtab+ib_modify_srq", align 4
@__kstrtab_ib_query_srq = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_query_srq = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_query_srq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_query_srq to i32), ptr @__kstrtab_ib_query_srq, ptr @__kstrtabns_ib_query_srq }, section "___ksymtab+ib_query_srq", align 4
@__kstrtab_ib_destroy_srq_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_destroy_srq_user = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_destroy_srq_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_destroy_srq_user to i32), ptr @__kstrtab_ib_destroy_srq_user, ptr @__kstrtabns_ib_destroy_srq_user }, section "___ksymtab+ib_destroy_srq_user", align 4
@__kstrtab_ib_open_qp = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_open_qp = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_open_qp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_open_qp to i32), ptr @__kstrtab_ib_open_qp, ptr @__kstrtabns_ib_open_qp }, section "___ksymtab+ib_open_qp", align 4
@__kstrtab_ib_create_qp_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_create_qp_user = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_create_qp_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_create_qp_user to i32), ptr @__kstrtab_ib_create_qp_user, ptr @__kstrtabns_ib_create_qp_user }, section "___ksymtab+ib_create_qp_user", align 4
@__kstrtab_ib_qp_usecnt_inc = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_qp_usecnt_inc = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_qp_usecnt_inc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_qp_usecnt_inc to i32), ptr @__kstrtab_ib_qp_usecnt_inc, ptr @__kstrtabns_ib_qp_usecnt_inc }, section "___ksymtab+ib_qp_usecnt_inc", align 4
@__kstrtab_ib_qp_usecnt_dec = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_qp_usecnt_dec = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_qp_usecnt_dec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_qp_usecnt_dec to i32), ptr @__kstrtab_ib_qp_usecnt_dec, ptr @__kstrtabns_ib_qp_usecnt_dec }, section "___ksymtab+ib_qp_usecnt_dec", align 4
@__kstrtab_ib_create_qp_kernel = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_create_qp_kernel = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_create_qp_kernel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_create_qp_kernel to i32), ptr @__kstrtab_ib_create_qp_kernel, ptr @__kstrtabns_ib_create_qp_kernel }, section "___ksymtab+ib_create_qp_kernel", align 4
@qp_state_table = internal constant { [7 x [7 x %struct.anon.183]], [1124 x i8] } { [7 x [7 x %struct.anon.183]] [[7 x %struct.anon.183] [%struct.anon.183 { i32 1, [11 x i32] zeroinitializer, [11 x i32] zeroinitializer }, %struct.anon.183 { i32 1, [11 x i32] [i32 80, i32 80, i32 56, i32 56, i32 112, i32 0, i32 0, i32 0, i32 32, i32 56, i32 56], [11 x i32] zeroinitializer }, %struct.anon.183 zeroinitializer, %struct.anon.183 zeroinitializer, %struct.anon.183 zeroinitializer, %struct.anon.183 zeroinitializer, %struct.anon.183 zeroinitializer], [7 x %struct.anon.183] [%struct.anon.183 { i32 1, [11 x i32] zeroinitializer, [11 x i32] zeroinitializer }, %struct.anon.183 { i32 1, [11 x i32] zeroinitializer, [11 x i32] [i32 80, i32 80, i32 56, i32 56, i32 112, i32 0, i32 0, i32 0, i32 0, i32 56, i32 56] }, %struct.anon.183 { i32 1, [11 x i32] [i32 0, i32 0, i32 1216896, i32 1053056, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1053056, i32 1216896], [11 x i32] [i32 80, i32 80, i32 16408, i32 16408, i32 80, i32 0, i32 0, i32 0, i32 0, i32 16408, i32 16408] }, %struct.anon.183 zeroinitializer, %struct.anon.183 zeroinitializer, %struct.anon.183 zeroinitializer, %struct.anon.183 { i32 1, [11 x i32] zeroinitializer, [11 x i32] zeroinitializer }], [7 x %struct.anon.183] [%struct.anon.183 { i32 1, [11 x i32] zeroinitializer, [11 x i32] zeroinitializer }, %struct.anon.183 zeroinitializer, %struct.anon.183 zeroinitializer, %struct.anon.183 { i32 1, [11 x i32] [i32 65536, i32 65536, i32 77312, i32 65536, i32 65536, i32 0, i32 0, i32 0, i32 0, i32 77312, i32 66048], [11 x i32] [i32 66, i32 66, i32 311306, i32 278538, i32 66, i32 0, i32 0, i32 0, i32 33554432, i32 278538, i32 311306] }, %struct.anon.183 zeroinitializer, %struct.anon.183 zeroinitializer, %struct.anon.183 { i32 1, [11 x i32] zeroinitializer, [11 x i32] zeroinitializer }], [7 x %struct.anon.183] [%struct.anon.183 { i32 1, [11 x i32] zeroinitializer, [11 x i32] zeroinitializer }, %struct.anon.183 zeroinitializer, %struct.anon.183 zeroinitializer, %struct.anon.183 { i32 1, [11 x i32] zeroinitializer, [11 x i32] [i32 66, i32 66, i32 311306, i32 278538, i32 66, i32 0, i32 0, i32 0, i32 33554432, i32 278538, i32 311306] }, %struct.anon.183 { i32 1, [11 x i32] zeroinitializer, [11 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4] }, %struct.anon.183 zeroinitializer, %struct.anon.183 { i32 1, [11 x i32] zeroinitializer, [11 x i32] zeroinitializer }], [7 x %struct.anon.183] [%struct.anon.183 { i32 1, [11 x i32] zeroinitializer, [11 x i32] zeroinitializer }, %struct.anon.183 zeroinitializer, %struct.anon.183 zeroinitializer, %struct.anon.183 { i32 1, [11 x i32] zeroinitializer, [11 x i32] [i32 66, i32 66, i32 311306, i32 278538, i32 66, i32 0, i32 0, i32 0, i32 0, i32 278538, i32 311306] }, %struct.anon.183 { i32 1, [11 x i32] zeroinitializer, [11 x i32] [i32 80, i32 80, i32 454328, i32 278680, i32 80, i32 0, i32 0, i32 0, i32 0, i32 290488, i32 443064] }, %struct.anon.183 zeroinitializer, %struct.anon.183 { i32 1, [11 x i32] zeroinitializer, [11 x i32] zeroinitializer }], [7 x %struct.anon.183] [%struct.anon.183 { i32 1, [11 x i32] zeroinitializer, [11 x i32] zeroinitializer }, %struct.anon.183 zeroinitializer, %struct.anon.183 zeroinitializer, %struct.anon.183 { i32 1, [11 x i32] zeroinitializer, [11 x i32] [i32 66, i32 66, i32 0, i32 10, i32 66, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.anon.183 zeroinitializer, %struct.anon.183 zeroinitializer, %struct.anon.183 { i32 1, [11 x i32] zeroinitializer, [11 x i32] zeroinitializer }], [7 x %struct.anon.183] [%struct.anon.183 { i32 1, [11 x i32] zeroinitializer, [11 x i32] zeroinitializer }, %struct.anon.183 zeroinitializer, %struct.anon.183 zeroinitializer, %struct.anon.183 zeroinitializer, %struct.anon.183 zeroinitializer, %struct.anon.183 zeroinitializer, %struct.anon.183 { i32 1, [11 x i32] zeroinitializer, [11 x i32] zeroinitializer }]], [1124 x i8] zeroinitializer }, align 32
@__kstrtab_ib_modify_qp_is_ok = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_modify_qp_is_ok = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_modify_qp_is_ok = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_modify_qp_is_ok to i32), ptr @__kstrtab_ib_modify_qp_is_ok, ptr @__kstrtabns_ib_modify_qp_is_ok }, section "___ksymtab+ib_modify_qp_is_ok", align 4
@__kstrtab_ib_modify_qp_with_udata = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_modify_qp_with_udata = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_modify_qp_with_udata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_modify_qp_with_udata to i32), ptr @__kstrtab_ib_modify_qp_with_udata, ptr @__kstrtabns_ib_modify_qp_with_udata }, section "___ksymtab+ib_modify_qp_with_udata", align 4
@ib_get_eth_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 1914, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014%s speed is unknown, defaulting to %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ib_get_eth_speed\00", [47 x i8] zeroinitializer }, align 32
@ib_get_eth_speed._entry_ptr = internal global ptr @ib_get_eth_speed._entry, section ".printk_index", align 4
@__kstrtab_ib_get_eth_speed = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_get_eth_speed = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_get_eth_speed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_get_eth_speed to i32), ptr @__kstrtab_ib_get_eth_speed, ptr @__kstrtabns_ib_get_eth_speed }, section "___ksymtab+ib_get_eth_speed", align 4
@__kstrtab_ib_modify_qp = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_modify_qp = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_modify_qp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_modify_qp to i32), ptr @__kstrtab_ib_modify_qp, ptr @__kstrtabns_ib_modify_qp }, section "___ksymtab+ib_modify_qp", align 4
@__kstrtab_ib_query_qp = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_query_qp = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_query_qp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_query_qp to i32), ptr @__kstrtab_ib_query_qp, ptr @__kstrtabns_ib_query_qp }, section "___ksymtab+ib_query_qp", align 4
@__kstrtab_ib_close_qp = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_close_qp = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_close_qp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_close_qp to i32), ptr @__kstrtab_ib_close_qp, ptr @__kstrtabns_ib_close_qp }, section "___ksymtab+ib_close_qp", align 4
@ib_destroy_qp_user.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ib_destroy_qp_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_destroy_qp_user = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_destroy_qp_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_destroy_qp_user to i32), ptr @__kstrtab_ib_destroy_qp_user, ptr @__kstrtabns_ib_destroy_qp_user }, section "___ksymtab+ib_destroy_qp_user", align 4
@__kstrtab___ib_create_cq = external dso_local constant [0 x i8], align 1
@__kstrtabns___ib_create_cq = external dso_local constant [0 x i8], align 1
@__ksymtab___ib_create_cq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ib_create_cq to i32), ptr @__kstrtab___ib_create_cq, ptr @__kstrtabns___ib_create_cq }, section "___ksymtab+__ib_create_cq", align 4
@__kstrtab_rdma_set_cq_moderation = external dso_local constant [0 x i8], align 1
@__kstrtabns_rdma_set_cq_moderation = external dso_local constant [0 x i8], align 1
@__ksymtab_rdma_set_cq_moderation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rdma_set_cq_moderation to i32), ptr @__kstrtab_rdma_set_cq_moderation, ptr @__kstrtabns_rdma_set_cq_moderation }, section "___ksymtab+rdma_set_cq_moderation", align 4
@ib_destroy_cq_user.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ib_destroy_cq_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_destroy_cq_user = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_destroy_cq_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_destroy_cq_user to i32), ptr @__kstrtab_ib_destroy_cq_user, ptr @__kstrtabns_ib_destroy_cq_user }, section "___ksymtab+ib_destroy_cq_user", align 4
@__kstrtab_ib_resize_cq = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_resize_cq = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_resize_cq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_resize_cq to i32), ptr @__kstrtab_ib_resize_cq, ptr @__kstrtabns_ib_resize_cq }, section "___ksymtab+ib_resize_cq", align 4
@ib_reg_user_mr.__UNIQUE_ID_ddebug573 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.4, ptr @.str.9, i8 2, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ib_core\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ib_reg_user_mr\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ODP support not available\0A\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab_ib_reg_user_mr = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_reg_user_mr = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_reg_user_mr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_reg_user_mr to i32), ptr @__kstrtab_ib_reg_user_mr, ptr @__kstrtabns_ib_reg_user_mr }, section "___ksymtab+ib_reg_user_mr", align 4
@__kstrtab_ib_advise_mr = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_advise_mr = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_advise_mr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_advise_mr to i32), ptr @__kstrtab_ib_advise_mr, ptr @__kstrtabns_ib_advise_mr }, section "___ksymtab+ib_advise_mr", align 4
@__kstrtab_ib_dereg_mr_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_dereg_mr_user = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_dereg_mr_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_dereg_mr_user to i32), ptr @__kstrtab_ib_dereg_mr_user, ptr @__kstrtabns_ib_dereg_mr_user }, section "___ksymtab+ib_dereg_mr_user", align 4
@ib_alloc_mr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ib_alloc_mr = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_alloc_mr = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_alloc_mr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_alloc_mr to i32), ptr @__kstrtab_ib_alloc_mr, ptr @__kstrtabns_ib_alloc_mr }, section "___ksymtab+ib_alloc_mr", align 4
@__kstrtab_ib_alloc_mr_integrity = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_alloc_mr_integrity = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_alloc_mr_integrity = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_alloc_mr_integrity to i32), ptr @__kstrtab_ib_alloc_mr_integrity, ptr @__kstrtabns_ib_alloc_mr_integrity }, section "___ksymtab+ib_alloc_mr_integrity", align 4
@__kstrtab_ib_attach_mcast = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_attach_mcast = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_attach_mcast = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_attach_mcast to i32), ptr @__kstrtab_ib_attach_mcast, ptr @__kstrtabns_ib_attach_mcast }, section "___ksymtab+ib_attach_mcast", align 4
@__kstrtab_ib_detach_mcast = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_detach_mcast = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_detach_mcast = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_detach_mcast to i32), ptr @__kstrtab_ib_detach_mcast, ptr @__kstrtabns_ib_detach_mcast }, section "___ksymtab+ib_detach_mcast", align 4
@ib_alloc_xrcd_user.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&xrcd->tgt_qps_rwsem\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab_ib_alloc_xrcd_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_alloc_xrcd_user = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_alloc_xrcd_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_alloc_xrcd_user to i32), ptr @__kstrtab_ib_alloc_xrcd_user, ptr @__kstrtabns_ib_alloc_xrcd_user }, section "___ksymtab+ib_alloc_xrcd_user", align 4
@__kstrtab_ib_dealloc_xrcd_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_dealloc_xrcd_user = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_dealloc_xrcd_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_dealloc_xrcd_user to i32), ptr @__kstrtab_ib_dealloc_xrcd_user, ptr @__kstrtabns_ib_dealloc_xrcd_user }, section "___ksymtab+ib_dealloc_xrcd_user", align 4
@__kstrtab_ib_create_wq = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_create_wq = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_create_wq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_create_wq to i32), ptr @__kstrtab_ib_create_wq, ptr @__kstrtabns_ib_create_wq }, section "___ksymtab+ib_create_wq", align 4
@__kstrtab_ib_destroy_wq_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_destroy_wq_user = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_destroy_wq_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_destroy_wq_user to i32), ptr @__kstrtab_ib_destroy_wq_user, ptr @__kstrtabns_ib_destroy_wq_user }, section "___ksymtab+ib_destroy_wq_user", align 4
@__kstrtab_ib_check_mr_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_check_mr_status = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_check_mr_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_check_mr_status to i32), ptr @__kstrtab_ib_check_mr_status, ptr @__kstrtabns_ib_check_mr_status }, section "___ksymtab+ib_check_mr_status", align 4
@__kstrtab_ib_set_vf_link_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_set_vf_link_state = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_set_vf_link_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_set_vf_link_state to i32), ptr @__kstrtab_ib_set_vf_link_state, ptr @__kstrtabns_ib_set_vf_link_state }, section "___ksymtab+ib_set_vf_link_state", align 4
@__kstrtab_ib_get_vf_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_get_vf_config = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_get_vf_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_get_vf_config to i32), ptr @__kstrtab_ib_get_vf_config, ptr @__kstrtabns_ib_get_vf_config }, section "___ksymtab+ib_get_vf_config", align 4
@__kstrtab_ib_get_vf_stats = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_get_vf_stats = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_get_vf_stats = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_get_vf_stats to i32), ptr @__kstrtab_ib_get_vf_stats, ptr @__kstrtabns_ib_get_vf_stats }, section "___ksymtab+ib_get_vf_stats", align 4
@__kstrtab_ib_set_vf_guid = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_set_vf_guid = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_set_vf_guid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_set_vf_guid to i32), ptr @__kstrtab_ib_set_vf_guid, ptr @__kstrtabns_ib_set_vf_guid }, section "___ksymtab+ib_set_vf_guid", align 4
@__kstrtab_ib_get_vf_guid = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_get_vf_guid = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_get_vf_guid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_get_vf_guid to i32), ptr @__kstrtab_ib_get_vf_guid, ptr @__kstrtabns_ib_get_vf_guid }, section "___ksymtab+ib_get_vf_guid", align 4
@ib_map_mr_sg_pi.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ib_map_mr_sg_pi = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_map_mr_sg_pi = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_map_mr_sg_pi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_map_mr_sg_pi to i32), ptr @__kstrtab_ib_map_mr_sg_pi, ptr @__kstrtabns_ib_map_mr_sg_pi }, section "___ksymtab+ib_map_mr_sg_pi", align 4
@__kstrtab_ib_map_mr_sg = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_map_mr_sg = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_map_mr_sg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_map_mr_sg to i32), ptr @__kstrtab_ib_map_mr_sg, ptr @__kstrtabns_ib_map_mr_sg }, section "___ksymtab+ib_map_mr_sg", align 4
@__kstrtab_ib_sg_to_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_sg_to_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_sg_to_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_sg_to_pages to i32), ptr @__kstrtab_ib_sg_to_pages, ptr @__kstrtabns_ib_sg_to_pages }, section "___ksymtab+ib_sg_to_pages", align 4
@__kstrtab_ib_drain_sq = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_drain_sq = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_drain_sq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_drain_sq to i32), ptr @__kstrtab_ib_drain_sq, ptr @__kstrtabns_ib_drain_sq }, section "___ksymtab+ib_drain_sq", align 4
@__kstrtab_ib_drain_rq = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_drain_rq = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_drain_rq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_drain_rq to i32), ptr @__kstrtab_ib_drain_rq, ptr @__kstrtabns_ib_drain_rq }, section "___ksymtab+ib_drain_rq", align 4
@__kstrtab_ib_drain_qp = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_drain_qp = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_drain_qp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_drain_qp to i32), ptr @__kstrtab_ib_drain_qp, ptr @__kstrtabns_ib_drain_qp }, section "___ksymtab+ib_drain_qp", align 4
@__kstrtab_rdma_alloc_netdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_rdma_alloc_netdev = external dso_local constant [0 x i8], align 1
@__ksymtab_rdma_alloc_netdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rdma_alloc_netdev to i32), ptr @__kstrtab_rdma_alloc_netdev, ptr @__kstrtabns_rdma_alloc_netdev }, section "___ksymtab+rdma_alloc_netdev", align 4
@__kstrtab_rdma_init_netdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_rdma_init_netdev = external dso_local constant [0 x i8], align 1
@__ksymtab_rdma_init_netdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rdma_init_netdev to i32), ptr @__kstrtab_rdma_init_netdev, ptr @__kstrtabns_rdma_init_netdev }, section "___ksymtab+rdma_init_netdev", align 4
@__kstrtab___rdma_block_iter_start = external dso_local constant [0 x i8], align 1
@__kstrtabns___rdma_block_iter_start = external dso_local constant [0 x i8], align 1
@__ksymtab___rdma_block_iter_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__rdma_block_iter_start to i32), ptr @__kstrtab___rdma_block_iter_start, ptr @__kstrtabns___rdma_block_iter_start }, section "___ksymtab+__rdma_block_iter_start", align 4
@__kstrtab___rdma_block_iter_next = external dso_local constant [0 x i8], align 1
@__kstrtabns___rdma_block_iter_next = external dso_local constant [0 x i8], align 1
@__ksymtab___rdma_block_iter_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__rdma_block_iter_next to i32), ptr @__kstrtab___rdma_block_iter_next, ptr @__kstrtabns___rdma_block_iter_next }, section "___ksymtab+__rdma_block_iter_next", align 4
@rdma_alloc_hw_stats_struct.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&stats->lock\00", [19 x i8] zeroinitializer }, align 32
@__kstrtab_rdma_alloc_hw_stats_struct = external dso_local constant [0 x i8], align 1
@__kstrtabns_rdma_alloc_hw_stats_struct = external dso_local constant [0 x i8], align 1
@__ksymtab_rdma_alloc_hw_stats_struct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rdma_alloc_hw_stats_struct to i32), ptr @__kstrtab_rdma_alloc_hw_stats_struct, ptr @__kstrtabns_rdma_alloc_hw_stats_struct }, section "___ksymtab+rdma_alloc_hw_stats_struct", align 4
@__kstrtab_rdma_free_hw_stats_struct = external dso_local constant [0 x i8], align 1
@__kstrtabns_rdma_free_hw_stats_struct = external dso_local constant [0 x i8], align 1
@__ksymtab_rdma_free_hw_stats_struct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rdma_free_hw_stats_struct to i32), ptr @__kstrtab_rdma_free_hw_stats_struct, ptr @__kstrtabns_rdma_free_hw_stats_struct }, section "___ksymtab+rdma_free_hw_stats_struct", align 4
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CQ error\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"QP fatal error\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"QP request error\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"QP access error\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"communication established\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"send queue drained\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"path migration successful\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"path migration error\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"device fatal error\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"port active\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"port error\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LID change\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"P_key change\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SM change\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SRQ error\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SRQ limit reached\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"last WQE reached\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"client reregister\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GID changed\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"success\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"local length error\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"local QP operation error\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"local EE context operation error\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"local protection error\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"WR flushed\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"memory bind operation error\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bad response error\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"local access error\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"remote invalid request error\00", [35 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"remote access error\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"remote operation error\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"transport retry counter exceeded\00", [63 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RNR retry counter exceeded\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"local RDD violation error\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"remote invalid RD request\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"operation aborted\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid EE context number\00", [38 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid EE context state\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fatal error\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"response timeout error\00", [41 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"general error\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ib_dealloc_pd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/rdma/ib_verbs.h\00", [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel PD shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@create_qp.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&qp->mr_lock\00", [19 x i8] zeroinitializer }, align 32
@create_qp.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Missing kernel QP owner\00", [40 x i8] zeroinitializer }, align 32
@_ib_modify_qp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.4, i32 1827, ptr @.str.59, ptr @.str.60 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s rq_psn overflow, masking to 24 bits\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"_ib_modify_qp\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@_ib_modify_qp._entry_ptr = internal global ptr @_ib_modify_qp._entry, section ".printk_index", align 4
@_ib_modify_qp._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.58, ptr @.str.4, i32 1834, ptr @.str.59, ptr @.str.60 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c" %s sq_psn overflow, masking to 24 bits\0A\00", [55 x i8] zeroinitializer }, align 32
@_ib_modify_qp._entry_ptr.63 = internal global ptr @_ib_modify_qp._entry.61, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__tracepoint_mr_dereg = external dso_local global %struct.tracepoint, align 4
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"include/trace/events/rdma_core.h\00", [63 x i8] zeroinitializer }, align 32
@trace_mr_dereg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.65 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_mr_alloc = external dso_local global %struct.tracepoint, align 4
@trace_mr_alloc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_mr_integ_alloc = external dso_local global %struct.tracepoint, align 4
@trace_mr_integ_alloc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__ib_drain_sq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.68 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to drain send queue: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@__ib_drain_sq.__already_done.69 = internal unnamed_addr global i1 false, section ".data.once", align 1
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__tracepoint_cq_drain_complete = external dso_local global %struct.tracepoint, align 4
@trace_cq_drain_complete.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__ib_drain_rq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.71 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to drain recv queue: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@__ib_drain_rq.__already_done.72 = internal unnamed_addr global i1 false, section ".data.once", align 1
@switch.table.ib_rate_to_mult = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 1, i32 4, i32 12, i32 2, i32 8, i32 16, i32 24, i32 32, i32 48, i32 6, i32 22, i32 45, i32 67, i32 10, i32 40, i32 80, i32 120, i32 11, i32 20, i32 160, i32 240], [44 x i8] zeroinitializer }, align 32
@switch.table.ib_rate_to_mbps = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 2500, i32 10000, i32 30000, i32 5000, i32 20000, i32 40000, i32 60000, i32 80000, i32 120000, i32 14062, i32 56250, i32 112500, i32 168750, i32 25781, i32 103125, i32 206250, i32 309375, i32 28125, i32 53125, i32 425000, i32 637500], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [23 x i64] [i64 21, i64 32, i64 1, i64 2, i64 4, i64 6, i64 8, i64 10, i64 11, i64 12, i64 16, i64 20, i64 22, i64 24, i64 32, i64 40, i64 45, i64 48, i64 67, i64 80, i64 120, i64 160, i64 240]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.75 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 9, i64 10]
@___asan_gen_.76 = private unnamed_addr constant [10 x i8] c"ib_events\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 61, i32 27 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 88, i32 23 }
@___asan_gen_.82 = private unnamed_addr constant [12 x i8] c"wc_statuses\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 92, i32 27 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 122, i32 25 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 293, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [15 x i8] c"qp_state_table\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1388, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1913, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2144, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2412, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 3008, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 62, i32 23 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 63, i32 25 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 64, i32 27 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 65, i32 29 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 66, i32 25 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 67, i32 27 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 68, i32 25 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 69, i32 29 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 70, i32 29 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 71, i32 28 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 72, i32 25 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 73, i32 27 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 74, i32 28 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 75, i32 26 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 76, i32 24 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 77, i32 33 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 78, i32 35 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 79, i32 33 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 80, i32 27 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 93, i32 22 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 94, i32 25 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 95, i32 27 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 96, i32 28 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 97, i32 26 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 98, i32 26 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 99, i32 25 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 100, i32 26 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 101, i32 28 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 102, i32 29 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 103, i32 28 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 104, i32 24 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 105, i32 27 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 106, i32 30 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 107, i32 29 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 108, i32 31 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 109, i32 27 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 110, i32 26 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 111, i32 30 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 112, i32 23 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 113, i32 29 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 114, i32 25 }
@___asan_gen_.257 = private unnamed_addr constant [27 x i8] c"../include/rdma/ib_verbs.h\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 3498, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1231, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1239, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1825, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1832, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant [36 x i8] c"../include/trace/events/rdma_core.h\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 374, i32 1 }
@___asan_gen_.296 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 108, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 378, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2766, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.311 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 87, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.314 = private constant [35 x i8] c"../drivers/infiniband/core/verbs.c\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2799, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant [29 x i8] c"switch.table.ib_rate_to_mult\00", align 1
@___asan_gen_.317 = private unnamed_addr constant [29 x i8] c"switch.table.ib_rate_to_mbps\00", align 1
@llvm.compiler.used = appending global [159 x ptr] [ptr @__ib_alloc_pd._entry, ptr @__ib_alloc_pd._entry_ptr, ptr @__ksymtab___ib_alloc_pd, ptr @__ksymtab___ib_create_cq, ptr @__ksymtab___rdma_block_iter_next, ptr @__ksymtab___rdma_block_iter_start, ptr @__ksymtab_ib_advise_mr, ptr @__ksymtab_ib_alloc_mr, ptr @__ksymtab_ib_alloc_mr_integrity, ptr @__ksymtab_ib_alloc_xrcd_user, ptr @__ksymtab_ib_attach_mcast, ptr @__ksymtab_ib_check_mr_status, ptr @__ksymtab_ib_close_qp, ptr @__ksymtab_ib_create_ah_from_wc, ptr @__ksymtab_ib_create_qp_kernel, ptr @__ksymtab_ib_create_qp_user, ptr @__ksymtab_ib_create_srq_user, ptr @__ksymtab_ib_create_wq, ptr @__ksymtab_ib_dealloc_pd_user, ptr @__ksymtab_ib_dealloc_xrcd_user, ptr @__ksymtab_ib_dereg_mr_user, ptr @__ksymtab_ib_destroy_cq_user, ptr @__ksymtab_ib_destroy_qp_user, ptr @__ksymtab_ib_destroy_srq_user, ptr @__ksymtab_ib_destroy_wq_user, ptr @__ksymtab_ib_detach_mcast, ptr @__ksymtab_ib_drain_qp, ptr @__ksymtab_ib_drain_rq, ptr @__ksymtab_ib_drain_sq, ptr @__ksymtab_ib_event_msg, ptr @__ksymtab_ib_get_eth_speed, ptr @__ksymtab_ib_get_gids_from_rdma_hdr, ptr @__ksymtab_ib_get_rdma_header_version, ptr @__ksymtab_ib_get_vf_config, ptr @__ksymtab_ib_get_vf_guid, ptr @__ksymtab_ib_get_vf_stats, ptr @__ksymtab_ib_init_ah_attr_from_wc, ptr @__ksymtab_ib_map_mr_sg, ptr @__ksymtab_ib_map_mr_sg_pi, ptr @__ksymtab_ib_modify_qp, ptr @__ksymtab_ib_modify_qp_is_ok, ptr @__ksymtab_ib_modify_qp_with_udata, ptr @__ksymtab_ib_modify_srq, ptr @__ksymtab_ib_open_qp, ptr @__ksymtab_ib_qp_usecnt_dec, ptr @__ksymtab_ib_qp_usecnt_inc, ptr @__ksymtab_ib_query_qp, ptr @__ksymtab_ib_query_srq, ptr @__ksymtab_ib_rate_to_mbps, ptr @__ksymtab_ib_rate_to_mult, ptr @__ksymtab_ib_reg_user_mr, ptr @__ksymtab_ib_resize_cq, ptr @__ksymtab_ib_set_vf_guid, ptr @__ksymtab_ib_set_vf_link_state, ptr @__ksymtab_ib_sg_to_pages, ptr @__ksymtab_ib_wc_status_msg, ptr @__ksymtab_mult_to_ib_rate, ptr @__ksymtab_rdma_alloc_hw_stats_struct, ptr @__ksymtab_rdma_alloc_netdev, ptr @__ksymtab_rdma_copy_ah_attr, ptr @__ksymtab_rdma_create_ah, ptr @__ksymtab_rdma_create_user_ah, ptr @__ksymtab_rdma_destroy_ah_attr, ptr @__ksymtab_rdma_destroy_ah_user, ptr @__ksymtab_rdma_free_hw_stats_struct, ptr @__ksymtab_rdma_init_netdev, ptr @__ksymtab_rdma_modify_ah, ptr @__ksymtab_rdma_move_ah_attr, ptr @__ksymtab_rdma_move_grh_sgid_attr, ptr @__ksymtab_rdma_node_get_transport, ptr @__ksymtab_rdma_port_get_link_layer, ptr @__ksymtab_rdma_query_ah, ptr @__ksymtab_rdma_replace_ah_attr, ptr @__ksymtab_rdma_set_cq_moderation, ptr @_ib_modify_qp._entry, ptr @_ib_modify_qp._entry.61, ptr @_ib_modify_qp._entry_ptr, ptr @_ib_modify_qp._entry_ptr.63, ptr @ib_get_eth_speed._entry, ptr @ib_get_eth_speed._entry_ptr, ptr @ib_events, ptr @.str, ptr @wc_statuses, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @qp_state_table, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @ib_alloc_xrcd_user.__key, ptr @.str.10, ptr @rdma_alloc_hw_stats_struct.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @create_qp.__key, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @xa_init_flags.__key, ptr @.str.67, ptr @.str.68, ptr @init_completion.__key, ptr @.str.70, ptr @.str.71, ptr @switch.table.ib_rate_to_mult, ptr @switch.table.ib_rate_to_mbps], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_events to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wc_statuses to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qp_state_table to i32), i32 4508, i32 5632, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_get_eth_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_alloc_xrcd_user.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdma_alloc_hw_stats_struct.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_qp.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ib_modify_qp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ib_modify_qp._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ib_rate_to_mult to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ib_rate_to_mbps to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ib_event_msg(i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %event)
  %cmp = icmp ult i32 %event, 19
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr [19 x ptr], ptr @ib_events, i32 0, i32 %event
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %1, %cond.true ], [ @.str, %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ib_wc_status_msg(i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %status)
  %cmp = icmp ult i32 %status, 22
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr [22 x ptr], ptr @wc_statuses, i32 0, i32 %status
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %1, %cond.true ], [ @.str.1, %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ib_rate_to_mult(i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %rate, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 21
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [21 x i32], ptr @switch.table.ib_rate_to_mult, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mult_to_ib_rate(i32 noundef %mult) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mult to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mult, label %sw.default [
    i32 1, label %entry.return_crit_edge
    i32 2, label %sw.bb1
    i32 4, label %sw.bb2
    i32 8, label %sw.bb3
    i32 12, label %sw.bb4
    i32 16, label %sw.bb5
    i32 24, label %sw.bb6
    i32 32, label %sw.bb7
    i32 48, label %sw.bb8
    i32 6, label %sw.bb9
    i32 22, label %sw.bb10
    i32 45, label %sw.bb11
    i32 67, label %sw.bb12
    i32 10, label %sw.bb13
    i32 40, label %sw.bb14
    i32 80, label %sw.bb15
    i32 120, label %sw.bb16
    i32 11, label %sw.bb17
    i32 20, label %sw.bb18
    i32 160, label %sw.bb19
    i32 240, label %sw.bb20
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

return:                                           ; preds = %sw.default, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.default ], [ 22, %sw.bb20 ], [ 21, %sw.bb19 ], [ 20, %sw.bb18 ], [ 19, %sw.bb17 ], [ 18, %sw.bb16 ], [ 17, %sw.bb15 ], [ 16, %sw.bb14 ], [ 15, %sw.bb13 ], [ 14, %sw.bb12 ], [ 13, %sw.bb11 ], [ 12, %sw.bb10 ], [ 11, %sw.bb9 ], [ 10, %sw.bb8 ], [ 9, %sw.bb7 ], [ 8, %sw.bb6 ], [ 7, %sw.bb5 ], [ 4, %sw.bb4 ], [ 6, %sw.bb3 ], [ 3, %sw.bb2 ], [ 5, %sw.bb1 ], [ 2, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ib_rate_to_mbps(i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %rate, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 21
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [21 x i32], ptr @switch.table.ib_rate_to_mbps, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rdma_node_get_transport(i32 noundef %node_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %node_type, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %1 = icmp eq i32 %0, 4
  %switch.offset = add i32 %node_type, -3
  %retval.0 = select i1 %1, i32 %switch.offset, i32 0
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rdma_port_get_link_layer(ptr noundef %device, i32 noundef %port_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %get_link_layer = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 1, i32 22
  %0 = ptrtoint ptr %get_link_layer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_link_layer, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 %1(ptr noundef %device, i32 noundef %port_num) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %node_type = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 20
  %2 = ptrtoint ptr %node_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %node_type, align 1
  %4 = and i8 %3, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %4)
  %switch = icmp eq i8 %4, 4
  %spec.select = select i1 %switch, i32 2, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__ib_alloc_pd(ptr noundef %device, i32 noundef %flags, ptr noundef %caller) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %size_ib_pd = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 1, i32 125
  %0 = ptrtoint ptr %size_ib_pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size_ib_pd, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 3520) #16
  %tobool.not = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup51_crit_edge, label %if.end

entry.cleanup51_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup51

if.end:                                           ; preds = %entry
  %device2 = getelementptr inbounds %struct.ib_pd, ptr %call9.i.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %device, ptr %device2, align 8
  %uobject = getelementptr inbounds %struct.ib_pd, ptr %call9.i.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %uobject to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %uobject, align 4
  %__internal_mr = getelementptr inbounds %struct.ib_pd, ptr %call9.i.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %__internal_mr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %__internal_mr, align 8
  %usecnt = getelementptr inbounds %struct.ib_pd, ptr %call9.i.i.i, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #13
  %5 = ptrtoint ptr %usecnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %usecnt, align 16
  %flags3 = getelementptr inbounds %struct.ib_pd, ptr %call9.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %flags, ptr %flags3, align 4
  %res = getelementptr inbounds %struct.ib_pd, ptr %call9.i.i.i, i32 0, i32 7
  tail call void @rdma_restrack_new(ptr noundef %res, i32 noundef 0) #13
  tail call void @rdma_restrack_set_name(ptr noundef %res, ptr noundef %caller) #13
  %alloc_pd = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 1, i32 35
  %7 = ptrtoint ptr %alloc_pd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %alloc_pd, align 4
  %call6 = tail call i32 %8(ptr noundef nonnull %call9.i.i.i, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end12, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call10 = tail call i32 @rdma_restrack_put(ptr noundef %res) #13
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #13
  %9 = inttoptr i32 %call6 to ptr
  br label %cleanup51

if.end12:                                         ; preds = %if.end
  tail call void @rdma_restrack_add(ptr noundef %res) #13
  %device_cap_flags = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 22, i32 9
  %10 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %device_cap_flags, align 8
  %and = and i64 %11, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool14.not = icmp eq i64 %and, 0
  br i1 %tobool14.not, label %if.end17, label %if.end17.thread

if.end17:                                         ; preds = %if.end12
  %and18 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.then25_crit_edge, label %if.end17.if.end23.thread_crit_edge

if.end17.if.end23.thread_crit_edge:               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.thread

if.end17.if.then25_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25

if.end17.thread:                                  ; preds = %if.end12
  %local_dma_lkey = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 18
  %12 = ptrtoint ptr %local_dma_lkey to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %local_dma_lkey, align 8
  %14 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %call9.i.i.i, align 128
  %and18108 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18108)
  %tobool19.not109 = icmp eq i32 %and18108, 0
  br i1 %tobool19.not109, label %if.end17.thread.cleanup51_crit_edge, label %if.end17.thread.if.end23.thread_crit_edge

if.end17.thread.if.end23.thread_crit_edge:        ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.thread

if.end17.thread.cleanup51_crit_edge:              ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup51

if.end23.thread:                                  ; preds = %if.end17.thread.if.end23.thread_crit_edge, %if.end17.if.end23.thread_crit_edge
  %mr_access_flags.0110 = phi i32 [ 6, %if.end17.thread.if.end23.thread_crit_edge ], [ 7, %if.end17.if.end23.thread_crit_edge ]
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %caller) #17
  br label %if.then25

if.then25:                                        ; preds = %if.end23.thread, %if.end17.if.then25_crit_edge
  %tobool19.not111 = phi i1 [ false, %if.end23.thread ], [ true, %if.end17.if.then25_crit_edge ]
  %mr_access_flags.1105 = phi i32 [ %mr_access_flags.0110, %if.end23.thread ], [ 1, %if.end17.if.then25_crit_edge ]
  %15 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device2, align 8
  %get_dma_mr = getelementptr inbounds %struct.ib_device, ptr %16, i32 0, i32 1, i32 54
  %17 = ptrtoint ptr %get_dma_mr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_dma_mr, align 4
  %call28 = tail call ptr %18(ptr noundef nonnull %call9.i.i.i, i32 noundef %mr_access_flags.1105) #13
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.then25
  %call.i = tail call i32 @ib_dealloc_pd_user(ptr noundef nonnull %call9.i.i.i, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then30.cleanup51_crit_edge, label %land.rhs.i

if.then30.cleanup51_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup51

land.rhs.i:                                       ; preds = %if.then30
  %.b38.i = load i1, ptr @ib_dealloc_pd.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.cleanup51_crit_edge, label %if.then.i, !prof !330

land.rhs.i.cleanup51_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup51

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ib_dealloc_pd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 3498, i32 noundef 9, ptr noundef nonnull @.str.54) #13
  br label %cleanup51

if.end32:                                         ; preds = %if.then25
  %19 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device2, align 8
  %21 = ptrtoint ptr %call28 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %call28, align 8
  %pd35 = getelementptr inbounds %struct.ib_mr, ptr %call28, i32 0, i32 1
  %22 = ptrtoint ptr %pd35 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call9.i.i.i, ptr %pd35, align 4
  %type = getelementptr inbounds %struct.ib_mr, ptr %call28, i32 0, i32 7
  %23 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %type, align 4
  %24 = getelementptr inbounds %struct.ib_mr, ptr %call28, i32 0, i32 9
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %24, align 4
  %need_inval = getelementptr inbounds %struct.ib_mr, ptr %call28, i32 0, i32 8
  %26 = ptrtoint ptr %need_inval to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %need_inval, align 8
  %27 = ptrtoint ptr %__internal_mr to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call28, ptr %__internal_mr, align 8
  %28 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %device_cap_flags, align 8
  %and39 = and i64 %29, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and39)
  %tobool40.not = icmp eq i64 %and39, 0
  br i1 %tobool40.not, label %if.then41, label %if.end32.if.end44_crit_edge

if.end32.if.end44_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then41:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %lkey = getelementptr inbounds %struct.ib_mr, ptr %call28, i32 0, i32 2
  %30 = ptrtoint ptr %lkey to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lkey, align 8
  %32 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %call9.i.i.i, align 128
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end32.if.end44_crit_edge
  br i1 %tobool19.not111, label %if.end44.cleanup51_crit_edge, label %if.then47

if.end44.cleanup51_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup51

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %__internal_mr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__internal_mr, align 8
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %rkey to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rkey, align 4
  %unsafe_global_rkey = getelementptr inbounds %struct.ib_pd, ptr %call9.i.i.i, i32 0, i32 5
  %37 = ptrtoint ptr %unsafe_global_rkey to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %unsafe_global_rkey, align 4
  br label %cleanup51

cleanup51:                                        ; preds = %if.then47, %if.end44.cleanup51_crit_edge, %if.then.i, %land.rhs.i.cleanup51_crit_edge, %if.then30.cleanup51_crit_edge, %if.end17.thread.cleanup51_crit_edge, %if.then8, %entry.cleanup51_crit_edge
  %retval.1 = phi ptr [ %9, %if.then8 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup51_crit_edge ], [ %call9.i.i.i, %if.end44.cleanup51_crit_edge ], [ %call9.i.i.i, %if.then47 ], [ %call28, %if.then.i ], [ %call28, %land.rhs.i.cleanup51_crit_edge ], [ %call28, %if.then30.cleanup51_crit_edge ], [ %call9.i.i.i, %if.end17.thread.cleanup51_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_restrack_new(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_restrack_set_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_restrack_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_restrack_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_dealloc_pd_user(ptr noundef %pd, ptr noundef %udata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %__internal_mr = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 6
  %0 = ptrtoint ptr %__internal_mr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__internal_mr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end24_crit_edge, label %if.then

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then:                                          ; preds = %entry
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %dereg_mr = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 1, i32 58
  %4 = ptrtoint ptr %dereg_mr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dereg_mr, align 4
  %call = tail call i32 %5(ptr noundef nonnull %1, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %do.end, !prof !330

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 340, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %6 = ptrtoint ptr %__internal_mr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %__internal_mr, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end, %entry.if.end24_crit_edge
  %usecnt = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usecnt, i32 noundef 4) #13
  %7 = ptrtoint ptr %usecnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %usecnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool27.not = icmp eq i32 %8, 0
  br i1 %tobool27.not, label %if.end24.if.end49_crit_edge, label %do.end43, !prof !330

if.end24.if.end49_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

do.end43:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 347, i32 noundef 9, ptr noundef null) #13
  br label %if.end49

if.end49:                                         ; preds = %do.end43, %if.end24.if.end49_crit_edge
  %device57 = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %9 = ptrtoint ptr %device57 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device57, align 4
  %dealloc_pd = getelementptr inbounds %struct.ib_device, ptr %10, i32 0, i32 1, i32 36
  %11 = ptrtoint ptr %dealloc_pd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dealloc_pd, align 4
  %call59 = tail call i32 %12(ptr noundef %pd, ptr noundef %udata) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end62:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  %res = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 7
  tail call void @rdma_restrack_del(ptr noundef %res) #13
  tail call void @kfree(ptr noundef %pd) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.end49.cleanup_crit_edge
  ret i32 %call59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_restrack_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rdma_copy_ah_attr(ptr nocapture noundef %dest, ptr nocapture noundef readonly %src) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %dest, ptr %src, i32 56)
  %1 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dest, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rdma_hold_gid_attr(ptr noundef nonnull %2) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_hold_gid_attr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rdma_replace_ah_attr(ptr nocapture noundef %old, ptr nocapture noundef readonly %new) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %old to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %old, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.rdma_destroy_ah_attr.exit_crit_edge, label %if.then.i

entry.rdma_destroy_ah_attr.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rdma_destroy_ah_attr.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rdma_put_gid_attr(ptr noundef nonnull %1) #13
  %2 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %old, align 8
  br label %rdma_destroy_ah_attr.exit

rdma_destroy_ah_attr.exit:                        ; preds = %if.then.i, %entry.rdma_destroy_ah_attr.exit_crit_edge
  %3 = call ptr @memcpy(ptr %old, ptr %new, i32 56)
  %4 = ptrtoint ptr %old to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %rdma_destroy_ah_attr.exit.if.end_crit_edge, label %if.then

rdma_destroy_ah_attr.exit.if.end_crit_edge:       ; preds = %rdma_destroy_ah_attr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %rdma_destroy_ah_attr.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rdma_hold_gid_attr(ptr noundef nonnull %5) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %rdma_destroy_ah_attr.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rdma_destroy_ah_attr(ptr nocapture noundef %ah_attr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ah_attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah_attr, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rdma_put_gid_attr(ptr noundef nonnull %1) #13
  %2 = ptrtoint ptr %ah_attr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ah_attr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rdma_move_ah_attr(ptr nocapture noundef %dest, ptr nocapture noundef %src) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dest, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.rdma_destroy_ah_attr.exit_crit_edge, label %if.then.i

entry.rdma_destroy_ah_attr.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rdma_destroy_ah_attr.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rdma_put_gid_attr(ptr noundef nonnull %1) #13
  %2 = ptrtoint ptr %dest to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %dest, align 8
  br label %rdma_destroy_ah_attr.exit

rdma_destroy_ah_attr.exit:                        ; preds = %if.then.i, %entry.rdma_destroy_ah_attr.exit_crit_edge
  %3 = call ptr @memcpy(ptr %dest, ptr %src, i32 56)
  %4 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %src, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rdma_create_ah(ptr noundef %pd, ptr noundef %ah_attr, i32 noundef %flags) #2 align 64 {
entry:
  %old_sgid_attr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_sgid_attr) #13
  %0 = ptrtoint ptr %old_sgid_attr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %old_sgid_attr, align 4, !annotation !331
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %1 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device, align 4
  %call = call fastcc i32 @rdma_fill_sgid_attr(ptr noundef %2, ptr noundef %ah_attr, ptr noundef nonnull %old_sgid_attr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool3.not, i32 2592, i32 3264
  %call4 = tail call ptr @rdma_lag_get_ah_roce_slave(ptr noundef %5, ptr noundef %ah_attr, i32 noundef %cond) #13
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %6 = ptrtoint ptr %old_sgid_attr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %old_sgid_attr, align 4
  %8 = ptrtoint ptr %ah_attr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ah_attr, align 8
  %cmp.i23 = icmp eq ptr %9, %7
  %tobool.not.i.i = icmp eq ptr %9, null
  %or.cond.i = or i1 %cmp.i23, %tobool.not.i.i
  br i1 %or.cond.i, label %if.then6.cleanup_crit_edge, label %if.then.i.i

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rdma_put_gid_attr(ptr noundef nonnull %9) #13
  %10 = ptrtoint ptr %ah_attr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %ah_attr, align 8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call fastcc ptr @_rdma_create_ah(ptr noundef %pd, ptr noundef %ah_attr, i32 noundef %flags, ptr noundef null, ptr noundef %call4)
  tail call void @rdma_lag_put_ah_roce_slave(ptr noundef %call4) #13
  %11 = ptrtoint ptr %old_sgid_attr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %old_sgid_attr, align 4
  %13 = ptrtoint ptr %ah_attr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ah_attr, align 8
  %cmp.i24 = icmp eq ptr %14, %12
  %tobool.not.i.i25 = icmp eq ptr %14, null
  %or.cond.i26 = or i1 %cmp.i24, %tobool.not.i.i25
  br i1 %or.cond.i26, label %if.end7.cleanup_crit_edge, label %if.then.i.i27

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i.i27:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rdma_put_gid_attr(ptr noundef nonnull %14) #13
  %15 = ptrtoint ptr %ah_attr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %ah_attr, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i27, %if.end7.cleanup_crit_edge, %if.then.i.i, %if.then6.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %3, %if.then ], [ %call4, %if.then6.cleanup_crit_edge ], [ %call4, %if.then.i.i ], [ %call8, %if.end7.cleanup_crit_edge ], [ %call8, %if.then.i.i27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_sgid_attr) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rdma_fill_sgid_attr(ptr noundef %device, ptr nocapture noundef %ah_attr, ptr nocapture noundef writeonly %old_sgid_attr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ah_attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah_attr, align 8
  %2 = ptrtoint ptr %old_sgid_attr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %old_sgid_attr, align 4
  %port_num.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 3
  %3 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_num.i, align 4
  %is_switch.i.i.i.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 19
  %5 = ptrtoint ptr %is_switch.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i.i.i.i = load i8, ptr %is_switch.i.i.i.i, align 4
  %6 = xor i8 %bf.load.i.i.i.i, -1
  %7 = lshr i8 %6, 7
  %.not.i.i.i = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %.not.i.i.i)
  %cmp.not.i.i = icmp ult i32 %4, %.not.i.i.i
  br i1 %cmp.not.i.i, label %entry.cleanup_crit_edge, label %land.rhs.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.rhs.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i.i.i)
  %tobool.i.i.i.i = icmp slt i8 %bf.load.i.i.i.i, 0
  br i1 %tobool.i.i.i.i, label %land.rhs.i.i.rdma_is_port_valid.exit.i_crit_edge, label %cond.false.i.i.i

land.rhs.i.i.rdma_is_port_valid.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rdma_is_port_valid.exit.i

cond.false.i.i.i:                                 ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %phys_port_cnt.i.i.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 21
  %8 = ptrtoint ptr %phys_port_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phys_port_cnt.i.i.i, align 8
  br label %rdma_is_port_valid.exit.i

rdma_is_port_valid.exit.i:                        ; preds = %cond.false.i.i.i, %land.rhs.i.i.rdma_is_port_valid.exit.i_crit_edge
  %cond.i.i.i = phi i32 [ %9, %cond.false.i.i.i ], [ 0, %land.rhs.i.i.rdma_is_port_valid.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i.i, i32 %4)
  %cmp2.i.not.i = icmp ult i32 %cond.i.i.i, %4
  br i1 %cmp2.i.not.i, label %rdma_is_port_valid.exit.i.cleanup_crit_edge, label %if.end.i

rdma_is_port_valid.exit.i.cleanup_crit_edge:      ; preds = %rdma_is_port_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %rdma_is_port_valid.exit.i
  %port_data.i.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 11
  %10 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port_data.i.i, align 8
  %core_cap_flags.i.i = getelementptr %struct.ib_port_data, ptr %11, i32 %4, i32 1, i32 2
  %12 = ptrtoint ptr %core_cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %core_cap_flags.i.i, align 4
  %and.i.i = and i32 %13, 10518528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i, label %if.end.i.land.lhs.true.i_crit_edge

if.end.i.land.lhs.true.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %type.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 5
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.i = icmp eq i32 %15, 2
  br i1 %cmp.i, label %lor.lhs.false.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i.if.end5.i_crit_edge

lor.lhs.false.i.if.end5.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %if.end.i.land.lhs.true.i_crit_edge
  %ah_flags.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 4
  %16 = ptrtoint ptr %ah_flags.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ah_flags.i, align 8
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool3.not.i = icmp eq i8 %18, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end5.i_crit_edge

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5.i:                                        ; preds = %land.lhs.true.i.if.end5.i_crit_edge, %lor.lhs.false.i.if.end5.i_crit_edge
  %19 = ptrtoint ptr %ah_attr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ah_attr, align 8
  %tobool6.not.i = icmp eq ptr %20, null
  br i1 %tobool6.not.i, label %if.end5.i.if.end_crit_edge, label %if.then7.i

if.end5.i.if.end_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then7.i:                                       ; preds = %if.end5.i
  %index.i = getelementptr inbounds %struct.ib_gid_attr, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %index.i, align 4
  %sgid_index.i = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 3
  %23 = ptrtoint ptr %sgid_index.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sgid_index.i, align 4
  %25 = zext i8 %24 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %25)
  %cmp13.not.i = icmp eq i16 %22, %25
  br i1 %cmp13.not.i, label %lor.lhs.false15.i, label %if.then7.i.cleanup_crit_edge

if.then7.i.cleanup_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false15.i:                                ; preds = %if.then7.i
  %port_num18.i = getelementptr inbounds %struct.ib_gid_attr, ptr %20, i32 0, i32 5
  %26 = ptrtoint ptr %port_num18.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port_num18.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %4)
  %cmp20.not.i = icmp eq i32 %27, %4
  br i1 %cmp20.not.i, label %lor.lhs.false15.i.if.end_crit_edge, label %lor.lhs.false15.i.cleanup_crit_edge

lor.lhs.false15.i.cleanup_crit_edge:              ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false15.i.if.end_crit_edge:               ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false15.i.if.end_crit_edge, %if.end5.i.if.end_crit_edge
  %ah_flags = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 4
  %28 = ptrtoint ptr %ah_flags to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ah_flags, align 8
  %30 = and i8 %29, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool3.not = icmp eq i8 %30, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %31 = ptrtoint ptr %ah_attr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ah_attr, align 8
  %tobool8.not = icmp eq ptr %32, null
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %sgid_index = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 3
  %33 = ptrtoint ptr %sgid_index to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sgid_index, align 4
  %conv11 = zext i8 %34 to i32
  %call12 = tail call ptr @rdma_get_gid_attr(ptr noundef %device, i32 noundef %4, i32 noundef %conv11) #13
  %cmp.i30 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i30, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %ah_attr to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call12, ptr %ah_attr, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then14, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false15.i.cleanup_crit_edge, %if.then7.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %rdma_is_port_valid.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %35, %if.then14 ], [ 0, %if.end16 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ -22, %rdma_is_port_valid.exit.i.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ -22, %lor.lhs.false15.i.cleanup_crit_edge ], [ -22, %if.then7.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_lag_get_ah_roce_slave(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @_rdma_create_ah(ptr noundef %pd, ptr noundef %ah_attr, i32 noundef %flags, ptr noundef %udata, ptr noundef %xmit_slave) unnamed_addr #2 align 64 {
entry:
  %init_attr = alloca %struct.rdma_ah_init_attr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %init_attr) #13
  %device1 = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.body2

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 519) #13
  br label %do.end7

do.end7:                                          ; preds = %do.body2, %entry.do.end7_crit_edge
  %tobool8.not = icmp eq ptr %udata, null
  br i1 %tobool8.not, label %land.lhs.true, label %do.end7.if.end8.i.i.i_crit_edge

do.end7.if.end8.i.i.i_crit_edge:                  ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i.i

land.lhs.true:                                    ; preds = %do.end7
  %create_ah = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 1, i32 37
  %2 = ptrtoint ptr %create_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %create_ah, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end8.i.i.i_crit_edge

land.lhs.true.if.end8.i.i.i_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i.i

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i.i.i:                                    ; preds = %land.lhs.true.if.end8.i.i.i_crit_edge, %do.end7.if.end8.i.i.i_crit_edge
  %or.i10.i = select i1 %tobool.not, i32 2848, i32 3520
  %size_ib_ah = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 1, i32 121
  %4 = ptrtoint ptr %size_ib_ah to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size_ib_ah, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef %or.i10.i) #16
  %tobool16.not = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool16.not, label %if.end8.i.i.i.cleanup_crit_edge, label %if.end19

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %if.end8.i.i.i
  %6 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %call9.i.i.i, align 128
  %pd21 = getelementptr inbounds %struct.ib_ah, ptr %call9.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %pd21 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pd, ptr %pd21, align 4
  %type = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 5
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %type22 = getelementptr inbounds %struct.ib_ah, ptr %call9.i.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %type22 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %type22, align 16
  %ah_flags.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 4
  %11 = ptrtoint ptr %ah_flags.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ah_flags.i, align 8
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.not.i = icmp eq i8 %13, 0
  br i1 %tobool1.not.i, label %if.end19.rdma_update_sgid_attr.exit_crit_edge, label %if.then2.i

if.end19.rdma_update_sgid_attr.exit_crit_edge:    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %rdma_update_sgid_attr.exit

if.then2.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %ah_attr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ah_attr, align 8
  tail call void @rdma_hold_gid_attr(ptr noundef %15) #13
  %16 = ptrtoint ptr %ah_attr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ah_attr, align 8
  br label %rdma_update_sgid_attr.exit

rdma_update_sgid_attr.exit:                       ; preds = %if.then2.i, %if.end19.rdma_update_sgid_attr.exit_crit_edge
  %retval.0.i64 = phi ptr [ %17, %if.then2.i ], [ null, %if.end19.rdma_update_sgid_attr.exit_crit_edge ]
  %sgid_attr = getelementptr inbounds %struct.ib_ah, ptr %call9.i.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %sgid_attr to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %retval.0.i64, ptr %sgid_attr, align 4
  %19 = ptrtoint ptr %init_attr to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ah_attr, ptr %init_attr, align 4
  %flags25 = getelementptr inbounds %struct.rdma_ah_init_attr, ptr %init_attr, i32 0, i32 1
  %20 = ptrtoint ptr %flags25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %flags, ptr %flags25, align 4
  %xmit_slave26 = getelementptr inbounds %struct.rdma_ah_init_attr, ptr %init_attr, i32 0, i32 2
  %21 = ptrtoint ptr %xmit_slave26 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %xmit_slave, ptr %xmit_slave26, align 4
  br i1 %tobool8.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %rdma_update_sgid_attr.exit
  call void @__sanitizer_cov_trace_pc() #15
  %create_user_ah = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 1, i32 38
  %22 = ptrtoint ptr %create_user_ah to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %create_user_ah, align 4
  %call30 = call i32 %23(ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull %init_attr, ptr noundef nonnull %udata) #13
  br label %if.end34

if.else:                                          ; preds = %rdma_update_sgid_attr.exit
  call void @__sanitizer_cov_trace_pc() #15
  %create_ah32 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 1, i32 37
  %24 = ptrtoint ptr %create_ah32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %create_ah32, align 4
  %call33 = call i32 %25(ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull %init_attr, ptr noundef null) #13
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then28
  %ret.0 = phi i32 [ %call30, %if.then28 ], [ %call33, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool35.not = icmp eq i32 %ret.0, 0
  br i1 %tobool35.not, label %if.end38, label %if.then36

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #13
  %26 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  %usecnt = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #13
  %27 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #13, !srcloc !332
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then36, %if.end8.i.i.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ %26, %if.then36 ], [ %call9.i.i.i, %if.end38 ], [ inttoptr (i32 -95 to ptr), %land.lhs.true.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %init_attr) #13
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_lag_put_ah_roce_slave(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rdma_create_user_ah(ptr noundef %pd, ptr noundef %ah_attr, ptr noundef %udata) #2 align 64 {
entry:
  %old_sgid_attr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_sgid_attr) #13
  %0 = ptrtoint ptr %old_sgid_attr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %old_sgid_attr, align 4, !annotation !331
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %1 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device, align 4
  %call = call fastcc i32 @rdma_fill_sgid_attr(ptr noundef %2, ptr noundef %ah_attr, ptr noundef nonnull %old_sgid_attr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 5
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then2, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then2:                                         ; preds = %if.end
  %call4 = tail call fastcc i32 @ib_resolve_eth_dmac(ptr noundef %ah_attr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then2.if.end9_crit_edge, label %if.then6

if.then2.if.end9_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  %6 = inttoptr i32 %call4 to ptr
  br label %out

if.end9:                                          ; preds = %if.then2.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %call10 = tail call fastcc ptr @_rdma_create_ah(ptr noundef %pd, ptr noundef %ah_attr, i32 noundef 1, ptr noundef %udata, ptr noundef null)
  br label %out

out:                                              ; preds = %if.end9, %if.then6
  %ah.0 = phi ptr [ %6, %if.then6 ], [ %call10, %if.end9 ]
  %7 = ptrtoint ptr %old_sgid_attr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %old_sgid_attr, align 4
  %9 = ptrtoint ptr %ah_attr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ah_attr, align 8
  %cmp.i = icmp eq ptr %10, %8
  %tobool.not.i.i = icmp eq ptr %10, null
  %or.cond.i = or i1 %cmp.i, %tobool.not.i.i
  br i1 %or.cond.i, label %out.cleanup_crit_edge, label %if.then.i.i

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i.i:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rdma_put_gid_attr(ptr noundef nonnull %10) #13
  %11 = ptrtoint ptr %ah_attr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %ah_attr, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %out.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %3, %if.then ], [ %ah.0, %out.cleanup_crit_edge ], [ %ah.0, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_sgid_attr) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ib_resolve_eth_dmac(ptr noundef %ah_attr) unnamed_addr #2 align 64 {
entry:
  %hop_limit.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dgid = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 1
  %0 = ptrtoint ptr %dgid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dgid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp.i = icmp eq i8 %1, -1
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %dgid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dgid, align 4
  %arrayidx2.i.i = getelementptr [4 x i32], ptr %dgid, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %5, %3
  %arrayidx4.i.i = getelementptr %struct.ib_global_route, ptr %ah_attr, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4.i.i, align 4
  %xor.i.i = xor i32 %7, 65535
  %or5.i.i = or i32 %or.i.i, %xor.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %cmp.i.i = icmp eq i32 %or5.i.i, 0
  br i1 %cmp.i.i, label %rdma_is_multicast_addr.exit, label %if.end.i.if.else15_crit_edge

if.end.i.if.else15_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else15

rdma_is_multicast_addr.exit:                      ; preds = %if.end.i
  %arrayidx3.i = getelementptr [4 x i32], ptr %dgid, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3.i, align 4
  %and.i.i = and i32 %9, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i)
  %cmp.i9.i.not = icmp eq i32 %and.i.i, -536870912
  br i1 %cmp.i9.i.not, label %rdma_is_multicast_addr.exit.if.then_crit_edge, label %rdma_is_multicast_addr.exit.if.else15_crit_edge

rdma_is_multicast_addr.exit.if.else15_crit_edge:  ; preds = %rdma_is_multicast_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else15

rdma_is_multicast_addr.exit.if.then_crit_edge:    ; preds = %rdma_is_multicast_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %rdma_is_multicast_addr.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %10 = ptrtoint ptr %dgid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dgid, align 4
  %arrayidx2.i = getelementptr [4 x i32], ptr %dgid, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %13, %11
  %arrayidx4.i = getelementptr %struct.ib_global_route, ptr %ah_attr, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4.i, align 4
  %xor.i = xor i32 %15, 65535
  %or5.i = or i32 %or.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %cmp.i1 = icmp eq i32 %or5.i, 0
  br i1 %cmp.i1, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %dgid, i32 12
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %addr.0.copyload = load i32, ptr %add.ptr, align 1
  %17 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %17, align 1
  %arrayidx1.i = getelementptr i8, ptr %17, i32 1
  %19 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx1.i, align 1
  %arrayidx2.i2 = getelementptr i8, ptr %17, i32 2
  %20 = ptrtoint ptr %arrayidx2.i2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 94, ptr %arrayidx2.i2, align 1
  %conv.i = trunc i32 %addr.0.copyload to i8
  %arrayidx3.i3 = getelementptr %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx3.i3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.i, ptr %arrayidx3.i3, align 1
  %shr.i = lshr i32 %addr.0.copyload, 8
  %conv5.i = trunc i32 %shr.i to i8
  %arrayidx6.i = getelementptr %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv5.i, ptr %arrayidx6.i, align 1
  %shr7.i = lshr i32 %addr.0.copyload, 16
  %23 = trunc i32 %shr7.i to i8
  %conv9.i = and i8 %23, 127
  %arrayidx10.i = getelementptr i8, ptr %17, i32 3
  %24 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv9.i, ptr %arrayidx10.i, align 1
  br label %if.end17

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %25 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 51, ptr %25, align 1
  %arrayidx1.i4 = getelementptr i8, ptr %25, i32 1
  %27 = ptrtoint ptr %arrayidx1.i4 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 51, ptr %arrayidx1.i4, align 1
  %add.ptr.i = getelementptr i8, ptr %25, i32 2
  %arrayidx2.i5 = getelementptr [4 x i32], ptr %dgid, i32 0, i32 3
  %28 = ptrtoint ptr %arrayidx2.i5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx2.i5, align 4
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %29, ptr %add.ptr.i, align 1
  br label %if.end17

if.else15:                                        ; preds = %rdma_is_multicast_addr.exit.if.else15_crit_edge, %if.end.i.if.else15_crit_edge
  %31 = ptrtoint ptr %ah_attr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ah_attr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hop_limit.i) #13
  %33 = ptrtoint ptr %hop_limit.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 255, ptr %hop_limit.i, align 4
  %34 = ptrtoint ptr %dgid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dgid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25165824, i32 %35)
  %cmp.i.i6 = icmp eq i32 %35, -25165824
  br i1 %cmp.i.i6, label %land.lhs.true.i.i, label %if.else15.if.end.i10_crit_edge

if.else15.if.end.i10_crit_edge:                   ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i10

land.lhs.true.i.i:                                ; preds = %if.else15
  %36 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp3.i.i = icmp eq i32 %37, 0
  br i1 %cmp3.i.i, label %land.lhs.true.i, label %land.lhs.true.i.i.if.end.i10_crit_edge

land.lhs.true.i.i.if.end.i10_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i10

land.lhs.true.i:                                  ; preds = %land.lhs.true.i.i
  %gid_type.i = getelementptr inbounds %struct.ib_gid_attr, ptr %32, i32 0, i32 3
  %38 = ptrtoint ptr %gid_type.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %gid_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp.i8 = icmp eq i32 %39, 1
  br i1 %cmp.i8, label %if.then.i, label %land.lhs.true.i.if.end.i10_crit_edge

land.lhs.true.i.if.end.i10_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i10

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %40 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6
  %41 = call ptr @memcpy(ptr %40, ptr %arrayidx4.i.i, i32 3)
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 3
  %arrayidx2.i1.i = getelementptr [16 x i8], ptr %dgid, i32 0, i32 13
  %42 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %arrayidx2.i1.i, i32 3)
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %40, align 1
  %45 = xor i8 %44, 2
  store i8 %45, ptr %40, align 1
  br label %ib_resolve_unicast_gid_dmac.exit

if.end.i10:                                       ; preds = %land.lhs.true.i.if.end.i10_crit_edge, %land.lhs.true.i.i.if.end.i10_crit_edge, %if.else15.if.end.i10_crit_edge
  %gid.i = getelementptr inbounds %struct.ib_gid_attr, ptr %32, i32 0, i32 2
  %46 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6
  %call9.i = call i32 @rdma_addr_find_l2_eth_by_grh(ptr noundef %gid.i, ptr noundef %dgid, ptr noundef %46, ptr noundef %32, ptr noundef nonnull %hop_limit.i) #13
  %47 = ptrtoint ptr %hop_limit.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hop_limit.i, align 4
  %conv.i9 = trunc i32 %48 to i8
  %hop_limit10.i = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 4
  %49 = ptrtoint ptr %hop_limit10.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv.i9, ptr %hop_limit10.i, align 1
  br label %ib_resolve_unicast_gid_dmac.exit

ib_resolve_unicast_gid_dmac.exit:                 ; preds = %if.end.i10, %if.then.i
  %retval.0.i11 = phi i32 [ 0, %if.then.i ], [ %call9.i, %if.end.i10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hop_limit.i) #13
  br label %if.end17

if.end17:                                         ; preds = %ib_resolve_unicast_gid_dmac.exit, %if.else, %if.then5
  %ret.0 = phi i32 [ 0, %if.then5 ], [ 0, %if.else ], [ %retval.0.i11, %ib_resolve_unicast_gid_dmac.exit ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_get_rdma_header_version(ptr nocapture noundef readonly %hdr) #2 align 64 {
entry:
  %ip4h_checked = alloca %struct.iphdr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %roce4grh = getelementptr inbounds %struct.anon.182, ptr %hdr, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ip4h_checked) #13
  %0 = getelementptr inbounds %struct.iphdr, ptr %ip4h_checked, i32 0, i32 7
  %1 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %hdr, align 4
  %bf.lshr.mask = and i8 %bf.load, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %bf.lshr.mask)
  %cmp.not = icmp eq i8 %bf.lshr.mask, 96
  %2 = ptrtoint ptr %roce4grh to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load7 = load i8, ptr %roce4grh, align 4
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %bf.lshr3.mask = and i8 %bf.load7, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr3.mask)
  %cmp5 = icmp eq i8 %bf.lshr3.mask, 64
  %cond = select i1 %cmp5, i32 4, i32 0
  br label %cleanup

if.end:                                           ; preds = %entry
  %bf.clear = and i8 %bf.load7, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %bf.clear)
  %cmp9.not = icmp eq i8 %bf.clear, 5
  br i1 %cmp9.not, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %3 = call ptr @memcpy(ptr %ip4h_checked, ptr %roce4grh, i32 20)
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %0, align 2
  %5 = call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr nonnull %ip4h_checked, i32 5) #13, !srcloc !333
  %asmresult.i = extractvalue { i32, ptr, i32, i32 } %5, 0
  %6 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %asmresult.i) #18, !srcloc !334
  %neg.i.i = xor i32 %6, -1
  %shr.i.i = lshr i32 %neg.i.i, 16
  %conv.i.i = trunc i32 %shr.i.i to i16
  %check14 = getelementptr inbounds %struct.anon.182, ptr %hdr, i32 0, i32 1, i32 7
  %7 = ptrtoint ptr %check14 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %check14, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %conv.i.i)
  %cmp18 = icmp eq i16 %8, %conv.i.i
  %. = select i1 %cmp18, i32 4, i32 6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 6, %if.end.cleanup_crit_edge ], [ %., %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ip4h_checked) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ib_get_gids_from_rdma_hdr(ptr nocapture noundef readonly %hdr, i32 noundef %net_type, ptr noundef writeonly %sgid, ptr noundef writeonly %dgid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sgid, null
  %tobool1.not = icmp eq ptr %dgid, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %net_type)
  %cmp = icmp eq i32 %net_type, 2
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %saddr = getelementptr inbounds %struct.anon.182, ptr %hdr, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %src_in.sroa.4.4.copyload = load i32, ptr %saddr, align 4
  %daddr = getelementptr inbounds %struct.anon.182, ptr %hdr, i32 0, i32 1, i32 9
  %1 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %1)
  %dst_in.sroa.4.4.copyload = load i32, ptr %daddr, align 4
  %2 = ptrtoint ptr %sgid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sgid, align 4
  %arrayidx1.i.i.i = getelementptr i32, ptr %sgid, i32 1
  %3 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx1.i.i.i, align 4
  %arrayidx2.i.i = getelementptr [4 x i32], ptr %sgid, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65535, ptr %arrayidx2.i.i, align 4
  %arrayidx1.i1.i.i = getelementptr [4 x i32], ptr %sgid, i32 0, i32 3
  %5 = ptrtoint ptr %arrayidx1.i1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %src_in.sroa.4.4.copyload, ptr %arrayidx1.i1.i.i, align 4
  %6 = ptrtoint ptr %dgid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dgid, align 4
  %arrayidx1.i.i.i29 = getelementptr i32, ptr %dgid, i32 1
  %7 = ptrtoint ptr %arrayidx1.i.i.i29 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arrayidx1.i.i.i29, align 4
  %arrayidx2.i.i30 = getelementptr [4 x i32], ptr %dgid, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx2.i.i30 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 65535, ptr %arrayidx2.i.i30, align 4
  %arrayidx1.i1.i.i31 = getelementptr [4 x i32], ptr %dgid, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx1.i1.i.i31 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %dst_in.sroa.4.4.copyload, ptr %arrayidx1.i1.i.i31, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dgid15 = getelementptr inbounds %struct.ib_grh, ptr %hdr, i32 0, i32 5
  %10 = call ptr @memcpy(ptr %dgid, ptr %dgid15, i32 16)
  %sgid16 = getelementptr inbounds %struct.ib_grh, ptr %hdr, i32 0, i32 4
  %11 = call ptr @memcpy(ptr %sgid, ptr %sgid16, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.else ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_init_ah_attr_from_wc(ptr noundef %device, i32 noundef %port_num, ptr nocapture noundef readonly %wc, ptr nocapture noundef readonly %grh, ptr noundef %ah_attr) #2 align 64 {
entry:
  %hop_limit.i = alloca i32, align 4
  %context.i = alloca %struct.find_gid_index_context, align 8
  %ip4h_checked.i.i = alloca %struct.iphdr, align 4
  %dgid = alloca %union.ib_gid, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dgid) #13
  %0 = getelementptr inbounds %struct.anon.164, ptr %dgid, i32 0, i32 1
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 806) #13
  %1 = call ptr @memset(ptr %ah_attr, i32 0, i32 56)
  %port_data.i.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 11
  %2 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_data.i.i, align 8
  %core_cap_flags.i.i = getelementptr %struct.ib_port_data, ptr %3, i32 %port_num, i32 1, i32 2
  %4 = ptrtoint ptr %core_cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %core_cap_flags.i.i, align 4
  %and.i.i = and i32 %5, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %entry.rdma_ah_find_type.exit_crit_edge

entry.rdma_ah_find_type.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rdma_ah_find_type.exit

if.end.i:                                         ; preds = %entry
  %and.i13.i = and i32 %5, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.i14.not.i = icmp eq i32 %and.i13.i, 0
  br i1 %tobool.i14.not.i, label %if.end.i.rdma_ah_find_type.exit_crit_edge, label %if.then2.i

if.end.i.rdma_ah_find_type.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rdma_ah_find_type.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %and.i17.i = and i32 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17.i)
  %cmp.i.not.i = icmp eq i32 %and.i17.i, 0
  %..i = select i1 %cmp.i.not.i, i32 1, i32 3
  br label %rdma_ah_find_type.exit

rdma_ah_find_type.exit:                           ; preds = %if.then2.i, %if.end.i.rdma_ah_find_type.exit_crit_edge, %entry.rdma_ah_find_type.exit_crit_edge
  %retval.0.i = phi i32 [ 2, %entry.rdma_ah_find_type.exit_crit_edge ], [ %..i, %if.then2.i ], [ 0, %if.end.i.rdma_ah_find_type.exit_crit_edge ]
  %type = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 5
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %retval.0.i, ptr %type, align 4
  %7 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port_data.i.i, align 8
  %core_cap_flags.i = getelementptr %struct.ib_port_data, ptr %8, i32 %port_num, i32 1, i32 2
  %9 = ptrtoint ptr %core_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %core_cap_flags.i, align 4
  %and.i = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %rdma_ah_find_type.exit.if.else.i_crit_edge, label %if.then

rdma_ah_find_type.exit.if.else.i_crit_edge:       ; preds = %rdma_ah_find_type.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.then:                                          ; preds = %rdma_ah_find_type.exit
  %wc_flags = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 9
  %11 = ptrtoint ptr %wc_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wc_flags, align 8
  %and = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.end

if.else:                                          ; preds = %if.then
  %and.i.i119 = and i32 %10, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i119)
  %tobool.i.not.i120 = icmp eq i32 %and.i.i119, 0
  br i1 %tobool.i.not.i120, label %if.end.i121, label %if.else.if.else4.i_crit_edge

if.else.if.else4.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else4.i

if.end.i121:                                      ; preds = %if.else
  %roce4grh.i.i = getelementptr inbounds %struct.anon.182, ptr %grh, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ip4h_checked.i.i) #13
  %13 = getelementptr inbounds %struct.iphdr, ptr %ip4h_checked.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %grh to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i.i = load i8, ptr %grh, align 4
  %bf.lshr.mask.i.i = and i8 %bf.load.i.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %bf.lshr.mask.i.i)
  %cmp.not.i.i = icmp eq i8 %bf.lshr.mask.i.i, 96
  %15 = ptrtoint ptr %roce4grh.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load7.i.i = load i8, ptr %roce4grh.i.i, align 4
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i121
  %bf.lshr3.mask.i.i = and i8 %bf.load7.i.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr3.mask.i.i)
  %cmp5.i.i = icmp eq i8 %bf.lshr3.mask.i.i, 64
  br i1 %cmp5.i.i, label %if.then.i.i.if.end8.thread183_crit_edge, label %if.then.i.i.if.end3.i_crit_edge

if.then.i.i.if.end3.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i

if.then.i.i.if.end8.thread183_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.thread183

if.end.i.i:                                       ; preds = %if.end.i121
  %bf.clear.i.i = and i8 %bf.load7.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %bf.clear.i.i)
  %cmp9.not.i.i = icmp eq i8 %bf.clear.i.i, 5
  br i1 %cmp9.not.i.i, label %if.end12.i.i, label %if.end.i.i.if.end3.i_crit_edge

if.end.i.i.if.end3.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i

if.end12.i.i:                                     ; preds = %if.end.i.i
  %16 = call ptr @memcpy(ptr %ip4h_checked.i.i, ptr %roce4grh.i.i, i32 20)
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %13, align 2
  %18 = call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr nonnull %ip4h_checked.i.i, i32 5) #13, !srcloc !333
  %asmresult.i.i.i = extractvalue { i32, ptr, i32, i32 } %18, 0
  %19 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %asmresult.i.i.i) #18, !srcloc !334
  %neg.i.i.i.i = xor i32 %19, -1
  %shr.i.i.i.i = lshr i32 %neg.i.i.i.i, 16
  %conv.i.i.i.i = trunc i32 %shr.i.i.i.i to i16
  %check14.i.i = getelementptr inbounds %struct.anon.182, ptr %grh, i32 0, i32 1, i32 7
  %20 = ptrtoint ptr %check14.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %check14.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %conv.i.i.i.i)
  %cmp18.i.i = icmp eq i16 %21, %conv.i.i.i.i
  br i1 %cmp18.i.i, label %if.end12.i.i.if.end8.thread183_crit_edge, label %if.end12.i.i.if.end3.i_crit_edge

if.end12.i.i.if.end3.i_crit_edge:                 ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i

if.end12.i.i.if.end8.thread183_crit_edge:         ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.thread183

if.end8.thread183:                                ; preds = %if.end12.i.i.if.end8.thread183_crit_edge, %if.then.i.i.if.end8.thread183_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ip4h_checked.i.i) #13
  br label %if.then2.i126

if.end3.i:                                        ; preds = %if.end12.i.i.if.end3.i_crit_edge, %if.end.i.i.if.end3.i_crit_edge, %if.then.i.i.if.end3.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ip4h_checked.i.i) #13
  %next_hdr.i = getelementptr inbounds %struct.ib_grh, ptr %grh, i32 0, i32 2
  %22 = ptrtoint ptr %next_hdr.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %next_hdr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %23)
  %cmp4.i = icmp eq i8 %23, 17
  %spec.select = select i1 %cmp4.i, i32 2, i32 1
  br label %if.else.i

if.end:                                           ; preds = %if.then
  %network_hdr_type = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 16
  %24 = ptrtoint ptr %network_hdr_type to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %network_hdr_type, align 4
  %conv = zext i8 %25 to i32
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %25, label %if.end.if.else4.i_crit_edge [
    i8 2, label %if.end.if.end8_crit_edge
    i8 3, label %if.end.if.end8_crit_edge193
    i8 1, label %if.end.if.else.i_crit_edge
  ]

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.end.if.end8_crit_edge193:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.end.if.else4.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else4.i

if.else4.i:                                       ; preds = %if.end.if.else4.i_crit_edge, %if.else.if.else4.i_crit_edge
  %net_type.0169 = phi i32 [ %conv, %if.end.if.else4.i_crit_edge ], [ 0, %if.else.if.else4.i_crit_edge ]
  br label %if.end8

if.end8:                                          ; preds = %if.else4.i, %if.end.if.end8_crit_edge, %if.end.if.end8_crit_edge193
  %net_type.1 = phi i32 [ %net_type.0169, %if.else4.i ], [ %conv, %if.end.if.end8_crit_edge ], [ %conv, %if.end.if.end8_crit_edge193 ]
  %gid_type.0 = phi i32 [ 0, %if.else4.i ], [ 2, %if.end.if.end8_crit_edge ], [ 2, %if.end.if.end8_crit_edge193 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %net_type.1)
  %cmp.i = icmp eq i32 %net_type.1, 2
  br i1 %cmp.i, label %if.end8.if.then2.i126_crit_edge, label %if.end8.if.else.i_crit_edge

if.end8.if.else.i_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.end8.if.then2.i126_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then2.i126

if.then2.i126:                                    ; preds = %if.end8.if.then2.i126_crit_edge, %if.end8.thread183
  %gid_type.0187 = phi i32 [ 2, %if.end8.thread183 ], [ %gid_type.0, %if.end8.if.then2.i126_crit_edge ]
  %saddr.i = getelementptr inbounds %struct.anon.182, ptr %grh, i32 0, i32 1, i32 8
  %27 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %src_in.sroa.4.4.copyload.i = load i32, ptr %saddr.i, align 4
  %daddr.i = getelementptr inbounds %struct.anon.182, ptr %grh, i32 0, i32 1, i32 9
  %28 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %dst_in.sroa.4.4.copyload.i = load i32, ptr %daddr.i, align 4
  %sgid.sroa.8.12.insert.ext = zext i32 %src_in.sroa.4.4.copyload.i to i64
  %sgid.sroa.8.12.insert.insert = or i64 %sgid.sroa.8.12.insert.ext, 281470681743360
  %29 = ptrtoint ptr %dgid to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %dgid, align 8
  %arrayidx1.i.i.i29.i = getelementptr inbounds i32, ptr %dgid, i32 1
  %30 = ptrtoint ptr %arrayidx1.i.i.i29.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %arrayidx1.i.i.i29.i, align 4
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 65535, ptr %0, align 8
  %arrayidx1.i1.i.i31.i = getelementptr inbounds [4 x i32], ptr %dgid, i32 0, i32 3
  %32 = ptrtoint ptr %arrayidx1.i1.i.i31.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %dst_in.sroa.4.4.copyload.i, ptr %arrayidx1.i1.i.i31.i, align 4
  br label %if.end12

if.else.i:                                        ; preds = %if.end8.if.else.i_crit_edge, %if.end.if.else.i_crit_edge, %if.end3.i, %rdma_ah_find_type.exit.if.else.i_crit_edge
  %gid_type.0177 = phi i32 [ %gid_type.0, %if.end8.if.else.i_crit_edge ], [ 0, %rdma_ah_find_type.exit.if.else.i_crit_edge ], [ 1, %if.end.if.else.i_crit_edge ], [ %spec.select, %if.end3.i ]
  %dgid15.i = getelementptr inbounds %struct.ib_grh, ptr %grh, i32 0, i32 5
  %33 = call ptr @memcpy(ptr %dgid, ptr %dgid15.i, i32 16)
  %sgid16.i = getelementptr inbounds %struct.ib_grh, ptr %grh, i32 0, i32 4
  %34 = ptrtoint ptr %sgid16.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %sgid.sroa.0.0.copyload = load i64, ptr %sgid16.i, align 8
  %sgid.sroa.0.sroa.0.0.extract.shift = lshr i64 %sgid.sroa.0.0.copyload, 32
  %sgid.sroa.0.sroa.0.0.extract.trunc = trunc i64 %sgid.sroa.0.sroa.0.0.extract.shift to i32
  %sgid.sroa.0.sroa.7.0.extract.trunc = trunc i64 %sgid.sroa.0.0.copyload to i32
  %sgid.sroa.8.0.sgid16.i.sroa_idx = getelementptr inbounds %struct.ib_grh, ptr %grh, i32 0, i32 4, i32 0, i32 1
  %35 = ptrtoint ptr %sgid.sroa.8.0.sgid16.i.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %35)
  %sgid.sroa.8.0.copyload = load i64, ptr %sgid.sroa.8.0.sgid16.i.sroa_idx, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.else.i, %if.then2.i126
  %gid_type.0176 = phi i32 [ %gid_type.0187, %if.then2.i126 ], [ %gid_type.0177, %if.else.i ]
  %sgid.sroa.0.sroa.7.0 = phi i32 [ 0, %if.then2.i126 ], [ %sgid.sroa.0.sroa.7.0.extract.trunc, %if.else.i ]
  %sgid.sroa.0.sroa.0.0 = phi i32 [ 0, %if.then2.i126 ], [ %sgid.sroa.0.sroa.0.0.extract.trunc, %if.else.i ]
  %sgid.sroa.8.0 = phi i64 [ %sgid.sroa.8.12.insert.insert, %if.then2.i126 ], [ %sgid.sroa.8.0.copyload, %if.else.i ]
  %sl = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 11
  %36 = ptrtoint ptr %sl to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %sl, align 2
  %sl1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 1
  %38 = ptrtoint ptr %sl1.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %sl1.i, align 8
  %port_num1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 3
  %39 = ptrtoint ptr %port_num1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %port_num, ptr %port_num1.i, align 4
  %40 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %port_data.i.i, align 8
  %core_cap_flags.i129 = getelementptr %struct.ib_port_data, ptr %41, i32 %port_num, i32 1, i32 2
  %42 = ptrtoint ptr %core_cap_flags.i129 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %core_cap_flags.i129, align 4
  %and.i130 = and i32 %43, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i130)
  %tobool.i131.not = icmp eq i32 %and.i130, 0
  br i1 %tobool.i131.not, label %if.else39, label %if.then14

if.then14:                                        ; preds = %if.end12
  %wc_flags15 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 9
  %44 = ptrtoint ptr %wc_flags15 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %wc_flags15, align 8
  %and16 = and i32 %45, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then14.cond.end_crit_edge, label %cond.true

if.then14.cond.end_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  %vlan_id18 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 15
  %46 = ptrtoint ptr %vlan_id18 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vlan_id18, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then14.cond.end_crit_edge
  %cond = phi i16 [ %47, %cond.true ], [ -1, %if.then14.cond.end_crit_edge ]
  %and22 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %cond.end.cleanup62_crit_edge, label %if.end25

cond.end.cleanup62_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup62

if.end25:                                         ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %context.i) #13
  %48 = ptrtoint ptr %context.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 -1, ptr %context.i, align 8, !annotation !331
  store i16 %cond, ptr %context.i, align 8
  %gid_type2.i = getelementptr inbounds %struct.find_gid_index_context, ptr %context.i, i32 0, i32 1
  %49 = ptrtoint ptr %gid_type2.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %gid_type.0176, ptr %gid_type2.i, align 4
  %call.i = call ptr @rdma_find_gid_by_filter(ptr noundef %device, ptr noundef nonnull %dgid, i32 noundef %port_num, ptr noundef nonnull @find_gid_index, ptr noundef nonnull %context.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %context.i) #13
  %cmp.i132 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %call.i to i32
  br label %cleanup62

if.end30:                                         ; preds = %if.end25
  %51 = ptrtoint ptr %grh to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %grh, align 8
  %and31 = and i32 %52, 1048575
  %shr = lshr i32 %52, 20
  %conv34 = trunc i32 %shr to i8
  %index.i = getelementptr inbounds %struct.ib_gid_attr, ptr %call.i, i32 0, i32 4
  %53 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %index.i, align 4
  %ah_flags.i.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 4
  %55 = ptrtoint ptr %ah_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %ah_flags.i.i, align 8
  %dgid1.i.i = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 1
  %sgid.sroa.0.sroa.7.0.insert.ext = zext i32 %sgid.sroa.0.sroa.7.0 to i64
  %sgid.sroa.0.sroa.0.0.insert.ext = zext i32 %sgid.sroa.0.sroa.0.0 to i64
  %sgid.sroa.0.sroa.0.0.insert.shift = shl nuw i64 %sgid.sroa.0.sroa.0.0.insert.ext, 32
  %sgid.sroa.0.sroa.0.0.insert.insert = or i64 %sgid.sroa.0.sroa.0.0.insert.shift, %sgid.sroa.0.sroa.7.0.insert.ext
  %56 = ptrtoint ptr %dgid1.i.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %sgid.sroa.0.sroa.0.0.insert.insert, ptr %dgid1.i.i, align 8
  %sgid.sroa.8.0.dgid1.i.i.sroa_idx = getelementptr %struct.ib_global_route, ptr %ah_attr, i32 0, i32 1, i32 0, i32 1
  %57 = ptrtoint ptr %sgid.sroa.8.0.dgid1.i.i.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %sgid.sroa.8.0, ptr %sgid.sroa.8.0.dgid1.i.i.sroa_idx, align 8
  %conv.i = trunc i16 %54 to i8
  %flow_label2.i.i = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 2
  %58 = ptrtoint ptr %flow_label2.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %and31, ptr %flow_label2.i.i, align 8
  %sgid_index3.i.i = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 3
  %59 = ptrtoint ptr %sgid_index3.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv.i, ptr %sgid_index3.i.i, align 4
  %hop_limit4.i.i = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 4
  %60 = ptrtoint ptr %hop_limit4.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -1, ptr %hop_limit4.i.i, align 1
  %traffic_class5.i.i = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 5
  %61 = ptrtoint ptr %traffic_class5.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv34, ptr %traffic_class5.i.i, align 2
  %62 = ptrtoint ptr %ah_attr to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i, ptr %ah_attr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hop_limit.i) #13
  %63 = ptrtoint ptr %hop_limit.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 255, ptr %hop_limit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25165824, i32 %sgid.sroa.0.sroa.0.0)
  %cmp.i.i = icmp eq i32 %sgid.sroa.0.sroa.0.0, -25165824
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end30.ib_resolve_unicast_gid_dmac.exit_crit_edge

if.end30.ib_resolve_unicast_gid_dmac.exit_crit_edge: ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %ib_resolve_unicast_gid_dmac.exit

land.lhs.true.i.i:                                ; preds = %if.end30
  %arrayidx2.i.i = getelementptr [4 x i32], ptr %dgid1.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp3.i.i = icmp eq i32 %65, 0
  br i1 %cmp3.i.i, label %land.lhs.true.i, label %land.lhs.true.i.i.ib_resolve_unicast_gid_dmac.exit_crit_edge

land.lhs.true.i.i.ib_resolve_unicast_gid_dmac.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ib_resolve_unicast_gid_dmac.exit

land.lhs.true.i:                                  ; preds = %land.lhs.true.i.i
  %gid_type.i = getelementptr inbounds %struct.ib_gid_attr, ptr %call.i, i32 0, i32 3
  %66 = ptrtoint ptr %gid_type.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %gid_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp.i134 = icmp eq i32 %67, 1
  br i1 %cmp.i134, label %ib_resolve_unicast_gid_dmac.exit.thread, label %land.lhs.true.i.ib_resolve_unicast_gid_dmac.exit_crit_edge

land.lhs.true.i.ib_resolve_unicast_gid_dmac.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ib_resolve_unicast_gid_dmac.exit

ib_resolve_unicast_gid_dmac.exit.thread:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %68 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6
  %69 = call ptr @memcpy(ptr %68, ptr %sgid.sroa.8.0.dgid1.i.i.sroa_idx, i32 3)
  %add.ptr.i.i = getelementptr i8, ptr %68, i32 3
  %arrayidx2.i1.i = getelementptr [16 x i8], ptr %dgid1.i.i, i32 0, i32 13
  %70 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %arrayidx2.i1.i, i32 3)
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %68, align 1
  %73 = xor i8 %72, 2
  store i8 %73, ptr %68, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hop_limit.i) #13
  br label %cleanup62

ib_resolve_unicast_gid_dmac.exit:                 ; preds = %land.lhs.true.i.ib_resolve_unicast_gid_dmac.exit_crit_edge, %land.lhs.true.i.i.ib_resolve_unicast_gid_dmac.exit_crit_edge, %if.end30.ib_resolve_unicast_gid_dmac.exit_crit_edge
  %gid.i = getelementptr inbounds %struct.ib_gid_attr, ptr %call.i, i32 0, i32 2
  %74 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6
  %call9.i = call i32 @rdma_addr_find_l2_eth_by_grh(ptr noundef %gid.i, ptr noundef %dgid1.i.i, ptr noundef %74, ptr noundef %call.i, ptr noundef nonnull %hop_limit.i) #13
  %75 = ptrtoint ptr %hop_limit.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %hop_limit.i, align 4
  %conv.i135 = trunc i32 %76 to i8
  %77 = ptrtoint ptr %hop_limit4.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv.i135, ptr %hop_limit4.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hop_limit.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool36.not = icmp eq i32 %call9.i, 0
  br i1 %tobool36.not, label %ib_resolve_unicast_gid_dmac.exit.cleanup62_crit_edge, label %if.then37

ib_resolve_unicast_gid_dmac.exit.cleanup62_crit_edge: ; preds = %ib_resolve_unicast_gid_dmac.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup62

if.then37:                                        ; preds = %ib_resolve_unicast_gid_dmac.exit
  %78 = ptrtoint ptr %ah_attr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ah_attr, align 8
  %tobool.not.i = icmp eq ptr %79, null
  br i1 %tobool.not.i, label %if.then37.cleanup62_crit_edge, label %if.then.i138

if.then37.cleanup62_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup62

if.then.i138:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  call void @rdma_put_gid_attr(ptr noundef nonnull %79) #13
  %80 = ptrtoint ptr %ah_attr to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %ah_attr, align 8
  br label %cleanup62

if.else39:                                        ; preds = %if.end12
  %slid = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 8
  %81 = ptrtoint ptr %slid to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %slid, align 4
  %83 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %type, align 4
  %85 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %84, label %if.else39.rdma_ah_set_path_bits.exit_crit_edge [
    i32 1, label %rdma_ah_set_dlid.exit.thread
    i32 3, label %rdma_ah_set_dlid.exit.thread181
  ]

if.else39.rdma_ah_set_path_bits.exit_crit_edge:   ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #15
  br label %rdma_ah_set_path_bits.exit

rdma_ah_set_dlid.exit.thread:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i140 = trunc i32 %82 to i16
  %86 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv.i140, ptr %86, align 8
  %dlid_path_bits180 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 12
  %88 = ptrtoint ptr %dlid_path_bits180 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %dlid_path_bits180, align 1
  %src_path_bits1.i = getelementptr inbounds %struct.ib_ah_attr, ptr %86, i32 0, i32 1
  %90 = ptrtoint ptr %src_path_bits1.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %src_path_bits1.i, align 2
  br label %rdma_ah_set_path_bits.exit

rdma_ah_set_dlid.exit.thread181:                  ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #15
  %91 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %82, ptr %91, align 8
  %dlid_path_bits182 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 12
  %93 = ptrtoint ptr %dlid_path_bits182 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %dlid_path_bits182, align 1
  %src_path_bits5.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6, i32 0, i32 1
  %95 = ptrtoint ptr %src_path_bits5.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %src_path_bits5.i, align 4
  br label %rdma_ah_set_path_bits.exit

rdma_ah_set_path_bits.exit:                       ; preds = %rdma_ah_set_dlid.exit.thread181, %rdma_ah_set_dlid.exit.thread, %if.else39.rdma_ah_set_path_bits.exit_crit_edge
  %wc_flags40 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 9
  %96 = ptrtoint ptr %wc_flags40 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %wc_flags40, align 8
  %and41 = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %cmp = icmp eq i32 %and41, 0
  br i1 %cmp, label %rdma_ah_set_path_bits.exit.cleanup62_crit_edge, label %if.end44

rdma_ah_set_path_bits.exit.cleanup62_crit_edge:   ; preds = %rdma_ah_set_path_bits.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup62

if.end44:                                         ; preds = %rdma_ah_set_path_bits.exit
  %98 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 144115188075855874, i64 %99)
  %cmp45.not = icmp eq i64 %99, 144115188075855874
  br i1 %cmp45.not, label %if.else49, label %if.then47

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  %call48 = call ptr @rdma_find_gid_by_port(ptr noundef %device, ptr noundef nonnull %dgid, i32 noundef 0, i32 noundef %port_num, ptr noundef null) #13
  br label %if.end51

if.else49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  %call50 = call ptr @rdma_get_gid_attr(ptr noundef %device, i32 noundef %port_num, i32 noundef 0) #13
  br label %if.end51

if.end51:                                         ; preds = %if.else49, %if.then47
  %sgid_attr.0 = phi ptr [ %call48, %if.then47 ], [ %call50, %if.else49 ]
  %cmp.i144 = icmp ugt ptr %sgid_attr.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i144, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  %100 = ptrtoint ptr %sgid_attr.0 to i32
  br label %cleanup62

if.end55:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  %101 = ptrtoint ptr %grh to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %grh, align 8
  %and57 = and i32 %102, 1048575
  %shr59 = lshr i32 %102, 20
  %conv61 = trunc i32 %shr59 to i8
  %index.i145 = getelementptr inbounds %struct.ib_gid_attr, ptr %sgid_attr.0, i32 0, i32 4
  %103 = ptrtoint ptr %index.i145 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %index.i145, align 4
  %ah_flags.i.i146 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 4
  %105 = ptrtoint ptr %ah_flags.i.i146 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %ah_flags.i.i146, align 8
  %dgid1.i.i147 = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 1
  %sgid.sroa.0.sroa.7.0.insert.ext162 = zext i32 %sgid.sroa.0.sroa.7.0 to i64
  %sgid.sroa.0.sroa.0.0.insert.ext158 = zext i32 %sgid.sroa.0.sroa.0.0 to i64
  %sgid.sroa.0.sroa.0.0.insert.shift159 = shl nuw i64 %sgid.sroa.0.sroa.0.0.insert.ext158, 32
  %sgid.sroa.0.sroa.0.0.insert.insert161 = or i64 %sgid.sroa.0.sroa.0.0.insert.shift159, %sgid.sroa.0.sroa.7.0.insert.ext162
  %106 = ptrtoint ptr %dgid1.i.i147 to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %sgid.sroa.0.sroa.0.0.insert.insert161, ptr %dgid1.i.i147, align 8
  %sgid.sroa.8.0.dgid1.i.i147.sroa_idx = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 1, i32 0, i32 1
  %107 = ptrtoint ptr %sgid.sroa.8.0.dgid1.i.i147.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %sgid.sroa.8.0, ptr %sgid.sroa.8.0.dgid1.i.i147.sroa_idx, align 8
  %conv.i149 = trunc i16 %104 to i8
  %flow_label2.i.i150 = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 2
  %108 = ptrtoint ptr %flow_label2.i.i150 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %and57, ptr %flow_label2.i.i150, align 8
  %sgid_index3.i.i151 = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 3
  %109 = ptrtoint ptr %sgid_index3.i.i151 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv.i149, ptr %sgid_index3.i.i151, align 4
  %hop_limit4.i.i152 = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 4
  %110 = ptrtoint ptr %hop_limit4.i.i152 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 -1, ptr %hop_limit4.i.i152, align 1
  %traffic_class5.i.i153 = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 5
  %111 = ptrtoint ptr %traffic_class5.i.i153 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv61, ptr %traffic_class5.i.i153, align 2
  %112 = ptrtoint ptr %ah_attr to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %sgid_attr.0, ptr %ah_attr, align 8
  br label %cleanup62

cleanup62:                                        ; preds = %if.end55, %if.then53, %rdma_ah_set_path_bits.exit.cleanup62_crit_edge, %if.then.i138, %if.then37.cleanup62_crit_edge, %ib_resolve_unicast_gid_dmac.exit.cleanup62_crit_edge, %ib_resolve_unicast_gid_dmac.exit.thread, %if.then28, %cond.end.cleanup62_crit_edge
  %retval.1 = phi i32 [ %100, %if.then53 ], [ 0, %if.end55 ], [ %50, %if.then28 ], [ -91, %cond.end.cleanup62_crit_edge ], [ 0, %ib_resolve_unicast_gid_dmac.exit.cleanup62_crit_edge ], [ 0, %rdma_ah_set_path_bits.exit.cleanup62_crit_edge ], [ 0, %ib_resolve_unicast_gid_dmac.exit.thread ], [ %call9.i, %if.then37.cleanup62_crit_edge ], [ %call9.i, %if.then.i138 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dgid) #13
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rdma_move_grh_sgid_attr(ptr nocapture noundef writeonly %attr, ptr noundef readonly %dgid, i32 noundef %flow_label, i8 noundef zeroext %hop_limit, i8 noundef zeroext %traffic_class, ptr noundef %sgid_attr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.ib_gid_attr, ptr %sgid_attr, i32 0, i32 4
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 4
  %ah_flags.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %attr, i32 0, i32 4
  %2 = ptrtoint ptr %ah_flags.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %ah_flags.i, align 8
  %tobool.not.i = icmp eq ptr %dgid, null
  br i1 %tobool.not.i, label %entry.rdma_ah_set_grh.exit_crit_edge, label %if.then.i

entry.rdma_ah_set_grh.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rdma_ah_set_grh.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dgid1.i = getelementptr inbounds %struct.ib_global_route, ptr %attr, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %dgid1.i, ptr %dgid, i32 16)
  br label %rdma_ah_set_grh.exit

rdma_ah_set_grh.exit:                             ; preds = %if.then.i, %entry.rdma_ah_set_grh.exit_crit_edge
  %conv = trunc i16 %1 to i8
  %flow_label2.i = getelementptr inbounds %struct.ib_global_route, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %flow_label2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %flow_label, ptr %flow_label2.i, align 8
  %sgid_index3.i = getelementptr inbounds %struct.ib_global_route, ptr %attr, i32 0, i32 3
  %5 = ptrtoint ptr %sgid_index3.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %sgid_index3.i, align 4
  %hop_limit4.i = getelementptr inbounds %struct.ib_global_route, ptr %attr, i32 0, i32 4
  %6 = ptrtoint ptr %hop_limit4.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %hop_limit, ptr %hop_limit4.i, align 1
  %traffic_class5.i = getelementptr inbounds %struct.ib_global_route, ptr %attr, i32 0, i32 5
  %7 = ptrtoint ptr %traffic_class5.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %traffic_class, ptr %traffic_class5.i, align 2
  %8 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %sgid_attr, ptr %attr, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_find_gid_by_port(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_get_gid_attr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_put_gid_attr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ib_create_ah_from_wc(ptr noundef %pd, ptr nocapture noundef readonly %wc, ptr nocapture noundef readonly %grh, i32 noundef %port_num) #2 align 64 {
entry:
  %ah_attr = alloca %struct.rdma_ah_attr, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %ah_attr) #13
  %0 = call ptr @memset(ptr %ah_attr, i32 255, i32 56)
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %1 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device, align 4
  %call = call i32 @ib_init_ah_attr_from_wc(ptr noundef %2, i32 noundef %port_num, ptr noundef %wc, ptr noundef %grh, ptr noundef nonnull %ah_attr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call ptr @rdma_create_ah(ptr noundef %pd, ptr noundef nonnull %ah_attr, i32 noundef 1)
  %4 = ptrtoint ptr %ah_attr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ah_attr, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @rdma_put_gid_attr(ptr noundef nonnull %5) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %3, %if.then ], [ %call2, %if.end.cleanup_crit_edge ], [ %call2, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %ah_attr) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rdma_modify_ah(ptr noundef %ah, ptr noundef %ah_attr) #2 align 64 {
entry:
  %old_sgid_attr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_sgid_attr) #13
  %0 = ptrtoint ptr %old_sgid_attr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %old_sgid_attr, align 4, !annotation !331
  %type = getelementptr inbounds %struct.ib_ah, ptr %ah, i32 0, i32 4
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  %type1 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 5
  %3 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp.not = icmp eq i32 %2, %4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ah, align 4
  %call = call fastcc i32 @rdma_fill_sgid_attr(ptr noundef %6, ptr noundef %ah_attr, ptr noundef nonnull %old_sgid_attr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ah, align 4
  %modify_ah = getelementptr inbounds %struct.ib_device, ptr %8, i32 0, i32 1, i32 39
  %9 = ptrtoint ptr %modify_ah to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %modify_ah, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %if.end3.cond.end_crit_edge, label %cond.true

if.end3.cond.end_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %call9 = tail call i32 %10(ptr noundef %ah, ptr noundef %ah_attr) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end3.cond.end_crit_edge
  %cond = phi i32 [ %call9, %cond.true ], [ -95, %if.end3.cond.end_crit_edge ]
  %sgid_attr = getelementptr inbounds %struct.ib_ah, ptr %ah, i32 0, i32 3
  %11 = ptrtoint ptr %sgid_attr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sgid_attr, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %cond.end.if.end.i_crit_edge, label %if.then.i

cond.end.if.end.i_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rdma_put_gid_attr(ptr noundef nonnull %12) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %cond.end.if.end.i_crit_edge
  %ah_flags.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 4
  %13 = ptrtoint ptr %ah_flags.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ah_flags.i, align 8
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool1.not.i = icmp eq i8 %15, 0
  br i1 %tobool1.not.i, label %if.end.i.rdma_update_sgid_attr.exit_crit_edge, label %if.then2.i

if.end.i.rdma_update_sgid_attr.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rdma_update_sgid_attr.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %ah_attr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ah_attr, align 8
  tail call void @rdma_hold_gid_attr(ptr noundef %17) #13
  %18 = ptrtoint ptr %ah_attr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ah_attr, align 8
  br label %rdma_update_sgid_attr.exit

rdma_update_sgid_attr.exit:                       ; preds = %if.then2.i, %if.end.i.rdma_update_sgid_attr.exit_crit_edge
  %retval.0.i = phi ptr [ %19, %if.then2.i ], [ null, %if.end.i.rdma_update_sgid_attr.exit_crit_edge ]
  %20 = ptrtoint ptr %sgid_attr to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %retval.0.i, ptr %sgid_attr, align 4
  %21 = ptrtoint ptr %old_sgid_attr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %old_sgid_attr, align 4
  %23 = ptrtoint ptr %ah_attr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ah_attr, align 8
  %cmp.i = icmp eq ptr %24, %22
  %tobool.not.i.i = icmp eq ptr %24, null
  %or.cond.i = or i1 %cmp.i, %tobool.not.i.i
  br i1 %or.cond.i, label %rdma_update_sgid_attr.exit.cleanup_crit_edge, label %if.then.i.i

rdma_update_sgid_attr.exit.cleanup_crit_edge:     ; preds = %rdma_update_sgid_attr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i.i:                                      ; preds = %rdma_update_sgid_attr.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rdma_put_gid_attr(ptr noundef nonnull %24) #13
  %25 = ptrtoint ptr %ah_attr to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %ah_attr, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %rdma_update_sgid_attr.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %cond, %rdma_update_sgid_attr.exit.cleanup_crit_edge ], [ %cond, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_sgid_attr) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rdma_query_ah(ptr noundef %ah, ptr noundef %ah_attr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ah_attr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %ah_attr, align 8
  %1 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ah, align 4
  %query_ah = getelementptr inbounds %struct.ib_device, ptr %2, i32 0, i32 1, i32 40
  %3 = ptrtoint ptr %query_ah to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %query_ah, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 %4(ptr noundef %ah, ptr noundef %ah_attr) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ -95, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rdma_destroy_ah_user(ptr noundef %ah, i32 noundef %flags, ptr nocapture readnone %udata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sgid_attr1 = getelementptr inbounds %struct.ib_ah, ptr %ah, i32 0, i32 3
  %0 = ptrtoint ptr %sgid_attr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sgid_attr1, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.body2

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 979) #13
  br label %do.end7

do.end7:                                          ; preds = %do.body2, %entry.do.end7_crit_edge
  %pd8 = getelementptr inbounds %struct.ib_ah, ptr %ah, i32 0, i32 1
  %2 = ptrtoint ptr %pd8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd8, align 4
  %4 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ah, align 4
  %destroy_ah = getelementptr inbounds %struct.ib_device, ptr %5, i32 0, i32 1, i32 41
  %6 = ptrtoint ptr %destroy_ah to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %destroy_ah, align 4
  %call = tail call i32 %7(ptr noundef %ah, i32 noundef %flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.end11, label %do.end7.cleanup_crit_edge

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %do.end7
  %usecnt = getelementptr inbounds %struct.ib_pd, ptr %3, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #13
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #13, !srcloc !335
  %tobool12.not = icmp eq ptr %1, null
  br i1 %tobool12.not, label %if.end11.if.end14_crit_edge, label %if.then13

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rdma_put_gid_attr(ptr noundef nonnull %1) #13
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11.if.end14_crit_edge
  tail call void @kfree(ptr noundef %ah) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end7.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ib_create_srq_user(ptr noundef %pd, ptr noundef %srq_init_attr, ptr noundef %uobject, ptr noundef %udata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %size_ib_srq = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 1, i32 128
  %2 = ptrtoint ptr %size_ib_srq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size_ib_srq, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #16
  %tobool.not = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %6 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %call9.i.i.i, align 128
  %pd5 = getelementptr inbounds %struct.ib_srq, ptr %call9.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %pd5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pd, ptr %pd5, align 4
  %8 = ptrtoint ptr %srq_init_attr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %srq_init_attr, align 4
  %event_handler6 = getelementptr inbounds %struct.ib_srq, ptr %call9.i.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %event_handler6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %event_handler6, align 4
  %srq_context = getelementptr inbounds %struct.ib_srq_init_attr, ptr %srq_init_attr, i32 0, i32 1
  %11 = ptrtoint ptr %srq_context to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %srq_context, align 4
  %srq_context7 = getelementptr inbounds %struct.ib_srq, ptr %call9.i.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %srq_context7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %srq_context7, align 16
  %srq_type = getelementptr inbounds %struct.ib_srq_init_attr, ptr %srq_init_attr, i32 0, i32 3
  %14 = ptrtoint ptr %srq_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %srq_type, align 4
  %srq_type8 = getelementptr inbounds %struct.ib_srq, ptr %call9.i.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %srq_type8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %srq_type8, align 4
  %uobject9 = getelementptr inbounds %struct.ib_srq, ptr %call9.i.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %uobject9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %uobject, ptr %uobject9, align 8
  %18 = add i32 %15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %19 = icmp ult i32 %18, 2
  br i1 %19, label %if.end17, label %if.end.if.end31_crit_edge

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.end17:                                         ; preds = %if.end
  %ext = getelementptr inbounds %struct.ib_srq_init_attr, ptr %srq_init_attr, i32 0, i32 4
  %20 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ext, align 4
  %ext13 = getelementptr inbounds %struct.ib_srq, ptr %call9.i.i.i, i32 0, i32 7
  %22 = ptrtoint ptr %ext13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %ext13, align 4
  %usecnt = getelementptr inbounds %struct.ib_cq, ptr %21, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #13
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #13, !srcloc !332
  %24 = ptrtoint ptr %srq_type8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load i32, ptr %srq_type8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp = icmp eq i32 %.pr, 1
  br i1 %cmp, label %if.then19, label %if.end17.if.end31_crit_edge

if.end17.if.end31_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then19:                                        ; preds = %if.end17
  %25 = getelementptr inbounds %struct.ib_srq_init_attr, ptr %srq_init_attr, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %28 = getelementptr inbounds %struct.ib_srq, ptr %call9.i.i.i, i32 0, i32 7, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %28, align 32
  %tobool25.not = icmp eq ptr %27, null
  br i1 %tobool25.not, label %if.then19.if.end31_crit_edge, label %if.then26

if.then19.if.end31_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then26:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  %usecnt29 = getelementptr inbounds %struct.ib_xrcd, ptr %27, i32 0, i32 1
  %call.i.i104 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt29, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt29, i32 1, i32 3, i32 1) #13
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt29, ptr %usecnt29, i32 1, ptr elementtype(i32) %usecnt29) #13, !srcloc !332
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.then19.if.end31_crit_edge, %if.end17.if.end31_crit_edge, %if.end.if.end31_crit_edge
  %usecnt32 = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 4
  %call.i.i105 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt32, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt32, i32 1, i32 3, i32 1) #13
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt32, ptr %usecnt32, i32 1, ptr elementtype(i32) %usecnt32) #13, !srcloc !332
  %res = getelementptr inbounds %struct.ib_srq, ptr %call9.i.i.i, i32 0, i32 8
  tail call void @rdma_restrack_new(ptr noundef %res, i32 noundef 7) #13
  %res34 = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 7
  tail call void @rdma_restrack_parent_name(ptr noundef %res, ptr noundef %res34) #13
  %32 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device, align 4
  %create_srq = getelementptr inbounds %struct.ib_device, ptr %33, i32 0, i32 1, i32 42
  %34 = ptrtoint ptr %create_srq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %create_srq, align 4
  %call37 = tail call i32 %35(ptr noundef nonnull %call9.i.i.i, ptr noundef %srq_init_attr, ptr noundef %udata) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end62, label %if.then39

if.then39:                                        ; preds = %if.end31
  %call41 = tail call i32 @rdma_restrack_put(ptr noundef %res) #13
  %36 = ptrtoint ptr %pd5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pd5, align 4
  %usecnt43 = getelementptr inbounds %struct.ib_pd, ptr %37, i32 0, i32 4
  %call.i.i106 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt43, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt43, i32 1, i32 3, i32 1) #13
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt43, ptr %usecnt43, i32 1, ptr elementtype(i32) %usecnt43) #13, !srcloc !335
  %39 = ptrtoint ptr %srq_type8 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %srq_type8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp45 = icmp eq i32 %40, 1
  br i1 %cmp45, label %land.lhs.true, label %if.then39.if.end53_crit_edge

if.then39.if.end53_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

land.lhs.true:                                    ; preds = %if.then39
  %41 = getelementptr inbounds %struct.ib_srq, ptr %call9.i.i.i, i32 0, i32 7, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 32
  %tobool48.not = icmp eq ptr %43, null
  br i1 %tobool48.not, label %land.lhs.true.if.end53_crit_edge, label %if.then49

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then49:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %usecnt52 = getelementptr inbounds %struct.ib_xrcd, ptr %43, i32 0, i32 1
  %call.i.i107 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt52, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt52, i32 1, i32 3, i32 1) #13
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt52, ptr %usecnt52, i32 1, ptr elementtype(i32) %usecnt52) #13, !srcloc !335
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %land.lhs.true.if.end53_crit_edge, %if.then39.if.end53_crit_edge
  %45 = ptrtoint ptr %srq_type8 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %srq_type8, align 4
  %47 = add i32 %46, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %48 = icmp ult i32 %47, 2
  br i1 %48, label %if.then56, label %if.end53.if.end60_crit_edge

if.end53.if.end60_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  %ext57 = getelementptr inbounds %struct.ib_srq, ptr %call9.i.i.i, i32 0, i32 7
  %49 = ptrtoint ptr %ext57 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ext57, align 4
  %usecnt59 = getelementptr inbounds %struct.ib_cq, ptr %50, i32 0, i32 7
  %call.i.i108 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt59, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt59, i32 1, i32 3, i32 1) #13
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt59, ptr %usecnt59, i32 1, ptr elementtype(i32) %usecnt59) #13, !srcloc !335
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %if.end53.if.end60_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #13
  %52 = inttoptr i32 %call37 to ptr
  br label %cleanup

if.end62:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rdma_restrack_add(ptr noundef %res) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.end60, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %52, %if.end60 ], [ %call9.i.i.i, %if.end62 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_restrack_parent_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_modify_srq(ptr noundef %srq, ptr noundef %srq_attr, i32 noundef %srq_attr_mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %srq, align 4
  %modify_srq = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 1, i32 43
  %2 = ptrtoint ptr %modify_srq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %modify_srq, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 %3(ptr noundef %srq, ptr noundef %srq_attr, i32 noundef %srq_attr_mask, ptr noundef null) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ -95, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_query_srq(ptr noundef %srq, ptr noundef %srq_attr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %srq, align 4
  %query_srq = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 1, i32 44
  %2 = ptrtoint ptr %query_srq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %query_srq, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 %3(ptr noundef %srq, ptr noundef %srq_attr) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ -95, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_destroy_srq_user(ptr noundef %srq, ptr noundef %udata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %usecnt = getelementptr inbounds %struct.ib_srq, ptr %srq, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usecnt, i32 noundef 4) #13
  %0 = ptrtoint ptr %usecnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %usecnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %srq, align 4
  %destroy_srq = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 1, i32 45
  %4 = ptrtoint ptr %destroy_srq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %destroy_srq, align 4
  %call1 = tail call i32 %5(ptr noundef %srq, ptr noundef %udata) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %pd = getelementptr inbounds %struct.ib_srq, ptr %srq, i32 0, i32 1
  %6 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pd, align 4
  %usecnt5 = getelementptr inbounds %struct.ib_pd, ptr %7, i32 0, i32 4
  %call.i.i30 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt5, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt5, i32 1, i32 3, i32 1) #13
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt5, ptr %usecnt5, i32 1, ptr elementtype(i32) %usecnt5) #13, !srcloc !335
  %srq_type = getelementptr inbounds %struct.ib_srq, ptr %srq, i32 0, i32 5
  %9 = ptrtoint ptr %srq_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %srq_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %land.lhs.true, label %if.end4.if.end11_crit_edge

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end4
  %11 = getelementptr inbounds %struct.ib_srq, ptr %srq, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %land.lhs.true.if.end11_crit_edge, label %if.then7

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %usecnt10 = getelementptr inbounds %struct.ib_xrcd, ptr %13, i32 0, i32 1
  %call.i.i31 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt10, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt10, i32 1, i32 3, i32 1) #13
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt10, ptr %usecnt10, i32 1, ptr elementtype(i32) %usecnt10) #13, !srcloc !335
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %land.lhs.true.if.end11_crit_edge, %if.end4.if.end11_crit_edge
  %15 = ptrtoint ptr %srq_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %srq_type, align 4
  %17 = add i32 %16, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %if.then14, label %if.end11.if.end17_crit_edge

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %ext15 = getelementptr inbounds %struct.ib_srq, ptr %srq, i32 0, i32 7
  %19 = ptrtoint ptr %ext15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ext15, align 4
  %usecnt16 = getelementptr inbounds %struct.ib_cq, ptr %20, i32 0, i32 7
  %call.i.i32 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt16, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt16, i32 1, i32 3, i32 1) #13
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt16, ptr %usecnt16, i32 1, ptr elementtype(i32) %usecnt16) #13, !srcloc !335
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end11.if.end17_crit_edge
  %res = getelementptr inbounds %struct.ib_srq, ptr %srq, i32 0, i32 8
  tail call void @rdma_restrack_del(ptr noundef %res) #13
  tail call void @kfree(ptr noundef %srq) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -16, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ib_open_qp(ptr noundef %xrcd, ptr nocapture noundef readonly %qp_open_attr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %qp_type = getelementptr inbounds %struct.ib_qp_open_attr, ptr %qp_open_attr, i32 0, i32 3
  %0 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qp_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cmp.not = icmp eq i32 %1, 10
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tgt_qps_rwsem = getelementptr inbounds %struct.ib_xrcd, ptr %xrcd, i32 0, i32 3
  tail call void @down_read(ptr noundef %tgt_qps_rwsem) #13
  %tgt_qps = getelementptr inbounds %struct.ib_xrcd, ptr %xrcd, i32 0, i32 4
  %qp_num = getelementptr inbounds %struct.ib_qp_open_attr, ptr %qp_open_attr, i32 0, i32 2
  %2 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qp_num, align 4
  %call1 = tail call ptr @xa_load(ptr noundef %tgt_qps, i32 noundef %3) #13
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end5

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %qp_open_attr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qp_open_attr, align 4
  %qp_context = getelementptr inbounds %struct.ib_qp_open_attr, ptr %qp_open_attr, i32 0, i32 1
  %6 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qp_context, align 4
  %call6 = tail call fastcc ptr @__ib_open_qp(ptr noundef nonnull %call1, ptr noundef %5, ptr noundef %7)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end5, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi ptr [ %call6, %if.end5 ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup.sink.split_crit_edge ]
  tail call void @up_read(ptr noundef %tgt_qps_rwsem) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__ib_open_qp(ptr noundef %real_qp, ptr noundef %event_handler, ptr noundef %qp_context) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 252) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %real_qp2 = getelementptr inbounds %struct.ib_qp, ptr %call7.i.i, i32 0, i32 13
  %1 = ptrtoint ptr %real_qp2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %real_qp, ptr %real_qp2, align 4
  %2 = ptrtoint ptr %real_qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %real_qp, align 4
  %call3 = tail call i32 @ib_open_shared_qp_security(ptr noundef nonnull %call7.i.i, ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  %4 = inttoptr i32 %call3 to ptr
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %5 = ptrtoint ptr %real_qp2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %real_qp, ptr %real_qp2, align 4
  %usecnt = getelementptr inbounds %struct.ib_qp, ptr %real_qp, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #13, !srcloc !332
  %7 = ptrtoint ptr %real_qp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %real_qp, align 4
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %call7.i.i, align 8
  %event_handler11 = getelementptr inbounds %struct.ib_qp, ptr %call7.i.i, i32 0, i32 15
  %10 = ptrtoint ptr %event_handler11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %event_handler, ptr %event_handler11, align 4
  %qp_context12 = getelementptr inbounds %struct.ib_qp, ptr %call7.i.i, i32 0, i32 16
  %11 = ptrtoint ptr %qp_context12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %qp_context, ptr %qp_context12, align 8
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %real_qp, i32 0, i32 19
  %12 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qp_num, align 4
  %qp_num13 = getelementptr inbounds %struct.ib_qp, ptr %call7.i.i, i32 0, i32 19
  %14 = ptrtoint ptr %qp_num13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %qp_num13, align 4
  %qp_type = getelementptr inbounds %struct.ib_qp, ptr %real_qp, i32 0, i32 22
  %15 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qp_type, align 4
  %qp_type14 = getelementptr inbounds %struct.ib_qp, ptr %call7.i.i, i32 0, i32 22
  %17 = ptrtoint ptr %qp_type14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %qp_type14, align 8
  %qp_open_list_lock = getelementptr inbounds %struct.ib_device, ptr %8, i32 0, i32 6
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qp_open_list_lock) #13
  %open_list = getelementptr inbounds %struct.ib_qp, ptr %call7.i.i, i32 0, i32 12
  %open_list21 = getelementptr inbounds %struct.ib_qp, ptr %real_qp, i32 0, i32 12
  %18 = ptrtoint ptr %open_list21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %open_list21, align 4
  %call.i.i47 = tail call zeroext i1 @__list_add_valid(ptr noundef %open_list, ptr noundef %open_list21, ptr noundef %19) #13
  br i1 %call.i.i47, label %if.end.i.i, label %if.end7.list_add.exit_crit_edge

if.end7.list_add.exit_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %open_list, ptr %prev1.i.i, align 4
  %21 = ptrtoint ptr %open_list to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %open_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.ib_qp, ptr %call7.i.i, i32 0, i32 12, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %open_list21, ptr %prev3.i.i, align 8
  %23 = ptrtoint ptr %open_list21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %open_list, ptr %open_list21, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end7.list_add.exit_crit_edge
  %24 = ptrtoint ptr %real_qp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %real_qp, align 4
  %qp_open_list_lock23 = getelementptr inbounds %struct.ib_device, ptr %25, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qp_open_list_lock23, i32 noundef %call18) #13
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %if.then5 ], [ %call7.i.i, %list_add.exit ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ib_create_qp_user(ptr noundef %dev, ptr noundef %pd, ptr noundef %attr, ptr noundef %udata, ptr noundef %uobj, ptr noundef %caller) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %qp_type = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 8
  %0 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qp_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cmp = icmp eq i32 %1, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call fastcc ptr @create_qp(ptr noundef %dev, ptr noundef %pd, ptr noundef %attr, ptr noundef null, ptr noundef null, ptr noundef %caller)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call fastcc ptr @create_qp(ptr noundef %dev, ptr noundef %pd, ptr noundef %attr, ptr noundef %udata, ptr noundef %uobj, ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %qp.0 = phi ptr [ %call, %if.then ], [ %call1, %if.else ]
  %2 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qp_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp3.not = icmp ne i32 %3, 10
  %cmp.i = icmp ugt ptr %qp.0, inttoptr (i32 -4096 to ptr)
  %or.cond = select i1 %cmp3.not, i1 true, i1 %cmp.i
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %event_handler.i = getelementptr inbounds %struct.ib_qp, ptr %qp.0, i32 0, i32 15
  %4 = ptrtoint ptr %event_handler.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @__ib_shared_qp_event_handler, ptr %event_handler.i, align 4
  %qp_context.i = getelementptr inbounds %struct.ib_qp, ptr %qp.0, i32 0, i32 16
  %5 = ptrtoint ptr %qp_context.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %qp.0, ptr %qp_context.i, align 4
  %pd.i = getelementptr inbounds %struct.ib_qp, ptr %qp.0, i32 0, i32 1
  %6 = ptrtoint ptr %pd.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pd.i, align 4
  %recv_cq.i = getelementptr inbounds %struct.ib_qp, ptr %qp.0, i32 0, i32 3
  %7 = ptrtoint ptr %recv_cq.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %recv_cq.i, align 4
  %send_cq.i = getelementptr inbounds %struct.ib_qp, ptr %qp.0, i32 0, i32 2
  %8 = ptrtoint ptr %send_cq.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %send_cq.i, align 4
  %srq.i = getelementptr inbounds %struct.ib_qp, ptr %qp.0, i32 0, i32 8
  %9 = ptrtoint ptr %srq.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %srq.i, align 4
  %xrcd.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 5
  %10 = ptrtoint ptr %xrcd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xrcd.i, align 4
  %xrcd1.i = getelementptr inbounds %struct.ib_qp, ptr %qp.0, i32 0, i32 9
  %12 = ptrtoint ptr %xrcd1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %xrcd1.i, align 4
  %13 = load ptr, ptr %xrcd.i, align 4
  %usecnt.i = getelementptr inbounds %struct.ib_xrcd, ptr %13, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt.i, i32 1, i32 3, i32 1) #13
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt.i, ptr %usecnt.i, i32 1, ptr elementtype(i32) %usecnt.i) #13, !srcloc !332
  %open_list.i = getelementptr inbounds %struct.ib_qp, ptr %qp.0, i32 0, i32 12
  %15 = ptrtoint ptr %open_list.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %open_list.i, ptr %open_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ib_qp, ptr %qp.0, i32 0, i32 12, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %open_list.i, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %attr, align 4
  %qp_context4.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 1
  %19 = ptrtoint ptr %qp_context4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qp_context4.i, align 4
  %call.i = tail call fastcc ptr @__ib_open_qp(ptr noundef %qp.0, ptr noundef %18, ptr noundef %20) #13
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end6.create_xrc_qp_user.exit_crit_edge, label %if.end.i

if.end6.create_xrc_qp_user.exit_crit_edge:        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %create_xrc_qp_user.exit

if.end.i:                                         ; preds = %if.end6
  %21 = ptrtoint ptr %xrcd.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xrcd.i, align 4
  %tgt_qps.i = getelementptr inbounds %struct.ib_xrcd, ptr %22, i32 0, i32 4
  %qp_num.i = getelementptr inbounds %struct.ib_qp, ptr %qp.0, i32 0, i32 19
  %23 = ptrtoint ptr %qp_num.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qp_num.i, align 4
  %call7.i = tail call ptr @xa_store(ptr noundef %tgt_qps.i, i32 noundef %24, ptr noundef %qp.0, i32 noundef 3264) #13
  %25 = ptrtoint ptr %call7.i to i32
  %and.i.i.i.i = and i32 %25, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i.i)
  %cmp.i.i.i.i = icmp ne i32 %and.i.i.i.i, 2
  %cmp.i.i.i = icmp ult ptr %call7.i, inttoptr (i32 -16378 to ptr)
  %tobool.not34.i = icmp ult ptr %call7.i, inttoptr (i32 4 to ptr)
  %not.spec.select.i.i.i = or i1 %cmp.i.i.i, %cmp.i.i.i.i
  %tobool.not.i = or i1 %tobool.not34.i, %not.spec.select.i.i.i
  br i1 %tobool.not.i, label %if.end.i.create_xrc_qp_user.exit_crit_edge, label %if.then9.i

if.end.i.create_xrc_qp_user.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %create_xrc_qp_user.exit

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %shr.i.i = ashr i32 %25, 2
  %call10.i = tail call i32 @ib_close_qp(ptr noundef %call.i) #13
  %26 = inttoptr i32 %shr.i.i to ptr
  br label %create_xrc_qp_user.exit

create_xrc_qp_user.exit:                          ; preds = %if.then9.i, %if.end.i.create_xrc_qp_user.exit_crit_edge, %if.end6.create_xrc_qp_user.exit_crit_edge
  %retval.0.i = phi ptr [ %26, %if.then9.i ], [ %call.i, %if.end6.create_xrc_qp_user.exit_crit_edge ], [ %call.i, %if.end.i.create_xrc_qp_user.exit_crit_edge ]
  %cmp.i26 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i26, label %if.then9, label %if.end11

if.then9:                                         ; preds = %create_xrc_qp_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call.i27 = tail call i32 @ib_destroy_qp_user(ptr noundef %qp.0, ptr noundef null) #13
  br label %cleanup

if.end11:                                         ; preds = %create_xrc_qp_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  %uobject = getelementptr inbounds %struct.ib_qp, ptr %retval.0.i, i32 0, i32 14
  %27 = ptrtoint ptr %uobject to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %uobj, ptr %uobject, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i, %if.then9 ], [ %retval.0.i, %if.end11 ], [ %qp.0, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @create_qp(ptr noundef %dev, ptr noundef %pd, ptr noundef %attr, ptr noundef %udata, ptr noundef %uobj, ptr noundef %caller) unnamed_addr #2 align 64 {
entry:
  %dummy = alloca %struct.ib_udata, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dummy) #13
  %0 = call ptr @memset(ptr %dummy, i32 0, i32 16)
  %create_qp = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 1, i32 46
  %1 = ptrtoint ptr %create_qp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %create_qp, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %size_ib_qp = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 1, i32 126
  %3 = ptrtoint ptr %size_ib_qp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size_ib_qp, align 4
  %get_numa_node.i = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 1, i32 120
  %5 = ptrtoint ptr %get_numa_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_numa_node.i, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %if.end.rdma_zalloc_obj.exit_crit_edge, label %if.then.i

if.end.rdma_zalloc_obj.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rdma_zalloc_obj.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 %6(ptr noundef %dev) #13
  br label %rdma_zalloc_obj.exit

rdma_zalloc_obj.exit:                             ; preds = %if.then.i, %if.end.rdma_zalloc_obj.exit_crit_edge
  %call.i4.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #16
  %tobool3.not = icmp eq ptr %call.i4.i.i.i, null
  br i1 %tobool3.not, label %rdma_zalloc_obj.exit.cleanup_crit_edge, label %if.end6

rdma_zalloc_obj.exit.cleanup_crit_edge:           ; preds = %rdma_zalloc_obj.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %rdma_zalloc_obj.exit
  %7 = ptrtoint ptr %call.i4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %call.i4.i.i.i, align 128
  %pd7 = getelementptr inbounds %struct.ib_qp, ptr %call.i4.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %pd7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pd, ptr %pd7, align 4
  %uobject = getelementptr inbounds %struct.ib_qp, ptr %call.i4.i.i.i, i32 0, i32 14
  %9 = ptrtoint ptr %uobject to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %uobj, ptr %uobject, align 16
  %real_qp = getelementptr inbounds %struct.ib_qp, ptr %call.i4.i.i.i, i32 0, i32 13
  %10 = ptrtoint ptr %real_qp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i4.i.i.i, ptr %real_qp, align 4
  %qp_type = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 8
  %11 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qp_type, align 4
  %qp_type8 = getelementptr inbounds %struct.ib_qp, ptr %call.i4.i.i.i, i32 0, i32 22
  %13 = ptrtoint ptr %qp_type8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %qp_type8, align 16
  %rwq_ind_tbl = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 11
  %14 = ptrtoint ptr %rwq_ind_tbl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rwq_ind_tbl, align 4
  %rwq_ind_tbl9 = getelementptr inbounds %struct.ib_qp, ptr %call.i4.i.i.i, i32 0, i32 23
  %16 = ptrtoint ptr %rwq_ind_tbl9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %rwq_ind_tbl9, align 4
  %srq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 4
  %17 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %srq, align 4
  %srq10 = getelementptr inbounds %struct.ib_qp, ptr %call.i4.i.i.i, i32 0, i32 8
  %19 = ptrtoint ptr %srq10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %srq10, align 16
  %20 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %attr, align 4
  %event_handler11 = getelementptr inbounds %struct.ib_qp, ptr %call.i4.i.i.i, i32 0, i32 15
  %22 = ptrtoint ptr %event_handler11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %event_handler11, align 4
  %port_num = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 10
  %23 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port_num, align 4
  %port = getelementptr inbounds %struct.ib_qp, ptr %call.i4.i.i.i, i32 0, i32 25
  %25 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %port, align 4
  %qp_context = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 1
  %26 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %qp_context, align 4
  %qp_context12 = getelementptr inbounds %struct.ib_qp, ptr %call.i4.i.i.i, i32 0, i32 16
  %28 = ptrtoint ptr %qp_context12 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %qp_context12, align 8
  %mr_lock = getelementptr inbounds %struct.ib_qp, ptr %call.i4.i.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %mr_lock, ptr noundef nonnull @.str.55, ptr noundef nonnull @create_qp.__key, i16 noundef signext 3) #13
  %rdma_mrs = getelementptr inbounds %struct.ib_qp, ptr %call.i4.i.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %rdma_mrs to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %rdma_mrs, ptr %rdma_mrs, align 64
  %prev.i = getelementptr inbounds %struct.ib_qp, ptr %call.i4.i.i.i, i32 0, i32 6, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %rdma_mrs, ptr %prev.i, align 4
  %sig_mrs = getelementptr inbounds %struct.ib_qp, ptr %call.i4.i.i.i, i32 0, i32 7
  %31 = ptrtoint ptr %sig_mrs to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %sig_mrs, ptr %sig_mrs, align 8
  %prev.i144 = getelementptr inbounds %struct.ib_qp, ptr %call.i4.i.i.i, i32 0, i32 7, i32 1
  %32 = ptrtoint ptr %prev.i144 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %sig_mrs, ptr %prev.i144, align 4
  %send_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 2
  %33 = ptrtoint ptr %send_cq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %send_cq, align 4
  %send_cq14 = getelementptr inbounds %struct.ib_qp, ptr %call.i4.i.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %send_cq14 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %send_cq14, align 8
  %recv_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 3
  %36 = ptrtoint ptr %recv_cq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %recv_cq, align 4
  %recv_cq15 = getelementptr inbounds %struct.ib_qp, ptr %call.i4.i.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %recv_cq15 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %recv_cq15, align 4
  %res = getelementptr inbounds %struct.ib_qp, ptr %call.i4.i.i.i, i32 0, i32 27
  tail call void @rdma_restrack_new(ptr noundef %res, i32 noundef 2) #13
  %tobool16.not = icmp eq ptr %udata, null
  %tobool17.not = icmp eq ptr %caller, null
  %spec.select = and i1 %tobool16.not, %tobool17.not
  br i1 %spec.select, label %land.rhs21, label %if.end6.if.end53_crit_edge

if.end6.if.end53_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

land.rhs21:                                       ; preds = %if.end6
  %.b142 = load i1, ptr @create_qp.__already_done, align 1
  br i1 %.b142, label %land.rhs21.if.end53_crit_edge, label %if.then28, !prof !330

land.rhs21.if.end53_crit_edge:                    ; preds = %land.rhs21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then28:                                        ; preds = %land.rhs21
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @create_qp.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1239, i32 noundef 9, ptr noundef nonnull @.str.56) #13
  br label %if.end53

if.end53:                                         ; preds = %if.then28, %land.rhs21.if.end53_crit_edge, %if.end6.if.end53_crit_edge
  %spec.select143 = select i1 %tobool16.not, ptr %caller, ptr null
  tail call void @rdma_restrack_set_name(ptr noundef %res, ptr noundef %spec.select143) #13
  %39 = ptrtoint ptr %create_qp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %create_qp, align 4
  %call65 = tail call i32 %40(ptr noundef nonnull %call.i4.i.i.i, ptr noundef %attr, ptr noundef %udata) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end53.err_create_crit_edge

if.end53.err_create_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_create

if.end68:                                         ; preds = %if.end53
  %41 = ptrtoint ptr %send_cq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %send_cq, align 4
  %43 = ptrtoint ptr %send_cq14 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %send_cq14, align 8
  %44 = ptrtoint ptr %recv_cq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %recv_cq, align 4
  %46 = ptrtoint ptr %recv_cq15 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %recv_cq15, align 4
  %call73 = tail call i32 @ib_create_qp_security(ptr noundef nonnull %call.i4.i.i.i, ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %err_security

if.end76:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rdma_restrack_add(ptr noundef %res) #13
  br label %cleanup

err_security:                                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %call.i4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i4.i.i.i, align 128
  %destroy_qp = getelementptr inbounds %struct.ib_device, ptr %48, i32 0, i32 1, i32 49
  %49 = ptrtoint ptr %destroy_qp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %destroy_qp, align 4
  %dummy. = select i1 %tobool16.not, ptr null, ptr %dummy
  %call85 = call i32 %50(ptr noundef nonnull %call.i4.i.i.i, ptr noundef %dummy.) #13
  br label %err_create

err_create:                                       ; preds = %err_security, %if.end53.err_create_crit_edge
  %ret.0 = phi i32 [ %call65, %if.end53.err_create_crit_edge ], [ %call73, %err_security ]
  %call87 = call i32 @rdma_restrack_put(ptr noundef %res) #13
  call void @kfree(ptr noundef nonnull %call.i4.i.i.i) #13
  %51 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_create, %if.end76, %rdma_zalloc_obj.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %51, %err_create ], [ %call.i4.i.i.i, %if.end76 ], [ inttoptr (i32 -95 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %rdma_zalloc_obj.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dummy) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_qp_usecnt_inc(ptr nocapture noundef readonly %qp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pd = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 1
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %usecnt = getelementptr inbounds %struct.ib_pd, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #13, !srcloc !332
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %send_cq = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 2
  %3 = ptrtoint ptr %send_cq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %send_cq, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %usecnt5 = getelementptr inbounds %struct.ib_cq, ptr %4, i32 0, i32 7
  %call.i.i35 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt5, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt5, i32 1, i32 3, i32 1) #13
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt5, ptr %usecnt5, i32 1, ptr elementtype(i32) %usecnt5) #13, !srcloc !332
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %recv_cq = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 3
  %6 = ptrtoint ptr %recv_cq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %recv_cq, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %if.end6.if.end11_crit_edge, label %if.then8

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %usecnt10 = getelementptr inbounds %struct.ib_cq, ptr %7, i32 0, i32 7
  %call.i.i36 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt10, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt10, i32 1, i32 3, i32 1) #13
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt10, ptr %usecnt10, i32 1, ptr elementtype(i32) %usecnt10) #13, !srcloc !332
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6.if.end11_crit_edge
  %srq = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 8
  %9 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %srq, align 4
  %tobool12.not = icmp eq ptr %10, null
  br i1 %tobool12.not, label %if.end11.if.end16_crit_edge, label %if.then13

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %usecnt15 = getelementptr inbounds %struct.ib_srq, ptr %10, i32 0, i32 6
  %call.i.i37 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt15, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt15, i32 1, i32 3, i32 1) #13
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt15, ptr %usecnt15, i32 1, ptr elementtype(i32) %usecnt15) #13, !srcloc !332
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end11.if.end16_crit_edge
  %rwq_ind_tbl = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 23
  %12 = ptrtoint ptr %rwq_ind_tbl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rwq_ind_tbl, align 4
  %tobool17.not = icmp eq ptr %13, null
  br i1 %tobool17.not, label %if.end16.if.end21_crit_edge, label %if.then18

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %usecnt20 = getelementptr inbounds %struct.ib_rwq_ind_table, ptr %13, i32 0, i32 2
  %call.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt20, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt20, i32 1, i32 3, i32 1) #13
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt20, ptr %usecnt20, i32 1, ptr elementtype(i32) %usecnt20) #13, !srcloc !332
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end16.if.end21_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_qp_usecnt_dec(ptr nocapture noundef readonly %qp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rwq_ind_tbl = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 23
  %0 = ptrtoint ptr %rwq_ind_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rwq_ind_tbl, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %usecnt = getelementptr inbounds %struct.ib_rwq_ind_table, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #13, !srcloc !335
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %srq = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 8
  %3 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %srq, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %usecnt5 = getelementptr inbounds %struct.ib_srq, ptr %4, i32 0, i32 6
  %call.i.i35 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt5, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt5, i32 1, i32 3, i32 1) #13
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt5, ptr %usecnt5, i32 1, ptr elementtype(i32) %usecnt5) #13, !srcloc !335
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %recv_cq = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 3
  %6 = ptrtoint ptr %recv_cq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %recv_cq, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %if.end6.if.end11_crit_edge, label %if.then8

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %usecnt10 = getelementptr inbounds %struct.ib_cq, ptr %7, i32 0, i32 7
  %call.i.i36 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt10, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt10, i32 1, i32 3, i32 1) #13
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt10, ptr %usecnt10, i32 1, ptr elementtype(i32) %usecnt10) #13, !srcloc !335
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6.if.end11_crit_edge
  %send_cq = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 2
  %9 = ptrtoint ptr %send_cq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %send_cq, align 4
  %tobool12.not = icmp eq ptr %10, null
  br i1 %tobool12.not, label %if.end11.if.end16_crit_edge, label %if.then13

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %usecnt15 = getelementptr inbounds %struct.ib_cq, ptr %10, i32 0, i32 7
  %call.i.i37 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt15, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt15, i32 1, i32 3, i32 1) #13
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt15, ptr %usecnt15, i32 1, ptr elementtype(i32) %usecnt15) #13, !srcloc !335
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end11.if.end16_crit_edge
  %pd = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 1
  %12 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pd, align 4
  %tobool17.not = icmp eq ptr %13, null
  br i1 %tobool17.not, label %if.end16.if.end21_crit_edge, label %if.then18

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %usecnt20 = getelementptr inbounds %struct.ib_pd, ptr %13, i32 0, i32 4
  %call.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt20, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt20, i32 1, i32 3, i32 1) #13
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt20, ptr %usecnt20, i32 1, ptr elementtype(i32) %usecnt20) #13, !srcloc !335
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end16.if.end21_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ib_create_qp_kernel(ptr noundef %pd, ptr noundef %qp_init_attr, ptr noundef %caller) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %max_rdma_ctxs = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_init_attr, i32 0, i32 6, i32 5
  %2 = ptrtoint ptr %max_rdma_ctxs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_rdma_ctxs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rdma_rw_init_qp(ptr noundef %1, ptr noundef %qp_init_attr) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call fastcc ptr @create_qp(ptr noundef %1, ptr noundef %pd, ptr noundef %qp_init_attr, ptr noundef null, ptr noundef null, ptr noundef %caller)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @ib_qp_usecnt_inc(ptr noundef %call)
  %4 = ptrtoint ptr %max_rdma_ctxs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_rdma_ctxs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  br i1 %tobool7.not, label %if.end4.if.end13_crit_edge, label %if.then8

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then8:                                         ; preds = %if.end4
  %call9 = tail call i32 @rdma_rw_init_mrs(ptr noundef %call, ptr noundef %qp_init_attr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then8.if.end13_crit_edge, label %err

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.end13:                                         ; preds = %if.then8.if.end13_crit_edge, %if.end4.if.end13_crit_edge
  %max_send_sge = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_init_attr, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_send_sge, align 4
  %max_write_sge = getelementptr inbounds %struct.ib_qp, ptr %call, i32 0, i32 20
  %8 = ptrtoint ptr %max_write_sge to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %max_write_sge, align 4
  %9 = load i32, ptr %max_send_sge, align 4
  %max_sge_rd = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 22, i32 12
  %10 = ptrtoint ptr %max_sge_rd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_sge_rd, align 8
  %12 = tail call i32 @llvm.umin.i32(i32 %9, i32 %11)
  %max_read_sge = getelementptr inbounds %struct.ib_qp, ptr %call, i32 0, i32 21
  %13 = ptrtoint ptr %max_read_sge to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %max_read_sge, align 4
  %create_flags = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_init_attr, i32 0, i32 9
  %14 = ptrtoint ptr %create_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %create_flags, align 4
  %and = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end13.cleanup_crit_edge, label %if.then18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %integrity_en = getelementptr inbounds %struct.ib_qp, ptr %call, i32 0, i32 26
  %16 = ptrtoint ptr %integrity_en to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %integrity_en, align 4
  br label %cleanup

err:                                              ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 @ib_destroy_qp_user(ptr noundef %call, ptr noundef null) #13
  %17 = inttoptr i32 %call9 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then18, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %17, %err ], [ %call, %if.end.cleanup_crit_edge ], [ %call, %if.then18 ], [ %call, %if.end13.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_rw_init_qp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_rw_init_mrs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ib_modify_qp_is_ok(i32 noundef %cur_state, i32 noundef %next_state, i32 noundef %type, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cur_state.off = add i32 %cur_state, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %cur_state.off)
  %switch = icmp ult i32 %cur_state.off, 4
  %or.cond = or i1 %switch, %tobool.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx7 = getelementptr [7 x [7 x %struct.anon.183]], ptr @qp_state_table, i32 0, i32 %cur_state, i32 %next_state
  %0 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool8.not = icmp eq i32 %1, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %arrayidx14 = getelementptr [7 x [7 x %struct.anon.183]], ptr @qp_state_table, i32 0, i32 %cur_state, i32 %next_state, i32 1, i32 %type
  %2 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx14, align 4
  %and19 = and i32 %3, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and19, i32 %3)
  %cmp20.not = icmp eq i32 %and19, %3
  br i1 %cmp20.not, label %if.end22, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end22:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx18 = getelementptr [7 x [7 x %struct.anon.183]], ptr @qp_state_table, i32 0, i32 %cur_state, i32 %next_state, i32 2, i32 %type
  %4 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx18, align 4
  %or = or i32 %5, %3
  %6 = and i32 %or, -2
  %neg = xor i32 %6, -2
  %and24 = and i32 %neg, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end.cleanup_crit_edge ], [ false, %if.end10.cleanup_crit_edge ], [ %tobool25.not, %if.end22 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_modify_qp_with_udata(ptr nocapture noundef readonly %ib_qp, ptr noundef %attr, i32 noundef %attr_mask, ptr noundef %udata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %real_qp = getelementptr inbounds %struct.ib_qp, ptr %ib_qp, i32 0, i32 13
  %0 = ptrtoint ptr %real_qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_qp, align 4
  %call = tail call fastcc i32 @_ib_modify_qp(ptr noundef %1, ptr noundef %attr, i32 noundef %attr_mask, ptr noundef %udata)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_ib_modify_qp(ptr noundef %qp, ptr noundef %attr, i32 noundef %attr_mask, ptr noundef %udata) unnamed_addr #2 align 64 {
entry:
  %old_sgid_attr_av = alloca ptr, align 4
  %old_sgid_attr_alt_av = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %attr_mask, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %port_num = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 19
  %port1 = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 25
  %cond.in = select i1 %tobool.not, ptr %port1, ptr %port_num
  %0 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %cond = load i32, ptr %cond.in, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_sgid_attr_av) #13
  %1 = ptrtoint ptr %old_sgid_attr_av to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %old_sgid_attr_av, align 4, !annotation !331
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_sgid_attr_alt_av) #13
  %2 = ptrtoint ptr %old_sgid_attr_alt_av to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %old_sgid_attr_alt_av, align 4, !annotation !331
  %xmit_slave = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 26
  %3 = ptrtoint ptr %xmit_slave to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %xmit_slave, align 8
  %and2 = and i32 %attr_mask, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %entry.if.end27_crit_edge, label %if.then

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qp, align 4
  %ah_attr = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 10
  %call = call fastcc i32 @rdma_fill_sgid_attr(ptr noundef %5, ptr noundef %ah_attr, ptr noundef nonnull %old_sgid_attr_av)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end, label %if.then.cleanup121_crit_edge

if.then.cleanup121_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup121

if.end:                                           ; preds = %if.then
  %type = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 10, i32 5
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end
  %qp_type.i = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 22
  %8 = ptrtoint ptr %qp_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qp_type.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %9, label %land.lhs.true.if.end27_crit_edge [
    i32 3, label %land.lhs.true.if.then8_crit_edge
    i32 2, label %land.lhs.true.if.then8_crit_edge213
    i32 9, label %land.lhs.true.if.then8_crit_edge214
    i32 10, label %land.lhs.true.if.then8_crit_edge215
  ]

land.lhs.true.if.then8_crit_edge215:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8

land.lhs.true.if.then8_crit_edge214:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8

land.lhs.true.if.then8_crit_edge213:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8

land.lhs.true.if.then8_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then8:                                         ; preds = %land.lhs.true.if.then8_crit_edge, %land.lhs.true.if.then8_crit_edge213, %land.lhs.true.if.then8_crit_edge214, %land.lhs.true.if.then8_crit_edge215
  %tobool9.not = icmp eq ptr %udata, null
  br i1 %tobool9.not, label %if.then8.if.end17_crit_edge, label %if.then10

if.then8.if.end17_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then10:                                        ; preds = %if.then8
  %call13 = tail call fastcc i32 @ib_resolve_eth_dmac(ptr noundef %ah_attr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then10.if.end17_crit_edge, label %if.then10.if.then117_crit_edge

if.then10.if.then117_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then117

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.end17:                                         ; preds = %if.then10.if.end17_crit_edge, %if.then8.if.end17_crit_edge
  %11 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %qp, align 4
  %call20 = tail call ptr @rdma_lag_get_ah_roce_slave(ptr noundef %12, ptr noundef %ah_attr, i32 noundef 3264) #13
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %cleanup

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %call20 to i32
  br label %if.then117

cleanup:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %xmit_slave to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call20, ptr %xmit_slave, align 8
  br label %if.end27

if.end27:                                         ; preds = %cleanup, %land.lhs.true.if.end27_crit_edge, %if.end.if.end27_crit_edge, %entry.if.end27_crit_edge
  %and28 = and i32 %attr_mask, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end45_crit_edge, label %if.then30

if.end27.if.end45_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then30:                                        ; preds = %if.end27
  %15 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %qp, align 4
  %alt_ah_attr = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 11
  %call32 = call fastcc i32 @rdma_fill_sgid_attr(ptr noundef %16, ptr noundef %alt_ah_attr, ptr noundef nonnull %old_sgid_attr_alt_av)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.then30.out_av_crit_edge

if.then30.out_av_crit_edge:                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_av

if.end35:                                         ; preds = %if.then30
  %17 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %qp, align 4
  %port_num38 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 11, i32 3
  %19 = ptrtoint ptr %port_num38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port_num38, align 4
  %port_data.i = getelementptr inbounds %struct.ib_device, ptr %18, i32 0, i32 11
  %21 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port_data.i, align 8
  %core_cap_flags.i = getelementptr %struct.ib_port_data, ptr %22, i32 %20, i32 1, i32 2
  %23 = ptrtoint ptr %core_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %core_cap_flags.i, align 4
  %and.i = and i32 %24, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end35.if.then112_crit_edge, label %land.lhs.true40

if.end35.if.then112_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then112

land.lhs.true40:                                  ; preds = %if.end35
  %core_cap_flags.i187 = getelementptr %struct.ib_port_data, ptr %22, i32 %cond, i32 1, i32 2
  %25 = ptrtoint ptr %core_cap_flags.i187 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %core_cap_flags.i187, align 4
  %and.i188 = and i32 %26, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i188)
  %tobool.i189.not = icmp eq i32 %and.i188, 0
  br i1 %tobool.i189.not, label %land.lhs.true40.if.then112_crit_edge, label %land.lhs.true40.if.end45_crit_edge

land.lhs.true40.if.end45_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

land.lhs.true40.if.then112_crit_edge:             ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then112

if.end45:                                         ; preds = %land.lhs.true40.if.end45_crit_edge, %if.end27.if.end45_crit_edge
  %27 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %qp, align 4
  %port_data.i.i = getelementptr inbounds %struct.ib_device, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %port_data.i.i, align 8
  %core_cap_flags.i.i = getelementptr %struct.ib_port_data, ptr %30, i32 %cond, i32 1, i32 2
  %31 = ptrtoint ptr %core_cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %core_cap_flags.i.i, align 4
  %33 = and i32 %32, 11534336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %.not = icmp eq i32 %33, 0
  br i1 %.not, label %if.end45.if.end72_crit_edge, label %if.then48

if.end45.if.end72_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

if.then48:                                        ; preds = %if.end45
  %and49 = and i32 %attr_mask, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.then48.if.end58_crit_edge, label %land.lhs.true51

if.then48.if.end58_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

land.lhs.true51:                                  ; preds = %if.then48
  %rq_psn = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 5
  %34 = ptrtoint ptr %rq_psn to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rq_psn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %35)
  %tobool53.not = icmp ult i32 %35, 16777216
  br i1 %tobool53.not, label %land.lhs.true51.if.end58_crit_edge, label %do.end

land.lhs.true51.if.end58_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

do.end:                                           ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #15
  %36 = getelementptr inbounds %struct.ib_device, ptr %28, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #17
  %37 = ptrtoint ptr %rq_psn to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rq_psn, align 4
  %and57 = and i32 %38, 16777215
  store i32 %and57, ptr %rq_psn, align 4
  br label %if.end58

if.end58:                                         ; preds = %do.end, %land.lhs.true51.if.end58_crit_edge, %if.then48.if.end58_crit_edge
  %and59 = and i32 %attr_mask, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end58.if.end72_crit_edge, label %land.lhs.true61

if.end58.if.end72_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

land.lhs.true61:                                  ; preds = %if.end58
  %sq_psn = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 6
  %39 = ptrtoint ptr %sq_psn to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sq_psn, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %40)
  %tobool63.not = icmp ult i32 %40, 16777216
  br i1 %tobool63.not, label %land.lhs.true61.if.end72_crit_edge, label %do.end67

land.lhs.true61.if.end72_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

do.end67:                                         ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %qp, align 4
  %43 = getelementptr inbounds %struct.ib_device, ptr %42, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %43, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.58) #17
  %44 = ptrtoint ptr %sq_psn to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sq_psn, align 8
  %and70 = and i32 %45, 16777215
  store i32 %and70, ptr %sq_psn, align 8
  br label %if.end72

if.end72:                                         ; preds = %do.end67, %land.lhs.true61.if.end72_crit_edge, %if.end58.if.end72_crit_edge, %if.end45.if.end72_crit_edge
  %counter = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 28
  %46 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %counter, align 4
  %tobool73.not = icmp ne ptr %47, null
  %48 = and i32 %attr_mask, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %48)
  %49 = icmp ne i32 %48, 33
  %50 = or i1 %49, %tobool73.not
  br i1 %50, label %if.end72.if.end85_crit_edge, label %land.lhs.true80

if.end72.if.end85_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

land.lhs.true80:                                  ; preds = %if.end72
  %51 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %attr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp81 = icmp eq i32 %52, 1
  br i1 %cmp81, label %if.then82, label %land.lhs.true80.if.end85_crit_edge

land.lhs.true80.if.end85_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.then82:                                        ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %port_num, align 4
  %call84 = tail call i32 @rdma_counter_bind_qp_auto(ptr noundef %qp, i32 noundef %54) #13
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %land.lhs.true80.if.end85_crit_edge, %if.end72.if.end85_crit_edge
  %call86 = tail call i32 @ib_security_modify_qp(ptr noundef %qp, ptr noundef %attr, i32 noundef %attr_mask, ptr noundef %udata) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %out

if.end89:                                         ; preds = %if.end85
  br i1 %tobool.not, label %if.end89.if.end95_crit_edge, label %if.then92

if.end89.if.end95_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

if.then92:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %port_num, align 4
  %57 = ptrtoint ptr %port1 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %port1, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then92, %if.end89.if.end95_crit_edge
  br i1 %tobool3.not, label %if.end95.if.end102_crit_edge, label %if.then98

if.end95.if.end102_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102

if.then98:                                        ; preds = %if.end95
  %ah_attr99 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 10
  %av_sgid_attr = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 17
  %58 = ptrtoint ptr %av_sgid_attr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %av_sgid_attr, align 4
  %tobool.not.i = icmp eq ptr %59, null
  br i1 %tobool.not.i, label %if.then98.if.end.i_crit_edge, label %if.then.i

if.then98.if.end.i_crit_edge:                     ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rdma_put_gid_attr(ptr noundef nonnull %59) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then98.if.end.i_crit_edge
  %ah_flags.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 10, i32 4
  %60 = ptrtoint ptr %ah_flags.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ah_flags.i, align 8
  %62 = and i8 %61, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool1.not.i = icmp eq i8 %62, 0
  br i1 %tobool1.not.i, label %if.end.i.rdma_update_sgid_attr.exit_crit_edge, label %if.then2.i

if.end.i.rdma_update_sgid_attr.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rdma_update_sgid_attr.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %63 = ptrtoint ptr %ah_attr99 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ah_attr99, align 8
  tail call void @rdma_hold_gid_attr(ptr noundef %64) #13
  %65 = ptrtoint ptr %ah_attr99 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ah_attr99, align 8
  br label %rdma_update_sgid_attr.exit

rdma_update_sgid_attr.exit:                       ; preds = %if.then2.i, %if.end.i.rdma_update_sgid_attr.exit_crit_edge
  %retval.0.i = phi ptr [ %66, %if.then2.i ], [ null, %if.end.i.rdma_update_sgid_attr.exit_crit_edge ]
  %67 = ptrtoint ptr %av_sgid_attr to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %retval.0.i, ptr %av_sgid_attr, align 4
  br label %if.end102

if.end102:                                        ; preds = %rdma_update_sgid_attr.exit, %if.end95.if.end102_crit_edge
  br i1 %tobool29.not, label %if.end102.out_av_crit_edge, label %if.then105

if.end102.out_av_crit_edge:                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_av

if.then105:                                       ; preds = %if.end102
  %alt_ah_attr106 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 11
  %alt_path_sgid_attr = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 18
  %68 = ptrtoint ptr %alt_path_sgid_attr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %alt_path_sgid_attr, align 4
  %tobool.not.i190 = icmp eq ptr %69, null
  br i1 %tobool.not.i190, label %if.then105.if.end.i194_crit_edge, label %if.then.i191

if.then105.if.end.i194_crit_edge:                 ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i194

if.then.i191:                                     ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rdma_put_gid_attr(ptr noundef nonnull %69) #13
  br label %if.end.i194

if.end.i194:                                      ; preds = %if.then.i191, %if.then105.if.end.i194_crit_edge
  %ah_flags.i192 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 11, i32 4
  %70 = ptrtoint ptr %ah_flags.i192 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %ah_flags.i192, align 8
  %72 = and i8 %71, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool1.not.i193 = icmp eq i8 %72, 0
  br i1 %tobool1.not.i193, label %if.end.i194.rdma_update_sgid_attr.exit197_crit_edge, label %if.then2.i195

if.end.i194.rdma_update_sgid_attr.exit197_crit_edge: ; preds = %if.end.i194
  call void @__sanitizer_cov_trace_pc() #15
  br label %rdma_update_sgid_attr.exit197

if.then2.i195:                                    ; preds = %if.end.i194
  call void @__sanitizer_cov_trace_pc() #15
  %73 = ptrtoint ptr %alt_ah_attr106 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %alt_ah_attr106, align 8
  tail call void @rdma_hold_gid_attr(ptr noundef %74) #13
  %75 = ptrtoint ptr %alt_ah_attr106 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %alt_ah_attr106, align 8
  br label %rdma_update_sgid_attr.exit197

rdma_update_sgid_attr.exit197:                    ; preds = %if.then2.i195, %if.end.i194.rdma_update_sgid_attr.exit197_crit_edge
  %retval.0.i196 = phi ptr [ %76, %if.then2.i195 ], [ null, %if.end.i194.rdma_update_sgid_attr.exit197_crit_edge ]
  %77 = ptrtoint ptr %alt_path_sgid_attr to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %retval.0.i196, ptr %alt_path_sgid_attr, align 4
  br label %if.then112

out:                                              ; preds = %if.end85
  br i1 %tobool29.not, label %out.out_av_crit_edge, label %out.if.then112_crit_edge

out.if.then112_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then112

out.out_av_crit_edge:                             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_av

if.then112:                                       ; preds = %out.if.then112_crit_edge, %rdma_update_sgid_attr.exit197, %land.lhs.true40.if.then112_crit_edge, %if.end35.if.then112_crit_edge
  %ret.2208 = phi i32 [ %call86, %out.if.then112_crit_edge ], [ -22, %if.end35.if.then112_crit_edge ], [ -22, %land.lhs.true40.if.then112_crit_edge ], [ 0, %rdma_update_sgid_attr.exit197 ]
  %alt_ah_attr113 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 11
  %78 = ptrtoint ptr %old_sgid_attr_alt_av to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %old_sgid_attr_alt_av, align 4
  %80 = ptrtoint ptr %alt_ah_attr113 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %alt_ah_attr113, align 8
  %cmp.i198 = icmp eq ptr %81, %79
  %tobool.not.i.i = icmp eq ptr %81, null
  %or.cond.i = or i1 %cmp.i198, %tobool.not.i.i
  br i1 %or.cond.i, label %if.then112.out_av_crit_edge, label %if.then.i.i

if.then112.out_av_crit_edge:                      ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_av

if.then.i.i:                                      ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rdma_put_gid_attr(ptr noundef nonnull %81) #13
  %82 = ptrtoint ptr %alt_ah_attr113 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %alt_ah_attr113, align 8
  br label %out_av

out_av:                                           ; preds = %if.then.i.i, %if.then112.out_av_crit_edge, %out.out_av_crit_edge, %if.end102.out_av_crit_edge, %if.then30.out_av_crit_edge
  %ret.3 = phi i32 [ %call32, %if.then30.out_av_crit_edge ], [ %call86, %out.out_av_crit_edge ], [ %ret.2208, %if.then112.out_av_crit_edge ], [ %ret.2208, %if.then.i.i ], [ 0, %if.end102.out_av_crit_edge ]
  br i1 %tobool3.not, label %out_av.cleanup121_crit_edge, label %out_av.if.then117_crit_edge

out_av.if.then117_crit_edge:                      ; preds = %out_av
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then117

out_av.cleanup121_crit_edge:                      ; preds = %out_av
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup121

if.then117:                                       ; preds = %out_av.if.then117_crit_edge, %if.then22, %if.then10.if.then117_crit_edge
  %ret.3212 = phi i32 [ %ret.3, %out_av.if.then117_crit_edge ], [ %call13, %if.then10.if.then117_crit_edge ], [ %13, %if.then22 ]
  %83 = ptrtoint ptr %xmit_slave to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %xmit_slave, align 8
  tail call void @rdma_lag_put_ah_roce_slave(ptr noundef %84) #13
  %ah_attr119 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 10
  %85 = ptrtoint ptr %old_sgid_attr_av to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %old_sgid_attr_av, align 4
  %87 = ptrtoint ptr %ah_attr119 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ah_attr119, align 8
  %cmp.i199 = icmp eq ptr %88, %86
  %tobool.not.i.i200 = icmp eq ptr %88, null
  %or.cond.i201 = or i1 %cmp.i199, %tobool.not.i.i200
  br i1 %or.cond.i201, label %if.then117.cleanup121_crit_edge, label %if.then.i.i202

if.then117.cleanup121_crit_edge:                  ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup121

if.then.i.i202:                                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rdma_put_gid_attr(ptr noundef nonnull %88) #13
  %89 = ptrtoint ptr %ah_attr119 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %ah_attr119, align 8
  br label %cleanup121

cleanup121:                                       ; preds = %if.then.i.i202, %if.then117.cleanup121_crit_edge, %out_av.cleanup121_crit_edge, %if.then.cleanup121_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup121_crit_edge ], [ %ret.3, %out_av.cleanup121_crit_edge ], [ %ret.3212, %if.then117.cleanup121_crit_edge ], [ %ret.3212, %if.then.i.i202 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_sgid_attr_alt_av) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_sgid_attr_av) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_get_eth_speed(ptr noundef %dev, i32 noundef %port_num, ptr nocapture noundef writeonly %speed, ptr nocapture noundef writeonly %width) #2 align 64 {
entry:
  %lksettings = alloca %struct.ethtool_link_ksettings, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %lksettings) #13
  %0 = call ptr @memset(ptr %lksettings, i32 255, i32 88)
  %get_link_layer.i = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 1, i32 22
  %1 = ptrtoint ptr %get_link_layer.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %get_link_layer.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.i, label %rdma_port_get_link_layer.exit

if.end.i:                                         ; preds = %entry
  %node_type.i = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 20
  %3 = ptrtoint ptr %node_type.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %node_type.i, align 1
  %5 = and i8 %4, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %switch.i = icmp eq i8 %5, 4
  br i1 %switch.i, label %if.end.i.if.end_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

rdma_port_get_link_layer.exit:                    ; preds = %entry
  %call.i = tail call i32 %2(ptr noundef %dev, i32 noundef %port_num) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 2
  br i1 %cmp.not, label %rdma_port_get_link_layer.exit.if.end_crit_edge, label %rdma_port_get_link_layer.exit.cleanup_crit_edge

rdma_port_get_link_layer.exit.cleanup_crit_edge:  ; preds = %rdma_port_get_link_layer.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

rdma_port_get_link_layer.exit.if.end_crit_edge:   ; preds = %rdma_port_get_link_layer.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %rdma_port_get_link_layer.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %call1 = tail call ptr @ib_device_get_netdev(ptr noundef %dev, i32 noundef %port_num) #13
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body1.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body1.i:                                       ; preds = %if.end
  tail call void @rtnl_lock() #13
  %call4 = call i32 @__ethtool_get_link_ksettings(ptr noundef nonnull %call1, ptr noundef nonnull %lksettings) #13
  call void @rtnl_unlock() #13
  %6 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !336
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 118
  %7 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcpu_refcnt.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = call i32 @llvm.read_register.i32(metadata !320) #13
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add13.i = add i32 %18, -1
  store i32 %add13.i, ptr %16, align 4
  %19 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !337
  %and.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !338

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #13, !srcloc !339
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %dev_put.exit.if.end12.thread_crit_edge

dev_put.exit.if.end12.thread_crit_edge:           ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.thread

land.lhs.true:                                    ; preds = %dev_put.exit
  %speed6 = getelementptr inbounds %struct.ethtool_link_settings, ptr %lksettings, i32 0, i32 1
  %20 = ptrtoint ptr %speed6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %speed6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp7.not = icmp eq i32 %21, -1
  br i1 %cmp7.not, label %land.lhs.true.if.end12.thread_crit_edge, label %if.end12

land.lhs.true.if.end12.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.thread

if.end12.thread:                                  ; preds = %land.lhs.true.if.end12.thread_crit_edge, %dev_put.exit.if.end12.thread_crit_edge
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %call1, i32 noundef 1000) #17
  br label %if.then14

if.end12:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1001, i32 %21)
  %cmp13 = icmp ult i32 %21, 1001
  br i1 %cmp13, label %if.end12.if.then14_crit_edge, label %if.else15

if.end12.if.then14_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

if.then14:                                        ; preds = %if.end12.if.then14_crit_edge, %if.end12.thread
  %22 = ptrtoint ptr %width to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %width, align 1
  br label %cleanup.sink.split

if.else15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 10001, i32 %21)
  %cmp16 = icmp ult i32 %21, 10001
  br i1 %cmp16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %width to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %width, align 1
  br label %cleanup.sink.split

if.else18:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_const_cmp4(i32 20001, i32 %21)
  %cmp19 = icmp ult i32 %21, 20001
  br i1 %cmp19, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %width to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 2, ptr %width, align 1
  br label %cleanup.sink.split

if.else21:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_const_cmp4(i32 25001, i32 %21)
  %cmp22 = icmp ult i32 %21, 25001
  br i1 %cmp22, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %width to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %width, align 1
  br label %cleanup.sink.split

if.else24:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 40001, i32 %21)
  %cmp25 = icmp ult i32 %21, 40001
  %26 = ptrtoint ptr %width to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 2, ptr %width, align 1
  %. = select i1 %cmp25, i16 8, i16 32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else24, %if.then23, %if.then20, %if.then17, %if.then14
  %.sink = phi i16 [ 1, %if.then14 ], [ 2, %if.then20 ], [ 32, %if.then23 ], [ 8, %if.then17 ], [ %., %if.else24 ]
  %27 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %.sink, ptr %speed, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %rdma_port_get_link_layer.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %rdma_port_get_link_layer.exit.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %lksettings) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_device_get_netdev(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_modify_qp(ptr nocapture noundef readonly %qp, ptr noundef %qp_attr, i32 noundef %qp_attr_mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %real_qp = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 13
  %0 = ptrtoint ptr %real_qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_qp, align 4
  %call = tail call fastcc i32 @_ib_modify_qp(ptr noundef %1, ptr noundef %qp_attr, i32 noundef %qp_attr_mask, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_query_qp(ptr nocapture noundef readonly %qp, ptr noundef %qp_attr, i32 noundef %qp_attr_mask, ptr noundef %qp_init_attr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_attr = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 10
  %0 = ptrtoint ptr %ah_attr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %ah_attr, align 8
  %alt_ah_attr = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 11
  %1 = ptrtoint ptr %alt_ah_attr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %alt_ah_attr, align 8
  %2 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp, align 4
  %query_qp = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 1, i32 48
  %4 = ptrtoint ptr %query_qp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %query_qp, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %real_qp = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 13
  %6 = ptrtoint ptr %real_qp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %real_qp, align 4
  %call = tail call i32 %5(ptr noundef %7, ptr noundef %qp_attr, i32 noundef %qp_attr_mask, ptr noundef %qp_init_attr) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ -95, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_close_qp(ptr noundef %qp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %real_qp1 = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 13
  %0 = ptrtoint ptr %real_qp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_qp1, align 4
  %cmp = icmp eq ptr %1, %qp
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body2:                                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %qp_open_list_lock = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 6
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qp_open_list_lock) #13
  %open_list = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 12
  %call.i.i22 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %open_list) #13
  br i1 %call.i.i22, label %if.end.i.i, label %do.body2.list_del.exit_crit_edge

do.body2.list_del.exit_crit_edge:                 ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %open_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %open_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.body2.list_del.exit_crit_edge
  %10 = ptrtoint ptr %open_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %open_list, align 4
  %prev.i = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 12, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %qp_open_list_lock8 = getelementptr inbounds %struct.ib_device, ptr %13, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qp_open_list_lock8, i32 noundef %call4) #13
  %usecnt = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #13
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #13, !srcloc !335
  %qp_sec = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 24
  %15 = ptrtoint ptr %qp_sec to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %qp_sec, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %list_del.exit.if.end11_crit_edge, label %if.then9

list_del.exit.if.end11_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then9:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ib_close_shared_qp_security(ptr noundef nonnull %16) #13
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %list_del.exit.if.end11_crit_edge
  tail call void @kfree(ptr noundef %qp) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_close_shared_qp_security(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_destroy_qp_user(ptr noundef %qp, ptr noundef %udata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %alt_path_sgid_attr1 = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 18
  %0 = ptrtoint ptr %alt_path_sgid_attr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alt_path_sgid_attr1, align 4
  %av_sgid_attr2 = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 17
  %2 = ptrtoint ptr %av_sgid_attr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %av_sgid_attr2, align 4
  %mrs_used = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 5
  %4 = ptrtoint ptr %mrs_used to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mrs_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b98 = load i1, ptr @ib_destroy_qp_user.__already_done, align 1
  br i1 %.b98, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !330

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ib_destroy_qp_user.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2017, i32 noundef 9, ptr noundef null) #13
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %usecnt = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usecnt, i32 noundef 4) #13
  %6 = ptrtoint ptr %usecnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %usecnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool37.not = icmp eq i32 %7, 0
  br i1 %tobool37.not, label %if.end39, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end39:                                         ; preds = %if.end29
  %real_qp = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 13
  %8 = ptrtoint ptr %real_qp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %real_qp, align 4
  %cmp40.not = icmp eq ptr %9, %qp
  br i1 %cmp40.not, label %if.end43, label %if.then41

if.then41:                                        ; preds = %if.end39
  %xrcd2.i = getelementptr inbounds %struct.ib_qp, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %xrcd2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xrcd2.i, align 4
  %tgt_qps_rwsem.i = getelementptr inbounds %struct.ib_xrcd, ptr %11, i32 0, i32 3
  tail call void @down_write(ptr noundef %tgt_qps_rwsem.i) #13
  %call.i = tail call i32 @ib_close_qp(ptr noundef %qp) #13
  %usecnt.i = getelementptr inbounds %struct.ib_qp, ptr %9, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usecnt.i, i32 noundef 4) #13
  %12 = ptrtoint ptr %usecnt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %usecnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp eq i32 %13, 0
  br i1 %cmp.i, label %if.end.i, label %if.end.i.thread

if.end.i.thread:                                  ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @up_write(ptr noundef %tgt_qps_rwsem.i) #13
  br label %cleanup

if.end.i:                                         ; preds = %if.then41
  %tgt_qps.i = getelementptr inbounds %struct.ib_xrcd, ptr %11, i32 0, i32 4
  %qp_num.i = getelementptr inbounds %struct.ib_qp, ptr %9, i32 0, i32 19
  %14 = ptrtoint ptr %qp_num.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qp_num.i, align 4
  %call4.i = tail call ptr @xa_erase(ptr noundef %tgt_qps.i, i32 noundef %15) #13
  tail call void @up_write(ptr noundef %tgt_qps_rwsem.i) #13
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.then6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then6.i:                                       ; preds = %if.end.i
  %call.i99 = tail call i32 @ib_destroy_qp_user(ptr noundef nonnull %9, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool8.not.i = icmp eq i32 %call.i99, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.then6.i.cleanup_crit_edge

if.then6.i.cleanup_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  %usecnt10.i = getelementptr inbounds %struct.ib_xrcd, ptr %11, i32 0, i32 1
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt10.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt10.i, i32 1, i32 3, i32 1) #13
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt10.i, ptr %usecnt10.i, i32 1, ptr elementtype(i32) %usecnt10.i) #13, !srcloc !335
  br label %cleanup

if.end43:                                         ; preds = %if.end39
  %qp_sec = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 24
  %17 = ptrtoint ptr %qp_sec to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %qp_sec, align 4
  %tobool44.not = icmp eq ptr %18, null
  br i1 %tobool44.not, label %if.end43.if.end46_crit_edge, label %if.then45

if.end43.if.end46_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ib_destroy_qp_security_begin(ptr noundef nonnull %18) #13
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end43.if.end46_crit_edge
  %uobject = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 14
  %19 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %uobject, align 4
  %tobool47.not = icmp eq ptr %20, null
  br i1 %tobool47.not, label %if.then48, label %if.end46.if.end49_crit_edge

if.end46.if.end49_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rdma_rw_cleanup_mrs(ptr noundef %qp) #13
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end46.if.end49_crit_edge
  %call50 = tail call i32 @rdma_counter_unbind_qp(ptr noundef %qp, i1 noundef zeroext true) #13
  %21 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %qp, align 4
  %destroy_qp = getelementptr inbounds %struct.ib_device, ptr %22, i32 0, i32 1, i32 49
  %23 = ptrtoint ptr %destroy_qp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %destroy_qp, align 4
  %call51 = tail call i32 %24(ptr noundef %qp, ptr noundef %udata) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end57, label %if.then53

if.then53:                                        ; preds = %if.end49
  br i1 %tobool44.not, label %if.then53.cleanup_crit_edge, label %if.then55

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then55:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ib_destroy_qp_security_abort(ptr noundef nonnull %18) #13
  br label %cleanup

if.end57:                                         ; preds = %if.end49
  %tobool58.not = icmp eq ptr %1, null
  br i1 %tobool58.not, label %if.end57.if.end60_crit_edge, label %if.then59

if.end57.if.end60_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rdma_put_gid_attr(ptr noundef nonnull %1) #13
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.end57.if.end60_crit_edge
  %tobool61.not = icmp eq ptr %3, null
  br i1 %tobool61.not, label %if.end60.if.end63_crit_edge, label %if.then62

if.end60.if.end63_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rdma_put_gid_attr(ptr noundef nonnull %3) #13
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end60.if.end63_crit_edge
  tail call void @ib_qp_usecnt_dec(ptr noundef %qp)
  br i1 %tobool44.not, label %if.end63.if.end66_crit_edge, label %if.then65

if.end63.if.end66_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ib_destroy_qp_security_end(ptr noundef nonnull %18) #13
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end63.if.end66_crit_edge
  %res = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 27
  tail call void @rdma_restrack_del(ptr noundef %res) #13
  tail call void @kfree(ptr noundef %qp) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.then55, %if.then53.cleanup_crit_edge, %if.then9.i, %if.then6.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.i.thread, %if.end29.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end66 ], [ -16, %if.end29.cleanup_crit_edge ], [ %call51, %if.then55 ], [ %call51, %if.then53.cleanup_crit_edge ], [ 0, %if.end.i.thread ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.then6.i.cleanup_crit_edge ], [ 0, %if.then9.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_destroy_qp_security_begin(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_rw_cleanup_mrs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_counter_unbind_qp(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_destroy_qp_security_abort(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_destroy_qp_security_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__ib_create_cq(ptr noundef %device, ptr noundef %comp_handler, ptr noundef %event_handler, ptr noundef %cq_context, ptr noundef %cq_attr, ptr noundef %caller) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %size_ib_cq = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 1, i32 123
  %0 = ptrtoint ptr %size_ib_cq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size_ib_cq, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 3520) #16
  %tobool.not = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %device, ptr %call9.i.i.i, align 128
  %uobject = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %uobject to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %uobject, align 4
  %comp_handler3 = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %comp_handler3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %comp_handler, ptr %comp_handler3, align 8
  %event_handler4 = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %event_handler4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %event_handler, ptr %event_handler4, align 4
  %cq_context5 = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %cq_context5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cq_context, ptr %cq_context5, align 16
  %usecnt = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #13
  %7 = ptrtoint ptr %usecnt to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %usecnt, align 4
  %res = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 17
  tail call void @rdma_restrack_new(ptr noundef %res, i32 noundef 1) #13
  tail call void @rdma_restrack_set_name(ptr noundef %res, ptr noundef %caller) #13
  %create_cq = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 1, i32 50
  %8 = ptrtoint ptr %create_cq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %create_cq, align 4
  %call8 = tail call i32 %9(ptr noundef nonnull %call9.i.i.i, ptr noundef %cq_attr, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end14, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call12 = tail call i32 @rdma_restrack_put(ptr noundef %res) #13
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #13
  %10 = inttoptr i32 %call8 to ptr
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rdma_restrack_add(ptr noundef %res) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %10, %if.then10 ], [ %call9.i.i.i, %if.end14 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rdma_set_cq_moderation(ptr noundef %cq, i16 noundef zeroext %cq_count, i16 noundef zeroext %cq_period) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %shared = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 15
  %0 = ptrtoint ptr %shared to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %shared, align 8
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cq, align 8
  %modify_cq = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 1, i32 51
  %4 = ptrtoint ptr %modify_cq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %modify_cq, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %cond.true

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 %5(ptr noundef %cq, i16 noundef zeroext %cq_count, i16 noundef zeroext %cq_period) #13
  br label %return

return:                                           ; preds = %cond.true, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ %call, %cond.true ], [ -95, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_destroy_cq_user(ptr noundef %cq, ptr noundef %udata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %shared = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 15
  %0 = ptrtoint ptr %shared to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %shared, align 8
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end38, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b55 = load i1, ptr @ib_destroy_cq_user.__already_done, align 1
  br i1 %.b55, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !330

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ib_destroy_cq_user.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2108, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end38:                                         ; preds = %entry
  %usecnt = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usecnt, i32 noundef 4) #13
  %2 = ptrtoint ptr %usecnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %usecnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool39.not = icmp eq i32 %3, 0
  br i1 %tobool39.not, label %if.end41, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end41:                                         ; preds = %if.end38
  %4 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cq, align 8
  %destroy_cq = getelementptr inbounds %struct.ib_device, ptr %5, i32 0, i32 1, i32 52
  %6 = ptrtoint ptr %destroy_cq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %destroy_cq, align 4
  %call42 = tail call i32 %7(ptr noundef %cq, ptr noundef %udata) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  %res = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 17
  tail call void @rdma_restrack_del(ptr noundef %res) #13
  tail call void @kfree(ptr noundef %cq) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end41.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end45 ], [ -95, %if.then ], [ -16, %if.end38.cleanup_crit_edge ], [ %call42, %if.end41.cleanup_crit_edge ], [ -95, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_resize_cq(ptr noundef %cq, i32 noundef %cqe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %shared = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 15
  %0 = ptrtoint ptr %shared to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %shared, align 8
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cq, align 8
  %resize_cq = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 1, i32 53
  %4 = ptrtoint ptr %resize_cq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resize_cq, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %cond.true

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 %5(ptr noundef %cq, i32 noundef %cqe, ptr noundef null) #13
  br label %return

return:                                           ; preds = %cond.true, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ %call, %cond.true ], [ -95, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ib_reg_user_mr(ptr noundef %pd, i64 noundef %start, i64 noundef %length, i64 noundef %virt_addr, i32 noundef %access_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %access_flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then:                                          ; preds = %entry
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %device_cap_flags = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 22, i32 9
  %2 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %device_cap_flags, align 8
  %and1 = and i64 %3, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %do.body, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ib_reg_user_mr.__UNIQUE_ID_ddebug573, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ib_reg_user_mr, %if.then7)) #13
          to label %cleanup [label %if.then7], !srcloc !340

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ib_reg_user_mr.__UNIQUE_ID_ddebug573, ptr noundef nonnull @.str.9) #13
  br label %cleanup

if.end10:                                         ; preds = %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %device11 = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %4 = ptrtoint ptr %device11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device11, align 4
  %reg_user_mr = getelementptr inbounds %struct.ib_device, ptr %5, i32 0, i32 1, i32 55
  %6 = ptrtoint ptr %reg_user_mr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_user_mr, align 4
  %call12 = tail call ptr %7(ptr noundef %pd, i64 noundef %start, i64 noundef %length, i64 noundef %virt_addr, i32 noundef %access_flags, ptr noundef null) #13
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %device11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device11, align 4
  %10 = ptrtoint ptr %call12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %call12, align 8
  %pd18 = getelementptr inbounds %struct.ib_mr, ptr %call12, i32 0, i32 1
  %11 = ptrtoint ptr %pd18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %pd, ptr %pd18, align 4
  %dm = getelementptr inbounds %struct.ib_mr, ptr %call12, i32 0, i32 10
  %12 = ptrtoint ptr %dm to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %dm, align 4
  %usecnt = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #13
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #13, !srcloc !332
  %res = getelementptr inbounds %struct.ib_mr, ptr %call12, i32 0, i32 12
  tail call void @rdma_restrack_new(ptr noundef %res, i32 noundef 4) #13
  %res20 = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 7
  tail call void @rdma_restrack_parent_name(ptr noundef %res, ptr noundef %res20) #13
  tail call void @rdma_restrack_add(ptr noundef %res) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end10.cleanup_crit_edge, %if.then7, %do.body
  %retval.0 = phi ptr [ %call12, %if.end15 ], [ %call12, %if.end10.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.body ], [ inttoptr (i32 -22 to ptr), %if.then7 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_advise_mr(ptr noundef %pd, i32 noundef %advice, i32 noundef %flags, ptr noundef %sg_list, i32 noundef %num_sge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %advise_mr = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 1, i32 61
  %2 = ptrtoint ptr %advise_mr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %advise_mr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_sge)
  %tobool1.not = icmp eq i32 %num_sge, 0
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 %3(ptr noundef %pd, i32 noundef %advice, i32 noundef %flags, ptr noundef %sg_list, i32 noundef %num_sge, ptr noundef null) #13
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -95, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_dereg_mr_user(ptr noundef %mr, ptr noundef %udata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pd1 = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 1
  %0 = ptrtoint ptr %pd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd1, align 4
  %dm2 = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 10
  %2 = ptrtoint ptr %dm2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dm2, align 4
  %sig_attrs3 = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 11
  %4 = ptrtoint ptr %sig_attrs3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sig_attrs3, align 8
  tail call fastcc void @trace_mr_dereg(ptr noundef %mr)
  %res = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 12
  tail call void @rdma_restrack_del(ptr noundef %res) #13
  %6 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mr, align 8
  %dereg_mr = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 1, i32 58
  %8 = ptrtoint ptr %dereg_mr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dereg_mr, align 4
  %call = tail call i32 %9(ptr noundef %mr, ptr noundef %udata) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then:                                          ; preds = %entry
  %usecnt = getelementptr inbounds %struct.ib_pd, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #13
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #13, !srcloc !335
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %usecnt6 = getelementptr inbounds %struct.ib_dm, ptr %3, i32 0, i32 4
  %call.i.i16 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt6, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt6, i32 1, i32 3, i32 1) #13
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt6, ptr %usecnt6, i32 1, ptr elementtype(i32) %usecnt6) #13, !srcloc !335
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  tail call void @kfree(ptr noundef %5) #13
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mr_dereg(ptr noundef %mr) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mr_dereg, i32 0, i32 1), ptr blockaddress(@trace_mr_dereg, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !340

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !320) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !330

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !320) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !341
  %call42 = tail call i32 @__traceiter_mr_dereg(ptr noundef null, ptr noundef %mr) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !342
  %13 = tail call i32 @llvm.read_register.i32(metadata !320) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !320) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !330

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !320) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !343
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mr_dereg, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mr_dereg, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mr_dereg.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_mr_dereg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 390, ptr noundef nonnull @.str.65) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !344
  %31 = tail call i32 @llvm.read_register.i32(metadata !320) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ib_alloc_mr(ptr noundef %pd, i32 noundef %mr_type, i32 noundef %max_num_sg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %alloc_mr = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 1, i32 59
  %2 = ptrtoint ptr %alloc_mr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alloc_mr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %mr_type)
  %cmp = icmp eq i32 %mr_type, 5
  br i1 %cmp, label %land.end, label %if.end38

land.end:                                         ; preds = %if.end
  %.b77 = load i1, ptr @ib_alloc_mr.__already_done, align 1
  br i1 %.b77, label %land.end.out_crit_edge, label %if.then7, !prof !330

land.end.out_crit_edge:                           ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then7:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ib_alloc_mr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2226, i32 noundef 9, ptr noundef null) #13
  br label %out

if.end38:                                         ; preds = %if.end
  %call42 = tail call ptr %3(ptr noundef %pd, i32 noundef %mr_type, i32 noundef %max_num_sg) #13
  %cmp.i = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end38.out_crit_edge, label %if.end45

if.end38.out_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %6 = ptrtoint ptr %call42 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %call42, align 8
  %pd48 = getelementptr inbounds %struct.ib_mr, ptr %call42, i32 0, i32 1
  %7 = ptrtoint ptr %pd48 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pd, ptr %pd48, align 4
  %dm = getelementptr inbounds %struct.ib_mr, ptr %call42, i32 0, i32 10
  %8 = ptrtoint ptr %dm to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %dm, align 4
  %9 = getelementptr inbounds %struct.ib_mr, ptr %call42, i32 0, i32 9
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %9, align 4
  %usecnt = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #13
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #13, !srcloc !332
  %need_inval = getelementptr inbounds %struct.ib_mr, ptr %call42, i32 0, i32 8
  %12 = ptrtoint ptr %need_inval to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %need_inval, align 8
  %type = getelementptr inbounds %struct.ib_mr, ptr %call42, i32 0, i32 7
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mr_type, ptr %type, align 4
  %sig_attrs = getelementptr inbounds %struct.ib_mr, ptr %call42, i32 0, i32 11
  %14 = ptrtoint ptr %sig_attrs to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %sig_attrs, align 8
  %res = getelementptr inbounds %struct.ib_mr, ptr %call42, i32 0, i32 12
  tail call void @rdma_restrack_new(ptr noundef %res, i32 noundef 4) #13
  %res50 = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 7
  tail call void @rdma_restrack_parent_name(ptr noundef %res, ptr noundef %res50) #13
  tail call void @rdma_restrack_add(ptr noundef %res) #13
  br label %out

out:                                              ; preds = %if.end45, %if.end38.out_crit_edge, %if.then7, %land.end.out_crit_edge, %entry.out_crit_edge
  %mr.0 = phi ptr [ %call42, %if.end38.out_crit_edge ], [ %call42, %if.end45 ], [ inttoptr (i32 -95 to ptr), %entry.out_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then7 ], [ inttoptr (i32 -22 to ptr), %land.end.out_crit_edge ]
  tail call fastcc void @trace_mr_alloc(ptr noundef %pd, i32 noundef %mr_type, i32 noundef %max_num_sg, ptr noundef %mr.0)
  ret ptr %mr.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mr_alloc(ptr noundef %pd, i32 noundef %mr_type, i32 noundef %max_num_sg, ptr noundef %mr) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mr_alloc, i32 0, i32 1), ptr blockaddress(@trace_mr_alloc, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !340

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !320) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !330

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !320) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !345
  %call42 = tail call i32 @__traceiter_mr_alloc(ptr noundef null, ptr noundef %pd, i32 noundef %mr_type, i32 noundef %max_num_sg, ptr noundef %mr) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !346
  %13 = tail call i32 @llvm.read_register.i32(metadata !320) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !320) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !330

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !320) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !343
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mr_alloc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mr_alloc, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mr_alloc.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_mr_alloc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 336, ptr noundef nonnull @.str.65) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !344
  %31 = tail call i32 @llvm.read_register.i32(metadata !320) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ib_alloc_mr_integrity(ptr noundef %pd, i32 noundef %max_num_data_sg, i32 noundef %max_num_meta_sg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %alloc_mr_integrity = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 1, i32 60
  %2 = ptrtoint ptr %alloc_mr_integrity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alloc_mr_integrity, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %map_mr_sg_pi = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 1, i32 91
  %4 = ptrtoint ptr %map_mr_sg_pi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map_mr_sg_pi, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_num_meta_sg)
  %tobool4.not = icmp eq i32 %max_num_meta_sg, 0
  br i1 %tobool4.not, label %if.end.out_crit_edge, label %if.end7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end7:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 64) #19
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end7.out_crit_edge, label %if.end12

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end12:                                         ; preds = %if.end7
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  %alloc_mr_integrity15 = getelementptr inbounds %struct.ib_device, ptr %8, i32 0, i32 1, i32 60
  %9 = ptrtoint ptr %alloc_mr_integrity15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %alloc_mr_integrity15, align 4
  %call16 = tail call ptr %10(ptr noundef %pd, i32 noundef %max_num_data_sg, i32 noundef %max_num_meta_sg) #13
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %out

if.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device, align 4
  %13 = ptrtoint ptr %call16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %call16, align 8
  %pd22 = getelementptr inbounds %struct.ib_mr, ptr %call16, i32 0, i32 1
  %14 = ptrtoint ptr %pd22 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %pd, ptr %pd22, align 4
  %dm = getelementptr inbounds %struct.ib_mr, ptr %call16, i32 0, i32 10
  %15 = ptrtoint ptr %dm to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %dm, align 4
  %16 = getelementptr inbounds %struct.ib_mr, ptr %call16, i32 0, i32 9
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %16, align 4
  %usecnt = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #13
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #13, !srcloc !332
  %need_inval = getelementptr inbounds %struct.ib_mr, ptr %call16, i32 0, i32 8
  %19 = ptrtoint ptr %need_inval to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %need_inval, align 8
  %type = getelementptr inbounds %struct.ib_mr, ptr %call16, i32 0, i32 7
  %20 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 5, ptr %type, align 4
  %sig_attrs23 = getelementptr inbounds %struct.ib_mr, ptr %call16, i32 0, i32 11
  %21 = ptrtoint ptr %sig_attrs23 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %sig_attrs23, align 8
  %res = getelementptr inbounds %struct.ib_mr, ptr %call16, i32 0, i32 12
  tail call void @rdma_restrack_new(ptr noundef %res, i32 noundef 4) #13
  %res25 = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 7
  tail call void @rdma_restrack_parent_name(ptr noundef %res, ptr noundef %res25) #13
  tail call void @rdma_restrack_add(ptr noundef %res) #13
  br label %out

out:                                              ; preds = %if.end19, %if.then18, %if.end7.out_crit_edge, %if.end.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %mr.0 = phi ptr [ %call16, %if.then18 ], [ %call16, %if.end19 ], [ inttoptr (i32 -95 to ptr), %lor.lhs.false.out_crit_edge ], [ inttoptr (i32 -95 to ptr), %entry.out_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.out_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end7.out_crit_edge ]
  tail call fastcc void @trace_mr_integ_alloc(ptr noundef %pd, i32 noundef %max_num_data_sg, i32 noundef %max_num_meta_sg, ptr noundef %mr.0)
  ret ptr %mr.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mr_integ_alloc(ptr noundef %pd, i32 noundef %max_num_data_sg, i32 noundef %max_num_meta_sg, ptr noundef %mr) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mr_integ_alloc, i32 0, i32 1), ptr blockaddress(@trace_mr_integ_alloc, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !340

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !320) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !330

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !320) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !347
  %call42 = tail call i32 @__traceiter_mr_integ_alloc(ptr noundef null, ptr noundef %pd, i32 noundef %max_num_data_sg, i32 noundef %max_num_meta_sg, ptr noundef %mr) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !348
  %13 = tail call i32 @llvm.read_register.i32(metadata !320) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !320) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !330

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !320) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !343
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mr_integ_alloc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mr_integ_alloc, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mr_integ_alloc.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_mr_integ_alloc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 372, ptr noundef nonnull @.str.65) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !344
  %31 = tail call i32 @llvm.read_register.i32(metadata !320) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_attach_mcast(ptr noundef %qp, ptr noundef %gid, i16 noundef zeroext %lid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 4
  %attach_mcast = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 1, i32 66
  %2 = ptrtoint ptr %attach_mcast to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attach_mcast, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %gid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %gid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp.i = icmp eq i8 %5, -1
  br i1 %cmp.i, label %if.end.lor.lhs.false_crit_edge, label %if.end.i

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

if.end.i:                                         ; preds = %if.end
  %6 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gid, align 4
  %arrayidx2.i.i = getelementptr [4 x i32], ptr %gid, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %9, %7
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %gid, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4.i.i, align 4
  %xor.i.i = xor i32 %11, 65535
  %or5.i.i = or i32 %or.i.i, %xor.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %cmp.i.i = icmp eq i32 %or5.i.i, 0
  br i1 %cmp.i.i, label %rdma_is_multicast_addr.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

rdma_is_multicast_addr.exit:                      ; preds = %if.end.i
  %arrayidx3.i = getelementptr [4 x i32], ptr %gid, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3.i, align 4
  %and.i.i = and i32 %13, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i)
  %cmp.i9.i.not = icmp eq i32 %and.i.i, -536870912
  br i1 %cmp.i9.i.not, label %rdma_is_multicast_addr.exit.lor.lhs.false_crit_edge, label %rdma_is_multicast_addr.exit.cleanup_crit_edge

rdma_is_multicast_addr.exit.cleanup_crit_edge:    ; preds = %rdma_is_multicast_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

rdma_is_multicast_addr.exit.lor.lhs.false_crit_edge: ; preds = %rdma_is_multicast_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %rdma_is_multicast_addr.exit.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %qp_type = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 22
  %14 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qp_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp.not = icmp eq i32 %15, 4
  br i1 %cmp.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %call3 = tail call fastcc zeroext i1 @is_valid_mcast_lid(ptr noundef %qp, i16 noundef zeroext %lid)
  br i1 %call3, label %if.end5, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false2
  %16 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %qp, align 4
  %attach_mcast8 = getelementptr inbounds %struct.ib_device, ptr %17, i32 0, i32 1, i32 66
  %18 = ptrtoint ptr %attach_mcast8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %attach_mcast8, align 4
  %call9 = tail call i32 %19(ptr noundef %qp, ptr noundef %gid, i16 noundef zeroext %lid) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %usecnt = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #13
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #13, !srcloc !332
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end5.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %rdma_is_multicast_addr.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %rdma_is_multicast_addr.exit.cleanup_crit_edge ], [ 0, %if.then11 ], [ %call9, %if.end5.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @is_valid_mcast_lid(ptr nocapture noundef readonly %qp, i16 noundef zeroext %lid) unnamed_addr #2 align 64 {
entry:
  %init_attr = alloca %struct.ib_qp_init_attr, align 4
  %attr = alloca %struct.ib_qp_attr, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %init_attr) #13
  %0 = call ptr @memset(ptr %init_attr, i32 0, i32 72)
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %attr) #13
  %1 = call ptr @memset(ptr %attr, i32 0, i32 216)
  %2 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp, align 4
  %query_qp.i = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 1, i32 48
  %4 = ptrtoint ptr %query_qp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %query_qp.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.end6_crit_edge, label %ib_query_qp.exit

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

ib_query_qp.exit:                                 ; preds = %entry
  %real_qp.i = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 13
  %6 = ptrtoint ptr %real_qp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %real_qp.i, align 4
  %call.i = call i32 %5(ptr noundef %7, ptr noundef nonnull %attr, i32 noundef 33, ptr noundef nonnull %init_attr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %ib_query_qp.exit.if.end6_crit_edge

ib_query_qp.exit.if.end6_crit_edge:               ; preds = %ib_query_qp.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then:                                          ; preds = %ib_query_qp.exit
  %8 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %attr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %if.then.if.end6_crit_edge, label %if.then1

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then1:                                         ; preds = %if.then
  %10 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qp, align 4
  %get_link_layer.i = getelementptr inbounds %struct.ib_device, ptr %11, i32 0, i32 1, i32 22
  %12 = ptrtoint ptr %get_link_layer.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_link_layer.i, align 4
  %tobool.not.i38 = icmp eq ptr %13, null
  br i1 %tobool.not.i38, label %if.end.i, label %rdma_port_get_link_layer.exit

if.end.i:                                         ; preds = %if.then1
  %node_type.i = getelementptr inbounds %struct.ib_device, ptr %11, i32 0, i32 20
  %14 = ptrtoint ptr %node_type.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %node_type.i, align 1
  %16 = and i8 %15, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %16)
  %switch.i = icmp eq i8 %16, 4
  br i1 %switch.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.lid_check_crit_edge

if.end.i.lid_check_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lid_check

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

rdma_port_get_link_layer.exit:                    ; preds = %if.then1
  %port_num = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 19
  %17 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port_num, align 4
  %call.i39 = call i32 %13(ptr noundef %11, i32 noundef %18) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i39)
  %cmp3.not = icmp eq i32 %call.i39, 1
  br i1 %cmp3.not, label %rdma_port_get_link_layer.exit.lid_check_crit_edge, label %rdma_port_get_link_layer.exit.cleanup_crit_edge

rdma_port_get_link_layer.exit.cleanup_crit_edge:  ; preds = %rdma_port_get_link_layer.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

rdma_port_get_link_layer.exit.lid_check_crit_edge: ; preds = %rdma_port_get_link_layer.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %lid_check

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %ib_query_qp.exit.if.end6_crit_edge, %entry.if.end6_crit_edge
  %19 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qp, align 4
  %is_switch.i.i = getelementptr inbounds %struct.ib_device, ptr %20, i32 0, i32 19
  %21 = ptrtoint ptr %is_switch.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i.i = load i8, ptr %is_switch.i.i, align 4
  %22 = xor i8 %bf.load.i.i, -1
  %23 = lshr i8 %22, 7
  %.not.i = zext i8 %23 to i32
  br label %for.cond

for.cond:                                         ; preds = %rdma_port_get_link_layer.exit52, %if.end6
  %num_eth_ports.0 = phi i32 [ 0, %if.end6 ], [ %spec.select, %rdma_port_get_link_layer.exit52 ]
  %port.0 = phi i32 [ %.not.i, %if.end6 ], [ %inc17, %rdma_port_get_link_layer.exit52 ]
  %24 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %qp, align 4
  %is_switch.i.i40 = getelementptr inbounds %struct.ib_device, ptr %25, i32 0, i32 19
  %26 = ptrtoint ptr %is_switch.i.i40 to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i.i41 = load i8, ptr %is_switch.i.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i41)
  %tobool.i.i = icmp slt i8 %bf.load.i.i41, 0
  br i1 %tobool.i.i, label %for.cond.rdma_end_port.exit_crit_edge, label %cond.false.i

for.cond.rdma_end_port.exit_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %rdma_end_port.exit

cond.false.i:                                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %phys_port_cnt.i = getelementptr inbounds %struct.ib_device, ptr %25, i32 0, i32 21
  %27 = ptrtoint ptr %phys_port_cnt.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %phys_port_cnt.i, align 8
  br label %rdma_end_port.exit

rdma_end_port.exit:                               ; preds = %cond.false.i, %for.cond.rdma_end_port.exit_crit_edge
  %cond.i42 = phi i32 [ %28, %cond.false.i ], [ 0, %for.cond.rdma_end_port.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %port.0, i32 %cond.i42)
  %cmp11.not = icmp ugt i32 %port.0, %cond.i42
  br i1 %cmp11.not, label %for.end, label %for.body

for.body:                                         ; preds = %rdma_end_port.exit
  %get_link_layer.i43 = getelementptr inbounds %struct.ib_device, ptr %25, i32 0, i32 1, i32 22
  %29 = ptrtoint ptr %get_link_layer.i43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %get_link_layer.i43, align 4
  %tobool.not.i44 = icmp eq ptr %30, null
  br i1 %tobool.not.i44, label %if.end.i50, label %if.then.i46

if.then.i46:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %call.i45 = call i32 %30(ptr noundef %25, i32 noundef %port.0) #13
  br label %rdma_port_get_link_layer.exit52

if.end.i50:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %node_type.i47 = getelementptr inbounds %struct.ib_device, ptr %25, i32 0, i32 20
  %31 = ptrtoint ptr %node_type.i47 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %node_type.i47, align 1
  %33 = and i8 %32, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %33)
  %switch.i48 = icmp eq i8 %33, 4
  %spec.select.i49 = select i1 %switch.i48, i32 2, i32 1
  br label %rdma_port_get_link_layer.exit52

rdma_port_get_link_layer.exit52:                  ; preds = %if.end.i50, %if.then.i46
  %retval.0.i51 = phi i32 [ %call.i45, %if.then.i46 ], [ %spec.select.i49, %if.end.i50 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i51)
  %cmp14.not = icmp ne i32 %retval.0.i51, 1
  %inc = zext i1 %cmp14.not to i32
  %spec.select = add i32 %num_eth_ports.0, %inc
  %inc17 = add i32 %port.0, 1
  br label %for.cond

for.end:                                          ; preds = %rdma_end_port.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_eth_ports.0)
  %tobool18.not = icmp eq i32 %num_eth_ports.0, 0
  br i1 %tobool18.not, label %for.end.lid_check_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.end.lid_check_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %lid_check

lid_check:                                        ; preds = %for.end.lid_check_crit_edge, %rdma_port_get_link_layer.exit.lid_check_crit_edge, %if.end.i.lid_check_crit_edge
  %34 = add i16 %lid, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 16383, i16 %34)
  %35 = icmp ult i16 %34, 16383
  br label %cleanup

cleanup:                                          ; preds = %lid_check, %for.end.cleanup_crit_edge, %rdma_port_get_link_layer.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i1 [ %35, %lid_check ], [ true, %rdma_port_get_link_layer.exit.cleanup_crit_edge ], [ true, %for.end.cleanup_crit_edge ], [ true, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %attr) #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %init_attr) #13
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_detach_mcast(ptr noundef %qp, ptr noundef %gid, i16 noundef zeroext %lid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 4
  %detach_mcast = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 1, i32 67
  %2 = ptrtoint ptr %detach_mcast to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %detach_mcast, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %gid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %gid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp.i = icmp eq i8 %5, -1
  br i1 %cmp.i, label %if.end.lor.lhs.false_crit_edge, label %if.end.i

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

if.end.i:                                         ; preds = %if.end
  %6 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gid, align 4
  %arrayidx2.i.i = getelementptr [4 x i32], ptr %gid, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %9, %7
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %gid, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4.i.i, align 4
  %xor.i.i = xor i32 %11, 65535
  %or5.i.i = or i32 %or.i.i, %xor.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %cmp.i.i = icmp eq i32 %or5.i.i, 0
  br i1 %cmp.i.i, label %rdma_is_multicast_addr.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

rdma_is_multicast_addr.exit:                      ; preds = %if.end.i
  %arrayidx3.i = getelementptr [4 x i32], ptr %gid, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3.i, align 4
  %and.i.i = and i32 %13, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i)
  %cmp.i9.i.not = icmp eq i32 %and.i.i, -536870912
  br i1 %cmp.i9.i.not, label %rdma_is_multicast_addr.exit.lor.lhs.false_crit_edge, label %rdma_is_multicast_addr.exit.cleanup_crit_edge

rdma_is_multicast_addr.exit.cleanup_crit_edge:    ; preds = %rdma_is_multicast_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

rdma_is_multicast_addr.exit.lor.lhs.false_crit_edge: ; preds = %rdma_is_multicast_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %rdma_is_multicast_addr.exit.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %qp_type = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 22
  %14 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qp_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp.not = icmp eq i32 %15, 4
  br i1 %cmp.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %call3 = tail call fastcc zeroext i1 @is_valid_mcast_lid(ptr noundef %qp, i16 noundef zeroext %lid)
  br i1 %call3, label %if.end5, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false2
  %16 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %qp, align 4
  %detach_mcast8 = getelementptr inbounds %struct.ib_device, ptr %17, i32 0, i32 1, i32 67
  %18 = ptrtoint ptr %detach_mcast8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %detach_mcast8, align 4
  %call9 = tail call i32 %19(ptr noundef %qp, ptr noundef %gid, i16 noundef zeroext %lid) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %usecnt = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #13
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #13, !srcloc !335
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end5.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %rdma_is_multicast_addr.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %rdma_is_multicast_addr.exit.cleanup_crit_edge ], [ 0, %if.then11 ], [ %call9, %if.end5.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ib_alloc_xrcd_user(ptr noundef %device, ptr noundef %inode, ptr noundef %udata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %alloc_xrcd = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 1, i32 68
  %0 = ptrtoint ptr %alloc_xrcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alloc_xrcd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end8.i.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i.i.i:                                    ; preds = %entry
  %size_ib_xrcd = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 1, i32 130
  %2 = ptrtoint ptr %size_ib_xrcd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size_ib_xrcd, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #16
  %tobool3.not = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool3.not, label %if.end8.i.i.i.cleanup_crit_edge, label %if.end6

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end8.i.i.i
  %4 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %device, ptr %call9.i.i.i, align 128
  %inode8 = getelementptr inbounds %struct.ib_xrcd, ptr %call9.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %inode8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %inode, ptr %inode8, align 8
  %usecnt = getelementptr inbounds %struct.ib_xrcd, ptr %call9.i.i.i, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #13
  %6 = ptrtoint ptr %usecnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %usecnt, align 4
  %tgt_qps_rwsem = getelementptr inbounds %struct.ib_xrcd, ptr %call9.i.i.i, i32 0, i32 3
  tail call void @__init_rwsem(ptr noundef %tgt_qps_rwsem, ptr noundef nonnull @.str.10, ptr noundef nonnull @ib_alloc_xrcd_user.__key) #13
  %tgt_qps = getelementptr inbounds %struct.ib_xrcd, ptr %call9.i.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %tgt_qps, ptr noundef nonnull @.str.67, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #13
  %xa_flags.i.i = getelementptr inbounds %struct.ib_xrcd, ptr %call9.i.i.i, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %xa_flags.i.i, align 8
  %xa_head.i.i = getelementptr inbounds %struct.ib_xrcd, ptr %call9.i.i.i, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %xa_head.i.i, align 4
  %9 = ptrtoint ptr %alloc_xrcd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %alloc_xrcd, align 4
  %call11 = tail call i32 %10(ptr noundef nonnull %call9.i.i.i, ptr noundef %udata) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end6.cleanup_crit_edge, label %err

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

err:                                              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #13
  %11 = inttoptr i32 %call11 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end6.cleanup_crit_edge, %if.end8.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %11, %err ], [ %call9.i.i.i, %if.end6.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_dealloc_xrcd_user(ptr noundef %xrcd, ptr noundef %udata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %usecnt = getelementptr inbounds %struct.ib_xrcd, ptr %xrcd, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usecnt, i32 noundef 4) #13
  %0 = ptrtoint ptr %usecnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %usecnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %xa_head.i = getelementptr inbounds %struct.ib_xrcd, ptr %xrcd, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xa_head.i, align 4
  %cmp.i = icmp eq ptr %3, null
  br i1 %cmp.i, label %if.end.if.end17_crit_edge, label %do.end, !prof !330

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2437, i32 noundef 9, ptr noundef null) #13
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.end.if.end17_crit_edge
  %4 = ptrtoint ptr %xrcd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xrcd, align 4
  %dealloc_xrcd = getelementptr inbounds %struct.ib_device, ptr %5, i32 0, i32 1, i32 69
  %6 = ptrtoint ptr %dealloc_xrcd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dealloc_xrcd, align 4
  %call24 = tail call i32 %7(ptr noundef %xrcd, ptr noundef %udata) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end27:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef %xrcd) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27 ], [ -16, %entry.cleanup_crit_edge ], [ %call24, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ib_create_wq(ptr noundef %pd, ptr noundef %wq_attr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %create_wq = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 1, i32 80
  %2 = ptrtoint ptr %create_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %create_wq, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr %3(ptr noundef %pd, ptr noundef %wq_attr, ptr noundef null) #13
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %event_handler = getelementptr inbounds %struct.ib_wq_init_attr, ptr %wq_attr, i32 0, i32 5
  %4 = ptrtoint ptr %event_handler to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %event_handler, align 4
  %event_handler7 = getelementptr inbounds %struct.ib_wq, ptr %call4, i32 0, i32 3
  %6 = ptrtoint ptr %event_handler7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %event_handler7, align 4
  %7 = ptrtoint ptr %wq_attr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wq_attr, align 4
  %wq_context8 = getelementptr inbounds %struct.ib_wq, ptr %call4, i32 0, i32 2
  %9 = ptrtoint ptr %wq_context8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %wq_context8, align 4
  %wq_type = getelementptr inbounds %struct.ib_wq_init_attr, ptr %wq_attr, i32 0, i32 1
  %10 = ptrtoint ptr %wq_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wq_type, align 4
  %wq_type9 = getelementptr inbounds %struct.ib_wq, ptr %call4, i32 0, i32 8
  %12 = ptrtoint ptr %wq_type9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %wq_type9, align 4
  %cq = getelementptr inbounds %struct.ib_wq_init_attr, ptr %wq_attr, i32 0, i32 4
  %13 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cq, align 4
  %cq10 = getelementptr inbounds %struct.ib_wq, ptr %call4, i32 0, i32 5
  %15 = ptrtoint ptr %cq10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %cq10, align 4
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device, align 4
  %18 = ptrtoint ptr %call4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %call4, align 4
  %pd13 = getelementptr inbounds %struct.ib_wq, ptr %call4, i32 0, i32 4
  %19 = ptrtoint ptr %pd13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %pd, ptr %pd13, align 4
  %uobject = getelementptr inbounds %struct.ib_wq, ptr %call4, i32 0, i32 1
  %20 = ptrtoint ptr %uobject to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %uobject, align 4
  %usecnt = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #13
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #13, !srcloc !332
  %22 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cq, align 4
  %usecnt15 = getelementptr inbounds %struct.ib_cq, ptr %23, i32 0, i32 7
  %call.i.i37 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt15, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt15, i32 1, i32 3, i32 1) #13
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt15, ptr %usecnt15, i32 1, ptr elementtype(i32) %usecnt15) #13, !srcloc !332
  %usecnt16 = getelementptr inbounds %struct.ib_wq, ptr %call4, i32 0, i32 9
  %call.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt16, i32 noundef 4) #13
  %25 = ptrtoint ptr %usecnt16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %usecnt16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call4, %if.then6 ], [ %call4, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_destroy_wq_user(ptr noundef %wq, ptr noundef %udata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cq1 = getelementptr inbounds %struct.ib_wq, ptr %wq, i32 0, i32 5
  %0 = ptrtoint ptr %cq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cq1, align 4
  %pd2 = getelementptr inbounds %struct.ib_wq, ptr %wq, i32 0, i32 4
  %2 = ptrtoint ptr %pd2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd2, align 4
  %usecnt = getelementptr inbounds %struct.ib_wq, ptr %wq, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usecnt, i32 noundef 4) #13
  %4 = ptrtoint ptr %usecnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %usecnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wq, align 4
  %destroy_wq = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 1, i32 81
  %8 = ptrtoint ptr %destroy_wq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %destroy_wq, align 4
  %call3 = tail call i32 %9(ptr noundef %wq, ptr noundef %udata) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %usecnt7 = getelementptr inbounds %struct.ib_pd, ptr %3, i32 0, i32 4
  %call.i.i17 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt7, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt7, i32 1, i32 3, i32 1) #13
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt7, ptr %usecnt7, i32 1, ptr elementtype(i32) %usecnt7) #13, !srcloc !335
  %usecnt8 = getelementptr inbounds %struct.ib_cq, ptr %1, i32 0, i32 7
  %call.i.i18 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt8, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt8, i32 1, i32 3, i32 1) #13
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt8, ptr %usecnt8, i32 1, ptr elementtype(i32) %usecnt8) #13, !srcloc !335
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -16, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_check_mr_status(ptr noundef %mr, i32 noundef %check_mask, ptr noundef %mr_status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mr, align 8
  %check_mr_status = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 1, i32 63
  %2 = ptrtoint ptr %check_mr_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %check_mr_status, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 %3(ptr noundef %mr, i32 noundef %check_mask, ptr noundef %mr_status) #13
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_set_vf_link_state(ptr noundef %device, i32 noundef %vf, i32 noundef %port, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %set_vf_link_state = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 1, i32 75
  %0 = ptrtoint ptr %set_vf_link_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_vf_link_state, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 %1(ptr noundef %device, i32 noundef %vf, i32 noundef %port, i32 noundef %state) #13
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_get_vf_config(ptr noundef %device, i32 noundef %vf, i32 noundef %port, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %get_vf_config = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 1, i32 76
  %0 = ptrtoint ptr %get_vf_config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_vf_config, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 %1(ptr noundef %device, i32 noundef %vf, i32 noundef %port, ptr noundef %info) #13
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_get_vf_stats(ptr noundef %device, i32 noundef %vf, i32 noundef %port, ptr noundef %stats) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %get_vf_stats = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 1, i32 77
  %0 = ptrtoint ptr %get_vf_stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_vf_stats, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 %1(ptr noundef %device, i32 noundef %vf, i32 noundef %port, ptr noundef %stats) #13
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_set_vf_guid(ptr noundef %device, i32 noundef %vf, i32 noundef %port, i64 noundef %guid, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %set_vf_guid = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 1, i32 79
  %0 = ptrtoint ptr %set_vf_guid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_vf_guid, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 %1(ptr noundef %device, i32 noundef %vf, i32 noundef %port, i64 noundef %guid, i32 noundef %type) #13
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_get_vf_guid(ptr noundef %device, i32 noundef %vf, i32 noundef %port, ptr noundef %node_guid, ptr noundef %port_guid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %get_vf_guid = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 1, i32 78
  %0 = ptrtoint ptr %get_vf_guid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_vf_guid, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 %1(ptr noundef %device, i32 noundef %vf, i32 noundef %port, ptr noundef %node_guid, ptr noundef %port_guid) #13
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_map_mr_sg_pi(ptr noundef %mr, ptr noundef %data_sg, i32 noundef %data_sg_nents, ptr noundef %data_sg_offset, ptr noundef %meta_sg, i32 noundef %meta_sg_nents, ptr noundef %meta_sg_offset, i32 noundef %page_size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mr, align 8
  %map_mr_sg_pi = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 1, i32 91
  %2 = ptrtoint ptr %map_mr_sg_pi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map_mr_sg_pi, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.rhs, !prof !338

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

lor.rhs:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 7
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp.not = icmp eq i32 %5, 5
  br i1 %cmp.not, label %if.end44, label %land.rhs

land.rhs:                                         ; preds = %lor.rhs
  %.b55 = load i1, ptr @ib_map_mr_sg_pi.__already_done, align 1
  br i1 %.b55, label %land.rhs.return_crit_edge, label %if.then, !prof !330

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ib_map_mr_sg_pi.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2595, i32 noundef 9, ptr noundef null) #13
  br label %return

if.end44:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %page_size45 = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 6
  %6 = ptrtoint ptr %page_size45 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %page_size, ptr %page_size45, align 8
  %7 = ptrtoint ptr %map_mr_sg_pi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map_mr_sg_pi, align 4
  %call = tail call i32 %8(ptr noundef %mr, ptr noundef %data_sg, i32 noundef %data_sg_nents, ptr noundef %data_sg_offset, ptr noundef %meta_sg, i32 noundef %meta_sg_nents, ptr noundef %meta_sg_offset) #13
  br label %return

return:                                           ; preds = %if.end44, %if.then, %land.rhs.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end44 ], [ -95, %if.then ], [ -95, %entry.return_crit_edge ], [ -95, %land.rhs.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_map_mr_sg(ptr noundef %mr, ptr noundef %sg, i32 noundef %sg_nents, ptr noundef %sg_offset, i32 noundef %page_size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mr, align 8
  %map_mr_sg = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 1, i32 62
  %2 = ptrtoint ptr %map_mr_sg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map_mr_sg, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end, !prof !338

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %page_size4 = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 6
  %4 = ptrtoint ptr %page_size4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %page_size, ptr %page_size4, align 8
  %5 = ptrtoint ptr %map_mr_sg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map_mr_sg, align 4
  %call = tail call i32 %6(ptr noundef %mr, ptr noundef %sg, i32 noundef %sg_nents, ptr noundef %sg_offset) #13
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_sg_to_pages(ptr noundef %mr, ptr noundef %sgl, i32 noundef %sg_nents, ptr noundef %sg_offset_p, ptr nocapture noundef readonly %set_page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sg_offset_p, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %sg_offset_p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sg_offset_p, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %1, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %page_size = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 6
  %2 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_size, align 8
  %conv = zext i32 %3 to i64
  %sub = add nuw nsw i64 %conv, 4294967295
  %neg = sub nsw i64 0, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sg_nents)
  %cmp = icmp slt i32 %sg_nents, 1
  br i1 %cmp, label %cond.end.cleanup74_crit_edge, label %lor.rhs, !prof !338

cond.end.cleanup74_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup74

lor.rhs:                                          ; preds = %cond.end
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sgl, i32 0, i32 4
  %4 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %5)
  %cmp2 = icmp ugt i32 %cond, %5
  br i1 %cmp2, label %lor.rhs.cleanup74_crit_edge, label %for.body.preheader, !prof !338

lor.rhs.cleanup74_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup74

for.body.preheader:                               ; preds = %lor.rhs
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sgl, i32 0, i32 3
  %6 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_address, align 4
  %add = add i32 %7, %cond
  %conv7 = zext i32 %add to i64
  %iova = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 4
  %8 = ptrtoint ptr %iova to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv7, ptr %iova, align 8
  %length = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 5
  %9 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %length, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0145 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %last_page_off.0144 = phi i32 [ %conv65, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg_offset.0143 = phi i32 [ 0, %for.inc.for.body_crit_edge ], [ %cond, %for.body.preheader ]
  %last_end_dma_addr.0142 = phi i64 [ %add16, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg.0141 = phi ptr [ %call70, %for.inc.for.body_crit_edge ], [ %sgl, %for.body.preheader ]
  %dma_address10 = getelementptr inbounds %struct.scatterlist, ptr %sg.0141, i32 0, i32 3
  %10 = ptrtoint ptr %dma_address10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_address10, align 4
  %add11 = add i32 %11, %sg_offset.0143
  %conv12 = zext i32 %add11 to i64
  %dma_length13 = getelementptr inbounds %struct.scatterlist, ptr %sg.0141, i32 0, i32 4
  %12 = ptrtoint ptr %dma_length13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_length13, align 4
  %sub14 = sub i32 %13, %sg_offset.0143
  %conv15 = zext i32 %sub14 to i64
  %add16 = add nuw nsw i64 %conv15, %conv12
  %and = and i64 %conv12, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0145)
  %tobool17.not = icmp eq i32 %i.0145, 0
  br i1 %tobool17.not, label %for.body.do.body_crit_edge, label %land.lhs.true

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_page_off.0144)
  %cmp18.not = icmp eq i32 %last_page_off.0144, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %conv12)
  %cmp20.not = icmp eq i64 %and, %conv12
  %or.cond = select i1 %cmp18.not, i1 %cmp20.not, i1 false
  br i1 %or.cond, label %land.lhs.true.do.body_crit_edge, label %if.then22

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_cmp8(i64 %last_end_dma_addr.0142, i64 %conv12)
  %cmp23.not = icmp eq i64 %last_end_dma_addr.0142, %conv12
  br i1 %cmp23.not, label %if.then22.next_page_crit_edge, label %if.then22.for.end_crit_edge

if.then22.for.end_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then22.next_page_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_page

do.body:                                          ; preds = %next_page.do.body_crit_edge, %land.lhs.true.do.body_crit_edge, %for.body.do.body_crit_edge
  %i.0147 = phi i32 [ %i.0146, %next_page.do.body_crit_edge ], [ 0, %for.body.do.body_crit_edge ], [ %i.0145, %land.lhs.true.do.body_crit_edge ]
  %prev_addr.0 = phi i64 [ %prev_addr.1, %next_page.do.body_crit_edge ], [ %conv12, %for.body.do.body_crit_edge ], [ %conv12, %land.lhs.true.do.body_crit_edge ]
  %page_addr.0 = phi i64 [ %add57, %next_page.do.body_crit_edge ], [ %and, %for.body.do.body_crit_edge ], [ %conv12, %land.lhs.true.do.body_crit_edge ]
  %call = tail call i32 %set_page(ptr noundef %mr, i64 noundef %page_addr.0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp28 = icmp slt i32 %call, 0
  br i1 %cmp28, label %if.then36, label %do.body.next_page_crit_edge, !prof !338

do.body.next_page_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_page

if.then36:                                        ; preds = %do.body
  %dma_address10.le = getelementptr inbounds %struct.scatterlist, ptr %sg.0141, i32 0, i32 3
  %14 = ptrtoint ptr %dma_address10.le to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_address10.le, align 4
  %16 = trunc i64 %prev_addr.0 to i32
  %sub41 = sub i64 %prev_addr.0, %conv12
  %17 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %length, align 8
  %add43 = add i64 %sub41, %18
  store i64 %add43, ptr %length, align 8
  br i1 %tobool.not, label %if.then36.cleanup.thread_crit_edge, label %if.then45

if.then36.cleanup.thread_crit_edge:               ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.then45:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  %conv40 = sub i32 %16, %15
  %19 = ptrtoint ptr %sg_offset_p to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv40, ptr %sg_offset_p, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then45, %if.then36.cleanup.thread_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %16)
  %tobool49.not = icmp eq i32 %15, %16
  %or.cond123 = select i1 %tobool17.not, i1 %tobool49.not, i1 false
  %cond53 = select i1 %or.cond123, i32 %call, i32 %i.0147
  br label %cleanup74

next_page:                                        ; preds = %do.body.next_page_crit_edge, %if.then22.next_page_crit_edge
  %i.0146 = phi i32 [ %i.0145, %if.then22.next_page_crit_edge ], [ %i.0147, %do.body.next_page_crit_edge ]
  %prev_addr.1 = phi i64 [ %last_end_dma_addr.0142, %if.then22.next_page_crit_edge ], [ %page_addr.0, %do.body.next_page_crit_edge ]
  %page_addr.1 = phi i64 [ %and, %if.then22.next_page_crit_edge ], [ %page_addr.0, %do.body.next_page_crit_edge ]
  %20 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %page_size, align 8
  %conv56 = zext i32 %21 to i64
  %add57 = add i64 %page_addr.1, %conv56
  call void @__sanitizer_cov_trace_cmp8(i64 %add57, i64 %add16)
  %cmp58 = icmp ult i64 %add57, %add16
  br i1 %cmp58, label %next_page.do.body_crit_edge, label %for.inc

next_page.do.body_crit_edge:                      ; preds = %next_page
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

for.inc:                                          ; preds = %next_page
  %22 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %length, align 8
  %add62 = add i64 %23, %conv15
  store i64 %add62, ptr %length, align 8
  %and64 = and i64 %add16, %sub
  %conv65 = trunc i64 %and64 to i32
  %inc = add i32 %i.0146, 1
  %call70 = tail call ptr @sg_next(ptr noundef %sg.0141) #13
  %cmp8 = icmp slt i32 %inc, %sg_nents
  br i1 %cmp8, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then22.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %inc, %for.inc.for.end_crit_edge ], [ %i.0145, %if.then22.for.end_crit_edge ]
  br i1 %tobool.not, label %for.end.cleanup74_crit_edge, label %if.then72

for.end.cleanup74_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup74

if.then72:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %sg_offset_p to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %sg_offset_p, align 4
  br label %cleanup74

cleanup74:                                        ; preds = %if.then72, %for.end.cleanup74_crit_edge, %cleanup.thread, %lor.rhs.cleanup74_crit_edge, %cond.end.cleanup74_crit_edge
  %retval.2 = phi i32 [ -22, %lor.rhs.cleanup74_crit_edge ], [ %i.0.lcssa, %if.then72 ], [ %i.0.lcssa, %for.end.cleanup74_crit_edge ], [ -22, %cond.end.cleanup74_crit_edge ], [ %cond53, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_drain_sq(ptr noundef %qp) #2 align 64 {
entry:
  %dummy.i.i = alloca ptr, align 4
  %attr.i = alloca %struct.ib_qp_attr, align 8
  %sdrain.i = alloca %struct.ib_drain_cqe, align 4
  %swr.i = alloca %struct.ib_rdma_wr, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 4
  %drain_sq = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 1, i32 9
  %2 = ptrtoint ptr %drain_sq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drain_sq, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %3(ptr noundef %qp) #13
  br label %if.end

if.else:                                          ; preds = %entry
  %send_cq.i = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 2
  %4 = ptrtoint ptr %send_cq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %send_cq.i, align 4
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %attr.i) #13
  %6 = call ptr @memset(ptr %attr.i, i32 0, i32 216)
  %7 = ptrtoint ptr %attr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 6, ptr %attr.i, align 8
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %sdrain.i) #13
  %8 = call ptr @memset(ptr %sdrain.i, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %swr.i) #13
  %9 = call ptr @memset(ptr %swr.i, i32 0, i32 56)
  %10 = getelementptr inbounds %struct.ib_send_wr, ptr %swr.i, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %sdrain.i, ptr %10, align 8
  %real_qp.i.i = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 13
  %12 = ptrtoint ptr %real_qp.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %real_qp.i.i, align 4
  %xmit_slave.i.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr.i, i32 0, i32 26
  %14 = ptrtoint ptr %xmit_slave.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %xmit_slave.i.i, align 8
  %call86.i.i = call i32 @ib_security_modify_qp(ptr noundef %13, ptr noundef nonnull %attr.i, i32 noundef 1, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i.i)
  %tobool87.not.i.i = icmp eq i32 %call86.i.i, 0
  br i1 %tobool87.not.i.i, label %if.end38.i, label %land.end.i

land.end.i:                                       ; preds = %if.else
  %.b125.i = load i1, ptr @__ib_drain_sq.__already_done, align 1
  br i1 %.b125.i, label %land.end.i.__ib_drain_sq.exit_crit_edge, label %if.then9.i, !prof !330

land.end.i.__ib_drain_sq.exit_crit_edge:          ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__ib_drain_sq.exit

if.then9.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__ib_drain_sq.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2766, i32 noundef 9, ptr noundef nonnull @.str.68, i32 noundef %call86.i.i) #13
  br label %__ib_drain_sq.exit

if.end38.i:                                       ; preds = %if.else
  %15 = ptrtoint ptr %sdrain.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ib_drain_qp_done, ptr %sdrain.i, align 4
  %done40.i = getelementptr inbounds %struct.ib_drain_cqe, ptr %sdrain.i, i32 0, i32 1
  %16 = ptrtoint ptr %done40.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %done40.i, align 4
  %wait.i.i = getelementptr inbounds %struct.ib_drain_cqe, ptr %sdrain.i, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.70, ptr noundef nonnull @init_completion.__key) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #13
  %17 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i, align 4, !annotation !331
  %18 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %qp, align 4
  %post_send.i.i = getelementptr inbounds %struct.ib_device, ptr %19, i32 0, i32 1, i32 6
  %20 = ptrtoint ptr %post_send.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %post_send.i.i, align 4
  %call.i126.i = call i32 %21(ptr noundef %qp, ptr noundef nonnull %swr.i, ptr noundef nonnull %dummy.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126.i)
  %tobool43.not.i = icmp eq i32 %call.i126.i, 0
  br i1 %tobool43.not.i, label %if.end99.i, label %land.end57.i

land.end57.i:                                     ; preds = %if.end38.i
  %.b123124.i = load i1, ptr @__ib_drain_sq.__already_done.69, align 1
  br i1 %.b123124.i, label %land.end57.i.__ib_drain_sq.exit_crit_edge, label %if.then64.i, !prof !330

land.end57.i.__ib_drain_sq.exit_crit_edge:        ; preds = %land.end57.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__ib_drain_sq.exit

if.then64.i:                                      ; preds = %land.end57.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__ib_drain_sq.__already_done.69, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2775, i32 noundef 9, ptr noundef nonnull @.str.68, i32 noundef %call.i126.i) #13
  br label %__ib_drain_sq.exit

if.end99.i:                                       ; preds = %if.end38.i
  %poll_ctx.i = getelementptr inbounds %struct.ib_cq, ptr %5, i32 0, i32 8
  %22 = ptrtoint ptr %poll_ctx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %poll_ctx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp.i = icmp eq i32 %23, 3
  br i1 %cmp.i, label %while.cond.preheader.i, label %if.else.i

while.cond.preheader.i:                           ; preds = %if.end99.i
  %call102129.i = call i32 @wait_for_completion_timeout(ptr noundef %done40.i, i32 noundef 10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102129.i)
  %cmp103130.i = icmp eq i32 %call102129.i, 0
  br i1 %cmp103130.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.__ib_drain_sq.exit_crit_edge

while.cond.preheader.i.__ib_drain_sq.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__ib_drain_sq.exit

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %call104.i = call i32 @ib_process_cq_direct(ptr noundef %5, i32 noundef -1) #13
  %call102.i = call i32 @wait_for_completion_timeout(ptr noundef %done40.i, i32 noundef 10) #13
  %cmp103.i = icmp eq i32 %call102.i, 0
  br i1 %cmp103.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.__ib_drain_sq.exit_crit_edge

while.body.i.__ib_drain_sq.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__ib_drain_sq.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.else.i:                                        ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @wait_for_completion(ptr noundef %done40.i) #13
  br label %__ib_drain_sq.exit

__ib_drain_sq.exit:                               ; preds = %if.else.i, %while.body.i.__ib_drain_sq.exit_crit_edge, %while.cond.preheader.i.__ib_drain_sq.exit_crit_edge, %if.then64.i, %land.end57.i.__ib_drain_sq.exit_crit_edge, %if.then9.i, %land.end.i.__ib_drain_sq.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %swr.i) #13
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %sdrain.i) #13
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %attr.i) #13
  br label %if.end

if.end:                                           ; preds = %__ib_drain_sq.exit, %if.then
  %send_cq = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 2
  %24 = ptrtoint ptr %send_cq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %send_cq, align 4
  call fastcc void @trace_cq_drain_complete(ptr noundef %25)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cq_drain_complete(ptr noundef %cq) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cq_drain_complete, i32 0, i32 1), ptr blockaddress(@trace_cq_drain_complete, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !340

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !320) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !330

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !320) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !349
  %call42 = tail call i32 @__traceiter_cq_drain_complete(ptr noundef null, ptr noundef %cq) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !350
  %13 = tail call i32 @llvm.read_register.i32(metadata !320) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !320) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !330

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !320) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !343
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cq_drain_complete, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cq_drain_complete, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cq_drain_complete.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_cq_drain_complete.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 162, ptr noundef nonnull @.str.65) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !344
  %31 = tail call i32 @llvm.read_register.i32(metadata !320) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_drain_rq(ptr noundef %qp) #2 align 64 {
entry:
  %dummy.i.i = alloca ptr, align 4
  %attr.i = alloca %struct.ib_qp_attr, align 8
  %rdrain.i = alloca %struct.ib_drain_cqe, align 4
  %rwr.i = alloca %struct.ib_recv_wr, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 4
  %drain_rq = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 1, i32 8
  %2 = ptrtoint ptr %drain_rq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drain_rq, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %3(ptr noundef %qp) #13
  br label %if.end

if.else:                                          ; preds = %entry
  %recv_cq.i = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 3
  %4 = ptrtoint ptr %recv_cq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %recv_cq.i, align 4
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %attr.i) #13
  %6 = call ptr @memset(ptr %attr.i, i32 0, i32 216)
  %7 = ptrtoint ptr %attr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 6, ptr %attr.i, align 8
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %rdrain.i) #13
  %8 = getelementptr inbounds i8, ptr %rdrain.i, i32 8
  %9 = call ptr @memset(ptr %8, i32 255, i32 52)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rwr.i) #13
  %10 = call ptr @memset(ptr %rwr.i, i32 0, i32 24)
  %real_qp.i.i = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 13
  %11 = ptrtoint ptr %real_qp.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %real_qp.i.i, align 4
  %xmit_slave.i.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr.i, i32 0, i32 26
  %13 = ptrtoint ptr %xmit_slave.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %xmit_slave.i.i, align 8
  %call86.i.i = call i32 @ib_security_modify_qp(ptr noundef %12, ptr noundef nonnull %attr.i, i32 noundef 1, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i.i)
  %tobool87.not.i.i = icmp eq i32 %call86.i.i, 0
  br i1 %tobool87.not.i.i, label %if.end38.i, label %land.end.i

land.end.i:                                       ; preds = %if.else
  %.b124.i = load i1, ptr @__ib_drain_rq.__already_done, align 1
  br i1 %.b124.i, label %land.end.i.__ib_drain_rq.exit_crit_edge, label %if.then9.i, !prof !330

land.end.i.__ib_drain_rq.exit_crit_edge:          ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__ib_drain_rq.exit

if.then9.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__ib_drain_rq.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2799, i32 noundef 9, ptr noundef nonnull @.str.71, i32 noundef %call86.i.i) #13
  br label %__ib_drain_rq.exit

if.end38.i:                                       ; preds = %if.else
  %14 = getelementptr inbounds %struct.ib_recv_wr, ptr %rwr.i, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %rdrain.i, ptr %14, align 8
  %16 = ptrtoint ptr %rdrain.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ib_drain_qp_done, ptr %rdrain.i, align 4
  %done40.i = getelementptr inbounds %struct.ib_drain_cqe, ptr %rdrain.i, i32 0, i32 1
  %17 = ptrtoint ptr %done40.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %done40.i, align 4
  call void @__init_swait_queue_head(ptr noundef %8, ptr noundef nonnull @.str.70, ptr noundef nonnull @init_completion.__key) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #13
  %18 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i, align 4, !annotation !331
  %19 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qp, align 4
  %post_recv.i.i = getelementptr inbounds %struct.ib_device, ptr %20, i32 0, i32 1, i32 7
  %21 = ptrtoint ptr %post_recv.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %post_recv.i.i, align 4
  %call.i125.i = call i32 %22(ptr noundef %qp, ptr noundef nonnull %rwr.i, ptr noundef nonnull %dummy.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125.i)
  %tobool42.not.i = icmp eq i32 %call.i125.i, 0
  br i1 %tobool42.not.i, label %if.end98.i, label %land.end56.i

land.end56.i:                                     ; preds = %if.end38.i
  %.b122123.i = load i1, ptr @__ib_drain_rq.__already_done.72, align 1
  br i1 %.b122123.i, label %land.end56.i.__ib_drain_rq.exit_crit_edge, label %if.then63.i, !prof !330

land.end56.i.__ib_drain_rq.exit_crit_edge:        ; preds = %land.end56.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__ib_drain_rq.exit

if.then63.i:                                      ; preds = %land.end56.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__ib_drain_rq.__already_done.72, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2809, i32 noundef 9, ptr noundef nonnull @.str.71, i32 noundef %call.i125.i) #13
  br label %__ib_drain_rq.exit

if.end98.i:                                       ; preds = %if.end38.i
  %poll_ctx.i = getelementptr inbounds %struct.ib_cq, ptr %5, i32 0, i32 8
  %23 = ptrtoint ptr %poll_ctx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %poll_ctx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp.i = icmp eq i32 %24, 3
  br i1 %cmp.i, label %while.cond.preheader.i, label %if.else.i

while.cond.preheader.i:                           ; preds = %if.end98.i
  %call101128.i = call i32 @wait_for_completion_timeout(ptr noundef %done40.i, i32 noundef 10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101128.i)
  %cmp102129.i = icmp eq i32 %call101128.i, 0
  br i1 %cmp102129.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.__ib_drain_rq.exit_crit_edge

while.cond.preheader.i.__ib_drain_rq.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__ib_drain_rq.exit

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %call103.i = call i32 @ib_process_cq_direct(ptr noundef %5, i32 noundef -1) #13
  %call101.i = call i32 @wait_for_completion_timeout(ptr noundef %done40.i, i32 noundef 10) #13
  %cmp102.i = icmp eq i32 %call101.i, 0
  br i1 %cmp102.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.__ib_drain_rq.exit_crit_edge

while.body.i.__ib_drain_rq.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__ib_drain_rq.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.else.i:                                        ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @wait_for_completion(ptr noundef %done40.i) #13
  br label %__ib_drain_rq.exit

__ib_drain_rq.exit:                               ; preds = %if.else.i, %while.body.i.__ib_drain_rq.exit_crit_edge, %while.cond.preheader.i.__ib_drain_rq.exit_crit_edge, %if.then63.i, %land.end56.i.__ib_drain_rq.exit_crit_edge, %if.then9.i, %land.end.i.__ib_drain_rq.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rwr.i) #13
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %rdrain.i) #13
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %attr.i) #13
  br label %if.end

if.end:                                           ; preds = %__ib_drain_rq.exit, %if.then
  %recv_cq = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 3
  %25 = ptrtoint ptr %recv_cq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %recv_cq, align 4
  call fastcc void @trace_cq_drain_complete(ptr noundef %26)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_drain_qp(ptr noundef %qp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ib_drain_sq(ptr noundef %qp)
  %srq = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 8
  %0 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %srq, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ib_drain_rq(ptr noundef %qp)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rdma_alloc_netdev(ptr noundef %device, i32 noundef %port_num, i32 noundef %type, ptr noundef %name, i8 noundef zeroext %name_assign_type, ptr noundef %setup) #2 align 64 {
entry:
  %params = alloca %struct.rdma_netdev_alloc_params, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %params) #13
  %0 = getelementptr inbounds %struct.rdma_netdev_alloc_params, ptr %params, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rdma_netdev_alloc_params, ptr %params, i32 0, i32 2
  %rdma_netdev_get_params = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 1, i32 25
  %2 = call ptr @memset(ptr %params, i32 255, i32 20)
  %3 = ptrtoint ptr %rdma_netdev_get_params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rdma_netdev_get_params, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 %4(ptr noundef %device, i32 noundef %port_num, i32 noundef %type, ptr noundef nonnull %params) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %5 = inttoptr i32 %call3 to ptr
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %params, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %call8 = call ptr @alloc_netdev_mqs(i32 noundef %7, ptr noundef %name, i8 noundef zeroext %name_assign_type, ptr noundef %setup, i32 noundef %9, i32 noundef %11) #13
  %tobool9.not = icmp eq ptr %call8, null
  %spec.select = select i1 %tobool9.not, ptr inttoptr (i32 -12 to ptr), ptr %call8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %5, %if.then5 ], [ inttoptr (i32 -95 to ptr), %entry.cleanup_crit_edge ], [ %spec.select, %if.end7 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %params) #13
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rdma_init_netdev(ptr noundef %device, i32 noundef %port_num, i32 noundef %type, ptr nocapture readnone %name, i8 zeroext %name_assign_type, ptr nocapture readnone %setup, ptr noundef %netdev) #2 align 64 {
entry:
  %params = alloca %struct.rdma_netdev_alloc_params, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %params) #13
  %0 = getelementptr inbounds %struct.rdma_netdev_alloc_params, ptr %params, i32 0, i32 3
  %1 = getelementptr inbounds %struct.rdma_netdev_alloc_params, ptr %params, i32 0, i32 4
  %rdma_netdev_get_params = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 1, i32 25
  %2 = call ptr @memset(ptr %params, i32 255, i32 20)
  %3 = ptrtoint ptr %rdma_netdev_get_params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rdma_netdev_get_params, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 %4(ptr noundef %device, i32 noundef %port_num, i32 noundef %type, ptr noundef nonnull %params) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %0, align 4
  %call6 = call i32 %6(ptr noundef %device, i32 noundef %port_num, ptr noundef %netdev, ptr noundef %8) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ -95, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %params) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @__rdma_block_iter_start(ptr nocapture noundef writeonly %biter, ptr noundef %sglist, i32 noundef %nents, i32 noundef %pgsz) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %biter, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %2 = ptrtoint ptr %biter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sglist, ptr %biter, align 4
  %__sg_nents = getelementptr inbounds %struct.ib_block_iter, ptr %biter, i32 0, i32 2
  %3 = ptrtoint ptr %__sg_nents to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %nents, ptr %__sg_nents, align 4
  %4 = tail call i32 @llvm.ctlz.i32(i32 %pgsz, i1 false) #13, !range !351
  %sub.i = sub nsw i32 31, %4
  %__pg_bit = getelementptr inbounds %struct.ib_block_iter, ptr %biter, i32 0, i32 4
  %5 = ptrtoint ptr %__pg_bit to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub.i, ptr %__pg_bit, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__rdma_block_iter_next(ptr nocapture noundef %biter) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %__sg_nents = getelementptr inbounds %struct.ib_block_iter, ptr %biter, i32 0, i32 2
  %0 = ptrtoint ptr %__sg_nents to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %__sg_nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %biter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %biter, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_address, align 4
  %__sg_advance = getelementptr inbounds %struct.ib_block_iter, ptr %biter, i32 0, i32 3
  %6 = ptrtoint ptr %__sg_advance to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__sg_advance, align 4
  %add = add i32 %7, %5
  %__dma_addr = getelementptr inbounds %struct.ib_block_iter, ptr %biter, i32 0, i32 1
  %8 = ptrtoint ptr %__dma_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %__dma_addr, align 4
  %__pg_bit = getelementptr inbounds %struct.ib_block_iter, ptr %biter, i32 0, i32 4
  %9 = ptrtoint ptr %__pg_bit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %__pg_bit, align 4
  %sh_prom = zext i32 %10 to i64
  %shl = shl nuw i64 1, %sh_prom
  %11 = trunc i64 %shl to i32
  %12 = add i32 %11, -1
  %conv4 = and i32 %12, %add
  %13 = sub i32 %11, %conv4
  %conv13 = add i32 %13, %7
  store i32 %conv13, ptr %__sg_advance, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv13, i32 %15)
  %cmp.not = icmp ult i32 %conv13, %15
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %__sg_advance to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %__sg_advance, align 4
  %call = tail call ptr @sg_next(ptr noundef nonnull %3) #13
  %17 = ptrtoint ptr %biter to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call, ptr %biter, align 4
  %18 = ptrtoint ptr %__sg_nents to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %__sg_nents, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %__sg_nents, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ true, %if.then17 ], [ true, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rdma_alloc_hw_stats_struct(ptr noundef %descs, i32 noundef %num_counters, i32 noundef %lifespan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_counters, i32 8) #13
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 112) #13
  %retval.0.i22 = select i1 %1, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i22, i32 noundef 3520) #16
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end7.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %sub = add i32 %num_counters, 31
  %3 = lshr i32 %sub, 3
  %4 = and i32 %3, 536870908
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #16
  %is_disabled = getelementptr inbounds %struct.rdma_hw_stats, ptr %call9.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %is_disabled to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i.i, ptr %is_disabled, align 8
  %tobool4.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool4.not, label %err, label %if.end6

if.end6:                                          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %descs7 = getelementptr inbounds %struct.rdma_hw_stats, ptr %call9.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %descs7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %descs, ptr %descs7, align 4
  %num_counters8 = getelementptr inbounds %struct.rdma_hw_stats, ptr %call9.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %num_counters8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %num_counters, ptr %num_counters8, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %lifespan) #13
  %lifespan10 = getelementptr inbounds %struct.rdma_hw_stats, ptr %call9.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %lifespan10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call2.i, ptr %lifespan10, align 32
  tail call void @__mutex_init(ptr noundef nonnull %call9.i.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @rdma_alloc_hw_stats_struct.__key) #13
  br label %cleanup

err:                                              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i.i, %if.end6 ], [ null, %err ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rdma_free_hw_stats_struct(ptr noundef %stats) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %stats, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %is_disabled = getelementptr inbounds %struct.rdma_hw_stats, ptr %stats, i32 0, i32 4
  %0 = ptrtoint ptr %is_disabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %is_disabled, align 8
  tail call void @kfree(ptr noundef %1) #13
  tail call void @kfree(ptr noundef nonnull %stats) #13
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_find_gid_by_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @find_gid_index(ptr nocapture noundef readnone %gid, ptr noundef %gid_attr, ptr nocapture noundef readonly %context) #2 align 64 {
entry:
  %vlan_id = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vlan_id) #13
  %0 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %vlan_id, align 2
  %gid_type = getelementptr inbounds %struct.find_gid_index_context, ptr %context, i32 0, i32 1
  %1 = ptrtoint ptr %gid_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %gid_type, align 4
  %gid_type1 = getelementptr inbounds %struct.ib_gid_attr, ptr %gid_attr, i32 0, i32 3
  %3 = ptrtoint ptr %gid_type1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gid_type1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp.not = icmp eq i32 %2, %4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @rdma_read_gid_l2_fields(ptr noundef %gid_attr, ptr noundef nonnull %vlan_id, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %context to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %context, align 4
  %7 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vlan_id, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %8)
  %cmp6 = icmp eq i16 %6, %8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp6, %if.end3 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vlan_id) #13
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_read_gid_l2_fields(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_addr_find_l2_eth_by_grh(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_open_shared_qp_security(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_create_qp_security(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__ib_shared_qp_event_handler(ptr noundef %event, ptr noundef readonly %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %qp_open_list_lock = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qp_open_list_lock) #13
  %open_list = getelementptr inbounds %struct.ib_qp, ptr %context, i32 0, i32 12
  %element = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 1
  %2 = ptrtoint ptr %open_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn34 = load ptr, ptr %open_list, align 4
  %storemerge35 = getelementptr i8, ptr %.pn34, i32 -100
  %3 = ptrtoint ptr %element to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %storemerge35, ptr %element, align 4
  %cmp9.not36 = icmp eq ptr %.pn34, %open_list
  br i1 %cmp9.not36, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn37 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn34, %entry.for.body_crit_edge ]
  %event_handler = getelementptr i8, ptr %.pn37, i32 16
  %4 = ptrtoint ptr %event_handler to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %event_handler, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %qp_context = getelementptr i8, ptr %.pn37, i32 20
  %6 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qp_context, align 4
  tail call void %5(ptr noundef %event, ptr noundef %7) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %8 = ptrtoint ptr %element to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %element, align 4
  %open_list17 = getelementptr inbounds %struct.ib_qp, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %open_list17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %open_list17, align 4
  %storemerge = getelementptr i8, ptr %.pn, i32 -100
  store ptr %storemerge, ptr %element, align 4
  %cmp9.not = icmp eq ptr %.pn, %open_list
  br i1 %cmp9.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %11 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %context, align 4
  %qp_open_list_lock23 = getelementptr inbounds %struct.ib_device, ptr %12, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qp_open_list_lock23, i32 noundef %call2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_store(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_counter_bind_qp_auto(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_security_modify_qp(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mr_dereg(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mr_integ_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ib_drain_qp_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wc, align 8
  %done = getelementptr inbounds %struct.ib_drain_cqe, ptr %1, i32 0, i32 1
  tail call void @complete(ptr noundef %done) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_process_cq_direct(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cq_drain_complete(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !108, !109, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !267, !268, !270, !271, !273, !274, !276, !278, !279, !280, !281, !282, !283, !285, !286, !287, !289, !290, !291, !292, !294, !295, !297, !298, !300, !301, !303, !304, !306, !307, !309, !311, !312, !314, !315, !317, !318}
!llvm.named.register.sp = !{!320}
!llvm.module.flags = !{!321, !322, !323, !324, !325, !326, !327, !328}
!llvm.ident = !{!329}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/verbs.c", i32 88, i32 23}
!2 = !{ptr @__ksymtab_ib_event_msg, !3, !"__ksymtab_ib_event_msg", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/core/verbs.c", i32 90, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/core/verbs.c", i32 122, i32 25}
!6 = !{ptr @__ksymtab_ib_wc_status_msg, !7, !"__ksymtab_ib_wc_status_msg", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/core/verbs.c", i32 124, i32 1}
!8 = !{ptr @__ksymtab_ib_rate_to_mult, !9, !"__ksymtab_ib_rate_to_mult", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/core/verbs.c", i32 153, i32 1}
!10 = !{ptr @__ksymtab_mult_to_ib_rate, !11, !"__ksymtab_mult_to_ib_rate", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/core/verbs.c", i32 182, i32 1}
!12 = !{ptr @__ksymtab_ib_rate_to_mbps, !13, !"__ksymtab_ib_rate_to_mbps", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/core/verbs.c", i32 211, i32 1}
!14 = !{ptr @__ksymtab_rdma_node_get_transport, !15, !"__ksymtab_rdma_node_get_transport", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/core/verbs.c", i32 228, i32 1}
!16 = !{ptr @__ksymtab_rdma_port_get_link_layer, !17, !"__ksymtab_rdma_port_get_link_layer", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/core/verbs.c", i32 243, i32 1}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/infiniband/core/verbs.c", i32 293, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @__ib_alloc_pd._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @__ib_alloc_pd._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__ksymtab___ib_alloc_pd, !25, !"__ksymtab___ib_alloc_pd", i1 false, i1 false}
!25 = !{!"../drivers/infiniband/core/verbs.c", i32 323, i32 1}
!26 = !{ptr @__ksymtab_ib_dealloc_pd_user, !27, !"__ksymtab_ib_dealloc_pd_user", i1 false, i1 false}
!27 = !{!"../drivers/infiniband/core/verbs.c", i32 357, i32 1}
!28 = !{ptr @__ksymtab_rdma_copy_ah_attr, !29, !"__ksymtab_rdma_copy_ah_attr", i1 false, i1 false}
!29 = !{!"../drivers/infiniband/core/verbs.c", i32 374, i32 1}
!30 = !{ptr @__ksymtab_rdma_replace_ah_attr, !31, !"__ksymtab_rdma_replace_ah_attr", i1 false, i1 false}
!31 = !{!"../drivers/infiniband/core/verbs.c", i32 394, i32 1}
!32 = !{ptr @__ksymtab_rdma_move_ah_attr, !33, !"__ksymtab_rdma_move_ah_attr", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/core/verbs.c", i32 413, i32 1}
!34 = !{ptr @__ksymtab_rdma_create_ah, !35, !"__ksymtab_rdma_create_ah", i1 false, i1 false}
!35 = !{!"../drivers/infiniband/core/verbs.c", i32 585, i32 1}
!36 = !{ptr @__ksymtab_rdma_create_user_ah, !37, !"__ksymtab_rdma_create_user_ah", i1 false, i1 false}
!37 = !{!"../drivers/infiniband/core/verbs.c", i32 627, i32 1}
!38 = !{ptr @__ksymtab_ib_get_rdma_header_version, !39, !"__ksymtab_ib_get_rdma_header_version", i1 false, i1 false}
!39 = !{!"../drivers/infiniband/core/verbs.c", i32 660, i32 1}
!40 = !{ptr @__ksymtab_ib_get_gids_from_rdma_hdr, !41, !"__ksymtab_ib_get_gids_from_rdma_hdr", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/core/verbs.c", i32 749, i32 1}
!42 = !{ptr @__ksymtab_ib_init_ah_attr_from_wc, !43, !"__ksymtab_ib_init_ah_attr_from_wc", i1 false, i1 false}
!43 = !{!"../drivers/infiniband/core/verbs.c", i32 878, i32 1}
!44 = !{ptr @__ksymtab_rdma_move_grh_sgid_attr, !45, !"__ksymtab_rdma_move_grh_sgid_attr", i1 false, i1 false}
!45 = !{!"../drivers/infiniband/core/verbs.c", i32 903, i32 1}
!46 = !{ptr @__ksymtab_rdma_destroy_ah_attr, !47, !"__ksymtab_rdma_destroy_ah_attr", i1 false, i1 false}
!47 = !{!"../drivers/infiniband/core/verbs.c", i32 921, i32 1}
!48 = !{ptr @__ksymtab_ib_create_ah_from_wc, !49, !"__ksymtab_ib_create_ah_from_wc", i1 false, i1 false}
!49 = !{!"../drivers/infiniband/core/verbs.c", i32 939, i32 1}
!50 = !{ptr @__ksymtab_rdma_modify_ah, !51, !"__ksymtab_rdma_modify_ah", i1 false, i1 false}
!51 = !{!"../drivers/infiniband/core/verbs.c", i32 961, i32 1}
!52 = !{ptr @__ksymtab_rdma_query_ah, !53, !"__ksymtab_rdma_query_ah", i1 false, i1 false}
!53 = !{!"../drivers/infiniband/core/verbs.c", i32 971, i32 1}
!54 = !{ptr @__ksymtab_rdma_destroy_ah_user, !55, !"__ksymtab_rdma_destroy_ah_user", i1 false, i1 false}
!55 = !{!"../drivers/infiniband/core/verbs.c", i32 994, i32 1}
!56 = !{ptr @__ksymtab_ib_create_srq_user, !57, !"__ksymtab_ib_create_srq_user", i1 false, i1 false}
!57 = !{!"../drivers/infiniband/core/verbs.c", i32 1062, i32 1}
!58 = !{ptr @__ksymtab_ib_modify_srq, !59, !"__ksymtab_ib_modify_srq", i1 false, i1 false}
!59 = !{!"../drivers/infiniband/core/verbs.c", i32 1072, i32 1}
!60 = !{ptr @__ksymtab_ib_query_srq, !61, !"__ksymtab_ib_query_srq", i1 false, i1 false}
!61 = !{!"../drivers/infiniband/core/verbs.c", i32 1080, i32 1}
!62 = !{ptr @__ksymtab_ib_destroy_srq_user, !63, !"__ksymtab_ib_destroy_srq_user", i1 false, i1 false}
!63 = !{!"../drivers/infiniband/core/verbs.c", i32 1103, i32 1}
!64 = !{ptr @__ksymtab_ib_open_qp, !65, !"__ksymtab_ib_open_qp", i1 false, i1 false}
!65 = !{!"../drivers/infiniband/core/verbs.c", i32 1172, i32 1}
!66 = !{ptr @__ksymtab_ib_create_qp_user, !67, !"__ksymtab_ib_create_qp_user", i1 false, i1 false}
!67 = !{!"../drivers/infiniband/core/verbs.c", i32 1303, i32 1}
!68 = !{ptr @__ksymtab_ib_qp_usecnt_inc, !69, !"__ksymtab_ib_qp_usecnt_inc", i1 false, i1 false}
!69 = !{!"../drivers/infiniband/core/verbs.c", i32 1318, i32 1}
!70 = !{ptr @__ksymtab_ib_qp_usecnt_dec, !71, !"__ksymtab_ib_qp_usecnt_dec", i1 false, i1 false}
!71 = !{!"../drivers/infiniband/core/verbs.c", i32 1333, i32 1}
!72 = !{ptr @__ksymtab_ib_create_qp_kernel, !73, !"__ksymtab_ib_create_qp_kernel", i1 false, i1 false}
!73 = !{!"../drivers/infiniband/core/verbs.c", i32 1382, i32 1}
!74 = !{ptr @__ksymtab_ib_modify_qp_is_ok, !75, !"__ksymtab_ib_modify_qp_is_ok", i1 false, i1 false}
!75 = !{!"../drivers/infiniband/core/verbs.c", i32 1715, i32 1}
!76 = !{ptr @__ksymtab_ib_modify_qp_with_udata, !77, !"__ksymtab_ib_modify_qp_with_udata", i1 false, i1 false}
!77 = !{!"../drivers/infiniband/core/verbs.c", i32 1887, i32 1}
!78 = !{ptr @.str.5, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/infiniband/core/verbs.c", i32 1913, i32 3}
!80 = !{ptr @.str.6, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @ib_get_eth_speed._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @ib_get_eth_speed._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @__ksymtab_ib_get_eth_speed, !84, !"__ksymtab_ib_get_eth_speed", i1 false, i1 false}
!84 = !{!"../drivers/infiniband/core/verbs.c", i32 1939, i32 1}
!85 = !{ptr @__ksymtab_ib_modify_qp, !86, !"__ksymtab_ib_modify_qp", i1 false, i1 false}
!86 = !{!"../drivers/infiniband/core/verbs.c", i32 1947, i32 1}
!87 = !{ptr @__ksymtab_ib_query_qp, !88, !"__ksymtab_ib_query_qp", i1 false, i1 false}
!88 = !{!"../drivers/infiniband/core/verbs.c", i32 1961, i32 1}
!89 = !{ptr @__ksymtab_ib_close_qp, !90, !"__ksymtab_ib_close_qp", i1 false, i1 false}
!90 = !{!"../drivers/infiniband/core/verbs.c", i32 1983, i32 1}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../drivers/infiniband/core/verbs.c", i32 2017, i32 2}
!93 = !{ptr @__ksymtab_ib_destroy_qp_user, !94, !"__ksymtab_ib_destroy_qp_user", i1 false, i1 false}
!94 = !{!"../drivers/infiniband/core/verbs.c", i32 2053, i32 1}
!95 = !{ptr @__ksymtab___ib_create_cq, !96, !"__ksymtab___ib_create_cq", i1 false, i1 false}
!96 = !{!"../drivers/infiniband/core/verbs.c", i32 2091, i32 1}
!97 = !{ptr @__ksymtab_rdma_set_cq_moderation, !98, !"__ksymtab_rdma_set_cq_moderation", i1 false, i1 false}
!98 = !{!"../drivers/infiniband/core/verbs.c", i32 2102, i32 1}
!99 = distinct !{null, !100, !"__already_done", i1 false, i1 false}
!100 = !{!"../drivers/infiniband/core/verbs.c", i32 2108, i32 6}
!101 = !{ptr @__ksymtab_ib_destroy_cq_user, !102, !"__ksymtab_ib_destroy_cq_user", i1 false, i1 false}
!102 = !{!"../drivers/infiniband/core/verbs.c", i32 2122, i32 1}
!103 = !{ptr @__ksymtab_ib_resize_cq, !104, !"__ksymtab_ib_resize_cq", i1 false, i1 false}
!104 = !{!"../drivers/infiniband/core/verbs.c", i32 2132, i32 1}
!105 = !{ptr @.str.7, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/infiniband/core/verbs.c", i32 2144, i32 4}
!107 = !{ptr @.str.8, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.9, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @ib_reg_user_mr.__UNIQUE_ID_ddebug573, !106, !"__UNIQUE_ID_ddebug573", i1 false, i1 false}
!110 = !{ptr @__ksymtab_ib_reg_user_mr, !111, !"__ksymtab_ib_reg_user_mr", i1 false, i1 false}
!111 = !{!"../drivers/infiniband/core/verbs.c", i32 2166, i32 1}
!112 = !{ptr @__ksymtab_ib_advise_mr, !113, !"__ksymtab_ib_advise_mr", i1 false, i1 false}
!113 = !{!"../drivers/infiniband/core/verbs.c", i32 2180, i32 1}
!114 = !{ptr @__ksymtab_ib_dereg_mr_user, !115, !"__ksymtab_ib_dereg_mr_user", i1 false, i1 false}
!115 = !{!"../drivers/infiniband/core/verbs.c", i32 2201, i32 1}
!116 = distinct !{null, !117, !"__already_done", i1 false, i1 false}
!117 = !{!"../drivers/infiniband/core/verbs.c", i32 2226, i32 3}
!118 = !{ptr @__ksymtab_ib_alloc_mr, !119, !"__ksymtab_ib_alloc_mr", i1 false, i1 false}
!119 = !{!"../drivers/infiniband/core/verbs.c", i32 2251, i32 1}
!120 = !{ptr @__ksymtab_ib_alloc_mr_integrity, !121, !"__ksymtab_ib_alloc_mr_integrity", i1 false, i1 false}
!121 = !{!"../drivers/infiniband/core/verbs.c", i32 2312, i32 1}
!122 = !{ptr @__ksymtab_ib_attach_mcast, !123, !"__ksymtab_ib_attach_mcast", i1 false, i1 false}
!123 = !{!"../drivers/infiniband/core/verbs.c", i32 2370, i32 1}
!124 = !{ptr @__ksymtab_ib_detach_mcast, !125, !"__ksymtab_ib_detach_mcast", i1 false, i1 false}
!125 = !{!"../drivers/infiniband/core/verbs.c", i32 2388, i32 1}
!126 = !{ptr @ib_alloc_xrcd_user.__key, !127, !"__key", i1 false, i1 false}
!127 = !{!"../drivers/infiniband/core/verbs.c", i32 2412, i32 2}
!128 = !{ptr @.str.10, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @__ksymtab_ib_alloc_xrcd_user, !130, !"__ksymtab_ib_alloc_xrcd_user", i1 false, i1 false}
!130 = !{!"../drivers/infiniband/core/verbs.c", i32 2423, i32 1}
!131 = !{ptr @__ksymtab_ib_dealloc_xrcd_user, !132, !"__ksymtab_ib_dealloc_xrcd_user", i1 false, i1 false}
!132 = !{!"../drivers/infiniband/core/verbs.c", i32 2444, i32 1}
!133 = !{ptr @__ksymtab_ib_create_wq, !134, !"__ksymtab_ib_create_wq", i1 false, i1 false}
!134 = !{!"../drivers/infiniband/core/verbs.c", i32 2483, i32 1}
!135 = !{ptr @__ksymtab_ib_destroy_wq_user, !136, !"__ksymtab_ib_destroy_wq_user", i1 false, i1 false}
!136 = !{!"../drivers/infiniband/core/verbs.c", i32 2507, i32 1}
!137 = !{ptr @__ksymtab_ib_check_mr_status, !138, !"__ksymtab_ib_check_mr_status", i1 false, i1 false}
!138 = !{!"../drivers/infiniband/core/verbs.c", i32 2517, i32 1}
!139 = !{ptr @__ksymtab_ib_set_vf_link_state, !140, !"__ksymtab_ib_set_vf_link_state", i1 false, i1 false}
!140 = !{!"../drivers/infiniband/core/verbs.c", i32 2527, i32 1}
!141 = !{ptr @__ksymtab_ib_get_vf_config, !142, !"__ksymtab_ib_get_vf_config", i1 false, i1 false}
!142 = !{!"../drivers/infiniband/core/verbs.c", i32 2537, i32 1}
!143 = !{ptr @__ksymtab_ib_get_vf_stats, !144, !"__ksymtab_ib_get_vf_stats", i1 false, i1 false}
!144 = !{!"../drivers/infiniband/core/verbs.c", i32 2547, i32 1}
!145 = !{ptr @__ksymtab_ib_set_vf_guid, !146, !"__ksymtab_ib_set_vf_guid", i1 false, i1 false}
!146 = !{!"../drivers/infiniband/core/verbs.c", i32 2557, i32 1}
!147 = !{ptr @__ksymtab_ib_get_vf_guid, !148, !"__ksymtab_ib_get_vf_guid", i1 false, i1 false}
!148 = !{!"../drivers/infiniband/core/verbs.c", i32 2568, i32 1}
!149 = distinct !{null, !150, !"__already_done", i1 false, i1 false}
!150 = !{!"../drivers/infiniband/core/verbs.c", i32 2594, i32 6}
!151 = !{ptr @__ksymtab_ib_map_mr_sg_pi, !152, !"__ksymtab_ib_map_mr_sg_pi", i1 false, i1 false}
!152 = !{!"../drivers/infiniband/core/verbs.c", i32 2604, i32 1}
!153 = !{ptr @__ksymtab_ib_map_mr_sg, !154, !"__ksymtab_ib_map_mr_sg", i1 false, i1 false}
!154 = !{!"../drivers/infiniband/core/verbs.c", i32 2642, i32 1}
!155 = !{ptr @__ksymtab_ib_sg_to_pages, !156, !"__ksymtab_ib_sg_to_pages", i1 false, i1 false}
!156 = !{!"../drivers/infiniband/core/verbs.c", i32 2732, i32 1}
!157 = !{ptr @__ksymtab_ib_drain_sq, !158, !"__ksymtab_ib_drain_sq", i1 false, i1 false}
!158 = !{!"../drivers/infiniband/core/verbs.c", i32 2847, i32 1}
!159 = !{ptr @__ksymtab_ib_drain_rq, !160, !"__ksymtab_ib_drain_rq", i1 false, i1 false}
!160 = !{!"../drivers/infiniband/core/verbs.c", i32 2876, i32 1}
!161 = !{ptr @__ksymtab_ib_drain_qp, !162, !"__ksymtab_ib_drain_qp", i1 false, i1 false}
!162 = !{!"../drivers/infiniband/core/verbs.c", i32 2899, i32 1}
!163 = !{ptr @__ksymtab_rdma_alloc_netdev, !164, !"__ksymtab_rdma_alloc_netdev", i1 false, i1 false}
!164 = !{!"../drivers/infiniband/core/verbs.c", i32 2925, i32 1}
!165 = !{ptr @__ksymtab_rdma_init_netdev, !166, !"__ksymtab_rdma_init_netdev", i1 false, i1 false}
!166 = !{!"../drivers/infiniband/core/verbs.c", i32 2947, i32 1}
!167 = !{ptr @__ksymtab___rdma_block_iter_start, !168, !"__ksymtab___rdma_block_iter_start", i1 false, i1 false}
!168 = !{!"../drivers/infiniband/core/verbs.c", i32 2960, i32 1}
!169 = !{ptr @__ksymtab___rdma_block_iter_next, !170, !"__ksymtab___rdma_block_iter_next", i1 false, i1 false}
!170 = !{!"../drivers/infiniband/core/verbs.c", i32 2981, i32 1}
!171 = !{ptr @rdma_alloc_hw_stats_struct.__key, !172, !"__key", i1 false, i1 false}
!172 = !{!"../drivers/infiniband/core/verbs.c", i32 3008, i32 2}
!173 = !{ptr @.str.11, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @__ksymtab_rdma_alloc_hw_stats_struct, !175, !"__ksymtab_rdma_alloc_hw_stats_struct", i1 false, i1 false}
!175 = !{!"../drivers/infiniband/core/verbs.c", i32 3016, i32 1}
!176 = !{ptr @__ksymtab_rdma_free_hw_stats_struct, !177, !"__ksymtab_rdma_free_hw_stats_struct", i1 false, i1 false}
!177 = !{!"../drivers/infiniband/core/verbs.c", i32 3030, i32 1}
!178 = !{ptr @.str.12, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/infiniband/core/verbs.c", i32 62, i32 23}
!180 = !{ptr @.str.13, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/infiniband/core/verbs.c", i32 63, i32 25}
!182 = !{ptr @.str.14, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/infiniband/core/verbs.c", i32 64, i32 27}
!184 = !{ptr @.str.15, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/infiniband/core/verbs.c", i32 65, i32 29}
!186 = !{ptr @.str.16, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/infiniband/core/verbs.c", i32 66, i32 25}
!188 = !{ptr @.str.17, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/infiniband/core/verbs.c", i32 67, i32 27}
!190 = !{ptr @.str.18, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/infiniband/core/verbs.c", i32 68, i32 25}
!192 = !{ptr @.str.19, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/infiniband/core/verbs.c", i32 69, i32 29}
!194 = !{ptr @.str.20, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/infiniband/core/verbs.c", i32 70, i32 29}
!196 = !{ptr @.str.21, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/infiniband/core/verbs.c", i32 71, i32 28}
!198 = !{ptr @.str.22, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/infiniband/core/verbs.c", i32 72, i32 25}
!200 = !{ptr @.str.23, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/infiniband/core/verbs.c", i32 73, i32 27}
!202 = !{ptr @.str.24, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/infiniband/core/verbs.c", i32 74, i32 28}
!204 = !{ptr @.str.25, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/infiniband/core/verbs.c", i32 75, i32 26}
!206 = !{ptr @.str.26, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/infiniband/core/verbs.c", i32 76, i32 24}
!208 = !{ptr @.str.27, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/infiniband/core/verbs.c", i32 77, i32 33}
!210 = !{ptr @.str.28, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/infiniband/core/verbs.c", i32 78, i32 35}
!212 = !{ptr @.str.29, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/infiniband/core/verbs.c", i32 79, i32 33}
!214 = !{ptr @.str.30, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/infiniband/core/verbs.c", i32 80, i32 27}
!216 = !{ptr @ib_events, !217, !"ib_events", i1 false, i1 false}
!217 = !{!"../drivers/infiniband/core/verbs.c", i32 61, i32 27}
!218 = !{ptr @.str.31, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/infiniband/core/verbs.c", i32 93, i32 22}
!220 = !{ptr @.str.32, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/infiniband/core/verbs.c", i32 94, i32 25}
!222 = !{ptr @.str.33, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/infiniband/core/verbs.c", i32 95, i32 27}
!224 = !{ptr @.str.34, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/infiniband/core/verbs.c", i32 96, i32 28}
!226 = !{ptr @.str.35, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/infiniband/core/verbs.c", i32 97, i32 26}
!228 = !{ptr @.str.36, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/infiniband/core/verbs.c", i32 98, i32 26}
!230 = !{ptr @.str.37, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/infiniband/core/verbs.c", i32 99, i32 25}
!232 = !{ptr @.str.38, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/infiniband/core/verbs.c", i32 100, i32 26}
!234 = !{ptr @.str.39, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/infiniband/core/verbs.c", i32 101, i32 28}
!236 = !{ptr @.str.40, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/infiniband/core/verbs.c", i32 102, i32 29}
!238 = !{ptr @.str.41, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/infiniband/core/verbs.c", i32 103, i32 28}
!240 = !{ptr @.str.42, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/infiniband/core/verbs.c", i32 104, i32 24}
!242 = !{ptr @.str.43, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/infiniband/core/verbs.c", i32 105, i32 27}
!244 = !{ptr @.str.44, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/infiniband/core/verbs.c", i32 106, i32 30}
!246 = !{ptr @.str.45, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/infiniband/core/verbs.c", i32 107, i32 29}
!248 = !{ptr @.str.46, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/infiniband/core/verbs.c", i32 108, i32 31}
!250 = !{ptr @.str.47, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/infiniband/core/verbs.c", i32 109, i32 27}
!252 = !{ptr @.str.48, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/infiniband/core/verbs.c", i32 110, i32 26}
!254 = !{ptr @.str.49, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/infiniband/core/verbs.c", i32 111, i32 30}
!256 = !{ptr @.str.50, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/infiniband/core/verbs.c", i32 112, i32 23}
!258 = !{ptr @.str.51, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/infiniband/core/verbs.c", i32 113, i32 29}
!260 = !{ptr @.str.52, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/infiniband/core/verbs.c", i32 114, i32 25}
!262 = !{ptr @wc_statuses, !263, !"wc_statuses", i1 false, i1 false}
!263 = !{!"../drivers/infiniband/core/verbs.c", i32 92, i32 27}
!264 = distinct !{null, !265, !"__already_done", i1 false, i1 false}
!265 = !{!"../include/rdma/ib_verbs.h", i32 3498, i32 2}
!266 = !{ptr @.str.53, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.54, !265, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @create_qp.__key, !269, !"__key", i1 false, i1 false}
!269 = !{!"../drivers/infiniband/core/verbs.c", i32 1231, i32 2}
!270 = !{ptr @.str.55, !269, !"<string literal>", i1 false, i1 false}
!271 = distinct !{null, !272, !"__already_done", i1 false, i1 false}
!272 = !{!"../drivers/infiniband/core/verbs.c", i32 1239, i32 2}
!273 = !{ptr @.str.56, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @qp_state_table, !275, !"qp_state_table", i1 false, i1 false}
!275 = !{!"../drivers/infiniband/core/verbs.c", i32 1388, i32 3}
!276 = !{ptr @.str.57, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/infiniband/core/verbs.c", i32 1825, i32 4}
!278 = !{ptr @.str.58, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @.str.59, !277, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @.str.60, !277, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @_ib_modify_qp._entry, !277, !"_entry", i1 false, i1 false}
!282 = !{ptr @_ib_modify_qp._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.62, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/infiniband/core/verbs.c", i32 1832, i32 4}
!285 = !{ptr @_ib_modify_qp._entry.61, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @_ib_modify_qp._entry_ptr.63, !284, !"_entry_ptr", i1 false, i1 false}
!287 = distinct !{null, !288, !"__already_done", i1 false, i1 false}
!288 = !{!"../include/trace/events/rdma_core.h", i32 374, i32 1}
!289 = !{ptr @.str.64, !288, !"<string literal>", i1 false, i1 false}
!290 = distinct !{null, !288, !"__warned", i1 false, i1 false}
!291 = !{ptr @.str.65, !288, !"<string literal>", i1 false, i1 false}
!292 = distinct !{null, !293, !"__already_done", i1 false, i1 false}
!293 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!294 = !{ptr @.str.66, !293, !"<string literal>", i1 false, i1 false}
!295 = distinct !{null, !296, !"__already_done", i1 false, i1 false}
!296 = !{!"../include/trace/events/rdma_core.h", i32 301, i32 1}
!297 = distinct !{null, !296, !"__warned", i1 false, i1 false}
!298 = distinct !{null, !299, !"__already_done", i1 false, i1 false}
!299 = !{!"../include/trace/events/rdma_core.h", i32 338, i32 1}
!300 = distinct !{null, !299, !"__warned", i1 false, i1 false}
!301 = !{ptr @xa_init_flags.__key, !302, !"__key", i1 false, i1 false}
!302 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!303 = !{ptr @.str.67, !302, !"<string literal>", i1 false, i1 false}
!304 = distinct !{null, !305, !"__already_done", i1 false, i1 false}
!305 = !{!"../drivers/infiniband/core/verbs.c", i32 2766, i32 3}
!306 = !{ptr @.str.68, !305, !"<string literal>", i1 false, i1 false}
!307 = distinct !{null, !308, !"__already_done", i1 false, i1 false}
!308 = !{!"../drivers/infiniband/core/verbs.c", i32 2775, i32 3}
!309 = !{ptr @init_completion.__key, !310, !"__key", i1 false, i1 false}
!310 = !{!"../include/linux/completion.h", i32 87, i32 2}
!311 = !{ptr @.str.70, !310, !"<string literal>", i1 false, i1 false}
!312 = distinct !{null, !313, !"__already_done", i1 false, i1 false}
!313 = !{!"../include/trace/events/rdma_core.h", i32 144, i32 1}
!314 = distinct !{null, !313, !"__warned", i1 false, i1 false}
!315 = distinct !{null, !316, !"__already_done", i1 false, i1 false}
!316 = !{!"../drivers/infiniband/core/verbs.c", i32 2799, i32 3}
!317 = !{ptr @.str.71, !316, !"<string literal>", i1 false, i1 false}
!318 = distinct !{null, !319, !"__already_done", i1 false, i1 false}
!319 = !{!"../drivers/infiniband/core/verbs.c", i32 2809, i32 3}
!320 = !{!"sp"}
!321 = !{i32 1, !"wchar_size", i32 2}
!322 = !{i32 1, !"min_enum_size", i32 4}
!323 = !{i32 8, !"branch-target-enforcement", i32 0}
!324 = !{i32 8, !"sign-return-address", i32 0}
!325 = !{i32 8, !"sign-return-address-all", i32 0}
!326 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!327 = !{i32 7, !"uwtable", i32 1}
!328 = !{i32 7, !"frame-pointer", i32 2}
!329 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!330 = !{!"branch_weights", i32 2000, i32 1}
!331 = !{!"auto-init"}
!332 = !{i64 2148675803, i64 2148675829, i64 2148675858, i64 2148675892, i64 2148675923, i64 2148675946}
!333 = !{i64 6610310, i64 6610349, i64 6610375, i64 6610399, i64 6610424, i64 6610450, i64 6610475, i64 6610501, i64 6610528, i64 6610554, i64 6610593, i64 6610637, i64 6610668, i64 6610693}
!334 = !{i64 6609927}
!335 = !{i64 2148678268, i64 2148678294, i64 2148678323, i64 2148678357, i64 2148678388, i64 2148678411}
!336 = !{i64 1080483, i64 1080544}
!337 = !{i64 1083215}
!338 = !{!"branch_weights", i32 1, i32 2000}
!339 = !{i64 1083500}
!340 = !{i64 2148307013, i64 2148307018, i64 2148307031, i64 2148307075, i64 2148307109, i64 2148307130}
!341 = !{i64 2158786212}
!342 = !{i64 2158786395}
!343 = !{i64 2150005884}
!344 = !{i64 2150006920}
!345 = !{i64 2158748687}
!346 = !{i64 2158748920}
!347 = !{i64 2158770054}
!348 = !{i64 2158770325}
!349 = !{i64 2158661394}
!350 = !{i64 2158661595}
!351 = !{i32 0, i32 33}
