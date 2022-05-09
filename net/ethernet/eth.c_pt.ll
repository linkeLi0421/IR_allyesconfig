; ModuleID = '/llk/IR_all_yes/net/ethernet/eth.c_pt.bc'
source_filename = "../net/ethernet/eth.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+eth_header\22, \22a\22\09"
module asm "\09.weak\09__crc_eth_header\09\09\09\09"
module asm "\09.long\09__crc_eth_header\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eth_header:\09\09\09\09\09"
module asm "\09.asciz \09\22eth_header\22\09\09\09\09\09"
module asm "__kstrtabns_eth_header:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+eth_get_headlen\22, \22a\22\09"
module asm "\09.weak\09__crc_eth_get_headlen\09\09\09\09"
module asm "\09.long\09__crc_eth_get_headlen\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eth_get_headlen:\09\09\09\09\09"
module asm "\09.asciz \09\22eth_get_headlen\22\09\09\09\09\09"
module asm "__kstrtabns_eth_get_headlen:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+eth_type_trans\22, \22a\22\09"
module asm "\09.weak\09__crc_eth_type_trans\09\09\09\09"
module asm "\09.long\09__crc_eth_type_trans\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eth_type_trans:\09\09\09\09\09"
module asm "\09.asciz \09\22eth_type_trans\22\09\09\09\09\09"
module asm "__kstrtabns_eth_type_trans:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+eth_header_parse\22, \22a\22\09"
module asm "\09.weak\09__crc_eth_header_parse\09\09\09\09"
module asm "\09.long\09__crc_eth_header_parse\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eth_header_parse:\09\09\09\09\09"
module asm "\09.asciz \09\22eth_header_parse\22\09\09\09\09\09"
module asm "__kstrtabns_eth_header_parse:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+eth_header_cache\22, \22a\22\09"
module asm "\09.weak\09__crc_eth_header_cache\09\09\09\09"
module asm "\09.long\09__crc_eth_header_cache\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eth_header_cache:\09\09\09\09\09"
module asm "\09.asciz \09\22eth_header_cache\22\09\09\09\09\09"
module asm "__kstrtabns_eth_header_cache:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+eth_header_cache_update\22, \22a\22\09"
module asm "\09.weak\09__crc_eth_header_cache_update\09\09\09\09"
module asm "\09.long\09__crc_eth_header_cache_update\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eth_header_cache_update:\09\09\09\09\09"
module asm "\09.asciz \09\22eth_header_cache_update\22\09\09\09\09\09"
module asm "__kstrtabns_eth_header_cache_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+eth_header_parse_protocol\22, \22a\22\09"
module asm "\09.weak\09__crc_eth_header_parse_protocol\09\09\09\09"
module asm "\09.long\09__crc_eth_header_parse_protocol\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eth_header_parse_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22eth_header_parse_protocol\22\09\09\09\09\09"
module asm "__kstrtabns_eth_header_parse_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+eth_prepare_mac_addr_change\22, \22a\22\09"
module asm "\09.weak\09__crc_eth_prepare_mac_addr_change\09\09\09\09"
module asm "\09.long\09__crc_eth_prepare_mac_addr_change\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eth_prepare_mac_addr_change:\09\09\09\09\09"
module asm "\09.asciz \09\22eth_prepare_mac_addr_change\22\09\09\09\09\09"
module asm "__kstrtabns_eth_prepare_mac_addr_change:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+eth_commit_mac_addr_change\22, \22a\22\09"
module asm "\09.weak\09__crc_eth_commit_mac_addr_change\09\09\09\09"
module asm "\09.long\09__crc_eth_commit_mac_addr_change\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eth_commit_mac_addr_change:\09\09\09\09\09"
module asm "\09.asciz \09\22eth_commit_mac_addr_change\22\09\09\09\09\09"
module asm "__kstrtabns_eth_commit_mac_addr_change:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+eth_mac_addr\22, \22a\22\09"
module asm "\09.weak\09__crc_eth_mac_addr\09\09\09\09"
module asm "\09.long\09__crc_eth_mac_addr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eth_mac_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22eth_mac_addr\22\09\09\09\09\09"
module asm "__kstrtabns_eth_mac_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+eth_validate_addr\22, \22a\22\09"
module asm "\09.weak\09__crc_eth_validate_addr\09\09\09\09"
module asm "\09.long\09__crc_eth_validate_addr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eth_validate_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22eth_validate_addr\22\09\09\09\09\09"
module asm "__kstrtabns_eth_validate_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ether_setup\22, \22a\22\09"
module asm "\09.weak\09__crc_ether_setup\09\09\09\09"
module asm "\09.long\09__crc_ether_setup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ether_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22ether_setup\22\09\09\09\09\09"
module asm "__kstrtabns_ether_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+alloc_etherdev_mqs\22, \22a\22\09"
module asm "\09.weak\09__crc_alloc_etherdev_mqs\09\09\09\09"
module asm "\09.long\09__crc_alloc_etherdev_mqs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_etherdev_mqs:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_etherdev_mqs\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_etherdev_mqs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sysfs_format_mac\22, \22a\22\09"
module asm "\09.weak\09__crc_sysfs_format_mac\09\09\09\09"
module asm "\09.long\09__crc_sysfs_format_mac\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_format_mac:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_format_mac\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_format_mac:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+eth_gro_receive\22, \22a\22\09"
module asm "\09.weak\09__crc_eth_gro_receive\09\09\09\09"
module asm "\09.long\09__crc_eth_gro_receive\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eth_gro_receive:\09\09\09\09\09"
module asm "\09.asciz \09\22eth_gro_receive\22\09\09\09\09\09"
module asm "__kstrtabns_eth_gro_receive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+eth_gro_complete\22, \22a\22\09"
module asm "\09.weak\09__crc_eth_gro_complete\09\09\09\09"
module asm "\09.long\09__crc_eth_gro_complete\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eth_gro_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22eth_gro_complete\22\09\09\09\09\09"
module asm "__kstrtabns_eth_gro_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+eth_platform_get_mac_address\22, \22a\22\09"
module asm "\09.weak\09__crc_eth_platform_get_mac_address\09\09\09\09"
module asm "\09.long\09__crc_eth_platform_get_mac_address\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eth_platform_get_mac_address:\09\09\09\09\09"
module asm "\09.asciz \09\22eth_platform_get_mac_address\22\09\09\09\09\09"
module asm "__kstrtabns_eth_platform_get_mac_address:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+platform_get_ethdev_address\22, \22a\22\09"
module asm "\09.weak\09__crc_platform_get_ethdev_address\09\09\09\09"
module asm "\09.long\09__crc_platform_get_ethdev_address\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_platform_get_ethdev_address:\09\09\09\09\09"
module asm "\09.asciz \09\22platform_get_ethdev_address\22\09\09\09\09\09"
module asm "__kstrtabns_platform_get_ethdev_address:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fwnode_get_mac_address\22, \22a\22\09"
module asm "\09.weak\09__crc_fwnode_get_mac_address\09\09\09\09"
module asm "\09.long\09__crc_fwnode_get_mac_address\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_get_mac_address:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_get_mac_address\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_get_mac_address:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+device_get_mac_address\22, \22a\22\09"
module asm "\09.weak\09__crc_device_get_mac_address\09\09\09\09"
module asm "\09.long\09__crc_device_get_mac_address\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_get_mac_address:\09\09\09\09\09"
module asm "\09.asciz \09\22device_get_mac_address\22\09\09\09\09\09"
module asm "__kstrtabns_device_get_mac_address:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+device_get_ethdev_address\22, \22a\22\09"
module asm "\09.weak\09__crc_device_get_ethdev_address\09\09\09\09"
module asm "\09.long\09__crc_device_get_ethdev_address\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_get_ethdev_address:\09\09\09\09\09"
module asm "\09.asciz \09\22device_get_ethdev_address\22\09\09\09\09\09"
module asm "__kstrtabns_device_get_ethdev_address:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.flow_dissector = type { i32, [28 x i16] }
%struct.packet_offload = type { i16, i16, %struct.offload_callbacks, %struct.list_head }
%struct.offload_callbacks = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.148, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.148 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.flow_keys_basic = type { %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.149, %union.anon.150, [48 x i8], %union.anon.151, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.153, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%union.anon.149 = type { ptr }
%union.anon.150 = type { i64 }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type { i32, ptr }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.155, i32, i32, i32, i16, i16, %union.anon.157, i32, %union.anon.158, %union.anon.159, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.155 = type { i32 }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%union.anon.159 = type { i16 }
%struct.dsa_port = type { %union.anon.130, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.130 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.119 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.119 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.sk_buff_head = type { %union.anon.95, i32, %struct.spinlock }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }

@__kstrtab_eth_header = external dso_local constant [0 x i8], align 1
@__kstrtabns_eth_header = external dso_local constant [0 x i8], align 1
@__ksymtab_eth_header = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eth_header to i32), ptr @__kstrtab_eth_header, ptr @__kstrtabns_eth_header }, section "___ksymtab+eth_header", align 4
@__kstrtab_eth_get_headlen = external dso_local constant [0 x i8], align 1
@__kstrtabns_eth_get_headlen = external dso_local constant [0 x i8], align 1
@__ksymtab_eth_get_headlen = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eth_get_headlen to i32), ptr @__kstrtab_eth_get_headlen, ptr @__kstrtabns_eth_get_headlen }, section "___ksymtab+eth_get_headlen", align 4
@__kstrtab_eth_type_trans = external dso_local constant [0 x i8], align 1
@__kstrtabns_eth_type_trans = external dso_local constant [0 x i8], align 1
@__ksymtab_eth_type_trans = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eth_type_trans to i32), ptr @__kstrtab_eth_type_trans, ptr @__kstrtabns_eth_type_trans }, section "___ksymtab+eth_type_trans", align 4
@__kstrtab_eth_header_parse = external dso_local constant [0 x i8], align 1
@__kstrtabns_eth_header_parse = external dso_local constant [0 x i8], align 1
@__ksymtab_eth_header_parse = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eth_header_parse to i32), ptr @__kstrtab_eth_header_parse, ptr @__kstrtabns_eth_header_parse }, section "___ksymtab+eth_header_parse", align 4
@__kstrtab_eth_header_cache = external dso_local constant [0 x i8], align 1
@__kstrtabns_eth_header_cache = external dso_local constant [0 x i8], align 1
@__ksymtab_eth_header_cache = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eth_header_cache to i32), ptr @__kstrtab_eth_header_cache, ptr @__kstrtabns_eth_header_cache }, section "___ksymtab+eth_header_cache", align 4
@__kstrtab_eth_header_cache_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_eth_header_cache_update = external dso_local constant [0 x i8], align 1
@__ksymtab_eth_header_cache_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eth_header_cache_update to i32), ptr @__kstrtab_eth_header_cache_update, ptr @__kstrtabns_eth_header_cache_update }, section "___ksymtab+eth_header_cache_update", align 4
@__kstrtab_eth_header_parse_protocol = external dso_local constant [0 x i8], align 1
@__kstrtabns_eth_header_parse_protocol = external dso_local constant [0 x i8], align 1
@__ksymtab_eth_header_parse_protocol = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eth_header_parse_protocol to i32), ptr @__kstrtab_eth_header_parse_protocol, ptr @__kstrtabns_eth_header_parse_protocol }, section "___ksymtab+eth_header_parse_protocol", align 4
@__kstrtab_eth_prepare_mac_addr_change = external dso_local constant [0 x i8], align 1
@__kstrtabns_eth_prepare_mac_addr_change = external dso_local constant [0 x i8], align 1
@__ksymtab_eth_prepare_mac_addr_change = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eth_prepare_mac_addr_change to i32), ptr @__kstrtab_eth_prepare_mac_addr_change, ptr @__kstrtabns_eth_prepare_mac_addr_change }, section "___ksymtab+eth_prepare_mac_addr_change", align 4
@__kstrtab_eth_commit_mac_addr_change = external dso_local constant [0 x i8], align 1
@__kstrtabns_eth_commit_mac_addr_change = external dso_local constant [0 x i8], align 1
@__ksymtab_eth_commit_mac_addr_change = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eth_commit_mac_addr_change to i32), ptr @__kstrtab_eth_commit_mac_addr_change, ptr @__kstrtabns_eth_commit_mac_addr_change }, section "___ksymtab+eth_commit_mac_addr_change", align 4
@__kstrtab_eth_mac_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_eth_mac_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_eth_mac_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eth_mac_addr to i32), ptr @__kstrtab_eth_mac_addr, ptr @__kstrtabns_eth_mac_addr }, section "___ksymtab+eth_mac_addr", align 4
@__kstrtab_eth_validate_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_eth_validate_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_eth_validate_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eth_validate_addr to i32), ptr @__kstrtab_eth_validate_addr, ptr @__kstrtabns_eth_validate_addr }, section "___ksymtab+eth_validate_addr", align 4
@eth_header_ops = dso_local constant %struct.header_ops { ptr @eth_header, ptr @eth_header_parse, ptr @eth_header_cache, ptr @eth_header_cache_update, ptr null, ptr @eth_header_parse_protocol }, align 128
@__kstrtab_ether_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_ether_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_ether_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ether_setup to i32), ptr @__kstrtab_ether_setup, ptr @__kstrtabns_ether_setup }, section "___ksymtab+ether_setup", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"eth%d\00", [26 x i8] zeroinitializer }, align 32
@__kstrtab_alloc_etherdev_mqs = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_etherdev_mqs = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_etherdev_mqs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_etherdev_mqs to i32), ptr @__kstrtab_alloc_etherdev_mqs, ptr @__kstrtabns_alloc_etherdev_mqs }, section "___ksymtab+alloc_etherdev_mqs", align 4
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%*phC\0A\00", [25 x i8] zeroinitializer }, align 32
@__kstrtab_sysfs_format_mac = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_format_mac = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_format_mac = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_format_mac to i32), ptr @__kstrtab_sysfs_format_mac, ptr @__kstrtabns_sysfs_format_mac }, section "___ksymtab+sysfs_format_mac", align 4
@__kstrtab_eth_gro_receive = external dso_local constant [0 x i8], align 1
@__kstrtabns_eth_gro_receive = external dso_local constant [0 x i8], align 1
@__ksymtab_eth_gro_receive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eth_gro_receive to i32), ptr @__kstrtab_eth_gro_receive, ptr @__kstrtabns_eth_gro_receive }, section "___ksymtab+eth_gro_receive", align 4
@__kstrtab_eth_gro_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_eth_gro_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_eth_gro_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eth_gro_complete to i32), ptr @__kstrtab_eth_gro_complete, ptr @__kstrtabns_eth_gro_complete }, section "___ksymtab+eth_gro_complete", align 4
@__initcall__kmod_eth__538_495_eth_offload_init5 = internal global ptr @eth_offload_init, section ".initcall5.init", align 4
@__kstrtab_eth_platform_get_mac_address = external dso_local constant [0 x i8], align 1
@__kstrtabns_eth_platform_get_mac_address = external dso_local constant [0 x i8], align 1
@__ksymtab_eth_platform_get_mac_address = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eth_platform_get_mac_address to i32), ptr @__kstrtab_eth_platform_get_mac_address, ptr @__kstrtabns_eth_platform_get_mac_address }, section "___ksymtab+eth_platform_get_mac_address", align 4
@__kstrtab_platform_get_ethdev_address = external dso_local constant [0 x i8], align 1
@__kstrtabns_platform_get_ethdev_address = external dso_local constant [0 x i8], align 1
@__ksymtab_platform_get_ethdev_address = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @platform_get_ethdev_address to i32), ptr @__kstrtab_platform_get_ethdev_address, ptr @__kstrtabns_platform_get_ethdev_address }, section "___ksymtab+platform_get_ethdev_address", align 4
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mac-address\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"local-mac-address\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"address\00", [24 x i8] zeroinitializer }, align 32
@__kstrtab_fwnode_get_mac_address = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_get_mac_address = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_get_mac_address = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_get_mac_address to i32), ptr @__kstrtab_fwnode_get_mac_address, ptr @__kstrtabns_fwnode_get_mac_address }, section "___ksymtab+fwnode_get_mac_address", align 4
@__kstrtab_device_get_mac_address = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_get_mac_address = external dso_local constant [0 x i8], align 1
@__ksymtab_device_get_mac_address = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_get_mac_address to i32), ptr @__kstrtab_device_get_mac_address, ptr @__kstrtabns_device_get_mac_address }, section "___ksymtab+device_get_mac_address", align 4
@__kstrtab_device_get_ethdev_address = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_get_ethdev_address = external dso_local constant [0 x i8], align 1
@__ksymtab_device_get_ethdev_address = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_get_ethdev_address to i32), ptr @__kstrtab_device_get_ethdev_address, ptr @__kstrtabns_device_get_ethdev_address }, section "___ksymtab+device_get_ethdev_address", align 4
@flow_keys_basic_dissector = external dso_local global %struct.flow_dissector, align 4
@eth_packet_offload = internal global %struct.packet_offload { i16 25944, i16 10, %struct.offload_callbacks { ptr null, ptr @eth_gro_receive, ptr @eth_gro_complete }, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 4]
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 394, i32 39 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 401, i32 35 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 556, i32 29 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 616, i32 35 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [22 x i8] c"../net/ethernet/eth.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 617, i32 35 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__initcall__kmod_eth__538_495_eth_offload_init5, ptr @__ksymtab_alloc_etherdev_mqs, ptr @__ksymtab_device_get_ethdev_address, ptr @__ksymtab_device_get_mac_address, ptr @__ksymtab_eth_commit_mac_addr_change, ptr @__ksymtab_eth_get_headlen, ptr @__ksymtab_eth_gro_complete, ptr @__ksymtab_eth_gro_receive, ptr @__ksymtab_eth_header, ptr @__ksymtab_eth_header_cache, ptr @__ksymtab_eth_header_cache_update, ptr @__ksymtab_eth_header_parse, ptr @__ksymtab_eth_header_parse_protocol, ptr @__ksymtab_eth_mac_addr, ptr @__ksymtab_eth_platform_get_mac_address, ptr @__ksymtab_eth_prepare_mac_addr_change, ptr @__ksymtab_eth_type_trans, ptr @__ksymtab_eth_validate_addr, ptr @__ksymtab_ether_setup, ptr @__ksymtab_fwnode_get_mac_address, ptr @__ksymtab_platform_get_ethdev_address, ptr @__ksymtab_sysfs_format_mac, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @eth_header(ptr noundef %skb, ptr nocapture noundef readonly %dev, i16 noundef zeroext %type, ptr noundef readonly %daddr, ptr noundef readonly %saddr, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 14) #10
  %0 = zext i16 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i16 %type, label %entry.if.end_crit_edge [
    i16 1, label %entry.if.else_crit_edge
    i16 4, label %entry.if.else_crit_edge27
  ]

entry.if.else_crit_edge27:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else:                                          ; preds = %entry.if.else_crit_edge, %entry.if.else_crit_edge27
  %conv5 = trunc i32 %len to i16
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %conv5.sink = phi i16 [ %conv5, %if.else ], [ %type, %entry.if.end_crit_edge ]
  %h_proto6 = getelementptr inbounds %struct.ethhdr, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %h_proto6 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 %conv5.sink, ptr %h_proto6, align 1
  %tobool.not = icmp eq ptr %saddr, null
  br i1 %tobool.not, label %if.then7, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %saddr.addr.0 = phi ptr [ %saddr, %if.end.if.end8_crit_edge ], [ %3, %if.then7 ]
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %call, i32 0, i32 1
  %4 = call ptr @memcpy(ptr %h_source, ptr %saddr.addr.0, i32 6)
  %tobool9.not = icmp eq ptr %daddr, null
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %5 = call ptr @memcpy(ptr %call, ptr %daddr, i32 6)
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and = and i32 %7, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.then14

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %8 = call ptr @memset(ptr %call, i32 0, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end12.cleanup_crit_edge, %if.then10
  %retval.0 = phi i32 [ 14, %if.then10 ], [ 14, %if.then14 ], [ -14, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @eth_get_headlen(ptr nocapture noundef readonly %dev, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  %keys = alloca %struct.flow_keys_basic, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %keys) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %len)
  %cmp = icmp ult i32 %len, 14
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !67

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %h_proto, align 1
  %4 = call ptr @memset(ptr %keys, i32 0, i32 12)
  %call.i = call zeroext i1 @__skb_flow_dissect(ptr noundef %1, ptr noundef null, ptr noundef nonnull @flow_keys_basic_dissector, ptr noundef nonnull %keys, ptr noundef %data, i16 noundef zeroext %3, i32 noundef 14, i32 noundef %len, i32 noundef 1) #10
  br i1 %call.i, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %keys to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %keys, align 4
  %7 = call i16 @llvm.umax.i16(i16 %6, i16 14)
  %cond = zext i16 %7 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = call i32 @__skb_get_poff(ptr noundef null, ptr noundef %data, ptr noundef nonnull %keys, i32 noundef %len) #10
  %8 = call i32 @llvm.umin.i32(i32 %call7, i32 %len)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.end6 ], [ %cond, %if.then3 ], [ %len, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %keys) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_get_poff(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @eth_type_trans(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  %_service_access_point = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %_service_access_point) #10
  %0 = ptrtoint ptr %_service_access_point to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %_service_access_point, align 2, !annotation !68
  %1 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %1, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %7 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %9)
  %cmp.i = icmp ult i32 %9, 14
  br i1 %cmp.i, label %entry.skb_pull_inline.exit_crit_edge, label %cond.false.i, !prof !67

entry.skb_pull_inline.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_pull_inline.exit

cond.false.i:                                     ; preds = %entry
  %sub.i.i = add i32 %9, -14
  %10 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub.i.i, ptr %len1.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %11 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %12)
  %cmp.i.i = icmp ult i32 %sub.i.i, %12
  br i1 %cmp.i.i, label %do.body4.i.i, label %__skb_pull.exit.i, !prof !67

do.body4.i.i:                                     ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #10, !srcloc !69
  unreachable

__skb_pull.exit.i:                                ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 14
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i.i, ptr %data.i, align 4
  br label %skb_pull_inline.exit

skb_pull_inline.exit:                             ; preds = %__skb_pull.exit.i, %entry.skb_pull_inline.exit_crit_edge
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %14 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_addr, align 64
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %4, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %15, align 4
  %xor.i.i = xor i32 %19, %17
  %add.ptr.i.i71 = getelementptr i8, ptr %4, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i71 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i.i71, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %15, i32 4
  %22 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %23, %21
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i72 = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i72, label %skb_pull_inline.exit.if.end29_crit_edge, label %if.then, !prof !70

skb_pull_inline.exit.if.end29_crit_edge:          ; preds = %skb_pull_inline.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then:                                          ; preds = %skb_pull_inline.exit
  %24 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.i.not = icmp eq i32 %24, 0
  br i1 %tobool.i.i.not, label %if.else23, label %if.then13, !prof !70

if.then13:                                        ; preds = %if.then
  %broadcast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %25 = ptrtoint ptr %broadcast to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %broadcast, align 4
  %xor.i.i73 = xor i32 %26, %17
  %add.ptr1.i.i75 = getelementptr %struct.net_device, ptr %dev, i32 0, i32 99, i32 4
  %27 = ptrtoint ptr %add.ptr1.i.i75 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr1.i.i75, align 2
  %xor37.i.i76 = xor i16 %28, %21
  %xor3.i.i77 = zext i16 %xor37.i.i76 to i32
  %or.i.i78 = or i32 %xor.i.i73, %xor3.i.i77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i78)
  %cmp.i.i79 = icmp eq i32 %or.i.i78, 0
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %29 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.clear = and i16 %bf.load, 8191
  br i1 %cmp.i.i79, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set = or i16 %bf.clear, 8192
  %30 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %bf.set, ptr %pkt_type, align 8
  br label %if.end29

if.else:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set22 = or i16 %bf.clear, 16384
  %31 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %bf.set22, ptr %pkt_type, align 8
  br label %if.end29

if.else23:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %pkt_type24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %32 = ptrtoint ptr %pkt_type24 to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load25 = load i16, ptr %pkt_type24, align 8
  %bf.clear26 = and i16 %bf.load25, 8191
  %bf.set27 = or i16 %bf.clear26, 24576
  store i16 %bf.set27, ptr %pkt_type24, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.else23, %if.else, %if.then18, %skb_pull_inline.exit.if.end29_crit_edge
  %dsa_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 75
  %33 = ptrtoint ptr %dsa_ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dsa_ptr.i, align 4
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %if.end29.if.end38_crit_edge, label %netdev_uses_dsa.exit

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

netdev_uses_dsa.exit:                             ; preds = %if.end29
  %rcv.i = getelementptr inbounds %struct.dsa_port, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %rcv.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rcv.i, align 4
  %tobool2.i.not = icmp eq ptr %36, null
  br i1 %tobool2.i.not, label %netdev_uses_dsa.exit.if.end38_crit_edge, label %netdev_uses_dsa.exit.cleanup_crit_edge, !prof !70

netdev_uses_dsa.exit.cleanup_crit_edge:           ; preds = %netdev_uses_dsa.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

netdev_uses_dsa.exit.if.end38_crit_edge:          ; preds = %netdev_uses_dsa.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.end38:                                         ; preds = %netdev_uses_dsa.exit.if.end38_crit_edge, %if.end29.if.end38_crit_edge
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %4, i32 0, i32 2
  %37 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %h_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1535, i16 %38)
  %cmp.i80 = icmp ugt i16 %38, 1535
  br i1 %cmp.i80, label %if.end38.cleanup_crit_edge, label %if.end48, !prof !70

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end48:                                         ; preds = %if.end38
  %call49 = call fastcc ptr @skb_header_pointer(ptr noundef %skb, ptr noundef nonnull %_service_access_point)
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %if.end48.if.end53_crit_edge, label %land.lhs.true

if.end48.if.end53_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

land.lhs.true:                                    ; preds = %if.end48
  %39 = ptrtoint ptr %call49 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %call49, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %40)
  %cmp = icmp eq i16 %40, -1
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end53_crit_edge

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end53:                                         ; preds = %land.lhs.true.if.end53_crit_edge, %if.end48.if.end53_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %land.lhs.true.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %netdev_uses_dsa.exit.cleanup_crit_edge
  %retval.0 = phi i16 [ 4, %if.end53 ], [ 248, %netdev_uses_dsa.exit.cleanup_crit_edge ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ %38, %if.end38.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_service_access_point) #10
  ret i16 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_header_pointer(ptr noundef %skb, ptr noundef %buffer) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, 1
  br i1 %cmp.i, label %entry.__skb_header_pointer.exit_crit_edge, label %if.end.i, !prof !70

entry.__skb_header_pointer.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_header_pointer.exit

if.end.i:                                         ; preds = %entry
  %tobool2.not.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i, label %if.end.i.__skb_header_pointer.exit_crit_edge, label %lor.lhs.false.i

if.end.i.__skb_header_pointer.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_header_pointer.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 0, ptr noundef %buffer, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp3.i, ptr null, ptr %buffer, !prof !67
  br label %__skb_header_pointer.exit

__skb_header_pointer.exit:                        ; preds = %lor.lhs.false.i, %if.end.i.__skb_header_pointer.exit_crit_edge, %entry.__skb_header_pointer.exit_crit_edge
  %retval.0.i = phi ptr [ %1, %entry.__skb_header_pointer.exit_crit_edge ], [ null, %if.end.i.__skb_header_pointer.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  ret ptr %retval.0.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @eth_header_parse(ptr nocapture noundef readonly %skb, ptr nocapture noundef writeonly %haddr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %2 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %4 = call ptr @memcpy(ptr %haddr, ptr %h_source, i32 6)
  ret i32 6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @eth_header_cache(ptr nocapture noundef readonly %neigh, ptr noundef %hh, i16 noundef zeroext %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %type)
  %cmp = icmp eq i16 %type, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hh_data = getelementptr inbounds %struct.hh_cache, ptr %hh, i32 0, i32 2
  %add.ptr = getelementptr i8, ptr %hh_data, i32 2
  %dev1 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 25
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %h_proto = getelementptr i8, ptr %hh_data, i32 14
  %2 = ptrtoint ptr %h_proto to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 %type, ptr %h_proto, align 1
  %h_source = getelementptr %struct.hh_cache, ptr %hh, i32 0, i32 2, i32 2
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %3 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_addr, align 64
  %5 = call ptr @memcpy(ptr %h_source, ptr %4, i32 6)
  %ha = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 18
  %6 = call ptr @memcpy(ptr %add.ptr, ptr %ha, i32 6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !71
  %7 = ptrtoint ptr %hh to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 14, ptr %hh, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @eth_header_cache_update(ptr nocapture noundef writeonly %hh, ptr nocapture readnone %dev, ptr nocapture noundef readonly %haddr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hh_data = getelementptr inbounds %struct.hh_cache, ptr %hh, i32 0, i32 2
  %add.ptr = getelementptr i8, ptr %hh_data, i32 2
  %0 = call ptr @memcpy(ptr %add.ptr, ptr %haddr, i32 6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @eth_header_parse_protocol(ptr nocapture noundef readonly %skb) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %2 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %h_proto, align 1
  ret i16 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @eth_prepare_mac_addr_change(ptr noundef %dev, ptr nocapture noundef readonly %p) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags, align 16
  %and = and i64 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %4 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sa_data, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %or.i.i = or i32 %5, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  %spec.select = select i1 %cmp.i.i.not, i32 -99, i32 0
  br label %cleanup

cleanup:                                          ; preds = %is_valid_ether_addr.exit, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %land.lhs.true.cleanup_crit_edge ], [ -99, %if.end.cleanup_crit_edge ], [ %spec.select, %is_valid_ether_addr.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @eth_commit_mac_addr_change(ptr noundef %dev, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @eth_mac_addr(ptr noundef %dev, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %sa_data.i = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %4 = ptrtoint ptr %sa_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sa_data.i, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

is_valid_ether_addr.exit.i:                       ; preds = %if.end.i
  %add.ptr.i.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %8 to i32
  %or.i.i.i = or i32 %5, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.i.cleanup_crit_edge:     ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data.i, i32 noundef 6) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %is_valid_ether_addr.exit.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -99, %if.end.i.cleanup_crit_edge ], [ -16, %land.lhs.true.i.cleanup_crit_edge ], [ -99, %is_valid_ether_addr.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @eth_validate_addr(ptr nocapture noundef readonly %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %0 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_addr, align 64
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.is_valid_ether_addr.exit.thread_crit_edge

entry.is_valid_ether_addr.exit.thread_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_valid_ether_addr.exit.thread

is_valid_ether_addr.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %or.i.i = or i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  %spec.select = select i1 %cmp.i.i.not, i32 -99, i32 0
  br label %is_valid_ether_addr.exit.thread

is_valid_ether_addr.exit.thread:                  ; preds = %is_valid_ether_addr.exit, %entry.is_valid_ether_addr.exit.thread_crit_edge
  %7 = phi i32 [ -99, %entry.is_valid_ether_addr.exit.thread_crit_edge ], [ %spec.select, %is_valid_ether_addr.exit ]
  ret i32 %7
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ether_setup(ptr nocapture noundef %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %0 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @eth_header_ops, ptr %header_ops, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1, ptr %type, align 16
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 14, ptr %hard_header_len, align 2
  %min_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 33
  %3 = ptrtoint ptr %min_header_len to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 14, ptr %min_header_len, align 2
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1500, ptr %mtu, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 30
  %5 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 68, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %6 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1500, ptr %max_mtu, align 4
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %7 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 6, ptr %addr_len, align 1
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %8 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1000, ptr %tx_queue_len, align 16
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4098, ptr %flags, align 8
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %10 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %priv_flags, align 16
  %or = or i64 %11, 2048
  store i64 %or, ptr %priv_flags, align 16
  %broadcast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %12 = call ptr @memset(ptr %broadcast, i32 255, i32 6)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_etherdev_mqs(i32 noundef %sizeof_priv, i32 noundef %txqs, i32 noundef %rxqs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_netdev_mqs(i32 noundef %sizeof_priv, ptr noundef nonnull @.str, i8 noundef zeroext 0, ptr noundef nonnull @ether_setup, i32 noundef %txqs, i32 noundef %rxqs) #10
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sysfs_format_mac(ptr noundef %buf, ptr noundef %addr, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %len, ptr noundef %addr) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @eth_gro_receive(ptr noundef %head, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data_offset.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_offset.i, align 8
  %add = add i32 %1, 14
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 %1
  %frag0_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %4 = ptrtoint ptr %frag0_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frag0_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp.i.not = icmp ult i32 %5, %add
  br i1 %cmp.i.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then:                                          ; preds = %entry
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %7, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ugt i32 %add, %sub.i.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.skb_gro_header_slow.exit_crit_edge, !prof !67

if.then.skb_gro_header_slow.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_gro_header_slow.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp3.i.i = icmp ult i32 %7, %add
  br i1 %cmp3.i.i, label %if.end.i.i.if.then.i77_crit_edge, label %pskb_may_pull.exit.i, !prof !67

if.end.i.i.if.then.i77_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i77

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub i32 %add, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #10
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.if.then.i77_crit_edge, label %pskb_may_pull.exit.i.skb_gro_header_slow.exit_crit_edge

pskb_may_pull.exit.i.skb_gro_header_slow.exit_crit_edge: ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_gro_header_slow.exit

pskb_may_pull.exit.i.if.then.i77_crit_edge:       ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i77

skb_gro_header_slow.exit:                         ; preds = %pskb_may_pull.exit.i.skb_gro_header_slow.exit_crit_edge, %if.then.skb_gro_header_slow.exit_crit_edge
  %10 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %cb.i, align 8
  %11 = ptrtoint ptr %frag0_len.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %frag0_len.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %add.ptr.i70 = getelementptr i8, ptr %13, i32 %1
  %tobool4.not = icmp eq ptr %add.ptr.i70, null
  br i1 %tobool4.not, label %skb_gro_header_slow.exit.if.then.i77_crit_edge, label %skb_gro_header_slow.exit.if.end9_crit_edge, !prof !67

skb_gro_header_slow.exit.if.end9_crit_edge:       ; preds = %skb_gro_header_slow.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

skb_gro_header_slow.exit.if.then.i77_crit_edge:   ; preds = %skb_gro_header_slow.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i77

if.end9:                                          ; preds = %skb_gro_header_slow.exit.if.end9_crit_edge, %entry.if.end9_crit_edge
  %eh.0 = phi ptr [ %add.ptr.i70, %skb_gro_header_slow.exit.if.end9_crit_edge ], [ %add.ptr.i, %entry.if.end9_crit_edge ]
  %14 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %14)
  %p.087 = load ptr, ptr %head, align 4
  %cmp.not88 = icmp eq ptr %p.087, %head
  br i1 %cmp.not88, label %if.end9.for.end_crit_edge, label %for.body.lr.ph

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end9
  %add.ptr.i71 = getelementptr i8, ptr %eh.0, i32 2
  %arrayidx5.i = getelementptr i8, ptr %eh.0, i32 6
  %arrayidx9.i = getelementptr i8, ptr %eh.0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %p.089 = phi ptr [ %p.087, %for.body.lr.ph ], [ %p.0, %for.inc.for.body_crit_edge ]
  %same_flow = getelementptr inbounds %struct.sk_buff, ptr %p.089, i32 0, i32 3, i32 26
  %15 = ptrtoint ptr %same_flow to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load = load i16, ptr %same_flow, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool12.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool12.not, label %for.body.for.inc_crit_edge, label %if.end14

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end14:                                         ; preds = %for.body
  %data = getelementptr inbounds %struct.sk_buff, ptr %p.089, i32 0, i32 19
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %add.ptr15 = getelementptr i8, ptr %17, i32 %1
  %add.ptr1.i = getelementptr i8, ptr %add.ptr15, i32 2
  %18 = ptrtoint ptr %eh.0 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %eh.0, align 2
  %20 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr15, align 2
  %xor19.i = xor i16 %21, %19
  %xor.i = zext i16 %xor19.i to i32
  %22 = ptrtoint ptr %add.ptr.i71 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i71, align 4
  %24 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr1.i, align 4
  %xor4.i = xor i32 %25, %23
  %or.i = or i32 %xor4.i, %xor.i
  %26 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx5.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %add.ptr15, i32 6
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %29, %27
  %or8.i = or i32 %or.i, %xor7.i
  %30 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx10.i = getelementptr i8, ptr %add.ptr15, i32 10
  %32 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx10.i, align 4
  %xor11.i = xor i32 %33, %31
  %or12.i = or i32 %or8.i, %xor11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or12.i)
  %tobool17.not = icmp eq i32 %or12.i, 0
  br i1 %tobool17.not, label %if.end14.for.inc_crit_edge, label %if.then18

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear = and i16 %bf.load, 32767
  %34 = ptrtoint ptr %same_flow to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %bf.clear, ptr %same_flow, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %if.end14.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %35 = ptrtoint ptr %p.089 to i32
  call void @__asan_load4_noabort(i32 %35)
  %p.0 = load ptr, ptr %p.089, align 4
  %cmp.not = icmp eq ptr %p.0, %head
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end9.for.end_crit_edge
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %eh.0, i32 0, i32 2
  %36 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %h_proto, align 1
  %call28 = tail call ptr @gro_find_receive_by_type(i16 noundef zeroext %37) #10
  %cmp29 = icmp eq ptr %call28, null
  br i1 %cmp29, label %for.end.if.then.i77_crit_edge, label %if.end31

for.end.if.then.i77_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i77

if.end31:                                         ; preds = %for.end
  %38 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_offset.i, align 8
  %add.i = add i32 %39, 14
  store i32 %add.i, ptr %data_offset.i, align 8
  %csum_valid.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %40 = ptrtoint ptr %csum_valid.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load.i = load i16, ptr %csum_valid.i, align 2
  %41 = and i16 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool.not.i = icmp eq i16 %41, 0
  br i1 %tobool.not.i, label %if.end31.skb_gro_postpull_rcsum.exit_crit_edge, label %if.then.i

if.end31.skb_gro_postpull_rcsum.exit_crit_edge:   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_gro_postpull_rcsum.exit

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %csum.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %42 = ptrtoint ptr %csum.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %csum.i, align 4
  %sub.i.i73 = sub i32 0, %43
  %call3.i = tail call i32 @csum_partial(ptr noundef %eh.0, i32 noundef 14, i32 noundef %sub.i.i73) #10
  %sub.i2.i = sub i32 0, %call3.i
  %44 = ptrtoint ptr %csum.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub.i2.i, ptr %csum.i, align 4
  br label %skb_gro_postpull_rcsum.exit

skb_gro_postpull_rcsum.exit:                      ; preds = %if.then.i, %if.end31.skb_gro_postpull_rcsum.exit_crit_edge
  %45 = ptrtoint ptr %csum_valid.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %bf.load.i75 = load i16, ptr %csum_valid.i, align 2
  %46 = trunc i16 %bf.load.i75 to i8
  %47 = lshr i8 %46, 1
  %inc.i = add nuw i8 %47, 1
  %48 = and i8 %inc.i, 15
  %49 = shl nuw nsw i8 %48, 1
  %bf.shl.i = zext i8 %49 to i16
  %bf.clear2.i = and i16 %bf.load.i75, -31
  %bf.set.i = or i16 %bf.clear2.i, %bf.shl.i
  store i16 %bf.set.i, ptr %csum_valid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %48)
  %cmp.i76.not = icmp eq i8 %48, 15
  br i1 %cmp.i76.not, label %cond.true, label %out, !prof !67

cond.true:                                        ; preds = %skb_gro_postpull_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #12
  %flush43 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %50 = ptrtoint ptr %flush43 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %flush43, align 4
  %52 = or i16 %51, 1
  store i16 %52, ptr %flush43, align 4
  br label %if.then.i77

out:                                              ; preds = %skb_gro_postpull_rcsum.exit
  %gro_receive = getelementptr inbounds %struct.packet_offload, ptr %call28, i32 0, i32 2, i32 1
  %53 = ptrtoint ptr %gro_receive to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %gro_receive, align 4
  %call45 = tail call ptr %54(ptr noundef %head, ptr noundef %skb) #10
  %cmp.not.i = icmp eq ptr %call45, inttoptr (i32 -115 to ptr)
  br i1 %cmp.not.i, label %out.skb_gro_flush_final.exit_crit_edge, label %out.if.then.i77_crit_edge

out.if.then.i77_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i77

out.skb_gro_flush_final.exit_crit_edge:           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_gro_flush_final.exit

if.then.i77:                                      ; preds = %out.if.then.i77_crit_edge, %cond.true, %for.end.if.then.i77_crit_edge, %skb_gro_header_slow.exit.if.then.i77_crit_edge, %pskb_may_pull.exit.i.if.then.i77_crit_edge, %if.end.i.i.if.then.i77_crit_edge
  %pp.085 = phi ptr [ %call45, %out.if.then.i77_crit_edge ], [ null, %skb_gro_header_slow.exit.if.then.i77_crit_edge ], [ null, %for.end.if.then.i77_crit_edge ], [ null, %cond.true ], [ null, %pskb_may_pull.exit.i.if.then.i77_crit_edge ], [ null, %if.end.i.i.if.then.i77_crit_edge ]
  %flush.084 = phi i16 [ 0, %out.if.then.i77_crit_edge ], [ 1, %skb_gro_header_slow.exit.if.then.i77_crit_edge ], [ 1, %for.end.if.then.i77_crit_edge ], [ 0, %cond.true ], [ 1, %pskb_may_pull.exit.i.if.then.i77_crit_edge ], [ 1, %if.end.i.i.if.then.i77_crit_edge ]
  %flush1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %55 = ptrtoint ptr %flush1.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %flush1.i, align 4
  %conv2.i = or i16 %56, %flush.084
  store i16 %conv2.i, ptr %flush1.i, align 4
  br label %skb_gro_flush_final.exit

skb_gro_flush_final.exit:                         ; preds = %if.then.i77, %out.skb_gro_flush_final.exit_crit_edge
  %pp.086 = phi ptr [ inttoptr (i32 -115 to ptr), %out.skb_gro_flush_final.exit_crit_edge ], [ %pp.085, %if.then.i77 ]
  ret ptr %pp.086
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gro_find_receive_by_type(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @eth_gro_complete(ptr noundef %skb, i32 noundef %nhoff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %nhoff
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr, i32 0, i32 2
  %2 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %h_proto, align 1
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %4 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %encapsulation, align 8
  %5 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %inner_mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 17
  %8 = trunc i32 %nhoff to i16
  %conv1.i = add i16 %conv.i.i, %8
  %9 = ptrtoint ptr %inner_mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv1.i, ptr %inner_mac_header.i.i, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call ptr @gro_find_complete_by_type(i16 noundef zeroext %3) #10
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.end.if.end3_crit_edge, label %if.then1

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %gro_complete = getelementptr inbounds %struct.packet_offload, ptr %call, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %gro_complete to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gro_complete, align 4
  %add = add i32 %nhoff, 14
  %call2 = tail call i32 %11(ptr noundef %skb, i32 noundef %add) #10
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %err.0 = phi i32 [ %call2, %if.then1 ], [ -38, %if.end.if.end3_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gro_find_complete_by_type(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @eth_offload_init() #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dev_add_offload(ptr noundef nonnull @eth_packet_offload) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local ptr @arch_get_platform_mac_address() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @eth_platform_get_mac_address(ptr nocapture noundef readonly %dev, ptr noundef %mac_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_get_mac_address(ptr noundef %1, ptr noundef %mac_addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @arch_get_platform_mac_address()
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call1, align 4
  %4 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %mac_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %call1, i32 4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %mac_addr, i32 4
  %7 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %add.ptr1.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ 0, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @platform_get_ethdev_address(ptr nocapture noundef readonly %dev, ptr noundef %netdev) #0 align 64 {
entry:
  %addr = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #10
  %0 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %1 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  %call.i = call i32 @of_get_mac_address(ptr noundef %3, ptr noundef nonnull %addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.i:                                         ; preds = %entry
  %call1.i = call ptr @arch_get_platform_mac_address() #10
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.end4.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call1.i, align 4
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %addr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %0, align 4
  br label %if.then

if.then:                                          ; preds = %if.end4.i, %entry.if.then_crit_edge
  call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end.i.if.end_crit_edge
  %retval.0.i5 = phi i32 [ 0, %if.then ], [ -19, %if.end.i.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #10
  ret i32 %retval.0.i5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvmem_get_mac_address(ptr noundef %dev, ptr nocapture noundef writeonly %addrbuf) local_unnamed_addr #0 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #10
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !68
  %call = tail call ptr @nvmem_cell_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call ptr @nvmem_cell_read(ptr noundef %call, ptr noundef nonnull %len) #10
  call void @nvmem_cell_put(ptr noundef %call) #10
  %cmp.i21 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i21, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cmp.not = icmp eq i32 %4, 6
  br i1 %cmp.not, label %lor.lhs.false, label %if.end7.if.then9_crit_edge

if.end7.if.then9_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end7
  %5 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call3, align 4
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %lor.lhs.false.if.then9_crit_edge

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

is_valid_ether_addr.exit:                         ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr i8, ptr %call3, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %9 to i32
  %or.i.i = or i32 %6, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.then9_crit_edge, label %if.end10

is_valid_ether_addr.exit.if.then9_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

if.then9:                                         ; preds = %is_valid_ether_addr.exit.if.then9_crit_edge, %lor.lhs.false.if.then9_crit_edge, %if.end7.if.then9_crit_edge
  call void @kfree(ptr noundef %call3) #10
  br label %cleanup

if.end10:                                         ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %addrbuf to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %6, ptr %addrbuf, align 4
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %addrbuf, i32 4
  %13 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %add.ptr1.i, align 2
  call void @kfree(ptr noundef %call3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then5, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %2, %if.then5 ], [ -22, %if.then9 ], [ 0, %if.end10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmem_cell_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fwnode_get_mac_address(ptr noundef %fwnode, ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @fwnode_property_read_u8_array(ptr noundef %fwnode, ptr noundef nonnull @.str.2, ptr noundef %addr, i32 noundef 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.lor.lhs.false_crit_edge

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %if.end.i.lor.lhs.false_crit_edge

if.end.i.lor.lhs.false_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

is_valid_ether_addr.exit.i:                       ; preds = %if.end.i
  %add.ptr.i.i.i = getelementptr i8, ptr %addr, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %4 to i32
  %or.i.i.i = or i32 %1, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.lor.lhs.false_crit_edge, label %is_valid_ether_addr.exit.i.return_crit_edge

is_valid_ether_addr.exit.i.return_crit_edge:      ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

is_valid_ether_addr.exit.i.lor.lhs.false_crit_edge: ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %is_valid_ether_addr.exit.i.lor.lhs.false_crit_edge, %if.end.i.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %call.i10 = tail call i32 @fwnode_property_read_u8_array(ptr noundef %fwnode, ptr noundef nonnull @.str.3, ptr noundef %addr, i32 noundef 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %tobool.not.i11 = icmp eq i32 %call.i10, 0
  br i1 %tobool.not.i11, label %if.end.i13, label %lor.lhs.false.lor.lhs.false3_crit_edge

lor.lhs.false.lor.lhs.false3_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false3

if.end.i13:                                       ; preds = %lor.lhs.false
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr, align 4
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i.i12 = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i.i12, label %is_valid_ether_addr.exit.i19, label %if.end.i13.lor.lhs.false3_crit_edge

if.end.i13.lor.lhs.false3_crit_edge:              ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false3

is_valid_ether_addr.exit.i19:                     ; preds = %if.end.i13
  %add.ptr.i.i.i14 = getelementptr i8, ptr %addr, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i.i14 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i.i.i14, align 2
  %conv.i.i.i15 = zext i16 %9 to i32
  %or.i.i.i16 = or i32 %6, %conv.i.i.i15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i16)
  %cmp.i.i.not.i17 = icmp eq i32 %or.i.i.i16, 0
  br i1 %cmp.i.i.not.i17, label %is_valid_ether_addr.exit.i19.lor.lhs.false3_crit_edge, label %is_valid_ether_addr.exit.i19.return_crit_edge

is_valid_ether_addr.exit.i19.return_crit_edge:    ; preds = %is_valid_ether_addr.exit.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

is_valid_ether_addr.exit.i19.lor.lhs.false3_crit_edge: ; preds = %is_valid_ether_addr.exit.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %is_valid_ether_addr.exit.i19.lor.lhs.false3_crit_edge, %if.end.i13.lor.lhs.false3_crit_edge, %lor.lhs.false.lor.lhs.false3_crit_edge
  %call.i22 = tail call i32 @fwnode_property_read_u8_array(ptr noundef %fwnode, ptr noundef nonnull @.str.4, ptr noundef %addr, i32 noundef 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool.not.i23 = icmp eq i32 %call.i22, 0
  br i1 %tobool.not.i23, label %if.end.i25, label %lor.lhs.false3.fwnode_get_mac_addr.exit33.thread_crit_edge

lor.lhs.false3.fwnode_get_mac_addr.exit33.thread_crit_edge: ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %fwnode_get_mac_addr.exit33.thread

if.end.i25:                                       ; preds = %lor.lhs.false3
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr, align 4
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i.i24 = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i.i24, label %is_valid_ether_addr.exit.i31, label %if.end.i25.fwnode_get_mac_addr.exit33.thread_crit_edge

if.end.i25.fwnode_get_mac_addr.exit33.thread_crit_edge: ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #12
  br label %fwnode_get_mac_addr.exit33.thread

is_valid_ether_addr.exit.i31:                     ; preds = %if.end.i25
  %add.ptr.i.i.i26 = getelementptr i8, ptr %addr, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i.i26 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i.i.i26, align 2
  %conv.i.i.i27 = zext i16 %14 to i32
  %or.i.i.i28 = or i32 %11, %conv.i.i.i27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i28)
  %cmp.i.i.not.i29 = icmp eq i32 %or.i.i.i28, 0
  br i1 %cmp.i.i.not.i29, label %is_valid_ether_addr.exit.i31.fwnode_get_mac_addr.exit33.thread_crit_edge, label %is_valid_ether_addr.exit.i31.return_crit_edge

is_valid_ether_addr.exit.i31.return_crit_edge:    ; preds = %is_valid_ether_addr.exit.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

is_valid_ether_addr.exit.i31.fwnode_get_mac_addr.exit33.thread_crit_edge: ; preds = %is_valid_ether_addr.exit.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %fwnode_get_mac_addr.exit33.thread

fwnode_get_mac_addr.exit33.thread:                ; preds = %is_valid_ether_addr.exit.i31.fwnode_get_mac_addr.exit33.thread_crit_edge, %if.end.i25.fwnode_get_mac_addr.exit33.thread_crit_edge, %lor.lhs.false3.fwnode_get_mac_addr.exit33.thread_crit_edge
  br label %return

return:                                           ; preds = %fwnode_get_mac_addr.exit33.thread, %is_valid_ether_addr.exit.i31.return_crit_edge, %is_valid_ether_addr.exit.i19.return_crit_edge, %is_valid_ether_addr.exit.i.return_crit_edge
  %retval.0 = phi i32 [ 0, %is_valid_ether_addr.exit.i.return_crit_edge ], [ 0, %is_valid_ether_addr.exit.i19.return_crit_edge ], [ -2, %fwnode_get_mac_addr.exit33.thread ], [ 0, %is_valid_ether_addr.exit.i31.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @device_get_mac_address(ptr noundef %dev, ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dev_fwnode(ptr noundef %dev) #10
  %call1 = tail call i32 @fwnode_get_mac_address(ptr noundef %call, ptr noundef %addr)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @device_get_ethdev_address(ptr noundef %dev, ptr noundef %netdev) #0 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #10
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %call.i = tail call ptr @dev_fwnode(ptr noundef %dev) #10
  %call1.i = call i32 @fwnode_get_mac_address(ptr noundef %call.i, ptr noundef nonnull %addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #10
  ret i32 %call1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__skb_flow_dissect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_offload(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__ksymtab_eth_header, !1, !"__ksymtab_eth_header", i1 false, i1 false}
!1 = !{!"../net/ethernet/eth.c", i32 114, i32 1}
!2 = !{ptr @__ksymtab_eth_get_headlen, !3, !"__ksymtab_eth_get_headlen", i1 false, i1 false}
!3 = !{!"../net/ethernet/eth.c", i32 144, i32 1}
!4 = !{ptr @__ksymtab_eth_type_trans, !5, !"__ksymtab_eth_type_trans", i1 false, i1 false}
!5 = !{!"../net/ethernet/eth.c", i32 206, i32 1}
!6 = !{ptr @__ksymtab_eth_header_parse, !7, !"__ksymtab_eth_header_parse", i1 false, i1 false}
!7 = !{!"../net/ethernet/eth.c", i32 219, i32 1}
!8 = !{ptr @__ksymtab_eth_header_cache, !9, !"__ksymtab_eth_header_cache", i1 false, i1 false}
!9 = !{!"../net/ethernet/eth.c", i32 251, i32 1}
!10 = !{ptr @__ksymtab_eth_header_cache_update, !11, !"__ksymtab_eth_header_cache_update", i1 false, i1 false}
!11 = !{!"../net/ethernet/eth.c", i32 268, i32 1}
!12 = !{ptr @__ksymtab_eth_header_parse_protocol, !13, !"__ksymtab_eth_header_parse_protocol", i1 false, i1 false}
!13 = !{!"../net/ethernet/eth.c", i32 280, i32 1}
!14 = !{ptr @__ksymtab_eth_prepare_mac_addr_change, !15, !"__ksymtab_eth_prepare_mac_addr_change", i1 false, i1 false}
!15 = !{!"../net/ethernet/eth.c", i32 297, i32 1}
!16 = !{ptr @__ksymtab_eth_commit_mac_addr_change, !17, !"__ksymtab_eth_commit_mac_addr_change", i1 false, i1 false}
!17 = !{!"../net/ethernet/eth.c", i32 310, i32 1}
!18 = !{ptr @__ksymtab_eth_mac_addr, !19, !"__ksymtab_eth_mac_addr", i1 false, i1 false}
!19 = !{!"../net/ethernet/eth.c", i32 332, i32 1}
!20 = !{ptr @__ksymtab_eth_validate_addr, !21, !"__ksymtab_eth_validate_addr", i1 false, i1 false}
!21 = !{!"../net/ethernet/eth.c", i32 341, i32 1}
!22 = !{ptr @eth_header_ops, !23, !"eth_header_ops", i1 false, i1 false}
!23 = !{!"../net/ethernet/eth.c", i32 343, i32 25}
!24 = !{ptr @__ksymtab_ether_setup, !25, !"__ksymtab_ether_setup", i1 false, i1 false}
!25 = !{!"../net/ethernet/eth.c", i32 374, i32 1}
!26 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/ethernet/eth.c", i32 394, i32 39}
!28 = !{ptr @__ksymtab_alloc_etherdev_mqs, !29, !"__ksymtab_alloc_etherdev_mqs", i1 false, i1 false}
!29 = !{!"../net/ethernet/eth.c", i32 397, i32 1}
!30 = !{ptr @.str.1, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/ethernet/eth.c", i32 401, i32 35}
!32 = !{ptr @__ksymtab_sysfs_format_mac, !33, !"__ksymtab_sysfs_format_mac", i1 false, i1 false}
!33 = !{!"../net/ethernet/eth.c", i32 403, i32 1}
!34 = !{ptr @__ksymtab_eth_gro_receive, !35, !"__ksymtab_eth_gro_receive", i1 false, i1 false}
!35 = !{!"../net/ethernet/eth.c", i32 457, i32 1}
!36 = !{ptr @__ksymtab_eth_gro_complete, !37, !"__ksymtab_eth_gro_complete", i1 false, i1 false}
!37 = !{!"../net/ethernet/eth.c", i32 477, i32 1}
!38 = !{ptr @__initcall__kmod_eth__538_495_eth_offload_init5, !39, !"__initcall__kmod_eth__538_495_eth_offload_init5", i1 false, i1 false}
!39 = !{!"../net/ethernet/eth.c", i32 495, i32 1}
!40 = !{ptr @__ksymtab_eth_platform_get_mac_address, !41, !"__ksymtab_eth_platform_get_mac_address", i1 false, i1 false}
!41 = !{!"../net/ethernet/eth.c", i32 519, i32 1}
!42 = !{ptr @__ksymtab_platform_get_ethdev_address, !43, !"__ksymtab_platform_get_ethdev_address", i1 false, i1 false}
!43 = !{!"../net/ethernet/eth.c", i32 539, i32 1}
!44 = !{ptr @.str.2, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/ethernet/eth.c", i32 556, i32 29}
!46 = !{ptr @.str.3, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/ethernet/eth.c", i32 616, i32 35}
!48 = !{ptr @.str.4, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/ethernet/eth.c", i32 617, i32 35}
!50 = !{ptr @__ksymtab_fwnode_get_mac_address, !51, !"__ksymtab_fwnode_get_mac_address", i1 false, i1 false}
!51 = !{!"../net/ethernet/eth.c", i32 622, i32 1}
!52 = !{ptr @__ksymtab_device_get_mac_address, !53, !"__ksymtab_device_get_mac_address", i1 false, i1 false}
!53 = !{!"../net/ethernet/eth.c", i32 633, i32 1}
!54 = !{ptr @__ksymtab_device_get_ethdev_address, !55, !"__ksymtab_device_get_ethdev_address", i1 false, i1 false}
!55 = !{!"../net/ethernet/eth.c", i32 653, i32 1}
!56 = !{ptr @eth_packet_offload, !57, !"eth_packet_offload", i1 false, i1 false}
!57 = !{!"../net/ethernet/eth.c", i32 479, i32 30}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"branch_weights", i32 1, i32 2000}
!68 = !{!"auto-init"}
!69 = !{i64 2154775481, i64 2154775969, i64 2154775518, i64 2154775574, i64 2154775608, i64 2154775632, i64 2154775673, i64 2154775694, i64 2154775722, i64 2154775756}
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{i64 2158718582}
