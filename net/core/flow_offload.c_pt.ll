; ModuleID = '/llk/IR_all_yes/net/core/flow_offload.c_pt.bc'
source_filename = "../net/core/flow_offload.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+flow_rule_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_rule_alloc\09\09\09\09"
module asm "\09.long\09__crc_flow_rule_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_rule_match_meta\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_rule_match_meta\09\09\09\09"
module asm "\09.long\09__crc_flow_rule_match_meta\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_meta:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_meta\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_meta:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_rule_match_basic\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_rule_match_basic\09\09\09\09"
module asm "\09.long\09__crc_flow_rule_match_basic\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_basic:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_basic\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_basic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_rule_match_control\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_rule_match_control\09\09\09\09"
module asm "\09.long\09__crc_flow_rule_match_control\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_control:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_control\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_control:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_rule_match_eth_addrs\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_rule_match_eth_addrs\09\09\09\09"
module asm "\09.long\09__crc_flow_rule_match_eth_addrs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_eth_addrs:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_eth_addrs\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_eth_addrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_rule_match_vlan\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_rule_match_vlan\09\09\09\09"
module asm "\09.long\09__crc_flow_rule_match_vlan\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_vlan:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_vlan\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_vlan:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_rule_match_cvlan\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_rule_match_cvlan\09\09\09\09"
module asm "\09.long\09__crc_flow_rule_match_cvlan\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_cvlan:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_cvlan\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_cvlan:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_rule_match_ipv4_addrs\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_rule_match_ipv4_addrs\09\09\09\09"
module asm "\09.long\09__crc_flow_rule_match_ipv4_addrs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_ipv4_addrs:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_ipv4_addrs\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_ipv4_addrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_rule_match_ipv6_addrs\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_rule_match_ipv6_addrs\09\09\09\09"
module asm "\09.long\09__crc_flow_rule_match_ipv6_addrs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_ipv6_addrs:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_ipv6_addrs\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_ipv6_addrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_rule_match_ip\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_rule_match_ip\09\09\09\09"
module asm "\09.long\09__crc_flow_rule_match_ip\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_ip:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_ip\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_ip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_rule_match_ports\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_rule_match_ports\09\09\09\09"
module asm "\09.long\09__crc_flow_rule_match_ports\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_ports\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_rule_match_tcp\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_rule_match_tcp\09\09\09\09"
module asm "\09.long\09__crc_flow_rule_match_tcp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_tcp:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_tcp\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_tcp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_rule_match_icmp\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_rule_match_icmp\09\09\09\09"
module asm "\09.long\09__crc_flow_rule_match_icmp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_icmp:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_icmp\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_icmp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_rule_match_mpls\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_rule_match_mpls\09\09\09\09"
module asm "\09.long\09__crc_flow_rule_match_mpls\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_mpls:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_mpls\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_mpls:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_rule_match_enc_control\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_rule_match_enc_control\09\09\09\09"
module asm "\09.long\09__crc_flow_rule_match_enc_control\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_enc_control:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_enc_control\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_enc_control:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_rule_match_enc_ipv4_addrs\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_rule_match_enc_ipv4_addrs\09\09\09\09"
module asm "\09.long\09__crc_flow_rule_match_enc_ipv4_addrs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_enc_ipv4_addrs:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_enc_ipv4_addrs\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_enc_ipv4_addrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_rule_match_enc_ipv6_addrs\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_rule_match_enc_ipv6_addrs\09\09\09\09"
module asm "\09.long\09__crc_flow_rule_match_enc_ipv6_addrs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_enc_ipv6_addrs:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_enc_ipv6_addrs\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_enc_ipv6_addrs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_rule_match_enc_ip\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_rule_match_enc_ip\09\09\09\09"
module asm "\09.long\09__crc_flow_rule_match_enc_ip\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_enc_ip:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_enc_ip\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_enc_ip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_rule_match_enc_ports\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_rule_match_enc_ports\09\09\09\09"
module asm "\09.long\09__crc_flow_rule_match_enc_ports\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_enc_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_enc_ports\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_enc_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_rule_match_enc_keyid\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_rule_match_enc_keyid\09\09\09\09"
module asm "\09.long\09__crc_flow_rule_match_enc_keyid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_enc_keyid:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_enc_keyid\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_enc_keyid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_rule_match_enc_opts\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_rule_match_enc_opts\09\09\09\09"
module asm "\09.long\09__crc_flow_rule_match_enc_opts\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_enc_opts:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_enc_opts\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_enc_opts:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_action_cookie_create\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_action_cookie_create\09\09\09\09"
module asm "\09.long\09__crc_flow_action_cookie_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_action_cookie_create:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_action_cookie_create\22\09\09\09\09\09"
module asm "__kstrtabns_flow_action_cookie_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_action_cookie_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_action_cookie_destroy\09\09\09\09"
module asm "\09.long\09__crc_flow_action_cookie_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_action_cookie_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_action_cookie_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_flow_action_cookie_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_rule_match_ct\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_rule_match_ct\09\09\09\09"
module asm "\09.long\09__crc_flow_rule_match_ct\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_rule_match_ct:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_rule_match_ct\22\09\09\09\09\09"
module asm "__kstrtabns_flow_rule_match_ct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_block_cb_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_block_cb_alloc\09\09\09\09"
module asm "\09.long\09__crc_flow_block_cb_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_block_cb_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_block_cb_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_flow_block_cb_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_block_cb_free\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_block_cb_free\09\09\09\09"
module asm "\09.long\09__crc_flow_block_cb_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_block_cb_free:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_block_cb_free\22\09\09\09\09\09"
module asm "__kstrtabns_flow_block_cb_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_block_cb_lookup\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_block_cb_lookup\09\09\09\09"
module asm "\09.long\09__crc_flow_block_cb_lookup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_block_cb_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_block_cb_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_flow_block_cb_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_block_cb_priv\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_block_cb_priv\09\09\09\09"
module asm "\09.long\09__crc_flow_block_cb_priv\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_block_cb_priv:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_block_cb_priv\22\09\09\09\09\09"
module asm "__kstrtabns_flow_block_cb_priv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_block_cb_incref\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_block_cb_incref\09\09\09\09"
module asm "\09.long\09__crc_flow_block_cb_incref\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_block_cb_incref:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_block_cb_incref\22\09\09\09\09\09"
module asm "__kstrtabns_flow_block_cb_incref:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_block_cb_decref\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_block_cb_decref\09\09\09\09"
module asm "\09.long\09__crc_flow_block_cb_decref\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_block_cb_decref:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_block_cb_decref\22\09\09\09\09\09"
module asm "__kstrtabns_flow_block_cb_decref:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_block_cb_is_busy\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_block_cb_is_busy\09\09\09\09"
module asm "\09.long\09__crc_flow_block_cb_is_busy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_block_cb_is_busy:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_block_cb_is_busy\22\09\09\09\09\09"
module asm "__kstrtabns_flow_block_cb_is_busy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_block_cb_setup_simple\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_block_cb_setup_simple\09\09\09\09"
module asm "\09.long\09__crc_flow_block_cb_setup_simple\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_block_cb_setup_simple:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_block_cb_setup_simple\22\09\09\09\09\09"
module asm "__kstrtabns_flow_block_cb_setup_simple:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_indr_dev_register\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_indr_dev_register\09\09\09\09"
module asm "\09.long\09__crc_flow_indr_dev_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_indr_dev_register:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_indr_dev_register\22\09\09\09\09\09"
module asm "__kstrtabns_flow_indr_dev_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_indr_dev_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_indr_dev_unregister\09\09\09\09"
module asm "\09.long\09__crc_flow_indr_dev_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_indr_dev_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_indr_dev_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_flow_indr_dev_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_indr_block_cb_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_indr_block_cb_alloc\09\09\09\09"
module asm "\09.long\09__crc_flow_indr_block_cb_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_indr_block_cb_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_indr_block_cb_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_flow_indr_block_cb_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_indr_dev_setup_offload\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_indr_dev_setup_offload\09\09\09\09"
module asm "\09.long\09__crc_flow_indr_dev_setup_offload\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_indr_dev_setup_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_indr_dev_setup_offload\22\09\09\09\09\09"
module asm "__kstrtabns_flow_indr_dev_setup_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.27 }
%union.anon.27 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon, ptr }
%union.anon = type { %struct.anon.127 }
%struct.anon.127 = type { i32, i64, i64, i64, i32 }
%struct.flow_offload_action = type { ptr, i32, i32, i32, %struct.flow_stats, %struct.flow_action }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_dissector = type { i32, [28 x i16] }
%struct.flow_match_meta = type { ptr, ptr }
%struct.flow_match_basic = type { ptr, ptr }
%struct.flow_match_control = type { ptr, ptr }
%struct.flow_match_eth_addrs = type { ptr, ptr }
%struct.flow_match_vlan = type { ptr, ptr }
%struct.flow_match_ipv4_addrs = type { ptr, ptr }
%struct.flow_match_ipv6_addrs = type { ptr, ptr }
%struct.flow_match_ip = type { ptr, ptr }
%struct.flow_match_ports = type { ptr, ptr }
%struct.flow_match_tcp = type { ptr, ptr }
%struct.flow_match_icmp = type { ptr, ptr }
%struct.flow_match_mpls = type { ptr, ptr }
%struct.flow_match_enc_keyid = type { ptr, ptr }
%struct.flow_match_enc_opts = type { ptr, ptr }
%struct.flow_action_cookie = type { i32, [0 x i8] }
%struct.flow_match_ct = type { ptr, ptr }
%struct.flow_block_cb = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.flow_block_indr, i32 }
%struct.flow_block_indr = type { %struct.list_head, ptr, ptr, i32, ptr, ptr, ptr }
%struct.flow_block_offload = type { i32, i32, i8, i8, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.flow_indr_dev = type { %struct.list_head, ptr, ptr, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.flow_indir_dev_info = type { ptr, ptr, ptr, i32, ptr, %struct.list_head, i32, i32, ptr }

@__kstrtab_flow_rule_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_alloc to i32), ptr @__kstrtab_flow_rule_alloc, ptr @__kstrtabns_flow_rule_alloc }, section "___ksymtab+flow_rule_alloc", align 4
@__kstrtab_flow_rule_match_meta = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_meta = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_meta = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_meta to i32), ptr @__kstrtab_flow_rule_match_meta, ptr @__kstrtabns_flow_rule_match_meta }, section "___ksymtab+flow_rule_match_meta", align 4
@__kstrtab_flow_rule_match_basic = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_basic = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_basic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_basic to i32), ptr @__kstrtab_flow_rule_match_basic, ptr @__kstrtabns_flow_rule_match_basic }, section "___ksymtab+flow_rule_match_basic", align 4
@__kstrtab_flow_rule_match_control = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_control = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_control = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_control to i32), ptr @__kstrtab_flow_rule_match_control, ptr @__kstrtabns_flow_rule_match_control }, section "___ksymtab+flow_rule_match_control", align 4
@__kstrtab_flow_rule_match_eth_addrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_eth_addrs = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_eth_addrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_eth_addrs to i32), ptr @__kstrtab_flow_rule_match_eth_addrs, ptr @__kstrtabns_flow_rule_match_eth_addrs }, section "___ksymtab+flow_rule_match_eth_addrs", align 4
@__kstrtab_flow_rule_match_vlan = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_vlan = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_vlan = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_vlan to i32), ptr @__kstrtab_flow_rule_match_vlan, ptr @__kstrtabns_flow_rule_match_vlan }, section "___ksymtab+flow_rule_match_vlan", align 4
@__kstrtab_flow_rule_match_cvlan = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_cvlan = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_cvlan = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_cvlan to i32), ptr @__kstrtab_flow_rule_match_cvlan, ptr @__kstrtabns_flow_rule_match_cvlan }, section "___ksymtab+flow_rule_match_cvlan", align 4
@__kstrtab_flow_rule_match_ipv4_addrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_ipv4_addrs = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_ipv4_addrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_ipv4_addrs to i32), ptr @__kstrtab_flow_rule_match_ipv4_addrs, ptr @__kstrtabns_flow_rule_match_ipv4_addrs }, section "___ksymtab+flow_rule_match_ipv4_addrs", align 4
@__kstrtab_flow_rule_match_ipv6_addrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_ipv6_addrs = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_ipv6_addrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_ipv6_addrs to i32), ptr @__kstrtab_flow_rule_match_ipv6_addrs, ptr @__kstrtabns_flow_rule_match_ipv6_addrs }, section "___ksymtab+flow_rule_match_ipv6_addrs", align 4
@__kstrtab_flow_rule_match_ip = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_ip = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_ip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_ip to i32), ptr @__kstrtab_flow_rule_match_ip, ptr @__kstrtabns_flow_rule_match_ip }, section "___ksymtab+flow_rule_match_ip", align 4
@__kstrtab_flow_rule_match_ports = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_ports = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_ports = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_ports to i32), ptr @__kstrtab_flow_rule_match_ports, ptr @__kstrtabns_flow_rule_match_ports }, section "___ksymtab+flow_rule_match_ports", align 4
@__kstrtab_flow_rule_match_tcp = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_tcp = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_tcp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_tcp to i32), ptr @__kstrtab_flow_rule_match_tcp, ptr @__kstrtabns_flow_rule_match_tcp }, section "___ksymtab+flow_rule_match_tcp", align 4
@__kstrtab_flow_rule_match_icmp = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_icmp = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_icmp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_icmp to i32), ptr @__kstrtab_flow_rule_match_icmp, ptr @__kstrtabns_flow_rule_match_icmp }, section "___ksymtab+flow_rule_match_icmp", align 4
@__kstrtab_flow_rule_match_mpls = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_mpls = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_mpls = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_mpls to i32), ptr @__kstrtab_flow_rule_match_mpls, ptr @__kstrtabns_flow_rule_match_mpls }, section "___ksymtab+flow_rule_match_mpls", align 4
@__kstrtab_flow_rule_match_enc_control = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_enc_control = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_enc_control = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_enc_control to i32), ptr @__kstrtab_flow_rule_match_enc_control, ptr @__kstrtabns_flow_rule_match_enc_control }, section "___ksymtab+flow_rule_match_enc_control", align 4
@__kstrtab_flow_rule_match_enc_ipv4_addrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_enc_ipv4_addrs = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_enc_ipv4_addrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_enc_ipv4_addrs to i32), ptr @__kstrtab_flow_rule_match_enc_ipv4_addrs, ptr @__kstrtabns_flow_rule_match_enc_ipv4_addrs }, section "___ksymtab+flow_rule_match_enc_ipv4_addrs", align 4
@__kstrtab_flow_rule_match_enc_ipv6_addrs = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_enc_ipv6_addrs = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_enc_ipv6_addrs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_enc_ipv6_addrs to i32), ptr @__kstrtab_flow_rule_match_enc_ipv6_addrs, ptr @__kstrtabns_flow_rule_match_enc_ipv6_addrs }, section "___ksymtab+flow_rule_match_enc_ipv6_addrs", align 4
@__kstrtab_flow_rule_match_enc_ip = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_enc_ip = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_enc_ip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_enc_ip to i32), ptr @__kstrtab_flow_rule_match_enc_ip, ptr @__kstrtabns_flow_rule_match_enc_ip }, section "___ksymtab+flow_rule_match_enc_ip", align 4
@__kstrtab_flow_rule_match_enc_ports = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_enc_ports = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_enc_ports = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_enc_ports to i32), ptr @__kstrtab_flow_rule_match_enc_ports, ptr @__kstrtabns_flow_rule_match_enc_ports }, section "___ksymtab+flow_rule_match_enc_ports", align 4
@__kstrtab_flow_rule_match_enc_keyid = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_enc_keyid = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_enc_keyid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_enc_keyid to i32), ptr @__kstrtab_flow_rule_match_enc_keyid, ptr @__kstrtabns_flow_rule_match_enc_keyid }, section "___ksymtab+flow_rule_match_enc_keyid", align 4
@__kstrtab_flow_rule_match_enc_opts = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_enc_opts = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_enc_opts = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_enc_opts to i32), ptr @__kstrtab_flow_rule_match_enc_opts, ptr @__kstrtabns_flow_rule_match_enc_opts }, section "___ksymtab+flow_rule_match_enc_opts", align 4
@__kstrtab_flow_action_cookie_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_action_cookie_create = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_action_cookie_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_action_cookie_create to i32), ptr @__kstrtab_flow_action_cookie_create, ptr @__kstrtabns_flow_action_cookie_create }, section "___ksymtab+flow_action_cookie_create", align 4
@__kstrtab_flow_action_cookie_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_action_cookie_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_action_cookie_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_action_cookie_destroy to i32), ptr @__kstrtab_flow_action_cookie_destroy, ptr @__kstrtabns_flow_action_cookie_destroy }, section "___ksymtab+flow_action_cookie_destroy", align 4
@__kstrtab_flow_rule_match_ct = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_rule_match_ct = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_rule_match_ct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_rule_match_ct to i32), ptr @__kstrtab_flow_rule_match_ct, ptr @__kstrtabns_flow_rule_match_ct }, section "___ksymtab+flow_rule_match_ct", align 4
@__kstrtab_flow_block_cb_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_block_cb_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_block_cb_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_block_cb_alloc to i32), ptr @__kstrtab_flow_block_cb_alloc, ptr @__kstrtabns_flow_block_cb_alloc }, section "___ksymtab+flow_block_cb_alloc", align 4
@__kstrtab_flow_block_cb_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_block_cb_free = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_block_cb_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_block_cb_free to i32), ptr @__kstrtab_flow_block_cb_free, ptr @__kstrtabns_flow_block_cb_free }, section "___ksymtab+flow_block_cb_free", align 4
@__kstrtab_flow_block_cb_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_block_cb_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_block_cb_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_block_cb_lookup to i32), ptr @__kstrtab_flow_block_cb_lookup, ptr @__kstrtabns_flow_block_cb_lookup }, section "___ksymtab+flow_block_cb_lookup", align 4
@__kstrtab_flow_block_cb_priv = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_block_cb_priv = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_block_cb_priv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_block_cb_priv to i32), ptr @__kstrtab_flow_block_cb_priv, ptr @__kstrtabns_flow_block_cb_priv }, section "___ksymtab+flow_block_cb_priv", align 4
@__kstrtab_flow_block_cb_incref = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_block_cb_incref = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_block_cb_incref = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_block_cb_incref to i32), ptr @__kstrtab_flow_block_cb_incref, ptr @__kstrtabns_flow_block_cb_incref }, section "___ksymtab+flow_block_cb_incref", align 4
@__kstrtab_flow_block_cb_decref = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_block_cb_decref = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_block_cb_decref = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_block_cb_decref to i32), ptr @__kstrtab_flow_block_cb_decref, ptr @__kstrtabns_flow_block_cb_decref }, section "___ksymtab+flow_block_cb_decref", align 4
@__kstrtab_flow_block_cb_is_busy = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_block_cb_is_busy = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_block_cb_is_busy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_block_cb_is_busy to i32), ptr @__kstrtab_flow_block_cb_is_busy, ptr @__kstrtabns_flow_block_cb_is_busy }, section "___ksymtab+flow_block_cb_is_busy", align 4
@__kstrtab_flow_block_cb_setup_simple = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_block_cb_setup_simple = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_block_cb_setup_simple = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_block_cb_setup_simple to i32), ptr @__kstrtab_flow_block_cb_setup_simple, ptr @__kstrtabns_flow_block_cb_setup_simple }, section "___ksymtab+flow_block_cb_setup_simple", align 4
@flow_indr_block_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @flow_indr_block_lock, i64 52), ptr getelementptr (i8, ptr @flow_indr_block_lock, i64 52) }, ptr @flow_indr_block_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@flow_block_indr_dev_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @flow_block_indr_dev_list, ptr @flow_block_indr_dev_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_flow_indr_dev_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_indr_dev_register = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_indr_dev_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_indr_dev_register to i32), ptr @__kstrtab_flow_indr_dev_register, ptr @__kstrtabns_flow_indr_dev_register }, section "___ksymtab+flow_indr_dev_register", align 4
@__kstrtab_flow_indr_dev_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_indr_dev_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_indr_dev_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_indr_dev_unregister to i32), ptr @__kstrtab_flow_indr_dev_unregister, ptr @__kstrtabns_flow_indr_dev_unregister }, section "___ksymtab+flow_indr_dev_unregister", align 4
@flow_block_indr_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @flow_block_indr_list, ptr @flow_block_indr_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_flow_indr_block_cb_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_indr_block_cb_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_indr_block_cb_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_indr_block_cb_alloc to i32), ptr @__kstrtab_flow_indr_block_cb_alloc, ptr @__kstrtabns_flow_indr_block_cb_alloc }, section "___ksymtab+flow_indr_block_cb_alloc", align 4
@__kstrtab_flow_indr_dev_setup_offload = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_indr_dev_setup_offload = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_indr_dev_setup_offload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_indr_dev_setup_offload to i32), ptr @__kstrtab_flow_indr_dev_setup_offload, ptr @__kstrtabns_flow_indr_dev_setup_offload }, section "___ksymtab+flow_indr_dev_setup_offload", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"flow_indr_block_lock.wait_lock\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"flow_indr_block_lock\00", [43 x i8] zeroinitializer }, align 32
@flow_indir_dev_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @flow_indir_dev_list, ptr @flow_indir_dev_list }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.3 = private unnamed_addr constant [21 x i8] c"flow_indr_block_lock\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [25 x i8] c"flow_block_indr_dev_list\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 344, i32 8 }
@___asan_gen_.9 = private unnamed_addr constant [21 x i8] c"flow_block_indr_list\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 343, i32 8 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 342, i32 8 }
@___asan_gen_.18 = private unnamed_addr constant [20 x i8] c"flow_indir_dev_list\00", align 1
@___asan_gen_.19 = private constant [27 x i8] c"../net/core/flow_offload.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 345, i32 8 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__ksymtab_flow_action_cookie_create, ptr @__ksymtab_flow_action_cookie_destroy, ptr @__ksymtab_flow_block_cb_alloc, ptr @__ksymtab_flow_block_cb_decref, ptr @__ksymtab_flow_block_cb_free, ptr @__ksymtab_flow_block_cb_incref, ptr @__ksymtab_flow_block_cb_is_busy, ptr @__ksymtab_flow_block_cb_lookup, ptr @__ksymtab_flow_block_cb_priv, ptr @__ksymtab_flow_block_cb_setup_simple, ptr @__ksymtab_flow_indr_block_cb_alloc, ptr @__ksymtab_flow_indr_dev_register, ptr @__ksymtab_flow_indr_dev_setup_offload, ptr @__ksymtab_flow_indr_dev_unregister, ptr @__ksymtab_flow_rule_alloc, ptr @__ksymtab_flow_rule_match_basic, ptr @__ksymtab_flow_rule_match_control, ptr @__ksymtab_flow_rule_match_ct, ptr @__ksymtab_flow_rule_match_cvlan, ptr @__ksymtab_flow_rule_match_enc_control, ptr @__ksymtab_flow_rule_match_enc_ip, ptr @__ksymtab_flow_rule_match_enc_ipv4_addrs, ptr @__ksymtab_flow_rule_match_enc_ipv6_addrs, ptr @__ksymtab_flow_rule_match_enc_keyid, ptr @__ksymtab_flow_rule_match_enc_opts, ptr @__ksymtab_flow_rule_match_enc_ports, ptr @__ksymtab_flow_rule_match_eth_addrs, ptr @__ksymtab_flow_rule_match_icmp, ptr @__ksymtab_flow_rule_match_ip, ptr @__ksymtab_flow_rule_match_ipv4_addrs, ptr @__ksymtab_flow_rule_match_ipv6_addrs, ptr @__ksymtab_flow_rule_match_meta, ptr @__ksymtab_flow_rule_match_mpls, ptr @__ksymtab_flow_rule_match_ports, ptr @__ksymtab_flow_rule_match_tcp, ptr @__ksymtab_flow_rule_match_vlan, ptr @flow_indr_block_lock, ptr @flow_block_indr_dev_list, ptr @flow_block_indr_list, ptr @.str, ptr @.str.1, ptr @flow_indir_dev_list], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flow_indr_block_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flow_block_indr_dev_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flow_block_indr_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flow_indir_dev_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @flow_rule_alloc(i32 noundef %num_actions) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_actions, i32 72) #11
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 24) #11
  %retval.0.i = select i1 %1, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %action = getelementptr inbounds %struct.flow_rule, ptr %call9.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %num_actions, ptr %action, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_actions)
  %cmp11.not = icmp eq i32 %num_actions, 0
  br i1 %cmp11.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %entries = getelementptr inbounds %struct.flow_rule, ptr %call9.i.i, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x %struct.flow_action_entry], ptr %entries, i32 0, i32 %i.012
  %hw_stats = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx, i32 0, i32 2
  %4 = ptrtoint ptr %hw_stats to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 7, ptr %hw_stats, align 8
  %inc = add nuw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %num_actions
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call9.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @offload_action_alloc(i32 noundef %num_actions) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_actions, i32 72) #11
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 64) #11
  %retval.0.i = select i1 %1, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %action = getelementptr inbounds %struct.flow_offload_action, ptr %call9.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %num_actions, ptr %action, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_actions)
  %cmp11.not = icmp eq i32 %num_actions, 0
  br i1 %cmp11.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %entries = getelementptr inbounds %struct.flow_offload_action, ptr %call9.i.i, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x %struct.flow_action_entry], ptr %entries, i32 0, i32 %i.012
  %hw_stats = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx, i32 0, i32 2
  %4 = ptrtoint ptr %hw_stats to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 7, ptr %hw_stats, align 8
  %inc = add nuw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %num_actions
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call9.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_meta(ptr nocapture noundef readonly %rule, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  %key = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 2
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key, align 4
  %arrayidx.i = getelementptr %struct.flow_dissector, ptr %1, i32 0, i32 1, i32 25
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %6 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %out, align 4
  %mask = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 1
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mask, align 4
  %9 = load i16, ptr %arrayidx.i, align 2
  %conv.i9 = zext i16 %9 to i32
  %add.ptr.i10 = getelementptr i8, ptr %8, i32 %conv.i9
  %mask3 = getelementptr inbounds %struct.flow_match_meta, ptr %out, i32 0, i32 1
  %10 = ptrtoint ptr %mask3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i10, ptr %mask3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_basic(ptr nocapture noundef readonly %rule, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  %key = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 2
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key, align 4
  %arrayidx.i = getelementptr %struct.flow_dissector, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %6 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %out, align 4
  %mask = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 1
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mask, align 4
  %9 = load i16, ptr %arrayidx.i, align 2
  %conv.i9 = zext i16 %9 to i32
  %add.ptr.i10 = getelementptr i8, ptr %8, i32 %conv.i9
  %mask3 = getelementptr inbounds %struct.flow_match_basic, ptr %out, i32 0, i32 1
  %10 = ptrtoint ptr %mask3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i10, ptr %mask3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_control(ptr nocapture noundef readonly %rule, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  %key = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 2
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key, align 4
  %arrayidx.i = getelementptr %struct.flow_dissector, ptr %1, i32 0, i32 1, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %6 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %out, align 4
  %mask = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 1
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mask, align 4
  %9 = load i16, ptr %arrayidx.i, align 2
  %conv.i9 = zext i16 %9 to i32
  %add.ptr.i10 = getelementptr i8, ptr %8, i32 %conv.i9
  %mask3 = getelementptr inbounds %struct.flow_match_control, ptr %out, i32 0, i32 1
  %10 = ptrtoint ptr %mask3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i10, ptr %mask3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_eth_addrs(ptr nocapture noundef readonly %rule, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  %key = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 2
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key, align 4
  %arrayidx.i = getelementptr %struct.flow_dissector, ptr %1, i32 0, i32 1, i32 7
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %6 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %out, align 4
  %mask = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 1
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mask, align 4
  %9 = load i16, ptr %arrayidx.i, align 2
  %conv.i9 = zext i16 %9 to i32
  %add.ptr.i10 = getelementptr i8, ptr %8, i32 %conv.i9
  %mask3 = getelementptr inbounds %struct.flow_match_eth_addrs, ptr %out, i32 0, i32 1
  %10 = ptrtoint ptr %mask3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i10, ptr %mask3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_vlan(ptr nocapture noundef readonly %rule, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  %key = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 2
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key, align 4
  %arrayidx.i = getelementptr %struct.flow_dissector, ptr %1, i32 0, i32 1, i32 10
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %6 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %out, align 4
  %mask = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 1
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mask, align 4
  %9 = load i16, ptr %arrayidx.i, align 2
  %conv.i9 = zext i16 %9 to i32
  %add.ptr.i10 = getelementptr i8, ptr %8, i32 %conv.i9
  %mask3 = getelementptr inbounds %struct.flow_match_vlan, ptr %out, i32 0, i32 1
  %10 = ptrtoint ptr %mask3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i10, ptr %mask3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_cvlan(ptr nocapture noundef readonly %rule, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  %key = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 2
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key, align 4
  %arrayidx.i = getelementptr %struct.flow_dissector, ptr %1, i32 0, i32 1, i32 22
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %6 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %out, align 4
  %mask = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 1
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mask, align 4
  %9 = load i16, ptr %arrayidx.i, align 2
  %conv.i9 = zext i16 %9 to i32
  %add.ptr.i10 = getelementptr i8, ptr %8, i32 %conv.i9
  %mask3 = getelementptr inbounds %struct.flow_match_vlan, ptr %out, i32 0, i32 1
  %10 = ptrtoint ptr %mask3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i10, ptr %mask3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_ipv4_addrs(ptr nocapture noundef readonly %rule, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  %key = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 2
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key, align 4
  %arrayidx.i = getelementptr %struct.flow_dissector, ptr %1, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %6 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %out, align 4
  %mask = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 1
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mask, align 4
  %9 = load i16, ptr %arrayidx.i, align 2
  %conv.i9 = zext i16 %9 to i32
  %add.ptr.i10 = getelementptr i8, ptr %8, i32 %conv.i9
  %mask3 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %out, i32 0, i32 1
  %10 = ptrtoint ptr %mask3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i10, ptr %mask3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_ipv6_addrs(ptr nocapture noundef readonly %rule, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  %key = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 2
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key, align 4
  %arrayidx.i = getelementptr %struct.flow_dissector, ptr %1, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %6 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %out, align 4
  %mask = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 1
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mask, align 4
  %9 = load i16, ptr %arrayidx.i, align 2
  %conv.i9 = zext i16 %9 to i32
  %add.ptr.i10 = getelementptr i8, ptr %8, i32 %conv.i9
  %mask3 = getelementptr inbounds %struct.flow_match_ipv6_addrs, ptr %out, i32 0, i32 1
  %10 = ptrtoint ptr %mask3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i10, ptr %mask3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_ip(ptr nocapture noundef readonly %rule, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  %key = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 2
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key, align 4
  %arrayidx.i = getelementptr %struct.flow_dissector, ptr %1, i32 0, i32 1, i32 21
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %6 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %out, align 4
  %mask = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 1
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mask, align 4
  %9 = load i16, ptr %arrayidx.i, align 2
  %conv.i9 = zext i16 %9 to i32
  %add.ptr.i10 = getelementptr i8, ptr %8, i32 %conv.i9
  %mask3 = getelementptr inbounds %struct.flow_match_ip, ptr %out, i32 0, i32 1
  %10 = ptrtoint ptr %mask3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i10, ptr %mask3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_ports(ptr nocapture noundef readonly %rule, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  %key = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 2
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key, align 4
  %arrayidx.i = getelementptr %struct.flow_dissector, ptr %1, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %6 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %out, align 4
  %mask = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 1
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mask, align 4
  %9 = load i16, ptr %arrayidx.i, align 2
  %conv.i9 = zext i16 %9 to i32
  %add.ptr.i10 = getelementptr i8, ptr %8, i32 %conv.i9
  %mask3 = getelementptr inbounds %struct.flow_match_ports, ptr %out, i32 0, i32 1
  %10 = ptrtoint ptr %mask3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i10, ptr %mask3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_tcp(ptr nocapture noundef readonly %rule, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  %key = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 2
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key, align 4
  %arrayidx.i = getelementptr %struct.flow_dissector, ptr %1, i32 0, i32 1, i32 20
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %6 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %out, align 4
  %mask = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 1
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mask, align 4
  %9 = load i16, ptr %arrayidx.i, align 2
  %conv.i9 = zext i16 %9 to i32
  %add.ptr.i10 = getelementptr i8, ptr %8, i32 %conv.i9
  %mask3 = getelementptr inbounds %struct.flow_match_tcp, ptr %out, i32 0, i32 1
  %10 = ptrtoint ptr %mask3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i10, ptr %mask3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_icmp(ptr nocapture noundef readonly %rule, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  %key = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 2
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key, align 4
  %arrayidx.i = getelementptr %struct.flow_dissector, ptr %1, i32 0, i32 1, i32 6
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %6 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %out, align 4
  %mask = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 1
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mask, align 4
  %9 = load i16, ptr %arrayidx.i, align 2
  %conv.i9 = zext i16 %9 to i32
  %add.ptr.i10 = getelementptr i8, ptr %8, i32 %conv.i9
  %mask3 = getelementptr inbounds %struct.flow_match_icmp, ptr %out, i32 0, i32 1
  %10 = ptrtoint ptr %mask3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i10, ptr %mask3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_mpls(ptr nocapture noundef readonly %rule, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  %key = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 2
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key, align 4
  %arrayidx.i = getelementptr %struct.flow_dissector, ptr %1, i32 0, i32 1, i32 19
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %6 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %out, align 4
  %mask = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 1
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mask, align 4
  %9 = load i16, ptr %arrayidx.i, align 2
  %conv.i9 = zext i16 %9 to i32
  %add.ptr.i10 = getelementptr i8, ptr %8, i32 %conv.i9
  %mask3 = getelementptr inbounds %struct.flow_match_mpls, ptr %out, i32 0, i32 1
  %10 = ptrtoint ptr %mask3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i10, ptr %mask3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_enc_control(ptr nocapture noundef readonly %rule, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  %key = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 2
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key, align 4
  %arrayidx.i = getelementptr %struct.flow_dissector, ptr %1, i32 0, i32 1, i32 17
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %6 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %out, align 4
  %mask = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 1
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mask, align 4
  %9 = load i16, ptr %arrayidx.i, align 2
  %conv.i9 = zext i16 %9 to i32
  %add.ptr.i10 = getelementptr i8, ptr %8, i32 %conv.i9
  %mask3 = getelementptr inbounds %struct.flow_match_control, ptr %out, i32 0, i32 1
  %10 = ptrtoint ptr %mask3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i10, ptr %mask3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_enc_ipv4_addrs(ptr nocapture noundef readonly %rule, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  %key = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 2
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key, align 4
  %arrayidx.i = getelementptr %struct.flow_dissector, ptr %1, i32 0, i32 1, i32 15
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %6 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %out, align 4
  %mask = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 1
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mask, align 4
  %9 = load i16, ptr %arrayidx.i, align 2
  %conv.i9 = zext i16 %9 to i32
  %add.ptr.i10 = getelementptr i8, ptr %8, i32 %conv.i9
  %mask3 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %out, i32 0, i32 1
  %10 = ptrtoint ptr %mask3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i10, ptr %mask3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_enc_ipv6_addrs(ptr nocapture noundef readonly %rule, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  %key = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 2
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key, align 4
  %arrayidx.i = getelementptr %struct.flow_dissector, ptr %1, i32 0, i32 1, i32 16
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %6 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %out, align 4
  %mask = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 1
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mask, align 4
  %9 = load i16, ptr %arrayidx.i, align 2
  %conv.i9 = zext i16 %9 to i32
  %add.ptr.i10 = getelementptr i8, ptr %8, i32 %conv.i9
  %mask3 = getelementptr inbounds %struct.flow_match_ipv6_addrs, ptr %out, i32 0, i32 1
  %10 = ptrtoint ptr %mask3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i10, ptr %mask3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_enc_ip(ptr nocapture noundef readonly %rule, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  %key = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 2
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key, align 4
  %arrayidx.i = getelementptr %struct.flow_dissector, ptr %1, i32 0, i32 1, i32 23
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %6 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %out, align 4
  %mask = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 1
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mask, align 4
  %9 = load i16, ptr %arrayidx.i, align 2
  %conv.i9 = zext i16 %9 to i32
  %add.ptr.i10 = getelementptr i8, ptr %8, i32 %conv.i9
  %mask3 = getelementptr inbounds %struct.flow_match_ip, ptr %out, i32 0, i32 1
  %10 = ptrtoint ptr %mask3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i10, ptr %mask3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_enc_ports(ptr nocapture noundef readonly %rule, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  %key = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 2
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key, align 4
  %arrayidx.i = getelementptr %struct.flow_dissector, ptr %1, i32 0, i32 1, i32 18
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %6 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %out, align 4
  %mask = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 1
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mask, align 4
  %9 = load i16, ptr %arrayidx.i, align 2
  %conv.i9 = zext i16 %9 to i32
  %add.ptr.i10 = getelementptr i8, ptr %8, i32 %conv.i9
  %mask3 = getelementptr inbounds %struct.flow_match_ports, ptr %out, i32 0, i32 1
  %10 = ptrtoint ptr %mask3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i10, ptr %mask3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_enc_keyid(ptr nocapture noundef readonly %rule, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  %key = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 2
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key, align 4
  %arrayidx.i = getelementptr %struct.flow_dissector, ptr %1, i32 0, i32 1, i32 14
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %6 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %out, align 4
  %mask = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 1
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mask, align 4
  %9 = load i16, ptr %arrayidx.i, align 2
  %conv.i9 = zext i16 %9 to i32
  %add.ptr.i10 = getelementptr i8, ptr %8, i32 %conv.i9
  %mask3 = getelementptr inbounds %struct.flow_match_enc_keyid, ptr %out, i32 0, i32 1
  %10 = ptrtoint ptr %mask3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i10, ptr %mask3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_enc_opts(ptr nocapture noundef readonly %rule, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  %key = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 2
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key, align 4
  %arrayidx.i = getelementptr %struct.flow_dissector, ptr %1, i32 0, i32 1, i32 24
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %6 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %out, align 4
  %mask = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 1
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mask, align 4
  %9 = load i16, ptr %arrayidx.i, align 2
  %conv.i9 = zext i16 %9 to i32
  %add.ptr.i10 = getelementptr i8, ptr %8, i32 %conv.i9
  %mask3 = getelementptr inbounds %struct.flow_match_enc_opts, ptr %out, i32 0, i32 1
  %10 = ptrtoint ptr %mask3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i10, ptr %mask3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @flow_action_cookie_create(ptr nocapture noundef readonly %data, i32 noundef %len, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef %gfp) #14
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %len, ptr %call9.i, align 128
  %cookie1 = getelementptr inbounds %struct.flow_action_cookie, ptr %call9.i, i32 0, i32 1
  %1 = call ptr @memcpy(ptr %cookie1, ptr %data, i32 %len)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flow_action_cookie_destroy(ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %cookie) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @flow_rule_match_ct(ptr nocapture noundef readonly %rule, ptr nocapture noundef writeonly %out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  %key = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 2
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key, align 4
  %arrayidx.i = getelementptr %struct.flow_dissector, ptr %1, i32 0, i32 1, i32 26
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %6 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %out, align 4
  %mask = getelementptr inbounds %struct.flow_match, ptr %rule, i32 0, i32 1
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mask, align 4
  %9 = load i16, ptr %arrayidx.i, align 2
  %conv.i9 = zext i16 %9 to i32
  %add.ptr.i10 = getelementptr i8, ptr %8, i32 %conv.i9
  %mask3 = getelementptr inbounds %struct.flow_match_ct, ptr %out, i32 0, i32 1
  %10 = ptrtoint ptr %mask3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i10, ptr %mask3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @flow_block_cb_alloc(ptr noundef %cb, ptr noundef %cb_ident, ptr noundef %cb_priv, ptr noundef %release) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 68) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cb2 = getelementptr inbounds %struct.flow_block_cb, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %cb2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cb, ptr %cb2, align 8
  %cb_ident3 = getelementptr inbounds %struct.flow_block_cb, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %cb_ident3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cb_ident, ptr %cb_ident3, align 4
  %cb_priv4 = getelementptr inbounds %struct.flow_block_cb, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %cb_priv4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cb_priv, ptr %cb_priv4, align 8
  %release5 = getelementptr inbounds %struct.flow_block_cb, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %release5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %release, ptr %release5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flow_block_cb_free(ptr noundef %block_cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %release = getelementptr inbounds %struct.flow_block_cb, ptr %block_cb, i32 0, i32 5
  %0 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %release, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cb_priv = getelementptr inbounds %struct.flow_block_cb, ptr %block_cb, i32 0, i32 4
  %2 = ptrtoint ptr %cb_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb_priv, align 4
  tail call void %1(ptr noundef %3) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %block_cb) #11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @flow_block_cb_lookup(ptr noundef readonly %block, ptr noundef readnone %cb, ptr noundef readnone %cb_ident) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn18 = load ptr, ptr %block, align 4
  %cmp.not19 = icmp eq ptr %.pn18, %block
  br i1 %cmp.not19, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn20 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn18, %entry.for.body_crit_edge ]
  %cb2 = getelementptr i8, ptr %.pn20, i32 8
  %1 = ptrtoint ptr %cb2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cb2, align 4
  %cmp3 = icmp eq ptr %2, %cb
  br i1 %cmp3, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %cb_ident4 = getelementptr i8, ptr %.pn20, i32 12
  %3 = ptrtoint ptr %cb_ident4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cb_ident4, align 4
  %cmp5 = icmp eq ptr %4, %cb_ident
  br i1 %cmp5, label %cleanup.split.loop.exit16, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %5 = ptrtoint ptr %.pn20 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn20, align 4
  %cmp.not = icmp eq ptr %.pn, %block
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.split.loop.exit16:                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %block_cb.0.le = getelementptr i8, ptr %.pn20, i32 -8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit16, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %block_cb.0.le, %cleanup.split.loop.exit16 ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @flow_block_cb_priv(ptr nocapture noundef readonly %block_cb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cb_priv = getelementptr inbounds %struct.flow_block_cb, ptr %block_cb, i32 0, i32 4
  %0 = ptrtoint ptr %cb_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb_priv, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @flow_block_cb_incref(ptr nocapture noundef %block_cb) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.flow_block_cb, ptr %block_cb, i32 0, i32 7
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcnt, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %refcnt, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @flow_block_cb_decref(ptr nocapture noundef %block_cb) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.flow_block_cb, ptr %block_cb, i32 0, i32 7
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcnt, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %refcnt, align 4
  ret i32 %dec
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @flow_block_cb_is_busy(ptr noundef readnone %cb, ptr noundef readnone %cb_ident, ptr noundef readonly %driver_block_list) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %driver_block_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %block_cb.014 = load ptr, ptr %driver_block_list, align 4
  %cmp.not15 = icmp eq ptr %block_cb.014, %driver_block_list
  br i1 %cmp.not15, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %block_cb.016 = phi ptr [ %block_cb.0, %for.inc.for.body_crit_edge ], [ %block_cb.014, %entry.for.body_crit_edge ]
  %cb1 = getelementptr inbounds %struct.flow_block_cb, ptr %block_cb.016, i32 0, i32 2
  %1 = ptrtoint ptr %cb1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cb1, align 4
  %cmp2 = icmp eq ptr %2, %cb
  br i1 %cmp2, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %cb_ident3 = getelementptr inbounds %struct.flow_block_cb, ptr %block_cb.016, i32 0, i32 3
  %3 = ptrtoint ptr %cb_ident3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cb_ident3, align 4
  %cmp4 = icmp eq ptr %4, %cb_ident
  br i1 %cmp4, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %5 = ptrtoint ptr %block_cb.016 to i32
  call void @__asan_load4_noabort(i32 %5)
  %block_cb.0 = load ptr, ptr %block_cb.016, align 4
  %cmp.not = icmp eq ptr %block_cb.0, %driver_block_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.not.lcssa = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %for.inc.cleanup_crit_edge ], [ true, %land.lhs.true.cleanup_crit_edge ]
  ret i1 %cmp.not.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @flow_block_cb_setup_simple(ptr noundef %f, ptr noundef %driver_block_list, ptr noundef %cb, ptr noundef %cb_ident, ptr noundef %cb_priv, i1 noundef zeroext %ingress_only) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %ingress_only, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %binder_type = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %binder_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %binder_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %driver_block_list1 = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 7
  %2 = ptrtoint ptr %driver_block_list1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %driver_block_list, ptr %driver_block_list1, align 4
  %3 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %6 = ptrtoint ptr %driver_block_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %block_cb.014.i = load ptr, ptr %driver_block_list, align 4
  %cmp.not15.i = icmp eq ptr %block_cb.014.i, %driver_block_list
  br i1 %cmp.not15.i, label %sw.bb.if.end3_crit_edge, label %sw.bb.for.body.i_crit_edge

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

sw.bb.if.end3_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %block_cb.016.i = phi ptr [ %block_cb.0.i, %for.inc.i.for.body.i_crit_edge ], [ %block_cb.014.i, %sw.bb.for.body.i_crit_edge ]
  %cb1.i = getelementptr inbounds %struct.flow_block_cb, ptr %block_cb.016.i, i32 0, i32 2
  %7 = ptrtoint ptr %cb1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cb1.i, align 4
  %cmp2.i = icmp eq ptr %8, %cb
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %cb_ident3.i = getelementptr inbounds %struct.flow_block_cb, ptr %block_cb.016.i, i32 0, i32 3
  %9 = ptrtoint ptr %cb_ident3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cb_ident3.i, align 4
  %cmp4.i = icmp eq ptr %10, %cb_ident
  br i1 %cmp4.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %11 = ptrtoint ptr %block_cb.016.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %block_cb.0.i = load ptr, ptr %block_cb.016.i, align 4
  %cmp.not.i = icmp eq ptr %block_cb.0.i, %driver_block_list
  br i1 %cmp.not.i, label %for.inc.i.if.end3_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.if.end3_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.end3:                                          ; preds = %for.inc.i.if.end3_crit_edge, %sw.bb.if.end3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 68) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end3.if.then6_crit_edge, label %flow_block_cb_alloc.exit

if.end3.if.then6_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

flow_block_cb_alloc.exit:                         ; preds = %if.end3
  %cb2.i = getelementptr inbounds %struct.flow_block_cb, ptr %call7.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %cb2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cb, ptr %cb2.i, align 8
  %cb_ident3.i32 = getelementptr inbounds %struct.flow_block_cb, ptr %call7.i.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %cb_ident3.i32 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cb_ident, ptr %cb_ident3.i32, align 4
  %cb_priv4.i = getelementptr inbounds %struct.flow_block_cb, ptr %call7.i.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %cb_priv4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %cb_priv, ptr %cb_priv4.i, align 8
  %release5.i = getelementptr inbounds %struct.flow_block_cb, ptr %call7.i.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %release5.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %release5.i, align 4
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %flow_block_cb_alloc.exit.if.then6_crit_edge, label %if.end8

flow_block_cb_alloc.exit.if.then6_crit_edge:      ; preds = %flow_block_cb_alloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.then6:                                         ; preds = %flow_block_cb_alloc.exit.if.then6_crit_edge, %if.end3.if.then6_crit_edge
  %retval.0.i50 = phi ptr [ %call7.i.i.i, %flow_block_cb_alloc.exit.if.then6_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end3.if.then6_crit_edge ]
  %17 = ptrtoint ptr %retval.0.i50 to i32
  br label %cleanup

if.end8:                                          ; preds = %flow_block_cb_alloc.exit
  %list.i = getelementptr inbounds %struct.flow_block_cb, ptr %call7.i.i.i, i32 0, i32 1
  %cb_list.i = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 6
  %prev.i.i = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %19, ptr noundef %cb_list.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end8.flow_block_cb_add.exit_crit_edge

if.end8.flow_block_cb_add.exit_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %flow_block_cb_add.exit

if.end.i.i.i:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list.i, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %cb_list.i, ptr %list.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %list.i, ptr %19, align 4
  br label %flow_block_cb_add.exit

flow_block_cb_add.exit:                           ; preds = %if.end.i.i.i, %if.end8.flow_block_cb_add.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %driver_block_list, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %25, ptr noundef %driver_block_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %flow_block_cb_add.exit.cleanup_crit_edge

flow_block_cb_add.exit.cleanup_crit_edge:         ; preds = %flow_block_cb_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %flow_block_cb_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i.i, ptr %prev.i, align 4
  %27 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %driver_block_list, ptr %call7.i.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %call7.i.i.i, ptr %25, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  %block = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 5
  %30 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %block, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn18.i = load ptr, ptr %31, align 4
  %cmp.not19.i = icmp eq ptr %.pn18.i, %31
  br i1 %cmp.not19.i, label %sw.bb9.cleanup_crit_edge, label %sw.bb9.for.body.i34_crit_edge

sw.bb9.for.body.i34_crit_edge:                    ; preds = %sw.bb9
  br label %for.body.i34

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i34:                                     ; preds = %for.inc.i37.for.body.i34_crit_edge, %sw.bb9.for.body.i34_crit_edge
  %.pn20.i = phi ptr [ %.pn.i, %for.inc.i37.for.body.i34_crit_edge ], [ %.pn18.i, %sw.bb9.for.body.i34_crit_edge ]
  %cb2.i33 = getelementptr i8, ptr %.pn20.i, i32 8
  %33 = ptrtoint ptr %cb2.i33 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cb2.i33, align 4
  %cmp3.i = icmp eq ptr %34, %cb
  br i1 %cmp3.i, label %land.lhs.true.i35, label %for.body.i34.for.inc.i37_crit_edge

for.body.i34.for.inc.i37_crit_edge:               ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i37

land.lhs.true.i35:                                ; preds = %for.body.i34
  %cb_ident4.i = getelementptr i8, ptr %.pn20.i, i32 12
  %35 = ptrtoint ptr %cb_ident4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cb_ident4.i, align 4
  %cmp5.i = icmp eq ptr %36, %cb_ident
  br i1 %cmp5.i, label %flow_block_cb_lookup.exit, label %land.lhs.true.i35.for.inc.i37_crit_edge

land.lhs.true.i35.for.inc.i37_crit_edge:          ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i37

for.inc.i37:                                      ; preds = %land.lhs.true.i35.for.inc.i37_crit_edge, %for.body.i34.for.inc.i37_crit_edge
  %37 = ptrtoint ptr %.pn20.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn.i = load ptr, ptr %.pn20.i, align 4
  %cmp.not.i36 = icmp eq ptr %.pn.i, %31
  br i1 %cmp.not.i36, label %for.inc.i37.cleanup_crit_edge, label %for.inc.i37.for.body.i34_crit_edge

for.inc.i37.for.body.i34_crit_edge:               ; preds = %for.inc.i37
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i34

for.inc.i37.cleanup_crit_edge:                    ; preds = %for.inc.i37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

flow_block_cb_lookup.exit:                        ; preds = %land.lhs.true.i35
  %block_cb.0.le.i = getelementptr i8, ptr %.pn20.i, i32 -8
  %tobool11.not = icmp eq ptr %block_cb.0.le.i, null
  br i1 %tobool11.not, label %flow_block_cb_lookup.exit.cleanup_crit_edge, label %if.end13

flow_block_cb_lookup.exit.cleanup_crit_edge:      ; preds = %flow_block_cb_lookup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %flow_block_cb_lookup.exit
  %cb_list.i40 = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 6
  %call.i.i.i41 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn20.i) #11
  br i1 %call.i.i.i41, label %if.end.i.i.i42, label %if.end13.__list_del_entry.exit.i.i_crit_edge

if.end13.__list_del_entry.exit.i.i_crit_edge:     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i.i

if.end.i.i.i42:                                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr i8, ptr %.pn20.i, i32 4
  %38 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i.i, align 4
  %40 = ptrtoint ptr %.pn20.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %.pn20.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i42, %if.end13.__list_del_entry.exit.i.i_crit_edge
  %44 = ptrtoint ptr %cb_list.i40 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cb_list.i40, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn20.i, ptr noundef %cb_list.i40, ptr noundef %45) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.flow_block_cb_remove.exit_crit_edge

__list_del_entry.exit.i.i.flow_block_cb_remove.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %flow_block_cb_remove.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %.pn20.i, ptr %prev1.i.i2.i.i, align 4
  %47 = ptrtoint ptr %.pn20.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %45, ptr %.pn20.i, align 4
  %prev3.i.i.i.i = getelementptr i8, ptr %.pn20.i, i32 4
  %48 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %cb_list.i40, ptr %prev3.i.i.i.i, align 4
  %49 = ptrtoint ptr %cb_list.i40 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %.pn20.i, ptr %cb_list.i40, align 4
  br label %flow_block_cb_remove.exit

flow_block_cb_remove.exit:                        ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.flow_block_cb_remove.exit_crit_edge
  %call.i.i43 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %block_cb.0.le.i) #11
  br i1 %call.i.i43, label %if.end.i.i45, label %flow_block_cb_remove.exit.list_del.exit_crit_edge

flow_block_cb_remove.exit.list_del.exit_crit_edge: ; preds = %flow_block_cb_remove.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i45:                                     ; preds = %flow_block_cb_remove.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i44 = getelementptr i8, ptr %.pn20.i, i32 -4
  %50 = ptrtoint ptr %prev.i.i44 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i44, align 4
  %52 = ptrtoint ptr %block_cb.0.le.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %block_cb.0.le.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev1.i.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %53, ptr %51, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i45, %flow_block_cb_remove.exit.list_del.exit_crit_edge
  %56 = ptrtoint ptr %block_cb.0.le.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 256 to ptr), ptr %block_cb.0.le.i, align 4
  %prev.i46 = getelementptr i8, ptr %.pn20.i, i32 -4
  %57 = ptrtoint ptr %prev.i46 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i46, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %flow_block_cb_lookup.exit.cleanup_crit_edge, %for.inc.i37.cleanup_crit_edge, %sw.bb9.cleanup_crit_edge, %if.end.i.i, %flow_block_cb_add.exit.cleanup_crit_edge, %if.then6, %land.lhs.true.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_del.exit ], [ %17, %if.then6 ], [ -95, %land.lhs.true.cleanup_crit_edge ], [ -2, %flow_block_cb_lookup.exit.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %flow_block_cb_add.exit.cleanup_crit_edge ], [ 0, %if.end.i.i ], [ -2, %sw.bb9.cleanup_crit_edge ], [ -16, %land.lhs.true.i.cleanup_crit_edge ], [ -2, %for.inc.i37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @flow_indr_dev_register(ptr noundef %cb, ptr noundef %cb_priv) #0 align 64 {
entry:
  %bo.i = alloca %struct.flow_block_offload, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @flow_indr_block_lock, i32 noundef 0) #11
  %indr_dev.026 = load ptr, ptr @flow_block_indr_dev_list, align 4
  %cmp.not27 = icmp eq ptr %indr_dev.026, @flow_block_indr_dev_list
  br i1 %cmp.not27, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %indr_dev.028 = phi ptr [ %indr_dev.0, %for.inc.for.body_crit_edge ], [ %indr_dev.026, %entry.for.body_crit_edge ]
  %cb1 = getelementptr inbounds %struct.flow_indr_dev, ptr %indr_dev.028, i32 0, i32 1
  %0 = ptrtoint ptr %cb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb1, align 4
  %cmp2 = icmp eq ptr %1, %cb
  br i1 %cmp2, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %cb_priv3 = getelementptr inbounds %struct.flow_indr_dev, ptr %indr_dev.028, i32 0, i32 2
  %2 = ptrtoint ptr %cb_priv3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb_priv3, align 4
  %cmp4 = icmp eq ptr %3, %cb_priv
  br i1 %cmp4, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %refcnt = getelementptr inbounds %struct.flow_indr_dev, ptr %indr_dev.028, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #11, !srcloc !91
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !92

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !93

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #11
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @flow_indr_block_lock) #11
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %6 = ptrtoint ptr %indr_dev.028 to i32
  call void @__asan_load4_noabort(i32 %6)
  %indr_dev.0 = load ptr, ptr %indr_dev.028, align 4
  %cmp.not = icmp eq ptr %indr_dev.0, @flow_block_indr_dev_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 20) #15
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef nonnull @flow_indr_block_lock) #11
  br label %cleanup

if.end10:                                         ; preds = %for.end
  %cb1.i = getelementptr inbounds %struct.flow_indr_dev, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %cb1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cb, ptr %cb1.i, align 8
  %cb_priv2.i = getelementptr inbounds %struct.flow_indr_dev, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %cb_priv2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cb_priv, ptr %cb_priv2.i, align 4
  %refcnt.i = getelementptr inbounds %struct.flow_indr_dev, ptr %call7.i.i, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #11
  %10 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %refcnt.i, align 8
  %11 = load ptr, ptr @flow_block_indr_dev_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @flow_block_indr_dev_list, ptr noundef %11) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end10.list_add.exit_crit_edge

if.end10.list_add.exit_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @flow_block_indr_dev_list, ptr %prev3.i.i, align 4
  store volatile ptr %call7.i.i, ptr @flow_block_indr_dev_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end10.list_add.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %bo.i) #11
  %.pn18.i = load ptr, ptr @flow_indir_dev_list, align 4
  %cmp.not19.i = icmp eq ptr %.pn18.i, @flow_indir_dev_list
  br i1 %cmp.not19.i, label %list_add.exit.existing_qdiscs_register.exit_crit_edge, label %for.body.lr.ph.i

list_add.exit.existing_qdiscs_register.exit_crit_edge: ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %existing_qdiscs_register.exit

for.body.lr.ph.i:                                 ; preds = %list_add.exit
  %binder_type2.i = getelementptr inbounds %struct.flow_block_offload, ptr %bo.i, i32 0, i32 1
  %cb_list.i = getelementptr inbounds %struct.flow_block_offload, ptr %bo.i, i32 0, i32 6
  %prev.i.i = getelementptr inbounds %struct.flow_block_offload, ptr %bo.i, i32 0, i32 6, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %list_splice.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn20.i = phi ptr [ %.pn18.i, %for.body.lr.ph.i ], [ %.pn.i, %list_splice.exit.i.for.body.i_crit_edge ]
  %cur.0.i = getelementptr i8, ptr %.pn20.i, i32 -20
  %15 = call ptr @memset(ptr %bo.i, i32 0, i32 44)
  %command.i = getelementptr i8, ptr %.pn20.i, i32 8
  %16 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %command.i, align 4
  %18 = ptrtoint ptr %bo.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %bo.i, align 4
  %binder_type.i = getelementptr i8, ptr %.pn20.i, i32 12
  %19 = ptrtoint ptr %binder_type.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %binder_type.i, align 4
  %21 = ptrtoint ptr %binder_type2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %binder_type2.i, align 4
  %22 = ptrtoint ptr %cb_list.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %cb_list.i, ptr %cb_list.i, align 4
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %cb_list.i, ptr %prev.i.i, align 4
  %dev.i = getelementptr i8, ptr %.pn20.i, i32 -16
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  %sch.i = getelementptr i8, ptr %.pn20.i, i32 -12
  %26 = ptrtoint ptr %sch.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sch.i, align 4
  %type.i = getelementptr i8, ptr %.pn20.i, i32 -8
  %28 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type.i, align 4
  %30 = ptrtoint ptr %cur.0.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cur.0.i, align 4
  %cleanup.i = getelementptr i8, ptr %.pn20.i, i32 -4
  %32 = ptrtoint ptr %cleanup.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cleanup.i, align 4
  %call.i = call i32 %cb(ptr noundef %25, ptr noundef %27, ptr noundef %cb_priv, i32 noundef %29, ptr noundef nonnull %bo.i, ptr noundef %31, ptr noundef %33) #11
  %cb_list4.i = getelementptr i8, ptr %.pn20.i, i32 16
  %34 = ptrtoint ptr %cb_list4.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cb_list4.i, align 4
  %36 = ptrtoint ptr %cb_list.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %cb_list.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %37, %cb_list.i
  br i1 %cmp.i.not.i.i, label %for.body.i.list_splice.exit.i_crit_edge, label %if.then.i.i

for.body.i.list_splice.exit.i_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %35, ptr %prev3.i.i.i, align 4
  store ptr %37, ptr %35, align 4
  %43 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %39, ptr %41, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %44 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev6.i.i.i, align 4
  br label %list_splice.exit.i

list_splice.exit.i:                               ; preds = %if.then.i.i, %for.body.i.list_splice.exit.i_crit_edge
  %45 = ptrtoint ptr %.pn20.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn.i = load ptr, ptr %.pn20.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @flow_indir_dev_list
  br i1 %cmp.not.i, label %list_splice.exit.i.existing_qdiscs_register.exit_crit_edge, label %list_splice.exit.i.for.body.i_crit_edge

list_splice.exit.i.for.body.i_crit_edge:          ; preds = %list_splice.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

list_splice.exit.i.existing_qdiscs_register.exit_crit_edge: ; preds = %list_splice.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %existing_qdiscs_register.exit

existing_qdiscs_register.exit:                    ; preds = %list_splice.exit.i.existing_qdiscs_register.exit_crit_edge, %list_add.exit.existing_qdiscs_register.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %bo.i) #11
  call void @mutex_unlock(ptr noundef nonnull @flow_indr_block_lock) #11
  %call12 = call i32 @tcf_action_reoffload_cb(ptr noundef %cb, ptr noundef %cb_priv, i1 noundef zeroext true) #11
  br label %cleanup

cleanup:                                          ; preds = %existing_qdiscs_register.exit, %if.then9, %refcount_inc.exit
  %retval.0 = phi i32 [ 0, %refcount_inc.exit ], [ 0, %existing_qdiscs_register.exit ], [ -12, %if.then9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_action_reoffload_cb(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flow_indr_dev_unregister(ptr noundef %cb, ptr noundef %cb_priv, ptr noundef readnone %release) #0 align 64 {
entry:
  %cleanup_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cleanup_list) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %cleanup_list, i32 0, i32 1
  %1 = ptrtoint ptr %cleanup_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cleanup_list, ptr %cleanup_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cleanup_list, ptr %0, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @flow_indr_block_lock, i32 noundef 0) #11
  %3 = load ptr, ptr @flow_block_indr_dev_list, align 4
  %cmp.not46 = icmp eq ptr %3, @flow_block_indr_dev_list
  br i1 %cmp.not46, label %entry.if.then18_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.then18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %this.047 = phi ptr [ %next.048, %for.inc.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %this.047 to i32
  call void @__asan_load4_noabort(i32 %4)
  %next.048 = load ptr, ptr %this.047, align 4
  %cb7 = getelementptr inbounds %struct.flow_indr_dev, ptr %this.047, i32 0, i32 1
  %5 = ptrtoint ptr %cb7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cb7, align 4
  %cmp8 = icmp eq ptr %6, %cb
  br i1 %cmp8, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %cb_priv9 = getelementptr inbounds %struct.flow_indr_dev, ptr %this.047, i32 0, i32 2
  %7 = ptrtoint ptr %cb_priv9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cb_priv9, align 4
  %cmp10 = icmp eq ptr %8, %cb_priv
  br i1 %cmp10, label %land.lhs.true11, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true11:                                  ; preds = %land.lhs.true
  %refcnt = getelementptr inbounds %struct.flow_indr_dev, ptr %this.047, i32 0, i32 3
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !94
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #11
  %9 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #11, !srcloc !95
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i, !prof !93

if.end5.i.i.i.for.inc_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #11
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !96
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %this.047) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %this.047, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %this.047 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %this.047, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %for.end

for.inc:                                          ; preds = %if.then10.i.i.i, %if.end5.i.i.i.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %next.048, @flow_block_indr_dev_list
  br i1 %cmp.not, label %for.inc.if.then18_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.if.then18_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

for.end:                                          ; preds = %if.end.i.i, %if.then.for.end_crit_edge
  %16 = ptrtoint ptr %this.047 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %this.047, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %this.047, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %tobool.not = icmp eq ptr %this.047, null
  br i1 %tobool.not, label %for.end.if.then18_crit_edge, label %if.end19

for.end.if.then18_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

if.then18:                                        ; preds = %for.end.if.then18_crit_edge, %for.inc.if.then18_crit_edge, %entry.if.then18_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @flow_indr_block_lock) #11
  br label %cleanup

if.end19:                                         ; preds = %for.end
  %18 = load ptr, ptr @flow_block_indr_list, align 4
  %cmp.not27.i = icmp eq ptr %18, @flow_block_indr_list
  br i1 %cmp.not27.i, label %if.end19.__flow_block_indr_cleanup.exit_crit_edge, label %if.end19.for.body.i_crit_edge

if.end19.for.body.i_crit_edge:                    ; preds = %if.end19
  br label %for.body.i

if.end19.__flow_block_indr_cleanup.exit_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %__flow_block_indr_cleanup.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end19.for.body.i_crit_edge
  %.pn.in28.i = phi ptr [ %.pn30.i, %for.inc.i.for.body.i_crit_edge ], [ %18, %if.end19.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %.pn.in28.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn30.i = load ptr, ptr %.pn.in28.i, align 4
  %release7.i = getelementptr i8, ptr %.pn.in28.i, i32 -4
  %20 = ptrtoint ptr %release7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %release7.i, align 4
  %cmp8.i = icmp eq ptr %21, %release
  br i1 %cmp8.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %cb_priv10.i = getelementptr i8, ptr %.pn.in28.i, i32 24
  %22 = ptrtoint ptr %cb_priv10.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cb_priv10.i, align 4
  %cmp11.i = icmp eq ptr %23, %cb_priv
  br i1 %cmp11.i, label %if.then.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in28.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.__list_del_entry.exit.i.i_crit_edge

if.then.i.__list_del_entry.exit.i.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in28.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i, align 4
  %26 = ptrtoint ptr %.pn.in28.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %.pn.in28.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then.i.__list_del_entry.exit.i.i_crit_edge
  %30 = ptrtoint ptr %cleanup_list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cleanup_list, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in28.i, ptr noundef nonnull %cleanup_list, ptr noundef %31) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.for.inc.i_crit_edge

__list_del_entry.exit.i.i.for.inc.i_crit_edge:    ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %.pn.in28.i, ptr %prev1.i.i2.i.i, align 4
  %33 = ptrtoint ptr %.pn.in28.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %.pn.in28.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in28.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %cleanup_list, ptr %prev3.i.i.i.i, align 4
  %35 = ptrtoint ptr %cleanup_list to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %.pn.in28.i, ptr %cleanup_list, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn30.i, @flow_block_indr_list
  br i1 %cmp.not.i, label %for.inc.i.__flow_block_indr_cleanup.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.__flow_block_indr_cleanup.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__flow_block_indr_cleanup.exit

__flow_block_indr_cleanup.exit:                   ; preds = %for.inc.i.__flow_block_indr_cleanup.exit_crit_edge, %if.end19.__flow_block_indr_cleanup.exit_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @flow_indr_block_lock) #11
  %call20 = call i32 @tcf_action_reoffload_cb(ptr noundef %cb, ptr noundef %cb_priv, i1 noundef zeroext false) #11
  %36 = ptrtoint ptr %cleanup_list to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cleanup_list, align 4
  %cmp.not24.i = icmp eq ptr %37, %cleanup_list
  br i1 %cmp.not24.i, label %__flow_block_indr_cleanup.exit.flow_block_indr_notify.exit_crit_edge, label %__flow_block_indr_cleanup.exit.for.body.i36_crit_edge

__flow_block_indr_cleanup.exit.for.body.i36_crit_edge: ; preds = %__flow_block_indr_cleanup.exit
  br label %for.body.i36

__flow_block_indr_cleanup.exit.flow_block_indr_notify.exit_crit_edge: ; preds = %__flow_block_indr_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %flow_block_indr_notify.exit

for.body.i36:                                     ; preds = %list_del.exit.i.for.body.i36_crit_edge, %__flow_block_indr_cleanup.exit.for.body.i36_crit_edge
  %.pn.in25.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i36_crit_edge ], [ %37, %__flow_block_indr_cleanup.exit.for.body.i36_crit_edge ]
  %this.0.i = getelementptr i8, ptr %.pn.in25.i, i32 -32
  %38 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn.i = load ptr, ptr %.pn.in25.i, align 4
  %call.i.i.i35 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in25.i) #11
  br i1 %call.i.i.i35, label %if.end.i.i.i39, label %for.body.i36.list_del.exit.i_crit_edge

for.body.i36.list_del.exit.i_crit_edge:           ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i39:                                   ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i37 = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i.i37, align 4
  %41 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %.pn.in25.i, align 4
  %prev1.i.i.i.i38 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i.i38 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i.i38, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i39, %for.body.i36.list_del.exit.i_crit_edge
  %45 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in25.i, align 4
  %prev.i.i40 = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i40 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i40, align 4
  %cleanup.i = getelementptr i8, ptr %.pn.in25.i, i32 28
  %47 = ptrtoint ptr %cleanup.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cleanup.i, align 4
  call void %48(ptr noundef %this.0.i) #11
  %cmp.not.i41 = icmp eq ptr %.pn.i, %cleanup_list
  br i1 %cmp.not.i41, label %list_del.exit.i.flow_block_indr_notify.exit_crit_edge, label %list_del.exit.i.for.body.i36_crit_edge

list_del.exit.i.for.body.i36_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i36

list_del.exit.i.flow_block_indr_notify.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %flow_block_indr_notify.exit

flow_block_indr_notify.exit:                      ; preds = %list_del.exit.i.flow_block_indr_notify.exit_crit_edge, %__flow_block_indr_cleanup.exit.flow_block_indr_notify.exit_crit_edge
  call void @kfree(ptr noundef nonnull %this.047) #11
  br label %cleanup

cleanup:                                          ; preds = %flow_block_indr_notify.exit, %if.then18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cleanup_list) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @flow_indr_block_cb_alloc(ptr noundef %cb, ptr noundef %cb_ident, ptr noundef %cb_priv, ptr noundef %release, ptr nocapture noundef readonly %bo, ptr noundef %dev, ptr noundef %sch, ptr noundef %data, ptr noundef %indr_cb_priv, ptr noundef %cleanup) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 68) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %flow_block_cb_alloc.exit

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

flow_block_cb_alloc.exit:                         ; preds = %entry
  %cb2.i = getelementptr inbounds %struct.flow_block_cb, ptr %call7.i.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %cb2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cb, ptr %cb2.i, align 8
  %cb_ident3.i = getelementptr inbounds %struct.flow_block_cb, ptr %call7.i.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %cb_ident3.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cb_ident, ptr %cb_ident3.i, align 4
  %cb_priv4.i = getelementptr inbounds %struct.flow_block_cb, ptr %call7.i.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %cb_priv4.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cb_priv, ptr %cb_priv4.i, align 8
  %release5.i = getelementptr inbounds %struct.flow_block_cb, ptr %call7.i.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %release5.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %release, ptr %release5.i, align 4
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %flow_block_cb_alloc.exit.out_crit_edge, label %if.end

flow_block_cb_alloc.exit.out_crit_edge:           ; preds = %flow_block_cb_alloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %flow_block_cb_alloc.exit
  %binder_type.i = getelementptr inbounds %struct.flow_block_offload, ptr %bo, i32 0, i32 1
  %5 = ptrtoint ptr %binder_type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %binder_type.i, align 4
  %binder_type1.i = getelementptr inbounds %struct.flow_block_cb, ptr %call7.i.i.i, i32 0, i32 6, i32 3
  %7 = ptrtoint ptr %binder_type1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %binder_type1.i, align 8
  %data3.i = getelementptr inbounds %struct.flow_block_cb, ptr %call7.i.i.i, i32 0, i32 6, i32 4
  %8 = ptrtoint ptr %data3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %data, ptr %data3.i, align 4
  %cb_priv5.i = getelementptr inbounds %struct.flow_block_cb, ptr %call7.i.i.i, i32 0, i32 6, i32 5
  %9 = ptrtoint ptr %cb_priv5.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %indr_cb_priv, ptr %cb_priv5.i, align 8
  %dev7.i = getelementptr inbounds %struct.flow_block_cb, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %dev7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %dev7.i, align 8
  %sch9.i = getelementptr inbounds %struct.flow_block_cb, ptr %call7.i.i.i, i32 0, i32 6, i32 2
  %11 = ptrtoint ptr %sch9.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %sch, ptr %sch9.i, align 4
  %cleanup11.i = getelementptr inbounds %struct.flow_block_cb, ptr %call7.i.i.i, i32 0, i32 6, i32 6
  %12 = ptrtoint ptr %cleanup11.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cleanup, ptr %cleanup11.i, align 4
  %indr = getelementptr inbounds %struct.flow_block_cb, ptr %call7.i.i.i, i32 0, i32 6
  %13 = load ptr, ptr @flow_block_indr_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %indr, ptr noundef nonnull @flow_block_indr_list, ptr noundef %13) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %indr, ptr %prev1.i.i, align 4
  %15 = ptrtoint ptr %indr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %indr, align 8
  %prev3.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call7.i.i.i, i32 0, i32 6, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @flow_block_indr_list, ptr %prev3.i.i, align 4
  store volatile ptr %indr, ptr @flow_block_indr_list, align 4
  br label %out

out:                                              ; preds = %if.end.i.i, %if.end.out_crit_edge, %flow_block_cb_alloc.exit.out_crit_edge, %entry.out_crit_edge
  %retval.0.i8 = phi ptr [ %call7.i.i.i, %flow_block_cb_alloc.exit.out_crit_edge ], [ %call7.i.i.i, %if.end.out_crit_edge ], [ %call7.i.i.i, %if.end.i.i ], [ inttoptr (i32 -12 to ptr), %entry.out_crit_edge ]
  ret ptr %retval.0.i8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @flow_indr_dev_setup_offload(ptr noundef %dev, ptr noundef %sch, i32 noundef %type, ptr noundef %data, ptr noundef %bo, ptr noundef %cleanup) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @flow_indr_block_lock, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %bo, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bo, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %1, label %if.then.if.end7_crit_edge [
    i32 0, label %if.then.for.cond.i.i_crit_edge
    i32 1, label %if.then.for.cond.i.i42_crit_edge
  ]

if.then.for.cond.i.i42_crit_edge:                 ; preds = %if.then
  br label %for.cond.i.i42

if.then.for.cond.i.i_crit_edge:                   ; preds = %if.then
  br label %for.cond.i.i

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then.for.cond.i.i_crit_edge
  %.pn.in.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ @flow_indir_dev_list, %if.then.for.cond.i.i_crit_edge ]
  %3 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @flow_indir_dev_list
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.end.i_crit_edge, label %for.body.i.i

for.cond.i.i.if.end.i_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %cur.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -20
  %4 = ptrtoint ptr %cur.0.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur.0.i.i, align 4
  %cmp2.i.i = icmp eq ptr %5, %data
  br i1 %cmp2.i.i, label %find_indir_dev.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i

find_indir_dev.exit.i:                            ; preds = %for.body.i.i
  %cur.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -20
  %tobool.not.i = icmp eq ptr %cur.0.i.i.le, null
  br i1 %tobool.not.i, label %find_indir_dev.exit.i.if.end.i_crit_edge, label %find_indir_dev.exit.i.if.end7_crit_edge

find_indir_dev.exit.i.if.end7_crit_edge:          ; preds = %find_indir_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

find_indir_dev.exit.i.if.end.i_crit_edge:         ; preds = %find_indir_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %find_indir_dev.exit.i.if.end.i_crit_edge, %for.cond.i.i.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 40) #15
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.end7_crit_edge, label %if.end4.i

if.end.i.if.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end4.i:                                        ; preds = %if.end.i
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data, ptr %call7.i.i.i, align 8
  %dev6.i = getelementptr inbounds %struct.flow_indir_dev_info, ptr %call7.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %dev6.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %dev6.i, align 4
  %sch7.i = getelementptr inbounds %struct.flow_indir_dev_info, ptr %call7.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %sch7.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %sch, ptr %sch7.i, align 8
  %type8.i = getelementptr inbounds %struct.flow_indir_dev_info, ptr %call7.i.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %type8.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %type, ptr %type8.i, align 4
  %cleanup9.i = getelementptr inbounds %struct.flow_indir_dev_info, ptr %call7.i.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %cleanup9.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cleanup, ptr %cleanup9.i, align 8
  %12 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bo, align 4
  %command10.i = getelementptr inbounds %struct.flow_indir_dev_info, ptr %call7.i.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %command10.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %command10.i, align 4
  %binder_type.i = getelementptr inbounds %struct.flow_block_offload, ptr %bo, i32 0, i32 1
  %15 = ptrtoint ptr %binder_type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %binder_type.i, align 4
  %binder_type11.i = getelementptr inbounds %struct.flow_indir_dev_info, ptr %call7.i.i.i, i32 0, i32 7
  %17 = ptrtoint ptr %binder_type11.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %binder_type11.i, align 8
  %cb_list_head.i = getelementptr inbounds %struct.flow_block_offload, ptr %bo, i32 0, i32 10
  %18 = ptrtoint ptr %cb_list_head.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cb_list_head.i, align 4
  %cb_list.i = getelementptr inbounds %struct.flow_indir_dev_info, ptr %call7.i.i.i, i32 0, i32 8
  %20 = ptrtoint ptr %cb_list.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %cb_list.i, align 4
  %list.i = getelementptr inbounds %struct.flow_indir_dev_info, ptr %call7.i.i.i, i32 0, i32 5
  %21 = load ptr, ptr @flow_indir_dev_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef nonnull @flow_indir_dev_list, ptr noundef %21) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end4.i.if.end7_crit_edge

if.end4.i.if.end7_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end.i.i.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.flow_indir_dev_info, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @flow_indir_dev_list, ptr %prev3.i.i.i, align 8
  store volatile ptr %list.i, ptr @flow_indir_dev_list, align 4
  br label %if.end7

for.cond.i.i42:                                   ; preds = %for.body.i.i45.for.cond.i.i42_crit_edge, %if.then.for.cond.i.i42_crit_edge
  %.pn.in.i.i39 = phi ptr [ %.pn.i.i40, %for.body.i.i45.for.cond.i.i42_crit_edge ], [ @flow_indir_dev_list, %if.then.for.cond.i.i42_crit_edge ]
  %25 = ptrtoint ptr %.pn.in.i.i39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn.i.i40 = load ptr, ptr %.pn.in.i.i39, align 4
  %cmp.not.i.i41 = icmp eq ptr %.pn.i.i40, @flow_indir_dev_list
  br i1 %cmp.not.i.i41, label %for.cond.i.i42.if.end7_crit_edge, label %for.body.i.i45

for.cond.i.i42.if.end7_crit_edge:                 ; preds = %for.cond.i.i42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

for.body.i.i45:                                   ; preds = %for.cond.i.i42
  %cur.0.i.i43 = getelementptr i8, ptr %.pn.i.i40, i32 -20
  %26 = ptrtoint ptr %cur.0.i.i43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cur.0.i.i43, align 4
  %cmp2.i.i44 = icmp eq ptr %27, %data
  br i1 %cmp2.i.i44, label %find_indir_dev.exit.i48, label %for.body.i.i45.for.cond.i.i42_crit_edge

for.body.i.i45.for.cond.i.i42_crit_edge:          ; preds = %for.body.i.i45
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i42

find_indir_dev.exit.i48:                          ; preds = %for.body.i.i45
  %cur.0.i.i43.le = getelementptr i8, ptr %.pn.i.i40, i32 -20
  %tobool.not.i47 = icmp eq ptr %cur.0.i.i43.le, null
  br i1 %tobool.not.i47, label %find_indir_dev.exit.i48.if.end7_crit_edge, label %if.end.i50

find_indir_dev.exit.i48.if.end7_crit_edge:        ; preds = %find_indir_dev.exit.i48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end.i50:                                       ; preds = %find_indir_dev.exit.i48
  %call.i.i.i49 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i.i40) #11
  br i1 %call.i.i.i49, label %if.end.i.i.i51, label %if.end.i50.list_del.exit.i_crit_edge

if.end.i50.list_del.exit.i_crit_edge:             ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i51:                                   ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i.i40, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i.i, align 4
  %30 = ptrtoint ptr %.pn.i.i40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %.pn.i.i40, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i51, %if.end.i50.list_del.exit.i_crit_edge
  %34 = ptrtoint ptr %.pn.i.i40 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.i.i40, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i.i40, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %cur.0.i.i43.le) #11
  br label %if.end7

if.end7:                                          ; preds = %list_del.exit.i, %find_indir_dev.exit.i48.if.end7_crit_edge, %for.cond.i.i42.if.end7_crit_edge, %if.end.i.i.i, %if.end4.i.if.end7_crit_edge, %if.end.i.if.end7_crit_edge, %find_indir_dev.exit.i.if.end7_crit_edge, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %this.054 = load ptr, ptr @flow_block_indr_dev_list, align 4
  %cmp8.not55 = icmp eq ptr %this.054, @flow_block_indr_dev_list
  br i1 %cmp8.not55, label %if.end7.for.end_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end7.for.body_crit_edge
  %this.057 = phi ptr [ %this.0, %for.body.for.body_crit_edge ], [ %this.054, %if.end7.for.body_crit_edge ]
  %count.056 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %if.end7.for.body_crit_edge ]
  %cb = getelementptr inbounds %struct.flow_indr_dev, ptr %this.057, i32 0, i32 1
  %36 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cb, align 4
  %cb_priv = getelementptr inbounds %struct.flow_indr_dev, ptr %this.057, i32 0, i32 2
  %38 = ptrtoint ptr %cb_priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cb_priv, align 4
  %call9 = tail call i32 %37(ptr noundef %dev, ptr noundef %sch, ptr noundef %39, i32 noundef %type, ptr noundef %bo, ptr noundef %data, ptr noundef %cleanup) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  %inc = zext i1 %tobool10.not to i32
  %spec.select = add i32 %count.056, %inc
  %40 = ptrtoint ptr %this.057 to i32
  call void @__asan_load4_noabort(i32 %40)
  %this.0 = load ptr, ptr %this.057, align 4
  %cmp8.not = icmp eq ptr %this.0, @flow_block_indr_dev_list
  br i1 %cmp8.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end7.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %if.end7.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @flow_indr_block_lock) #11
  br i1 %tobool.not, label %for.end.cond.false_crit_edge, label %land.lhs.true

for.end.cond.false_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false

land.lhs.true:                                    ; preds = %for.end
  %cb_list = getelementptr inbounds %struct.flow_block_offload, ptr %bo, i32 0, i32 6
  %41 = ptrtoint ptr %cb_list to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %cb_list, align 4
  %cmp.i.not = icmp eq ptr %42, %cb_list
  br i1 %cmp.i.not, label %land.lhs.true.cond.end_crit_edge, label %land.lhs.true.cond.false_crit_edge

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.cond.false_crit_edge, %for.end.cond.false_crit_edge
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.lhs.true.cond.end_crit_edge
  %cond = phi i32 [ %count.0.lcssa, %cond.false ], [ -95, %land.lhs.true.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !76, !78, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__ksymtab_flow_rule_alloc, !1, !"__ksymtab_flow_rule_alloc", i1 false, i1 false}
!1 = !{!"../net/core/flow_offload.c", i32 29, i32 1}
!2 = !{ptr @__ksymtab_flow_rule_match_meta, !3, !"__ksymtab_flow_rule_match_meta", i1 false, i1 false}
!3 = !{!"../net/core/flow_offload.c", i32 63, i32 1}
!4 = !{ptr @__ksymtab_flow_rule_match_basic, !5, !"__ksymtab_flow_rule_match_basic", i1 false, i1 false}
!5 = !{!"../net/core/flow_offload.c", i32 70, i32 1}
!6 = !{ptr @__ksymtab_flow_rule_match_control, !7, !"__ksymtab_flow_rule_match_control", i1 false, i1 false}
!7 = !{!"../net/core/flow_offload.c", i32 77, i32 1}
!8 = !{ptr @__ksymtab_flow_rule_match_eth_addrs, !9, !"__ksymtab_flow_rule_match_eth_addrs", i1 false, i1 false}
!9 = !{!"../net/core/flow_offload.c", i32 84, i32 1}
!10 = !{ptr @__ksymtab_flow_rule_match_vlan, !11, !"__ksymtab_flow_rule_match_vlan", i1 false, i1 false}
!11 = !{!"../net/core/flow_offload.c", i32 91, i32 1}
!12 = !{ptr @__ksymtab_flow_rule_match_cvlan, !13, !"__ksymtab_flow_rule_match_cvlan", i1 false, i1 false}
!13 = !{!"../net/core/flow_offload.c", i32 98, i32 1}
!14 = !{ptr @__ksymtab_flow_rule_match_ipv4_addrs, !15, !"__ksymtab_flow_rule_match_ipv4_addrs", i1 false, i1 false}
!15 = !{!"../net/core/flow_offload.c", i32 105, i32 1}
!16 = !{ptr @__ksymtab_flow_rule_match_ipv6_addrs, !17, !"__ksymtab_flow_rule_match_ipv6_addrs", i1 false, i1 false}
!17 = !{!"../net/core/flow_offload.c", i32 112, i32 1}
!18 = !{ptr @__ksymtab_flow_rule_match_ip, !19, !"__ksymtab_flow_rule_match_ip", i1 false, i1 false}
!19 = !{!"../net/core/flow_offload.c", i32 119, i32 1}
!20 = !{ptr @__ksymtab_flow_rule_match_ports, !21, !"__ksymtab_flow_rule_match_ports", i1 false, i1 false}
!21 = !{!"../net/core/flow_offload.c", i32 126, i32 1}
!22 = !{ptr @__ksymtab_flow_rule_match_tcp, !23, !"__ksymtab_flow_rule_match_tcp", i1 false, i1 false}
!23 = !{!"../net/core/flow_offload.c", i32 133, i32 1}
!24 = !{ptr @__ksymtab_flow_rule_match_icmp, !25, !"__ksymtab_flow_rule_match_icmp", i1 false, i1 false}
!25 = !{!"../net/core/flow_offload.c", i32 140, i32 1}
!26 = !{ptr @__ksymtab_flow_rule_match_mpls, !27, !"__ksymtab_flow_rule_match_mpls", i1 false, i1 false}
!27 = !{!"../net/core/flow_offload.c", i32 147, i32 1}
!28 = !{ptr @__ksymtab_flow_rule_match_enc_control, !29, !"__ksymtab_flow_rule_match_enc_control", i1 false, i1 false}
!29 = !{!"../net/core/flow_offload.c", i32 154, i32 1}
!30 = !{ptr @__ksymtab_flow_rule_match_enc_ipv4_addrs, !31, !"__ksymtab_flow_rule_match_enc_ipv4_addrs", i1 false, i1 false}
!31 = !{!"../net/core/flow_offload.c", i32 161, i32 1}
!32 = !{ptr @__ksymtab_flow_rule_match_enc_ipv6_addrs, !33, !"__ksymtab_flow_rule_match_enc_ipv6_addrs", i1 false, i1 false}
!33 = !{!"../net/core/flow_offload.c", i32 168, i32 1}
!34 = !{ptr @__ksymtab_flow_rule_match_enc_ip, !35, !"__ksymtab_flow_rule_match_enc_ip", i1 false, i1 false}
!35 = !{!"../net/core/flow_offload.c", i32 175, i32 1}
!36 = !{ptr @__ksymtab_flow_rule_match_enc_ports, !37, !"__ksymtab_flow_rule_match_enc_ports", i1 false, i1 false}
!37 = !{!"../net/core/flow_offload.c", i32 182, i32 1}
!38 = !{ptr @__ksymtab_flow_rule_match_enc_keyid, !39, !"__ksymtab_flow_rule_match_enc_keyid", i1 false, i1 false}
!39 = !{!"../net/core/flow_offload.c", i32 189, i32 1}
!40 = !{ptr @__ksymtab_flow_rule_match_enc_opts, !41, !"__ksymtab_flow_rule_match_enc_opts", i1 false, i1 false}
!41 = !{!"../net/core/flow_offload.c", i32 196, i32 1}
!42 = !{ptr @__ksymtab_flow_action_cookie_create, !43, !"__ksymtab_flow_action_cookie_create", i1 false, i1 false}
!43 = !{!"../net/core/flow_offload.c", i32 211, i32 1}
!44 = !{ptr @__ksymtab_flow_action_cookie_destroy, !45, !"__ksymtab_flow_action_cookie_destroy", i1 false, i1 false}
!45 = !{!"../net/core/flow_offload.c", i32 217, i32 1}
!46 = !{ptr @__ksymtab_flow_rule_match_ct, !47, !"__ksymtab_flow_rule_match_ct", i1 false, i1 false}
!47 = !{!"../net/core/flow_offload.c", i32 224, i32 1}
!48 = !{ptr @__ksymtab_flow_block_cb_alloc, !49, !"__ksymtab_flow_block_cb_alloc", i1 false, i1 false}
!49 = !{!"../net/core/flow_offload.c", i32 243, i32 1}
!50 = !{ptr @__ksymtab_flow_block_cb_free, !51, !"__ksymtab_flow_block_cb_free", i1 false, i1 false}
!51 = !{!"../net/core/flow_offload.c", i32 252, i32 1}
!52 = !{ptr @__ksymtab_flow_block_cb_lookup, !53, !"__ksymtab_flow_block_cb_lookup", i1 false, i1 false}
!53 = !{!"../net/core/flow_offload.c", i32 267, i32 1}
!54 = !{ptr @__ksymtab_flow_block_cb_priv, !55, !"__ksymtab_flow_block_cb_priv", i1 false, i1 false}
!55 = !{!"../net/core/flow_offload.c", i32 273, i32 1}
!56 = !{ptr @__ksymtab_flow_block_cb_incref, !57, !"__ksymtab_flow_block_cb_incref", i1 false, i1 false}
!57 = !{!"../net/core/flow_offload.c", i32 279, i32 1}
!58 = !{ptr @__ksymtab_flow_block_cb_decref, !59, !"__ksymtab_flow_block_cb_decref", i1 false, i1 false}
!59 = !{!"../net/core/flow_offload.c", i32 285, i32 1}
!60 = !{ptr @__ksymtab_flow_block_cb_is_busy, !61, !"__ksymtab_flow_block_cb_is_busy", i1 false, i1 false}
!61 = !{!"../net/core/flow_offload.c", i32 300, i32 1}
!62 = !{ptr @__ksymtab_flow_block_cb_setup_simple, !63, !"__ksymtab_flow_block_cb_setup_simple", i1 false, i1 false}
!63 = !{!"../net/core/flow_offload.c", i32 340, i32 1}
!64 = !{ptr @__ksymtab_flow_indr_dev_register, !65, !"__ksymtab_flow_indr_dev_register", i1 false, i1 false}
!65 = !{!"../net/core/flow_offload.c", i32 425, i32 1}
!66 = !{ptr @__ksymtab_flow_indr_dev_unregister, !67, !"__ksymtab_flow_indr_dev_unregister", i1 false, i1 false}
!67 = !{!"../net/core/flow_offload.c", i32 479, i32 1}
!68 = !{ptr @__ksymtab_flow_indr_block_cb_alloc, !69, !"__ksymtab_flow_indr_block_cb_alloc", i1 false, i1 false}
!69 = !{!"../net/core/flow_offload.c", i32 516, i32 1}
!70 = !{ptr @__ksymtab_flow_indr_dev_setup_offload, !71, !"__ksymtab_flow_indr_dev_setup_offload", i1 false, i1 false}
!71 = !{!"../net/core/flow_offload.c", i32 597, i32 1}
!72 = !{ptr @.str, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/core/flow_offload.c", i32 342, i32 8}
!74 = !{ptr @.str.1, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @flow_indr_block_lock, !73, !"flow_indr_block_lock", i1 false, i1 false}
!76 = !{ptr @flow_block_indr_dev_list, !77, !"flow_block_indr_dev_list", i1 false, i1 false}
!77 = !{!"../net/core/flow_offload.c", i32 344, i32 8}
!78 = !{ptr @flow_indir_dev_list, !79, !"flow_indir_dev_list", i1 false, i1 false}
!79 = !{!"../net/core/flow_offload.c", i32 345, i32 8}
!80 = !{ptr @flow_block_indr_list, !81, !"flow_block_indr_list", i1 false, i1 false}
!81 = !{!"../net/core/flow_offload.c", i32 343, i32 8}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{i64 2148224924, i64 2148224956, i64 2148224985, i64 2148225019, i64 2148225050, i64 2148225073}
!92 = !{!"branch_weights", i32 1, i32 2000}
!93 = !{!"branch_weights", i32 2000, i32 1}
!94 = !{i64 2148312925}
!95 = !{i64 2148227389, i64 2148227421, i64 2148227450, i64 2148227484, i64 2148227515, i64 2148227538}
!96 = !{i64 2149881514}
