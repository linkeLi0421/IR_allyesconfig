; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mscc/ocelot_flower.c_pt.bc'
source_filename = "../drivers/net/ethernet/mscc/ocelot_flower.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ocelot_cls_flower_replace\22, \22a\22\09"
module asm "\09.weak\09__crc_ocelot_cls_flower_replace\09\09\09\09"
module asm "\09.long\09__crc_ocelot_cls_flower_replace\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocelot_cls_flower_replace:\09\09\09\09\09"
module asm "\09.asciz \09\22ocelot_cls_flower_replace\22\09\09\09\09\09"
module asm "__kstrtabns_ocelot_cls_flower_replace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ocelot_cls_flower_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_ocelot_cls_flower_destroy\09\09\09\09"
module asm "\09.long\09__crc_ocelot_cls_flower_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocelot_cls_flower_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22ocelot_cls_flower_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_ocelot_cls_flower_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ocelot_cls_flower_stats\22, \22a\22\09"
module asm "\09.weak\09__crc_ocelot_cls_flower_stats\09\09\09\09"
module asm "\09.long\09__crc_ocelot_cls_flower_stats\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocelot_cls_flower_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22ocelot_cls_flower_stats\22\09\09\09\09\09"
module asm "__kstrtabns_ocelot_cls_flower_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.flow_match_meta = type { ptr, ptr }
%struct.flow_match_control = type { ptr, ptr }
%struct.flow_match_eth_addrs = type { ptr, ptr }
%struct.flow_match_basic = type { ptr, ptr }
%struct.flow_match_ipv4_addrs = type { ptr, ptr }
%struct.flow_match_ports = type { ptr, ptr }
%struct.flow_match_vlan = type { ptr, ptr }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.ocelot = type { ptr, ptr, ptr, ptr, [14 x ptr], [60 x ptr], ptr, ptr, i32, [2 x [2 x i32]], i32, i32, i32, ptr, [6 x i8], %struct.list_head, i32, i8, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, [3 x %struct.ocelot_vcap_block], %struct.ocelot_vcap_policer, ptr, %struct.ocelot_psfp_list, %struct.mutex, ptr, %struct.delayed_work, ptr, %struct.mutex, %struct.mutex, ptr, i8, ptr, %struct.ptp_clock_info, %struct.hwtstamp_config, i32, %struct.spinlock, %struct.mutex, %struct.spinlock, [4 x %struct.ptp_pin_desc], ptr }
%struct.list_head = type { ptr, ptr }
%struct.ocelot_vcap_block = type { %struct.list_head, i32 }
%struct.ocelot_vcap_policer = type { %struct.list_head, i16, i16, i16, i16 }
%struct.ocelot_psfp_list = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.ocelot_vcap_filter = type { %struct.list_head, i32, i32, i32, i32, i8, i16, %struct.ocelot_vcap_id, %struct.ocelot_vcap_action, %struct.ocelot_vcap_stats, i32, %struct.ocelot_vcap_port, %struct.ocelot_vcap_port, i32, i32, %struct.ocelot_vcap_key_vlan, i32, %union.anon.179 }
%struct.ocelot_vcap_id = type { i32, i8 }
%struct.ocelot_vcap_action = type { %union.anon.175 }
%union.anon.175 = type { %struct.anon.176 }
%struct.anon.176 = type { i32, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i16, i8, i8 }
%struct.ocelot_vcap_stats = type { i64, i64, i64 }
%struct.ocelot_vcap_port = type { i8, i8 }
%struct.ocelot_vcap_key_vlan = type { %struct.ocelot_vcap_vid, %struct.ocelot_vcap_u8, i32, i32 }
%struct.ocelot_vcap_vid = type { i16, i16 }
%struct.ocelot_vcap_u8 = type { [1 x i8], [1 x i8] }
%union.anon.179 = type { %struct.ocelot_vcap_key_ipv6 }
%struct.ocelot_vcap_key_ipv6 = type { %struct.ocelot_vcap_u8, %struct.ocelot_vcap_u128, %struct.ocelot_vcap_u128, i32, %struct.ocelot_vcap_u8, %struct.ocelot_vcap_u48, %struct.ocelot_vcap_udp_tcp, %struct.ocelot_vcap_udp_tcp, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ocelot_vcap_u128 = type { [16 x i8], [16 x i8] }
%struct.ocelot_vcap_u48 = type { [6 x i8], [6 x i8] }
%struct.ocelot_vcap_udp_tcp = type { i16, i16 }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.vcap_props = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, [2 x %struct.anon.167], i16, i16, i32, ptr, ptr }
%struct.anon.167 = type { i16, i16 }
%struct.vcap_field = type { i32, i32 }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.149, ptr }
%union.anon.149 = type { %struct.anon.154 }
%struct.anon.154 = type { i32, i64, i64, i64, i32 }
%struct.anon.177 = type { i8, i16, i8, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.178 = type { i8, i8, i32, i32, i8, %struct.ocelot_policer, i32 }
%struct.ocelot_policer = type { i32, i32 }
%struct.ocelot_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ocelot_port = type { ptr, ptr, i8, ptr, i32, i8, %struct.sk_buff_head, i8, i32, ptr, i8, i8, ptr, i8, i16, ptr, i8, i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.anon.150 = type { i16, i16, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.166, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.166 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.flow_dissector_key_eth_addrs = type { [6 x i8], [6 x i8] }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_ipv4_addrs = type { i32, i32 }
%struct.anon.181 = type { i16, i16 }

@ocelot_cls_flower_replace.__msg = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"mscc_ocelot_switch_lib: No default GOTO action points to this chain\00", [60 x i8] zeroinitializer }, align 32
@ocelot_cls_flower_replace.__msg.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"mscc_ocelot_switch_lib: Cannot offload to this chain\00", [43 x i8] zeroinitializer }, align 32
@ocelot_cls_flower_replace.__msg.2 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"mscc_ocelot_switch_lib: VCAP ES0 does not support shared filters\00", [63 x i8] zeroinitializer }, align 32
@ocelot_cls_flower_replace.__msg.3 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"mscc_ocelot_switch_lib: PSFP chain is not supported in HW\00", [38 x i8] zeroinitializer }, align 32
@__kstrtab_ocelot_cls_flower_replace = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocelot_cls_flower_replace = external dso_local constant [0 x i8], align 1
@__ksymtab_ocelot_cls_flower_replace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocelot_cls_flower_replace to i32), ptr @__kstrtab_ocelot_cls_flower_replace, ptr @__kstrtabns_ocelot_cls_flower_replace }, section "___ksymtab_gpl+ocelot_cls_flower_replace", align 4
@__kstrtab_ocelot_cls_flower_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocelot_cls_flower_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_ocelot_cls_flower_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocelot_cls_flower_destroy to i32), ptr @__kstrtab_ocelot_cls_flower_destroy, ptr @__kstrtabns_ocelot_cls_flower_destroy }, section "___ksymtab_gpl+ocelot_cls_flower_destroy", align 4
@__kstrtab_ocelot_cls_flower_stats = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocelot_cls_flower_stats = external dso_local constant [0 x i8], align 1
@__ksymtab_ocelot_cls_flower_stats = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocelot_cls_flower_stats to i32), ptr @__kstrtab_ocelot_cls_flower_stats, ptr @__kstrtabns_ocelot_cls_flower_stats }, section "___ksymtab_gpl+ocelot_cls_flower_stats", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ocelot_flower_parse_action.__msg = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"mscc_ocelot_switch_lib: Cannot offload to this chain\00", [43 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_action.__msg.4 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"mscc_ocelot_switch_lib: Drop action can only be offloaded to VCAP IS2\00", [58 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_action.__msg.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"mscc_ocelot_switch_lib: Last action must be GOTO\00", [47 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_action.__msg.6 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"mscc_ocelot_switch_lib: Trap action can only be offloaded to VCAP IS2\00", [58 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_action.__msg.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"mscc_ocelot_switch_lib: Last action must be GOTO\00", [47 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_action.__msg.8 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"mscc_ocelot_switch_lib: Police action can only be offloaded to VCAP IS2 lookup 0 or PSFP\00", [39 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_action.__msg.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"mscc_ocelot_switch_lib: Last action must be GOTO\00", [47 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_action.__msg.10 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"mscc_ocelot_switch_lib: QoS offload not support packets per second\00", [61 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_action.__msg.11 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"mscc_ocelot_switch_lib: Redirect action can only be offloaded to VCAP IS2\00", [54 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_action.__msg.12 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"mscc_ocelot_switch_lib: Last action must be GOTO\00", [47 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_action.__msg.13 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"mscc_ocelot_switch_lib: Destination not an ocelot port\00", [41 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_action.__msg.14 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"mscc_ocelot_switch_lib: VLAN pop action can only be offloaded to VCAP IS1\00", [54 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_action.__msg.15 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"mscc_ocelot_switch_lib: Last action must be GOTO\00", [47 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_action.__msg.16 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"mscc_ocelot_switch_lib: Cannot pop more than 2 VLAN headers\00", [36 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_action.__msg.17 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"mscc_ocelot_switch_lib: VLAN modify action can only be offloaded to VCAP IS1 or ES0\00", [44 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_action.__msg.18 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"mscc_ocelot_switch_lib: Priority action can only be offloaded to VCAP IS1\00", [54 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_action.__msg.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"mscc_ocelot_switch_lib: Last action must be GOTO\00", [47 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_action.__msg.20 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"mscc_ocelot_switch_lib: VLAN push action can only be offloaded to VCAP ES0\00", [53 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_action.__msg.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"mscc_ocelot_switch_lib: Cannot push custom TPID\00", [48 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_action.__msg.22 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"mscc_ocelot_switch_lib: Gate action can only be offloaded to PSFP chain\00", [56 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_action.__msg.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"mscc_ocelot_switch_lib: Cannot offload action\00", [50 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_action.__msg.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mscc_ocelot_switch_lib: Missing GOTO action\00", [52 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_action.__msg.25 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"mscc_ocelot_switch_lib: Cannot offload this GOTO target\00", [40 x i8] zeroinitializer }, align 32
@__flow_action_hw_stats_check.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/net/flow_offload.h\00", [37 x i8] zeroinitializer }, align 32
@__flow_action_hw_stats_check.__msg = internal constant [73 x i8] c"mscc_ocelot_switch_lib: Driver supports only default HW stats type \22any\22\00", align 1
@flow_action_mixed_hw_stats_check.__msg = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"mscc_ocelot_switch_lib: Mixing HW stats types for actions is not supported\00", [53 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_ingress_vlan_modify.__msg = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"mscc_ocelot_switch_lib: Last action must be GOTO\00", [47 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_ingress_vlan_modify.__msg.27 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"mscc_ocelot_switch_lib: Can only modify VLAN under VLAN aware bridge\00", [59 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_egress_vlan_modify.__msg = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"mscc_ocelot_switch_lib: Cannot modify custom TPID\00", [46 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_key.__msg = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"mscc_ocelot_switch_lib: VCAP ES0 cannot match on MAC address\00", [35 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_key.__msg.28 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"mscc_ocelot_switch_lib: Key type S1_NORMAL cannot match on destination MAC\00", [53 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_key.__msg.29 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"mscc_ocelot_switch_lib: VCAP ES0 cannot match on IP protocol\00", [35 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_key.__msg.30 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"mscc_ocelot_switch_lib: VCAP ES0 cannot match on IP protocol\00", [35 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_key.__msg.31 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"mscc_ocelot_switch_lib: VCAP ES0 cannot match on IP address\00", [36 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_key.__msg.32 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"mscc_ocelot_switch_lib: Key type S1_NORMAL cannot match on destination IP\00", [54 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_key.__msg.33 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"mscc_ocelot_switch_lib: VCAP ES0 cannot match on L4 ports\00", [38 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_key.__msg.34 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"mscc_ocelot_switch_lib: VCAP ES0 cannot match on L2 proto\00", [38 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_indev.__msg = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"mscc_ocelot_switch_lib: Unsupported ingress ifindex mask\00", [39 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_indev.__msg.35 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"mscc_ocelot_switch_lib: Can't find the ingress port to match on\00", [32 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_indev.__msg.36 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"mscc_ocelot_switch_lib: Can only offload an ocelot ingress port\00", [32 x i8] zeroinitializer }, align 32
@ocelot_flower_parse_indev.__msg.37 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"mscc_ocelot_switch_lib: Ingress port is equal to the egress port\00", [63 x i8] zeroinitializer }, align 32
@ocelot_flower_patch_es0_vlan_modify.__msg = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"mscc_ocelot_switch_lib: VCAP ES0 VLAN rewriting needs a full VLAN in the key\00", [51 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 10000, i64 11000, i64 12000]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 10000, i64 11000, i64 12000]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 10000, i64 11000, i64 12000]
@__sancov_gen_cov_switch_values.41 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8, i64 9, i64 10, i64 18, i64 22, i64 28]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 10000, i64 11000, i64 12000]
@__sancov_gen_cov_switch_values.47 = internal global [8 x i64] [i64 6, i64 32, i64 10000, i64 11000, i64 12000, i64 20000, i64 21000, i64 30000]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 10000, i64 11000, i64 12000]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 32, i64 10000, i64 11000, i64 12000]
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 826, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 832, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 841, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 878, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 250, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 265, i32 5 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 270, i32 5 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 282, i32 5 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 287, i32 5 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 304, i32 5 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 309, i32 5 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 314, i32 5 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 340, i32 5 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 345, i32 5 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 351, i32 5 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 361, i32 5 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 366, i32 5 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 373, i32 5 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 388, i32 5 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 397, i32 5 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 402, i32 5 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 423, i32 5 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 435, i32 5 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 448, i32 5 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 455, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 465, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 472, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 354, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [30 x i8] c"../include/net/flow_offload.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 323, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 179, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 185, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 214, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 571, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 593, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 616, i32 5 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 630, i32 5 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 650, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 658, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 686, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 714, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 497, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 507, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 514, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 519, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.185 = private constant [45 x i8] c"../drivers/net/ethernet/mscc/ocelot_flower.c\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 806, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__ksymtab_ocelot_cls_flower_destroy, ptr @__ksymtab_ocelot_cls_flower_replace, ptr @__ksymtab_ocelot_cls_flower_stats, ptr @ocelot_cls_flower_replace.__msg, ptr @ocelot_cls_flower_replace.__msg.1, ptr @ocelot_cls_flower_replace.__msg.2, ptr @ocelot_cls_flower_replace.__msg.3, ptr @ocelot_flower_parse_action.__msg, ptr @ocelot_flower_parse_action.__msg.4, ptr @ocelot_flower_parse_action.__msg.5, ptr @ocelot_flower_parse_action.__msg.6, ptr @ocelot_flower_parse_action.__msg.7, ptr @ocelot_flower_parse_action.__msg.8, ptr @ocelot_flower_parse_action.__msg.9, ptr @ocelot_flower_parse_action.__msg.10, ptr @ocelot_flower_parse_action.__msg.11, ptr @ocelot_flower_parse_action.__msg.12, ptr @ocelot_flower_parse_action.__msg.13, ptr @ocelot_flower_parse_action.__msg.14, ptr @ocelot_flower_parse_action.__msg.15, ptr @ocelot_flower_parse_action.__msg.16, ptr @ocelot_flower_parse_action.__msg.17, ptr @ocelot_flower_parse_action.__msg.18, ptr @ocelot_flower_parse_action.__msg.19, ptr @ocelot_flower_parse_action.__msg.20, ptr @ocelot_flower_parse_action.__msg.21, ptr @ocelot_flower_parse_action.__msg.22, ptr @ocelot_flower_parse_action.__msg.23, ptr @ocelot_flower_parse_action.__msg.24, ptr @ocelot_flower_parse_action.__msg.25, ptr @.str, ptr @flow_action_mixed_hw_stats_check.__msg, ptr @ocelot_flower_parse_ingress_vlan_modify.__msg, ptr @ocelot_flower_parse_ingress_vlan_modify.__msg.27, ptr @ocelot_flower_parse_egress_vlan_modify.__msg, ptr @ocelot_flower_parse_key.__msg, ptr @ocelot_flower_parse_key.__msg.28, ptr @ocelot_flower_parse_key.__msg.29, ptr @ocelot_flower_parse_key.__msg.30, ptr @ocelot_flower_parse_key.__msg.31, ptr @ocelot_flower_parse_key.__msg.32, ptr @ocelot_flower_parse_key.__msg.33, ptr @ocelot_flower_parse_key.__msg.34, ptr @ocelot_flower_parse_indev.__msg, ptr @ocelot_flower_parse_indev.__msg.35, ptr @ocelot_flower_parse_indev.__msg.36, ptr @ocelot_flower_parse_indev.__msg.37, ptr @ocelot_flower_patch_es0_vlan_modify.__msg], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_cls_flower_replace.__msg to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_cls_flower_replace.__msg.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_cls_flower_replace.__msg.2 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_cls_flower_replace.__msg.3 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_action.__msg to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_action.__msg.4 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_action.__msg.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_action.__msg.6 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_action.__msg.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_action.__msg.8 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_action.__msg.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_action.__msg.10 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_action.__msg.11 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_action.__msg.12 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_action.__msg.13 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_action.__msg.14 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_action.__msg.15 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_action.__msg.16 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_action.__msg.17 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_action.__msg.18 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_action.__msg.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_action.__msg.20 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_action.__msg.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_action.__msg.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_action.__msg.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_action.__msg.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_action.__msg.25 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flow_action_mixed_hw_stats_check.__msg to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_ingress_vlan_modify.__msg to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_ingress_vlan_modify.__msg.27 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_egress_vlan_modify.__msg to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_key.__msg to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_key.__msg.28 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_key.__msg.29 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_key.__msg.30 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_key.__msg.31 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_key.__msg.32 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_key.__msg.33 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_key.__msg.34 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_indev.__msg to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_indev.__msg.35 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_indev.__msg.36 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_parse_indev.__msg.37 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_flower_patch_es0_vlan_modify.__msg to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocelot_cls_flower_replace(ptr noundef %ocelot, i32 noundef %port, ptr noundef %f, i1 noundef zeroext %ingress) #0 align 64 {
entry:
  %match.i.i.i = alloca %struct.flow_match_meta, align 4
  %match13.i.i = alloca %struct.flow_match_control, align 4
  %match17.i.i = alloca %struct.flow_match_eth_addrs, align 4
  %match67.i.i = alloca %struct.flow_match_basic, align 4
  %match139.i.i = alloca %struct.flow_match_ipv4_addrs, align 4
  %match210.i.i = alloca %struct.flow_match_ports, align 4
  %match248.i.i = alloca %struct.flow_match_vlan, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %extack1 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %0 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extack1, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %for.body15.i.i [
    i32 0, label %if.end6.thread
    i32 12000, label %entry.if.end15.i_crit_edge
    i32 10000, label %entry.if.end15.i_crit_edge170
    i32 11000, label %entry.if.end15.i_crit_edge171
  ]

entry.if.end15.i_crit_edge171:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.i

entry.if.end15.i_crit_edge170:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.i

entry.if.end15.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.i

for.body15.i.i:                                   ; preds = %entry
  %5 = add i32 %3, -20000
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %5)
  %6 = icmp ult i32 %5, 256
  %indvars.iv.next.i.i = add i32 %3, -21000
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %indvars.iv.next.i.i)
  %7 = icmp ult i32 %indvars.iv.next.i.i, 256
  %or.cond.i.i = or i1 %6, %7
  br i1 %or.cond.i.i, label %if.then2.i, label %for.inc25.1.i.i

for.inc25.1.i.i:                                  ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %3)
  %cmp28.i.i = icmp eq i32 %3, 30000
  br i1 %cmp28.i.i, label %for.inc25.1.i.i.if.end15.i_crit_edge, label %for.inc25.1.i.i.do.body_crit_edge

for.inc25.1.i.i.do.body_crit_edge:                ; preds = %for.inc25.1.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.inc25.1.i.i.if.end15.i_crit_edge:             ; preds = %for.inc25.1.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.i

if.then2.i:                                       ; preds = %for.body15.i.i
  %arrayidx.i = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 24, i32 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %filter.060.i = load ptr, ptr %arrayidx.i, align 4
  %cmp5.not61.i = icmp eq ptr %filter.060.i, %arrayidx.i
  br i1 %cmp5.not61.i, label %if.then2.i.if.end15.i_crit_edge, label %if.then2.i.for.body.i_crit_edge

if.then2.i.for.body.i_crit_edge:                  ; preds = %if.then2.i
  br label %for.body.i

if.then2.i.if.end15.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then2.i.for.body.i_crit_edge
  %filter.062.i = phi ptr [ %filter.0.i, %for.inc.i.for.body.i_crit_edge ], [ %filter.060.i, %if.then2.i.for.body.i_crit_edge ]
  %type.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter.062.i, i32 0, i32 1
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp6.i = icmp eq i32 %10, 1
  br i1 %cmp6.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %goto_target.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter.062.i, i32 0, i32 3
  %11 = ptrtoint ptr %goto_target.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %goto_target.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %3)
  %cmp7.i = icmp eq i32 %12, %3
  br i1 %cmp7.i, label %land.lhs.true.i.ocelot_find_vcap_filter_that_points_at.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true.i.ocelot_find_vcap_filter_that_points_at.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ocelot_find_vcap_filter_that_points_at.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %13 = ptrtoint ptr %filter.062.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %filter.0.i = load ptr, ptr %filter.062.i, align 4
  %cmp5.not.i = icmp eq ptr %filter.0.i, %arrayidx.i
  br i1 %cmp5.not.i, label %for.inc.i.if.end15.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.if.end15.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.i

if.end15.i:                                       ; preds = %for.inc.i.if.end15.i_crit_edge, %if.then2.i.if.end15.i_crit_edge, %for.inc25.1.i.i.if.end15.i_crit_edge, %entry.if.end15.i_crit_edge, %entry.if.end15.i_crit_edge170, %entry.if.end15.i_crit_edge171
  %dummy_rules.i = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 23
  br label %for.cond20.i

for.cond20.i:                                     ; preds = %for.body25.i.for.cond20.i_crit_edge, %if.end15.i
  %filter.1.in.i = phi ptr [ %dummy_rules.i, %if.end15.i ], [ %filter.1.i, %for.body25.i.for.cond20.i_crit_edge ]
  %14 = ptrtoint ptr %filter.1.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %filter.1.i = load ptr, ptr %filter.1.in.i, align 4
  %cmp23.not.i = icmp eq ptr %filter.1.i, %dummy_rules.i
  br i1 %cmp23.not.i, label %for.cond20.i.do.body_crit_edge, label %for.body25.i

for.cond20.i.do.body_crit_edge:                   ; preds = %for.cond20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.body25.i:                                     ; preds = %for.cond20.i
  %goto_target26.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter.1.i, i32 0, i32 3
  %15 = ptrtoint ptr %goto_target26.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %goto_target26.i, align 8
  %cmp27.i = icmp eq i32 %16, %3
  br i1 %cmp27.i, label %for.body25.i.ocelot_find_vcap_filter_that_points_at.exit_crit_edge, label %for.body25.i.for.cond20.i_crit_edge

for.body25.i.for.cond20.i_crit_edge:              ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond20.i

for.body25.i.ocelot_find_vcap_filter_that_points_at.exit_crit_edge: ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ocelot_find_vcap_filter_that_points_at.exit

ocelot_find_vcap_filter_that_points_at.exit:      ; preds = %for.body25.i.ocelot_find_vcap_filter_that_points_at.exit_crit_edge, %land.lhs.true.i.ocelot_find_vcap_filter_that_points_at.exit_crit_edge
  %retval.0.i = phi ptr [ %filter.1.i, %for.body25.i.ocelot_find_vcap_filter_that_points_at.exit_crit_edge ], [ %filter.062.i, %land.lhs.true.i.ocelot_find_vcap_filter_that_points_at.exit_crit_edge ]
  %tobool3.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool3.not, label %ocelot_find_vcap_filter_that_points_at.exit.do.body_crit_edge, label %if.end6

ocelot_find_vcap_filter_that_points_at.exit.do.body_crit_edge: ; preds = %ocelot_find_vcap_filter_that_points_at.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body:                                          ; preds = %ocelot_find_vcap_filter_that_points_at.exit.do.body_crit_edge, %for.cond20.i.do.body_crit_edge, %for.inc25.1.i.i.do.body_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_cls_flower_replace.__msg) #4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %if.then5

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ocelot_cls_flower_replace.__msg, ptr %1, align 4
  br label %cleanup

if.end6:                                          ; preds = %ocelot_find_vcap_filter_that_points_at.exit
  br i1 %ingress, label %for.body.preheader.i, label %if.end6.do.body10_crit_edge

if.end6.do.body10_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body10

if.end6.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %spec.select = select i1 %ingress, i32 2, i32 0
  br label %if.end18

for.body.preheader.i:                             ; preds = %if.end6
  %18 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %3, label %for.body15.i [
    i32 10000, label %for.body.preheader.i.if.end18_crit_edge
    i32 11000, label %for.body.preheader.i.if.end18_crit_edge172
    i32 12000, label %for.body.preheader.i.if.end18_crit_edge173
  ]

for.body.preheader.i.if.end18_crit_edge173:       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

for.body.preheader.i.if.end18_crit_edge172:       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

for.body.preheader.i.if.end18_crit_edge:          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

for.body15.i:                                     ; preds = %for.body.preheader.i
  %19 = add i32 %3, -20000
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %19)
  %20 = icmp ult i32 %19, 256
  %indvars.iv.next.i = add i32 %3, -21000
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %indvars.iv.next.i)
  %21 = icmp ult i32 %indvars.iv.next.i, 256
  %or.cond.i = or i1 %20, %21
  br i1 %or.cond.i, label %for.body15.i.if.end18_crit_edge, label %for.inc25.1.i

for.body15.i.if.end18_crit_edge:                  ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

for.inc25.1.i:                                    ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %3)
  %cmp28.i = icmp eq i32 %3, 30000
  br i1 %cmp28.i, label %for.inc25.1.i.if.end18_crit_edge, label %for.inc25.1.i.do.body10_crit_edge

for.inc25.1.i.do.body10_crit_edge:                ; preds = %for.inc25.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body10

for.inc25.1.i.if.end18_crit_edge:                 ; preds = %for.inc25.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

do.body10:                                        ; preds = %for.inc25.1.i.do.body10_crit_edge, %if.end6.do.body10_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_cls_flower_replace.__msg.1) #4
  %tobool12.not = icmp eq ptr %1, null
  br i1 %tobool12.not, label %do.body10.cleanup_crit_edge, label %if.then13

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then13:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ocelot_cls_flower_replace.__msg.1, ptr %1, align 4
  br label %cleanup

if.end18:                                         ; preds = %for.inc25.1.i.if.end18_crit_edge, %for.body15.i.if.end18_crit_edge, %for.body.preheader.i.if.end18_crit_edge, %for.body.preheader.i.if.end18_crit_edge172, %for.body.preheader.i.if.end18_crit_edge173, %if.end6.thread
  %retval.0.i128.ph = phi i32 [ 1, %for.body.preheader.i.if.end18_crit_edge ], [ 1, %for.body.preheader.i.if.end18_crit_edge172 ], [ 1, %for.body.preheader.i.if.end18_crit_edge173 ], [ 2, %for.body15.i.if.end18_crit_edge ], [ 3, %for.inc25.1.i.if.end18_crit_edge ], [ %spec.select, %if.end6.thread ]
  %arrayidx = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 24, i32 %retval.0.i128.ph
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 2
  %23 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cookie, align 4
  %call19 = tail call ptr @ocelot_vcap_block_find_filter_by_id(ptr noundef %arrayidx, i32 noundef %24, i1 noundef zeroext true) #4
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end34, label %if.then21

if.then21:                                        ; preds = %if.end18
  br i1 %ingress, label %if.end32, label %do.body24

do.body24:                                        ; preds = %if.then21
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_cls_flower_replace.__msg.2) #4
  %tobool26.not = icmp eq ptr %1, null
  br i1 %tobool26.not, label %do.body24.cleanup_crit_edge, label %if.then27

do.body24.cleanup_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then27:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ocelot_cls_flower_replace.__msg.2, ptr %1, align 4
  br label %cleanup

if.end32:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  %shl = shl nuw i32 1, %port
  %ingress_port_mask = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call19, i32 0, i32 10
  %26 = ptrtoint ptr %ingress_port_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ingress_port_mask, align 8
  %or = or i32 %27, %shl
  store i32 %or, ptr %ingress_port_mask, align 8
  %call33 = tail call i32 @ocelot_vcap_filter_replace(ptr noundef %ocelot, ptr noundef nonnull %call19) #4
  br label %cleanup

if.end34:                                         ; preds = %if.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 272) #7
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end34.cleanup_crit_edge, label %if.end.i

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end34
  br i1 %ingress, label %if.then2.i129, label %if.else.i

if.then2.i129:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %shl.i = shl nuw i32 1, %port
  %ingress_port_mask.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 10
  %29 = ptrtoint ptr %ingress_port_mask.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shl.i, ptr %ingress_port_mask.i, align 8
  br label %if.end39

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %vcap3.i = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 26
  %30 = ptrtoint ptr %vcap3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vcap3.i, align 4
  %keys.i = getelementptr inbounds %struct.vcap_props, ptr %31, i32 0, i32 13
  %32 = ptrtoint ptr %keys.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %keys.i, align 4
  %length.i = getelementptr inbounds %struct.vcap_field, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length.i, align 4
  %conv.i = trunc i32 %port to i8
  %egress_port.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 12
  %36 = ptrtoint ptr %egress_port.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv.i, ptr %egress_port.i, align 2
  %sub5.i = sub i32 32, %35
  %shr.i = lshr i32 -1, %sub5.i
  %conv6.i = trunc i32 %shr.i to i8
  %mask.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 12, i32 1
  %37 = ptrtoint ptr %mask.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv6.i, ptr %mask.i, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.else.i, %if.then2.i129
  %prio.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 2
  %38 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %prio.i, align 8
  %conv.i130 = trunc i32 %39 to i16
  %prio1.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 6
  %40 = ptrtoint ptr %prio1.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i130, ptr %prio1.i, align 2
  %41 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cookie, align 4
  %id.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 7
  %43 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %id.i, align 4
  %tc_offload.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %44 = ptrtoint ptr %tc_offload.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %tc_offload.i, align 8
  %45 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %extack1, align 4
  %rule.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 3
  %47 = ptrtoint ptr %rule.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rule.i.i, align 8
  %action.i.i = getelementptr inbounds %struct.flow_rule, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %action.i.i, align 8
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %50, label %for.body.preheader.i.i.i.i.i [
    i32 0, label %if.end39.if.end.i.i_crit_edge
    i32 1, label %if.end39.flow_action_first_entry_get.exit.i.i.i.i_crit_edge
  ]

if.end39.flow_action_first_entry_get.exit.i.i.i.i_crit_edge: ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %flow_action_first_entry_get.exit.i.i.i.i

if.end39.if.end.i.i_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

for.body.preheader.i.i.i.i.i:                     ; preds = %if.end39
  %entries.i.i.i.i.i = getelementptr inbounds %struct.flow_rule, ptr %48, i32 1
  br label %for.body.i.i.i.i.i

for.body.i.i.i.i.i:                               ; preds = %if.end7.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, %for.body.preheader.i.i.i.i.i
  %i.024.i.i.i.i.i = phi i32 [ %inc.i.i.i.i.i, %if.end7.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i.i.i ]
  %last_hw_stats.023.i.i.i.i.i = phi i32 [ %55, %if.end7.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ], [ 255, %for.body.preheader.i.i.i.i.i ]
  %action_entry.022.i.i.i.i.i = phi ptr [ %arrayidx11.i.i.i.i.i, %if.end7.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ], [ %entries.i.i.i.i.i, %for.body.preheader.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.024.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %i.024.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %for.body.i.i.i.i.i.if.end7.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

for.body.i.i.i.i.i.if.end7.i.i.i.i.i_crit_edge:   ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %for.body.i.i.i.i.i
  %hw_stats.i.i.i.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %action_entry.022.i.i.i.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %hw_stats.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hw_stats.i.i.i.i.i, align 8
  %conv.i.i.i.i.i = and i32 %last_hw_stats.023.i.i.i.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %conv.i.i.i.i.i)
  %cmp1.not.i.i.i.i.i = icmp eq i32 %53, %conv.i.i.i.i.i
  br i1 %cmp1.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.end7.i.i.i.i.i_crit_edge, label %do.body.i.i.i.i.i

land.lhs.true.i.i.i.i.i.if.end7.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @flow_action_mixed_hw_stats_check.__msg) #4
  %tobool4.not.i.i.i.i.i = icmp eq ptr %46, null
  br i1 %tobool4.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.then43_crit_edge, label %do.body.i.i.i.i.i.cleanup.sink.split.i.i_crit_edge

do.body.i.i.i.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i.i

do.body.i.i.i.i.i.if.then43_crit_edge:            ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.end7.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i.i.if.end7.i.i.i.i.i_crit_edge, %for.body.i.i.i.i.i.if.end7.i.i.i.i.i_crit_edge
  %hw_stats8.i.i.i.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %action_entry.022.i.i.i.i.i, i32 0, i32 2
  %54 = ptrtoint ptr %hw_stats8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hw_stats8.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add nuw i32 %i.024.i.i.i.i.i, 1
  %arrayidx11.i.i.i.i.i = getelementptr %struct.flow_rule, ptr %48, i32 0, i32 1, i32 1, i32 %inc.i.i.i.i.i
  %exitcond.not.i.i.i.i.i = icmp eq i32 %inc.i.i.i.i.i, %50
  br i1 %exitcond.not.i.i.i.i.i, label %if.end3.i.i.i.i, label %if.end7.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge

if.end7.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge:   ; preds = %if.end7.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.i.i.i

if.end3.i.i.i.i:                                  ; preds = %if.end7.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.i.not.i.i.i.i.i = icmp eq i32 %50, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %do.end.i.i.i.i.i, label %if.end3.i.i.i.i.flow_action_first_entry_get.exit.i.i.i.i_crit_edge, !prof !110

if.end3.i.i.i.i.flow_action_first_entry_get.exit.i.i.i.i_crit_edge: ; preds = %if.end3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %flow_action_first_entry_get.exit.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %if.end3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 334, i32 noundef 9, ptr noundef null) #4
  br label %flow_action_first_entry_get.exit.i.i.i.i

flow_action_first_entry_get.exit.i.i.i.i:         ; preds = %do.end.i.i.i.i.i, %if.end3.i.i.i.i.flow_action_first_entry_get.exit.i.i.i.i_crit_edge, %if.end39.flow_action_first_entry_get.exit.i.i.i.i_crit_edge
  %hw_stats.i.i.i.i = getelementptr inbounds %struct.flow_rule, ptr %48, i32 1, i32 0, i32 2
  %56 = ptrtoint ptr %hw_stats.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hw_stats.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i.i.i.i = icmp eq i32 %57, 0
  br i1 %tobool.not.i.i.i.i, label %land.rhs.i.i.i.i, label %flow_action_first_entry_get.exit.i.i.i.i.land.lhs.true.i.i.i.i_crit_edge

flow_action_first_entry_get.exit.i.i.i.i.land.lhs.true.i.i.i.i_crit_edge: ; preds = %flow_action_first_entry_get.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %flow_action_first_entry_get.exit.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__flow_action_hw_stats_check.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs.i.i.i.i.land.lhs.true.i.i.i.i_crit_edge, label %if.then14.i.i.i.i, !prof !111

land.rhs.i.i.i.i.land.lhs.true.i.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i.i.i.i

if.then14.i.i.i.i:                                ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @__flow_action_hw_stats_check.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 354, i32 noundef 9, ptr noundef null) #4
  br label %land.lhs.true.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then14.i.i.i.i, %land.rhs.i.i.i.i.land.lhs.true.i.i.i.i_crit_edge, %flow_action_first_entry_get.exit.i.i.i.i.land.lhs.true.i.i.i.i_crit_edge
  %58 = ptrtoint ptr %hw_stats.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %hw_stats.i.i.i.i, align 8
  %neg.i.i.i.i = and i32 %59, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %neg.i.i.i.i)
  %tobool46.not.i.i.i.i = icmp eq i32 %neg.i.i.i.i, 3
  br i1 %tobool46.not.i.i.i.i, label %land.lhs.true.i.i.i.i.if.end.i.i_crit_edge, label %do.body48.i.i.i.i

land.lhs.true.i.i.i.i.if.end.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

do.body48.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__flow_action_hw_stats_check.__msg) #4
  %tobool49.not.i.i.i.i = icmp eq ptr %46, null
  br i1 %tobool49.not.i.i.i.i, label %do.body48.i.i.i.i.if.then43_crit_edge, label %do.body48.i.i.i.i.cleanup.sink.split.i.i_crit_edge

do.body48.i.i.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %do.body48.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i.i

do.body48.i.i.i.i.if.then43_crit_edge:            ; preds = %do.body48.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.i.i.if.end.i.i_crit_edge, %if.end39.if.end.i.i_crit_edge
  %60 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %f, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp3.i.i.i = icmp eq i32 %61, 0
  br i1 %ingress, label %if.end2.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  br i1 %cmp3.i.i.i, label %if.then.i.i.i.if.end18.thread.i.i_crit_edge, label %if.then.i.i.i.do.body.i.i_crit_edge

if.then.i.i.i.do.body.i.i_crit_edge:              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i

if.then.i.i.i.if.end18.thread.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.thread.i.i

if.end2.i.i.i:                                    ; preds = %if.end.i.i
  br i1 %cmp3.i.i.i, label %if.then21.thread.i.i, label %for.body.preheader.i.i.i

if.then21.thread.i.i:                             ; preds = %if.end2.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %block_id644649662669.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 2
  %62 = ptrtoint ptr %block_id644649662669.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 2, ptr %block_id644649662669.i.i, align 4
  %lookup666673.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 4
  %63 = ptrtoint ptr %lookup666673.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %lookup666673.i.i, align 4
  br label %ocelot_chain_to_pag.exit.i.i

for.body.preheader.i.i.i:                         ; preds = %if.end2.i.i.i
  %64 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %61, label %for.body15.i.i.i [
    i32 10000, label %for.body.preheader.i.i.i.if.end18.i.i_crit_edge
    i32 11000, label %for.body.preheader.i.i.i.if.end18.i.i_crit_edge174
    i32 12000, label %for.body.preheader.i.i.i.if.end18.i.i_crit_edge175
  ]

for.body.preheader.i.i.i.if.end18.i.i_crit_edge175: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i.i

for.body.preheader.i.i.i.if.end18.i.i_crit_edge174: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i.i

for.body.preheader.i.i.i.if.end18.i.i_crit_edge:  ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i.i

for.body15.i.i.i:                                 ; preds = %for.body.preheader.i.i.i
  %65 = add i32 %61, -20000
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %65)
  %66 = icmp ult i32 %65, 256
  %indvars.iv.next.i.i.i = add i32 %61, -21000
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %indvars.iv.next.i.i.i)
  %67 = icmp ult i32 %indvars.iv.next.i.i.i, 256
  %or.cond.i.i.i = or i1 %66, %67
  br i1 %or.cond.i.i.i, label %if.end.i.i.i, label %for.inc25.1.i.i.i

for.inc25.1.i.i.i:                                ; preds = %for.body15.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %61)
  %cmp28.i.i.i = icmp eq i32 %61, 30000
  br i1 %cmp28.i.i.i, label %for.inc25.1.i.i.i.if.end18.thread.i.i_crit_edge, label %for.inc25.1.i.i.i.do.body.i.i_crit_edge

for.inc25.1.i.i.i.do.body.i.i_crit_edge:          ; preds = %for.inc25.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i

for.inc25.1.i.i.i.if.end18.thread.i.i_crit_edge:  ; preds = %for.inc25.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.thread.i.i

do.body.i.i:                                      ; preds = %for.inc25.1.i.i.i.do.body.i.i_crit_edge, %if.then.i.i.i.do.body.i.i_crit_edge
  %block_id.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 2
  %68 = ptrtoint ptr %block_id.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -95, ptr %block_id.i.i, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_action.__msg) #4
  %tobool8.not.i.i = icmp eq ptr %46, null
  br i1 %tobool8.not.i.i, label %do.body.i.i.if.then43_crit_edge, label %do.body.i.i.cleanup.sink.split.i.i_crit_edge

do.body.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i.i

do.body.i.i.if.then43_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.end18.thread.i.i:                              ; preds = %for.inc25.1.i.i.i.if.end18.thread.i.i_crit_edge, %if.then.i.i.i.if.end18.thread.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ 0, %if.then.i.i.i.if.end18.thread.i.i_crit_edge ], [ 3, %for.inc25.1.i.i.i.if.end18.thread.i.i_crit_edge ]
  %block_id644.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 2
  %69 = ptrtoint ptr %block_id644.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %retval.0.i.ph.i.i, ptr %block_id644.i.i, align 4
  br label %if.end23.i.i

if.end18.i.i:                                     ; preds = %for.body.preheader.i.i.i.if.end18.i.i_crit_edge, %for.body.preheader.i.i.i.if.end18.i.i_crit_edge174, %for.body.preheader.i.i.i.if.end18.i.i_crit_edge175
  %block_id644649.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 2
  %70 = ptrtoint ptr %block_id644649.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %block_id644649.i.i, align 4
  %div.i692.lhs.trunc.i.i = trunc i32 %61 to i16
  %div.i692693.i.i = udiv i16 %div.i692.lhs.trunc.i.i, 1000
  %rem.i694.lhs.trunc.i.i = trunc i16 %div.i692693.i.i to i8
  %rem.i694695.i.i = urem i8 %rem.i694.lhs.trunc.i.i, 10
  %rem.i694.zext.i.i = zext i8 %rem.i694695.i.i to i32
  %lookup.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 4
  %71 = ptrtoint ptr %lookup.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %rem.i694.zext.i.i, ptr %lookup.i.i, align 4
  br label %if.end23.i.i

if.end.i.i.i:                                     ; preds = %for.body15.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %block_id644649662.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 2
  %72 = ptrtoint ptr %block_id644649662.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %block_id644649662.i.i, align 4
  %div.i663684.lhs.trunc.i.i = trunc i32 %61 to i16
  %div.i663684685.i.i = udiv i16 %div.i663684.lhs.trunc.i.i, 1000
  %rem.i664686.lhs.trunc.i.i = trunc i16 %div.i663684685.i.i to i8
  %rem.i664686687.i.i = urem i8 %rem.i664686.lhs.trunc.i.i, 10
  %rem.i664686.zext.i.i = zext i8 %rem.i664686687.i.i to i32
  %lookup666.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 4
  %73 = ptrtoint ptr %lookup666.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %rem.i664686.zext.i.i, ptr %lookup666.i.i, align 4
  %mul.neg.i.i.i = mul nsw i32 %rem.i664686.zext.i.i, -1000
  %sub.i.i.i = add nsw i32 %mul.neg.i.i.i, %65
  br label %ocelot_chain_to_pag.exit.i.i

ocelot_chain_to_pag.exit.i.i:                     ; preds = %if.end.i.i.i, %if.then21.thread.i.i
  %block_id644649662674.i.i = phi ptr [ %block_id644649662.i.i, %if.end.i.i.i ], [ %block_id644649662669.i.i, %if.then21.thread.i.i ]
  %retval.0.i618.i.i = phi i32 [ %sub.i.i.i, %if.end.i.i.i ], [ 0, %if.then21.thread.i.i ]
  %conv.i.i = trunc i32 %retval.0.i618.i.i to i8
  %pag.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 5
  %74 = ptrtoint ptr %pag.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv.i.i, ptr %pag.i.i, align 8
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %ocelot_chain_to_pag.exit.i.i, %if.end18.i.i, %if.end18.thread.i.i
  %block_id644654659.i.i = phi ptr [ %block_id644.i.i, %if.end18.thread.i.i ], [ %block_id644649662674.i.i, %ocelot_chain_to_pag.exit.i.i ], [ %block_id644649.i.i, %if.end18.i.i ]
  %goto_target.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 3
  %75 = ptrtoint ptr %goto_target.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %goto_target.i.i, align 8
  %type.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 1
  %76 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %type.i.i, align 8
  %77 = ptrtoint ptr %rule.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rule.i.i, align 8
  %action27698.i.i = getelementptr inbounds %struct.flow_rule, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %action27698.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %action27698.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp28699.not.i.i = icmp eq i32 %80, 0
  br i1 %cmp28699.not.i.i, label %if.end23.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end23.i.i.for.end.i.i_crit_edge:               ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end23.i.i
  %entries.i.i = getelementptr inbounds %struct.flow_rule, ptr %78, i32 1
  %action365.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 8
  %tag_a_tpid_sel.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 8, i32 0, i32 0, i32 2
  %tag_a_vid_sel.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 8, i32 0, i32 0, i32 3
  %vid_a_val.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 8, i32 0, i32 0, i32 5
  %pcp_a_val.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 8, i32 0, i32 0, i32 6
  %lookup328.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 4
  %pag_override_mask.i.i = getelementptr inbounds %struct.anon.177, ptr %action365.i.i, i32 0, i32 9
  %pag_val.i.i = getelementptr inbounds %struct.anon.177, ptr %action365.i.i, i32 0, i32 10
  %qos_ena.i.i = getelementptr inbounds %struct.anon.177, ptr %action365.i.i, i32 0, i32 7
  %qos_val.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 8, i32 0, i32 0, i32 4
  %ports.i.i.i = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 13
  %vid16.i.i.i = getelementptr inbounds %struct.anon.177, ptr %action365.i.i, i32 0, i32 1
  %pcp.i.i.i = getelementptr inbounds %struct.anon.177, ptr %action365.i.i, i32 0, i32 5
  %vlan_pop_cnt_ena.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 8, i32 0, i32 0, i32 1
  %ops.i.i = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 3
  %base.i.i = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 25, i32 1
  %max.i.i = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 25, i32 2
  %max2.i.i = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 25, i32 4
  %base2.i.i = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 25, i32 3
  %pol_ix168.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 8, i32 0, i32 0, i32 8
  %cpu_qu_num.i.i = getelementptr inbounds %struct.anon.178, ptr %action365.i.i, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0701.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc399.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %a.0700.i.i = phi ptr [ %entries.i.i, %for.body.lr.ph.i.i ], [ %arrayidx400.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %81 = ptrtoint ptr %a.0700.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %a.0700.i.i, align 8
  %83 = zext i32 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %82, label %do.body387.i.i [
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb62.i.i
    i32 22, label %sw.bb96.i.i
    i32 4, label %sw.bb177.i.i
    i32 9, label %sw.bb222.i.i
    i32 10, label %sw.bb266.i.i
    i32 18, label %sw.bb291.i.i
    i32 3, label %sw.bb322.i.i
    i32 8, label %sw.bb340.i.i
    i32 28, label %sw.bb371.i.i
  ]

sw.bb.i.i:                                        ; preds = %for.body.i.i
  %84 = ptrtoint ptr %block_id644654659.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %block_id644654659.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %85)
  %cmp31.not.i.i = icmp eq i32 %85, 2
  br i1 %cmp31.not.i.i, label %if.end42.i.i, label %do.body34.i.i

do.body34.i.i:                                    ; preds = %sw.bb.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_action.__msg.4) #4
  %tobool36.not.i.i = icmp eq ptr %46, null
  br i1 %tobool36.not.i.i, label %do.body34.i.i.if.then43_crit_edge, label %do.body34.i.i.cleanup.sink.split.i.i_crit_edge

do.body34.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %do.body34.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i.i

do.body34.i.i.if.then43_crit_edge:                ; preds = %do.body34.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.end42.i.i:                                     ; preds = %sw.bb.i.i
  %86 = ptrtoint ptr %goto_target.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %goto_target.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %87)
  %cmp44.not.i.i = icmp eq i32 %87, -1
  br i1 %cmp44.not.i.i, label %if.end55.i.i, label %do.body47.i.i

do.body47.i.i:                                    ; preds = %if.end42.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_action.__msg.5) #4
  %tobool49.not.i.i = icmp eq ptr %46, null
  br i1 %tobool49.not.i.i, label %do.body47.i.i.if.then43_crit_edge, label %do.body47.i.i.cleanup.sink.split.i.i_crit_edge

do.body47.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %do.body47.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i.i

do.body47.i.i.if.then43_crit_edge:                ; preds = %do.body47.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.end55.i.i:                                     ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %88 = ptrtoint ptr %vlan_pop_cnt_ena.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %vlan_pop_cnt_ena.i.i, align 8
  %89 = ptrtoint ptr %tag_a_tpid_sel.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %tag_a_tpid_sel.i.i, align 4
  %90 = ptrtoint ptr %tag_a_vid_sel.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %tag_a_vid_sel.i.i, align 8
  %91 = ptrtoint ptr %pol_ix168.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 383, ptr %pol_ix168.i.i, align 4
  br label %for.inc.sink.split.i.i

sw.bb62.i.i:                                      ; preds = %for.body.i.i
  %92 = ptrtoint ptr %block_id644654659.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %block_id644654659.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %93)
  %cmp64.not.i.i = icmp eq i32 %93, 2
  br i1 %cmp64.not.i.i, label %if.end75.i.i, label %do.body67.i.i

do.body67.i.i:                                    ; preds = %sw.bb62.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_action.__msg.6) #4
  %tobool69.not.i.i = icmp eq ptr %46, null
  br i1 %tobool69.not.i.i, label %do.body67.i.i.if.then43_crit_edge, label %do.body67.i.i.cleanup.sink.split.i.i_crit_edge

do.body67.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %do.body67.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i.i

do.body67.i.i.if.then43_crit_edge:                ; preds = %do.body67.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.end75.i.i:                                     ; preds = %sw.bb62.i.i
  %94 = ptrtoint ptr %goto_target.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %goto_target.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %95)
  %cmp77.not.i.i = icmp eq i32 %95, -1
  br i1 %cmp77.not.i.i, label %if.end88.i.i, label %do.body80.i.i

do.body80.i.i:                                    ; preds = %if.end75.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_action.__msg.7) #4
  %tobool82.not.i.i = icmp eq ptr %46, null
  br i1 %tobool82.not.i.i, label %do.body80.i.i.if.then43_crit_edge, label %do.body80.i.i.cleanup.sink.split.i.i_crit_edge

do.body80.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %do.body80.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i.i

do.body80.i.i.if.then43_crit_edge:                ; preds = %do.body80.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.end88.i.i:                                     ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %96 = ptrtoint ptr %vlan_pop_cnt_ena.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %vlan_pop_cnt_ena.i.i, align 8
  %97 = ptrtoint ptr %tag_a_tpid_sel.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %tag_a_tpid_sel.i.i, align 4
  %98 = ptrtoint ptr %action365.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %action365.i.i, align 4
  %99 = ptrtoint ptr %cpu_qu_num.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %cpu_qu_num.i.i, align 1
  br label %for.inc.sink.split.i.i

sw.bb96.i.i:                                      ; preds = %for.body.i.i
  %100 = ptrtoint ptr %block_id644654659.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %block_id644654659.i.i, align 4
  %102 = zext i32 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %101, label %sw.bb96.i.i.do.body111.i.i_crit_edge [
    i32 3, label %sw.bb96.i.i.for.inc.sink.split.i.i_crit_edge
    i32 2, label %lor.lhs.false106.i.i
  ]

sw.bb96.i.i.for.inc.sink.split.i.i_crit_edge:     ; preds = %sw.bb96.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.sink.split.i.i

sw.bb96.i.i.do.body111.i.i_crit_edge:             ; preds = %sw.bb96.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body111.i.i

lor.lhs.false106.i.i:                             ; preds = %sw.bb96.i.i
  %103 = ptrtoint ptr %lookup328.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %lookup328.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp108.not.i.i = icmp eq i32 %104, 0
  br i1 %cmp108.not.i.i, label %if.end119.i.i, label %lor.lhs.false106.i.i.do.body111.i.i_crit_edge

lor.lhs.false106.i.i.do.body111.i.i_crit_edge:    ; preds = %lor.lhs.false106.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body111.i.i

do.body111.i.i:                                   ; preds = %lor.lhs.false106.i.i.do.body111.i.i_crit_edge, %sw.bb96.i.i.do.body111.i.i_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_action.__msg.8) #4
  %tobool113.not.i.i = icmp eq ptr %46, null
  br i1 %tobool113.not.i.i, label %do.body111.i.i.if.then43_crit_edge, label %do.body111.i.i.cleanup.sink.split.i.i_crit_edge

do.body111.i.i.cleanup.sink.split.i.i_crit_edge:  ; preds = %do.body111.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i.i

do.body111.i.i.if.then43_crit_edge:               ; preds = %do.body111.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.end119.i.i:                                    ; preds = %lor.lhs.false106.i.i
  %105 = ptrtoint ptr %goto_target.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %goto_target.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %106)
  %cmp121.not.i.i = icmp eq i32 %106, -1
  br i1 %cmp121.not.i.i, label %if.end132.i.i, label %do.body124.i.i

do.body124.i.i:                                   ; preds = %if.end119.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_action.__msg.9) #4
  %tobool126.not.i.i = icmp eq ptr %46, null
  br i1 %tobool126.not.i.i, label %do.body124.i.i.if.then43_crit_edge, label %do.body124.i.i.cleanup.sink.split.i.i_crit_edge

do.body124.i.i.cleanup.sink.split.i.i_crit_edge:  ; preds = %do.body124.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i.i

do.body124.i.i.if.then43_crit_edge:               ; preds = %do.body124.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.end132.i.i:                                    ; preds = %if.end119.i.i
  %107 = getelementptr inbounds %struct.flow_action_entry, ptr %a.0700.i.i, i32 0, i32 5
  %rate_pkt_ps.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %a.0700.i.i, i32 0, i32 5, i32 0, i32 3
  %108 = ptrtoint ptr %rate_pkt_ps.i.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %rate_pkt_ps.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %109)
  %tobool133.not.i.i = icmp eq i64 %109, 0
  br i1 %tobool133.not.i.i, label %if.end143.i.i, label %do.body135.i.i

do.body135.i.i:                                   ; preds = %if.end132.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_action.__msg.10) #4
  %tobool137.not.i.i = icmp eq ptr %46, null
  br i1 %tobool137.not.i.i, label %do.body135.i.i.if.then43_crit_edge, label %do.body135.i.i.cleanup.sink.split.i.i_crit_edge

do.body135.i.i.cleanup.sink.split.i.i_crit_edge:  ; preds = %do.body135.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i.i

do.body135.i.i.if.then43_crit_edge:               ; preds = %do.body135.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.end143.i.i:                                    ; preds = %if.end132.i.i
  %110 = ptrtoint ptr %tag_a_vid_sel.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %tag_a_vid_sel.i.i, align 8
  %hw_index.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %a.0700.i.i, i32 0, i32 1
  %111 = ptrtoint ptr %hw_index.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %hw_index.i.i, align 4
  %113 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %base.i.i, align 4
  %conv146.i.i = zext i16 %114 to i32
  %add.i.i = add i32 %112, %conv146.i.i
  %115 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %max.i.i, align 2
  %conv148.i.i = zext i16 %116 to i32
  %117 = ptrtoint ptr %max2.i.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %max2.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %118)
  %tobool151.not.i.i = icmp ne i16 %118, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv148.i.i)
  %cmp152.i.i = icmp ugt i32 %add.i.i, %conv148.i.i
  %or.cond.i.i131 = select i1 %tobool151.not.i.i, i1 %cmp152.i.i, i1 false
  br i1 %or.cond.i.i131, label %if.then154.i.i, label %if.end143.i.i.if.end162.i.i_crit_edge

if.end143.i.i.if.end162.i.i_crit_edge:            ; preds = %if.end143.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end162.i.i

if.then154.i.i:                                   ; preds = %if.end143.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv150.i.i = zext i16 %118 to i32
  %119 = ptrtoint ptr %base2.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %base2.i.i, align 4
  %conv156.i.i = zext i16 %120 to i32
  %121 = xor i32 %conv148.i.i, -1
  %sub157.i.i = add i32 %add.i.i, %121
  %add158.i.i = add i32 %sub157.i.i, %conv156.i.i
  br label %if.end162.i.i

if.end162.i.i:                                    ; preds = %if.then154.i.i, %if.end143.i.i.if.end162.i.i_crit_edge
  %pol_ix.0.i.i = phi i32 [ %add158.i.i, %if.then154.i.i ], [ %add.i.i, %if.end143.i.i.if.end162.i.i_crit_edge ]
  %pol_max.0.i.i = phi i32 [ %conv150.i.i, %if.then154.i.i ], [ %conv148.i.i, %if.end143.i.i.if.end162.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pol_ix.0.i.i, i32 %pol_max.0.i.i)
  %cmp163.not.i.i = icmp ult i32 %pol_ix.0.i.i, %pol_max.0.i.i
  br i1 %cmp163.not.i.i, label %if.end166.i.i, label %if.end162.i.i.if.then43_crit_edge

if.end162.i.i.if.then43_crit_edge:                ; preds = %if.end162.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.end166.i.i:                                    ; preds = %if.end162.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %122 = ptrtoint ptr %pol_ix168.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %pol_ix.0.i.i, ptr %pol_ix168.i.i, align 4
  %rate_bytes_ps.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %a.0700.i.i, i32 0, i32 5, i32 0, i32 1
  %123 = ptrtoint ptr %rate_bytes_ps.i.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %rate_bytes_ps.i.i, align 8
  %125 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %124, i32 0) #8, !srcloc !112
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %125, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %125, 1
  %126 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %124, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #8, !srcloc !113
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %126, 0
  %sh.diff.i.i = lshr i64 %asmresult10.i.i.i.i.i, 6
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %conv170.i.i = and i32 %tr.sh.diff.i.i, -8
  %127 = ptrtoint ptr %qos_val.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %conv170.i.i, ptr %qos_val.i.i, align 4
  %128 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %107, align 8
  %130 = ptrtoint ptr %vid_a_val.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %vid_a_val.i.i, align 8
  br label %for.inc.sink.split.i.i

sw.bb177.i.i:                                     ; preds = %for.body.i.i
  %131 = ptrtoint ptr %block_id644654659.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %block_id644654659.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %132)
  %cmp179.not.i.i = icmp eq i32 %132, 2
  br i1 %cmp179.not.i.i, label %if.end190.i.i, label %do.body182.i.i

do.body182.i.i:                                   ; preds = %sw.bb177.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_action.__msg.11) #4
  %tobool184.not.i.i = icmp eq ptr %46, null
  br i1 %tobool184.not.i.i, label %do.body182.i.i.if.then43_crit_edge, label %do.body182.i.i.cleanup.sink.split.i.i_crit_edge

do.body182.i.i.cleanup.sink.split.i.i_crit_edge:  ; preds = %do.body182.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i.i

do.body182.i.i.if.then43_crit_edge:               ; preds = %do.body182.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.end190.i.i:                                    ; preds = %sw.bb177.i.i
  %133 = ptrtoint ptr %goto_target.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %goto_target.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %134)
  %cmp192.not.i.i = icmp eq i32 %134, -1
  br i1 %cmp192.not.i.i, label %if.end203.i.i, label %do.body195.i.i

do.body195.i.i:                                   ; preds = %if.end190.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_action.__msg.12) #4
  %tobool197.not.i.i = icmp eq ptr %46, null
  br i1 %tobool197.not.i.i, label %do.body195.i.i.if.then43_crit_edge, label %do.body195.i.i.cleanup.sink.split.i.i_crit_edge

do.body195.i.i.cleanup.sink.split.i.i_crit_edge:  ; preds = %do.body195.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i.i

do.body195.i.i.if.then43_crit_edge:               ; preds = %do.body195.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.end203.i.i:                                    ; preds = %if.end190.i.i
  %135 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ops.i.i, align 4
  %netdev_to_port.i.i = getelementptr inbounds %struct.ocelot_ops, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %netdev_to_port.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %netdev_to_port.i.i, align 4
  %139 = getelementptr inbounds %struct.flow_action_entry, ptr %a.0700.i.i, i32 0, i32 5
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 8
  %call204.i.i = tail call i32 %138(ptr noundef %141) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204.i.i)
  %cmp205.i.i = icmp slt i32 %call204.i.i, 0
  br i1 %cmp205.i.i, label %do.body208.i.i, label %if.end216.i.i

do.body208.i.i:                                   ; preds = %if.end203.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_action.__msg.13) #4
  %tobool210.not.i.i = icmp eq ptr %46, null
  br i1 %tobool210.not.i.i, label %do.body208.i.i.if.then43_crit_edge, label %do.body208.i.i.cleanup.sink.split.i.i_crit_edge

do.body208.i.i.cleanup.sink.split.i.i_crit_edge:  ; preds = %do.body208.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i.i

do.body208.i.i.if.then43_crit_edge:               ; preds = %do.body208.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.end216.i.i:                                    ; preds = %if.end203.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %142 = ptrtoint ptr %vlan_pop_cnt_ena.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 3, ptr %vlan_pop_cnt_ena.i.i, align 8
  %shl.i.i = shl nuw i32 1, %call204.i.i
  %143 = ptrtoint ptr %tag_a_tpid_sel.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %shl.i.i, ptr %tag_a_tpid_sel.i.i, align 4
  br label %for.inc.sink.split.i.i

sw.bb222.i.i:                                     ; preds = %for.body.i.i
  %144 = ptrtoint ptr %block_id644654659.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %block_id644654659.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %145)
  %cmp224.not.i.i = icmp eq i32 %145, 1
  br i1 %cmp224.not.i.i, label %if.end235.i.i, label %do.body227.i.i

do.body227.i.i:                                   ; preds = %sw.bb222.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_action.__msg.14) #4
  %tobool229.not.i.i = icmp eq ptr %46, null
  br i1 %tobool229.not.i.i, label %do.body227.i.i.if.then43_crit_edge, label %do.body227.i.i.cleanup.sink.split.i.i_crit_edge

do.body227.i.i.cleanup.sink.split.i.i_crit_edge:  ; preds = %do.body227.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i.i

do.body227.i.i.if.then43_crit_edge:               ; preds = %do.body227.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.end235.i.i:                                    ; preds = %sw.bb222.i.i
  %146 = ptrtoint ptr %goto_target.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %goto_target.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %147)
  %cmp237.not.i.i = icmp eq i32 %147, -1
  br i1 %cmp237.not.i.i, label %if.end248.i.i, label %do.body240.i.i

do.body240.i.i:                                   ; preds = %if.end235.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_action.__msg.15) #4
  %tobool242.not.i.i = icmp eq ptr %46, null
  br i1 %tobool242.not.i.i, label %do.body240.i.i.if.then43_crit_edge, label %do.body240.i.i.cleanup.sink.split.i.i_crit_edge

do.body240.i.i.cleanup.sink.split.i.i_crit_edge:  ; preds = %do.body240.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i.i

do.body240.i.i.if.then43_crit_edge:               ; preds = %do.body240.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.end248.i.i:                                    ; preds = %if.end235.i.i
  %148 = ptrtoint ptr %vlan_pop_cnt_ena.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 1, ptr %vlan_pop_cnt_ena.i.i, align 8
  %149 = ptrtoint ptr %tag_a_tpid_sel.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %tag_a_tpid_sel.i.i, align 4
  %inc.i.i = add i32 %150, 1
  store i32 %inc.i.i, ptr %tag_a_tpid_sel.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i.i)
  %cmp253.i.i = icmp sgt i32 %inc.i.i, 2
  br i1 %cmp253.i.i, label %do.body256.i.i, label %if.end248.i.i.for.inc.sink.split.i.i_crit_edge

if.end248.i.i.for.inc.sink.split.i.i_crit_edge:   ; preds = %if.end248.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.sink.split.i.i

do.body256.i.i:                                   ; preds = %if.end248.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_action.__msg.16) #4
  %tobool258.not.i.i = icmp eq ptr %46, null
  br i1 %tobool258.not.i.i, label %do.body256.i.i.if.then43_crit_edge, label %do.body256.i.i.cleanup.sink.split.i.i_crit_edge

do.body256.i.i.cleanup.sink.split.i.i_crit_edge:  ; preds = %do.body256.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i.i

do.body256.i.i.if.then43_crit_edge:               ; preds = %do.body256.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

sw.bb266.i.i:                                     ; preds = %for.body.i.i
  %151 = ptrtoint ptr %block_id644654659.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %block_id644654659.i.i, align 4
  %153 = zext i32 %152 to i64
  call void @__sanitizer_cov_trace_switch(i64 %153, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %152, label %do.body278.i.i [
    i32 1, label %if.then270.i.i
    i32 0, label %if.then275.i.i
  ]

if.then270.i.i:                                   ; preds = %sw.bb266.i.i
  %154 = ptrtoint ptr %goto_target.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %goto_target.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %155)
  %cmp.not.i.i.i = icmp eq i32 %155, -1
  br i1 %cmp.not.i.i.i, label %if.end2.i619.i.i, label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %if.then270.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_ingress_vlan_modify.__msg) #4
  %tobool.not.i.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.then43_crit_edge, label %do.body.i.i.i.cleanup.sink.split.i.i_crit_edge

do.body.i.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i.i

do.body.i.i.i.if.then43_crit_edge:                ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.end2.i619.i.i:                                 ; preds = %if.then270.i.i
  %156 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ports.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %157, i32 %port
  %158 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx.i.i.i, align 4
  %vlan_aware.i.i.i = getelementptr inbounds %struct.ocelot_port, ptr %159, i32 0, i32 2
  %160 = ptrtoint ptr %vlan_aware.i.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %vlan_aware.i.i.i, align 4, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool3.not.i.i.i = icmp eq i8 %161, 0
  br i1 %tobool3.not.i.i.i, label %do.body5.i.i.i, label %if.end13.i.i.i

do.body5.i.i.i:                                   ; preds = %if.end2.i619.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_ingress_vlan_modify.__msg.27) #4
  %tobool7.not.i.i.i = icmp eq ptr %46, null
  br i1 %tobool7.not.i.i.i, label %do.body5.i.i.i.if.then43_crit_edge, label %do.body5.i.i.i.cleanup.sink.split.i.i_crit_edge

do.body5.i.i.i.cleanup.sink.split.i.i_crit_edge:  ; preds = %do.body5.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i.i

do.body5.i.i.i.if.then43_crit_edge:               ; preds = %do.body5.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.end13.i.i.i:                                   ; preds = %if.end2.i619.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %162 = ptrtoint ptr %action365.i.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 1, ptr %action365.i.i, align 4
  %163 = ptrtoint ptr %tag_a_vid_sel.i.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 1, ptr %tag_a_vid_sel.i.i, align 8
  %164 = getelementptr inbounds %struct.flow_action_entry, ptr %a.0700.i.i, i32 0, i32 5
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %164, align 8
  %167 = ptrtoint ptr %vid16.i.i.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %166, ptr %vid16.i.i.i, align 2
  %prio.i.i.i = getelementptr inbounds %struct.anon.150, ptr %164, i32 0, i32 2
  %168 = ptrtoint ptr %prio.i.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %prio.i.i.i, align 4
  %170 = ptrtoint ptr %pcp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %169, ptr %pcp.i.i.i, align 1
  br label %for.inc.sink.split.i.i

if.then275.i.i:                                   ; preds = %sw.bb266.i.i
  %171 = getelementptr inbounds %struct.flow_action_entry, ptr %a.0700.i.i, i32 0, i32 5
  %proto.i.i.i = getelementptr inbounds %struct.anon.150, ptr %171, i32 0, i32 1
  %172 = ptrtoint ptr %proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %proto.i.i.i, align 2
  %174 = zext i16 %173 to i64
  call void @__sanitizer_cov_trace_switch(i64 %174, ptr @__sancov_gen_cov_switch_values.44)
  switch i16 %173, label %do.body.i622.i.i [
    i16 -32512, label %if.then275.i.i.sw.epilog.i.i.i_crit_edge
    i16 -30552, label %sw.bb1.i.i.i
  ]

if.then275.i.i.sw.epilog.i.i.i_crit_edge:         ; preds = %if.then275.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i.i

sw.bb1.i.i.i:                                     ; preds = %if.then275.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i.i

do.body.i622.i.i:                                 ; preds = %if.then275.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_egress_vlan_modify.__msg) #4
  %tobool.not.i621.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i621.i.i, label %do.body.i622.i.i.if.then43_crit_edge, label %do.body.i622.i.i.cleanup.sink.split.i.i_crit_edge

do.body.i622.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %do.body.i622.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i.i

do.body.i622.i.i.if.then43_crit_edge:             ; preds = %do.body.i622.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

sw.epilog.i.i.i:                                  ; preds = %sw.bb1.i.i.i, %if.then275.i.i.sw.epilog.i.i.i_crit_edge
  %tpid.0.i.i.i = phi i32 [ 1, %sw.bb1.i.i.i ], [ 0, %if.then275.i.i.sw.epilog.i.i.i_crit_edge ]
  %175 = ptrtoint ptr %tag_a_tpid_sel.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %tpid.0.i.i.i, ptr %tag_a_tpid_sel.i.i, align 4
  %176 = ptrtoint ptr %action365.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 1, ptr %action365.i.i, align 4
  %177 = ptrtoint ptr %tag_a_vid_sel.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 0, ptr %tag_a_vid_sel.i.i, align 8
  %178 = ptrtoint ptr %171 to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %171, align 8
  %180 = ptrtoint ptr %vid_a_val.i.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %179, ptr %vid_a_val.i.i, align 8
  %prio.i625.i.i = getelementptr inbounds %struct.anon.150, ptr %171, i32 0, i32 2
  %181 = ptrtoint ptr %prio.i625.i.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %prio.i625.i.i, align 4
  %183 = ptrtoint ptr %pcp_a_val.i.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %182, ptr %pcp_a_val.i.i, align 2
  %184 = ptrtoint ptr %qos_val.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 1, ptr %qos_val.i.i, align 4
  br label %for.inc.sink.split.i.i

do.body278.i.i:                                   ; preds = %sw.bb266.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_action.__msg.17) #4
  %tobool280.not.i.i = icmp eq ptr %46, null
  br i1 %tobool280.not.i.i, label %do.body278.i.i.if.then43_crit_edge, label %do.body278.i.i.cleanup.sink.split.i.i_crit_edge

do.body278.i.i.cleanup.sink.split.i.i_crit_edge:  ; preds = %do.body278.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i.i

do.body278.i.i.if.then43_crit_edge:               ; preds = %do.body278.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

sw.bb291.i.i:                                     ; preds = %for.body.i.i
  %185 = ptrtoint ptr %block_id644654659.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %block_id644654659.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %186)
  %cmp293.not.i.i = icmp eq i32 %186, 1
  br i1 %cmp293.not.i.i, label %if.end304.i.i, label %do.body296.i.i

do.body296.i.i:                                   ; preds = %sw.bb291.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_action.__msg.18) #4
  %tobool298.not.i.i = icmp eq ptr %46, null
  br i1 %tobool298.not.i.i, label %do.body296.i.i.if.then43_crit_edge, label %do.body296.i.i.cleanup.sink.split.i.i_crit_edge

do.body296.i.i.cleanup.sink.split.i.i_crit_edge:  ; preds = %do.body296.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i.i

do.body296.i.i.if.then43_crit_edge:               ; preds = %do.body296.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.end304.i.i:                                    ; preds = %sw.bb291.i.i
  %187 = ptrtoint ptr %goto_target.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %goto_target.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %188)
  %cmp306.not.i.i = icmp eq i32 %188, -1
  br i1 %cmp306.not.i.i, label %if.end317.i.i, label %do.body309.i.i

do.body309.i.i:                                   ; preds = %if.end304.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_action.__msg.19) #4
  %tobool311.not.i.i = icmp eq ptr %46, null
  br i1 %tobool311.not.i.i, label %do.body309.i.i.if.then43_crit_edge, label %do.body309.i.i.cleanup.sink.split.i.i_crit_edge

do.body309.i.i.cleanup.sink.split.i.i_crit_edge:  ; preds = %do.body309.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i.i

do.body309.i.i.if.then43_crit_edge:               ; preds = %do.body309.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.end317.i.i:                                    ; preds = %if.end304.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %189 = ptrtoint ptr %qos_ena.i.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 1, ptr %qos_ena.i.i, align 1
  %190 = getelementptr inbounds %struct.flow_action_entry, ptr %a.0700.i.i, i32 0, i32 5
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %190, align 8
  %conv319.i.i = trunc i32 %192 to i8
  %193 = ptrtoint ptr %qos_val.i.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %conv319.i.i, ptr %qos_val.i.i, align 4
  br label %for.inc.sink.split.i.i

sw.bb322.i.i:                                     ; preds = %for.body.i.i
  %194 = getelementptr inbounds %struct.flow_action_entry, ptr %a.0700.i.i, i32 0, i32 5
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %194, align 8
  %197 = ptrtoint ptr %goto_target.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %196, ptr %goto_target.i.i, align 8
  %198 = ptrtoint ptr %block_id644654659.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %block_id644654659.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %199)
  %cmp325.i.i = icmp eq i32 %199, 1
  br i1 %cmp325.i.i, label %land.lhs.true327.i.i, label %sw.bb322.i.i.for.inc.i.i_crit_edge

sw.bb322.i.i.for.inc.i.i_crit_edge:               ; preds = %sw.bb322.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

land.lhs.true327.i.i:                             ; preds = %sw.bb322.i.i
  %200 = ptrtoint ptr %lookup328.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %lookup328.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %201)
  %cmp329.i.i = icmp eq i32 %201, 2
  br i1 %cmp329.i.i, label %if.then331.i.i, label %land.lhs.true327.i.i.for.inc.i.i_crit_edge

land.lhs.true327.i.i.for.inc.i.i_crit_edge:       ; preds = %land.lhs.true327.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

if.then331.i.i:                                   ; preds = %land.lhs.true327.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %cmp.i628.i.i = icmp eq i32 %196, 0
  br i1 %cmp.i628.i.i, label %if.then331.i.i.ocelot_chain_to_pag.exit636.i.i_crit_edge, label %if.end.i634.i.i

if.then331.i.i.ocelot_chain_to_pag.exit636.i.i_crit_edge: ; preds = %if.then331.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ocelot_chain_to_pag.exit636.i.i

if.end.i634.i.i:                                  ; preds = %if.then331.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %div.i.i629.i.i = sdiv i32 %196, 1000
  %rem.i.i630.i.i = srem i32 %div.i.i629.i.i, 10
  %mul.neg.i631.i.i = mul nsw i32 %rem.i.i630.i.i, -1000
  %add.neg.i632.i.i = add i32 %196, -20000
  %sub.i633.i.i = add i32 %add.neg.i632.i.i, %mul.neg.i631.i.i
  br label %ocelot_chain_to_pag.exit636.i.i

ocelot_chain_to_pag.exit636.i.i:                  ; preds = %if.end.i634.i.i, %if.then331.i.i.ocelot_chain_to_pag.exit636.i.i_crit_edge
  %retval.0.i635.i.i = phi i32 [ %sub.i633.i.i, %if.end.i634.i.i ], [ 0, %if.then331.i.i.ocelot_chain_to_pag.exit636.i.i_crit_edge ]
  %202 = ptrtoint ptr %pag_override_mask.i.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 -1, ptr %pag_override_mask.i.i, align 1
  %conv336.i.i = trunc i32 %retval.0.i635.i.i to i8
  %203 = ptrtoint ptr %pag_val.i.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %conv336.i.i, ptr %pag_val.i.i, align 2
  br label %for.inc.sink.split.i.i

sw.bb340.i.i:                                     ; preds = %for.body.i.i
  %204 = ptrtoint ptr %block_id644654659.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %block_id644654659.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %cmp342.not.i.i = icmp eq i32 %205, 0
  br i1 %cmp342.not.i.i, label %if.end353.i.i, label %do.body345.i.i

do.body345.i.i:                                   ; preds = %sw.bb340.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_action.__msg.20) #4
  %tobool347.not.i.i = icmp eq ptr %46, null
  br i1 %tobool347.not.i.i, label %do.body345.i.i.if.then43_crit_edge, label %do.body345.i.i.cleanup.sink.split.i.i_crit_edge

do.body345.i.i.cleanup.sink.split.i.i_crit_edge:  ; preds = %do.body345.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i.i

do.body345.i.i.if.then43_crit_edge:               ; preds = %do.body345.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.end353.i.i:                                    ; preds = %sw.bb340.i.i
  %206 = getelementptr inbounds %struct.flow_action_entry, ptr %a.0700.i.i, i32 0, i32 5
  %proto.i.i = getelementptr inbounds %struct.anon.150, ptr %206, i32 0, i32 1
  %207 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %proto.i.i, align 2
  %209 = zext i16 %208 to i64
  call void @__sanitizer_cov_trace_switch(i64 %209, ptr @__sancov_gen_cov_switch_values.45)
  switch i16 %208, label %do.body357.i.i [
    i16 -32512, label %if.end353.i.i.sw.epilog.i.i_crit_edge
    i16 -30552, label %sw.bb356.i.i
  ]

if.end353.i.i.sw.epilog.i.i_crit_edge:            ; preds = %if.end353.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i

sw.bb356.i.i:                                     ; preds = %if.end353.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i

do.body357.i.i:                                   ; preds = %if.end353.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_action.__msg.21) #4
  %tobool359.not.i.i = icmp eq ptr %46, null
  br i1 %tobool359.not.i.i, label %do.body357.i.i.if.then43_crit_edge, label %do.body357.i.i.cleanup.sink.split.i.i_crit_edge

do.body357.i.i.cleanup.sink.split.i.i_crit_edge:  ; preds = %do.body357.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i.i

do.body357.i.i.if.then43_crit_edge:               ; preds = %do.body357.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

sw.epilog.i.i:                                    ; preds = %sw.bb356.i.i, %if.end353.i.i.sw.epilog.i.i_crit_edge
  %tpid.0.i.i = phi i32 [ 1, %sw.bb356.i.i ], [ 0, %if.end353.i.i.sw.epilog.i.i_crit_edge ]
  %210 = ptrtoint ptr %tag_a_tpid_sel.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %tpid.0.i.i, ptr %tag_a_tpid_sel.i.i, align 4
  %211 = ptrtoint ptr %action365.i.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 1, ptr %action365.i.i, align 4
  %212 = ptrtoint ptr %tag_a_vid_sel.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 1, ptr %tag_a_vid_sel.i.i, align 8
  %213 = ptrtoint ptr %206 to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %206, align 8
  %215 = ptrtoint ptr %vid_a_val.i.i to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 %214, ptr %vid_a_val.i.i, align 8
  %prio.i.i = getelementptr inbounds %struct.anon.150, ptr %206, i32 0, i32 2
  %216 = ptrtoint ptr %prio.i.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %prio.i.i, align 4
  %218 = ptrtoint ptr %pcp_a_val.i.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %217, ptr %pcp_a_val.i.i, align 2
  br label %for.inc.sink.split.i.i

sw.bb371.i.i:                                     ; preds = %for.body.i.i
  %219 = ptrtoint ptr %block_id644654659.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %block_id644654659.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %220)
  %cmp373.not.i.i = icmp eq i32 %220, 3
  br i1 %cmp373.not.i.i, label %sw.bb371.i.i.for.inc.sink.split.i.i_crit_edge, label %do.body376.i.i

sw.bb371.i.i.for.inc.sink.split.i.i_crit_edge:    ; preds = %sw.bb371.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.sink.split.i.i

do.body376.i.i:                                   ; preds = %sw.bb371.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_action.__msg.22) #4
  %tobool378.not.i.i = icmp eq ptr %46, null
  br i1 %tobool378.not.i.i, label %do.body376.i.i.if.then43_crit_edge, label %do.body376.i.i.cleanup.sink.split.i.i_crit_edge

do.body376.i.i.cleanup.sink.split.i.i_crit_edge:  ; preds = %do.body376.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i.i

do.body376.i.i.if.then43_crit_edge:               ; preds = %do.body376.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

do.body387.i.i:                                   ; preds = %for.body.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_action.__msg.23) #4
  %tobool389.not.i.i = icmp eq ptr %46, null
  br i1 %tobool389.not.i.i, label %do.body387.i.i.if.then43_crit_edge, label %do.body387.i.i.cleanup.sink.split.i.i_crit_edge

do.body387.i.i.cleanup.sink.split.i.i_crit_edge:  ; preds = %do.body387.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i.i

do.body387.i.i.if.then43_crit_edge:               ; preds = %do.body387.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

for.inc.sink.split.i.i:                           ; preds = %sw.bb371.i.i.for.inc.sink.split.i.i_crit_edge, %sw.epilog.i.i, %ocelot_chain_to_pag.exit636.i.i, %if.end317.i.i, %sw.epilog.i.i.i, %if.end13.i.i.i, %if.end248.i.i.for.inc.sink.split.i.i_crit_edge, %if.end216.i.i, %if.end166.i.i, %sw.bb96.i.i.for.inc.sink.split.i.i_crit_edge, %if.end88.i.i, %if.end55.i.i
  %.sink.i.i = phi i32 [ 2, %if.end13.i.i.i ], [ 2, %sw.epilog.i.i.i ], [ 2, %if.end55.i.i ], [ 2, %if.end88.i.i ], [ 2, %if.end166.i.i ], [ 2, %if.end216.i.i ], [ 2, %if.end317.i.i ], [ 2, %sw.epilog.i.i ], [ 1, %ocelot_chain_to_pag.exit636.i.i ], [ %101, %sw.bb96.i.i.for.inc.sink.split.i.i_crit_edge ], [ 2, %if.end248.i.i.for.inc.sink.split.i.i_crit_edge ], [ 3, %sw.bb371.i.i.for.inc.sink.split.i.i_crit_edge ]
  %221 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %.sink.i.i, ptr %type.i.i, align 8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.inc.sink.split.i.i, %land.lhs.true327.i.i.for.inc.i.i_crit_edge, %sw.bb322.i.i.for.inc.i.i_crit_edge
  %222 = ptrtoint ptr %rule.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %rule.i.i, align 8
  %entries398.i.i = getelementptr inbounds %struct.flow_rule, ptr %223, i32 1
  %inc399.i.i = add nuw i32 %i.0701.i.i, 1
  %arrayidx400.i.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries398.i.i, i32 0, i32 %inc399.i.i
  %action27.i.i = getelementptr inbounds %struct.flow_rule, ptr %223, i32 0, i32 1
  %224 = ptrtoint ptr %action27.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %action27.i.i, align 8
  %cmp28.i.i132 = icmp ult i32 %inc399.i.i, %225
  br i1 %cmp28.i.i132, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.end23.i.i.for.end.i.i_crit_edge
  %226 = ptrtoint ptr %goto_target.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %goto_target.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %227)
  %cmp402.i.i = icmp eq i32 %227, -1
  br i1 %cmp402.i.i, label %if.then404.i.i, label %for.end.i.i.if.end430.i.i_crit_edge

for.end.i.i.if.end430.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end430.i.i

if.then404.i.i:                                   ; preds = %for.end.i.i
  %228 = ptrtoint ptr %block_id644654659.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %block_id644654659.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %229)
  %cmp406.i.i = icmp eq i32 %229, 2
  br i1 %cmp406.i.i, label %land.lhs.true408.i.i, label %lor.lhs.false412.i.i

land.lhs.true408.i.i:                             ; preds = %if.then404.i.i
  %lookup409.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 4
  %230 = ptrtoint ptr %lookup409.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %lookup409.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %231)
  %cmp410.i.i = icmp eq i32 %231, 1
  %or.cond615.i.i = or i1 %cmp3.i.i.i, %cmp410.i.i
  br i1 %or.cond615.i.i, label %land.lhs.true408.i.i.if.end430.i.i_crit_edge, label %land.lhs.true408.i.i.do.body421.i.i_crit_edge

land.lhs.true408.i.i.do.body421.i.i_crit_edge:    ; preds = %land.lhs.true408.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body421.i.i

land.lhs.true408.i.i.if.end430.i.i_crit_edge:     ; preds = %land.lhs.true408.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end430.i.i

lor.lhs.false412.i.i:                             ; preds = %if.then404.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %229)
  %cmp417.i.i = icmp eq i32 %229, 3
  %or.cond696.i.i = select i1 %cmp3.i.i.i, i1 true, i1 %cmp417.i.i
  br i1 %or.cond696.i.i, label %lor.lhs.false412.i.i.if.end430.i.i_crit_edge, label %lor.lhs.false412.i.i.do.body421.i.i_crit_edge

lor.lhs.false412.i.i.do.body421.i.i_crit_edge:    ; preds = %lor.lhs.false412.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body421.i.i

lor.lhs.false412.i.i.if.end430.i.i_crit_edge:     ; preds = %lor.lhs.false412.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end430.i.i

do.body421.i.i:                                   ; preds = %lor.lhs.false412.i.i.do.body421.i.i_crit_edge, %land.lhs.true408.i.i.do.body421.i.i_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_action.__msg.24) #4
  %tobool423.not.i.i = icmp eq ptr %46, null
  br i1 %tobool423.not.i.i, label %do.body421.i.i.if.then43_crit_edge, label %do.body421.i.i.cleanup.sink.split.i.i_crit_edge

do.body421.i.i.cleanup.sink.split.i.i_crit_edge:  ; preds = %do.body421.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i.i

do.body421.i.i.if.then43_crit_edge:               ; preds = %do.body421.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.end430.i.i:                                    ; preds = %lor.lhs.false412.i.i.if.end430.i.i_crit_edge, %land.lhs.true408.i.i.if.end430.i.i_crit_edge, %for.end.i.i.if.end430.i.i_crit_edge
  br i1 %ingress, label %if.end.i639.i.i, label %if.then.i638.i.i

if.then.i638.i.i:                                 ; preds = %if.end430.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %cmp.i637.i.i = icmp slt i32 %227, 0
  br label %ocelot_is_goto_target_valid.exit.i.i

if.end.i639.i.i:                                  ; preds = %if.end430.i.i
  %232 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %232, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %61, label %for.body30.i.i.i [
    i32 0, label %if.then2.i.i.i
    i32 10000, label %if.then14.i.i.i
    i32 11000, label %if.then18.i.i.i
    i32 12000, label %for.body.i.i.i
  ]

if.then2.i.i.i:                                   ; preds = %if.end.i639.i.i
  %233 = zext i32 %227 to i64
  call void @__sanitizer_cov_trace_switch(i64 %233, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %227, label %if.then2.i.i.i.ocelot_is_goto_target_valid.exit.i.i_crit_edge [
    i32 10000, label %if.then2.i.i.i.if.end.i133_crit_edge
    i32 11000, label %if.then2.i.i.i.if.end.i133_crit_edge176
    i32 12000, label %if.then2.i.i.i.if.end.i133_crit_edge177
    i32 20000, label %if.then2.i.i.i.if.end.i133_crit_edge178
    i32 21000, label %if.then2.i.i.i.if.end.i133_crit_edge179
    i32 30000, label %if.then2.i.i.i.if.end.i133_crit_edge180
  ]

if.then2.i.i.i.if.end.i133_crit_edge180:          ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i133

if.then2.i.i.i.if.end.i133_crit_edge179:          ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i133

if.then2.i.i.i.if.end.i133_crit_edge178:          ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i133

if.then2.i.i.i.if.end.i133_crit_edge177:          ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i133

if.then2.i.i.i.if.end.i133_crit_edge176:          ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i133

if.then2.i.i.i.if.end.i133_crit_edge:             ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i133

if.then2.i.i.i.ocelot_is_goto_target_valid.exit.i.i_crit_edge: ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ocelot_is_goto_target_valid.exit.i.i

if.then14.i.i.i:                                  ; preds = %if.end.i639.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 11000, i32 %227)
  %cmp15.i.i.i = icmp eq i32 %227, 11000
  br label %ocelot_is_goto_target_valid.exit.i.i

if.then18.i.i.i:                                  ; preds = %if.end.i639.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000, i32 %227)
  %cmp19.i.i.i = icmp eq i32 %227, 12000
  br label %ocelot_is_goto_target_valid.exit.i.i

for.body.i.i.i:                                   ; preds = %if.end.i639.i.i
  %234 = add i32 %227, -20000
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %234)
  %235 = icmp ult i32 %234, 256
  br i1 %235, label %for.body.i.i.i.if.end.i133_crit_edge, label %for.body.i.i.i.ocelot_is_goto_target_valid.exit.i.i_crit_edge

for.body.i.i.i.ocelot_is_goto_target_valid.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ocelot_is_goto_target_valid.exit.i.i

for.body.i.i.i.if.end.i133_crit_edge:             ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i133

for.body30.i.i.i:                                 ; preds = %if.end.i639.i.i
  %236 = add i32 %61, -20000
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %236)
  %237 = icmp ult i32 %236, 256
  br i1 %237, label %if.then33.i.i.i, label %for.body42.i.i.i

if.then33.i.i.i:                                  ; preds = %for.body30.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %add34.i.i.i = add nuw nsw i32 %61, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %add34.i.i.i, i32 %227)
  %cmp35.i.i.i = icmp eq i32 %add34.i.i.i, %227
  br label %ocelot_is_goto_target_valid.exit.i.i

for.body42.i.i.i:                                 ; preds = %for.body30.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %238 = add i32 %61, -21000
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %238)
  %239 = icmp ult i32 %238, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %227)
  %cmp46.i.i.i = icmp eq i32 %227, 30000
  %spec.select.i.i.i = and i1 %239, %cmp46.i.i.i
  br label %ocelot_is_goto_target_valid.exit.i.i

ocelot_is_goto_target_valid.exit.i.i:             ; preds = %for.body42.i.i.i, %if.then33.i.i.i, %for.body.i.i.i.ocelot_is_goto_target_valid.exit.i.i_crit_edge, %if.then18.i.i.i, %if.then14.i.i.i, %if.then2.i.i.i.ocelot_is_goto_target_valid.exit.i.i_crit_edge, %if.then.i638.i.i
  %retval.0.i640.i.i = phi i1 [ %cmp15.i.i.i, %if.then14.i.i.i ], [ %cmp19.i.i.i, %if.then18.i.i.i ], [ %cmp35.i.i.i, %if.then33.i.i.i ], [ %cmp.i637.i.i, %if.then.i638.i.i ], [ %spec.select.i.i.i, %for.body42.i.i.i ], [ false, %if.then2.i.i.i.ocelot_is_goto_target_valid.exit.i.i_crit_edge ], [ false, %for.body.i.i.i.ocelot_is_goto_target_valid.exit.i.i_crit_edge ]
  %brmerge.i.i = select i1 %retval.0.i640.i.i, i1 true, i1 %cmp402.i.i
  br i1 %brmerge.i.i, label %ocelot_is_goto_target_valid.exit.i.i.if.end.i133_crit_edge, label %do.body437.i.i

ocelot_is_goto_target_valid.exit.i.i.if.end.i133_crit_edge: ; preds = %ocelot_is_goto_target_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i133

do.body437.i.i:                                   ; preds = %ocelot_is_goto_target_valid.exit.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_action.__msg.25) #4
  %tobool439.not.i.i = icmp eq ptr %46, null
  br i1 %tobool439.not.i.i, label %do.body437.i.i.if.then43_crit_edge, label %do.body437.i.i.cleanup.sink.split.i.i_crit_edge

do.body437.i.i.cleanup.sink.split.i.i_crit_edge:  ; preds = %do.body437.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i.i

do.body437.i.i.if.then43_crit_edge:               ; preds = %do.body437.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

cleanup.sink.split.i.i:                           ; preds = %do.body437.i.i.cleanup.sink.split.i.i_crit_edge, %do.body421.i.i.cleanup.sink.split.i.i_crit_edge, %do.body387.i.i.cleanup.sink.split.i.i_crit_edge, %do.body376.i.i.cleanup.sink.split.i.i_crit_edge, %do.body357.i.i.cleanup.sink.split.i.i_crit_edge, %do.body345.i.i.cleanup.sink.split.i.i_crit_edge, %do.body309.i.i.cleanup.sink.split.i.i_crit_edge, %do.body296.i.i.cleanup.sink.split.i.i_crit_edge, %do.body278.i.i.cleanup.sink.split.i.i_crit_edge, %do.body.i622.i.i.cleanup.sink.split.i.i_crit_edge, %do.body5.i.i.i.cleanup.sink.split.i.i_crit_edge, %do.body.i.i.i.cleanup.sink.split.i.i_crit_edge, %do.body256.i.i.cleanup.sink.split.i.i_crit_edge, %do.body240.i.i.cleanup.sink.split.i.i_crit_edge, %do.body227.i.i.cleanup.sink.split.i.i_crit_edge, %do.body208.i.i.cleanup.sink.split.i.i_crit_edge, %do.body195.i.i.cleanup.sink.split.i.i_crit_edge, %do.body182.i.i.cleanup.sink.split.i.i_crit_edge, %do.body135.i.i.cleanup.sink.split.i.i_crit_edge, %do.body124.i.i.cleanup.sink.split.i.i_crit_edge, %do.body111.i.i.cleanup.sink.split.i.i_crit_edge, %do.body80.i.i.cleanup.sink.split.i.i_crit_edge, %do.body67.i.i.cleanup.sink.split.i.i_crit_edge, %do.body47.i.i.cleanup.sink.split.i.i_crit_edge, %do.body34.i.i.cleanup.sink.split.i.i_crit_edge, %do.body.i.i.cleanup.sink.split.i.i_crit_edge, %do.body48.i.i.i.i.cleanup.sink.split.i.i_crit_edge, %do.body.i.i.i.i.i.cleanup.sink.split.i.i_crit_edge
  %ocelot_flower_parse_egress_vlan_modify.__msg.sink.i.i = phi ptr [ @flow_action_mixed_hw_stats_check.__msg, %do.body.i.i.i.i.i.cleanup.sink.split.i.i_crit_edge ], [ @__flow_action_hw_stats_check.__msg, %do.body48.i.i.i.i.cleanup.sink.split.i.i_crit_edge ], [ @ocelot_flower_parse_action.__msg, %do.body.i.i.cleanup.sink.split.i.i_crit_edge ], [ @ocelot_flower_parse_action.__msg.4, %do.body34.i.i.cleanup.sink.split.i.i_crit_edge ], [ @ocelot_flower_parse_action.__msg.5, %do.body47.i.i.cleanup.sink.split.i.i_crit_edge ], [ @ocelot_flower_parse_action.__msg.6, %do.body67.i.i.cleanup.sink.split.i.i_crit_edge ], [ @ocelot_flower_parse_action.__msg.7, %do.body80.i.i.cleanup.sink.split.i.i_crit_edge ], [ @ocelot_flower_parse_action.__msg.8, %do.body111.i.i.cleanup.sink.split.i.i_crit_edge ], [ @ocelot_flower_parse_action.__msg.9, %do.body124.i.i.cleanup.sink.split.i.i_crit_edge ], [ @ocelot_flower_parse_action.__msg.10, %do.body135.i.i.cleanup.sink.split.i.i_crit_edge ], [ @ocelot_flower_parse_action.__msg.11, %do.body182.i.i.cleanup.sink.split.i.i_crit_edge ], [ @ocelot_flower_parse_action.__msg.12, %do.body195.i.i.cleanup.sink.split.i.i_crit_edge ], [ @ocelot_flower_parse_action.__msg.13, %do.body208.i.i.cleanup.sink.split.i.i_crit_edge ], [ @ocelot_flower_parse_action.__msg.14, %do.body227.i.i.cleanup.sink.split.i.i_crit_edge ], [ @ocelot_flower_parse_action.__msg.15, %do.body240.i.i.cleanup.sink.split.i.i_crit_edge ], [ @ocelot_flower_parse_action.__msg.16, %do.body256.i.i.cleanup.sink.split.i.i_crit_edge ], [ @ocelot_flower_parse_ingress_vlan_modify.__msg, %do.body.i.i.i.cleanup.sink.split.i.i_crit_edge ], [ @ocelot_flower_parse_ingress_vlan_modify.__msg.27, %do.body5.i.i.i.cleanup.sink.split.i.i_crit_edge ], [ @ocelot_flower_parse_egress_vlan_modify.__msg, %do.body.i622.i.i.cleanup.sink.split.i.i_crit_edge ], [ @ocelot_flower_parse_action.__msg.17, %do.body278.i.i.cleanup.sink.split.i.i_crit_edge ], [ @ocelot_flower_parse_action.__msg.18, %do.body296.i.i.cleanup.sink.split.i.i_crit_edge ], [ @ocelot_flower_parse_action.__msg.19, %do.body309.i.i.cleanup.sink.split.i.i_crit_edge ], [ @ocelot_flower_parse_action.__msg.20, %do.body345.i.i.cleanup.sink.split.i.i_crit_edge ], [ @ocelot_flower_parse_action.__msg.21, %do.body357.i.i.cleanup.sink.split.i.i_crit_edge ], [ @ocelot_flower_parse_action.__msg.22, %do.body376.i.i.cleanup.sink.split.i.i_crit_edge ], [ @ocelot_flower_parse_action.__msg.23, %do.body387.i.i.cleanup.sink.split.i.i_crit_edge ], [ @ocelot_flower_parse_action.__msg.24, %do.body421.i.i.cleanup.sink.split.i.i_crit_edge ], [ @ocelot_flower_parse_action.__msg.25, %do.body437.i.i.cleanup.sink.split.i.i_crit_edge ]
  %240 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %ocelot_flower_parse_egress_vlan_modify.__msg.sink.i.i, ptr %46, align 4
  br label %if.then43

if.end.i133:                                      ; preds = %ocelot_is_goto_target_valid.exit.i.i.if.end.i133_crit_edge, %for.body.i.i.i.if.end.i133_crit_edge, %if.then2.i.i.i.if.end.i133_crit_edge, %if.then2.i.i.i.if.end.i133_crit_edge176, %if.then2.i.i.i.if.end.i133_crit_edge177, %if.then2.i.i.i.if.end.i133_crit_edge178, %if.then2.i.i.i.if.end.i133_crit_edge179, %if.then2.i.i.i.if.end.i133_crit_edge180
  %241 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %242)
  %cmp.i = icmp eq i32 %242, 3
  br i1 %cmp.i, label %if.end.i133.if.end44_crit_edge, label %if.end7.i

if.end.i133.if.end44_crit_edge:                   ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

if.end7.i:                                        ; preds = %if.end.i133
  %243 = ptrtoint ptr %rule.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %rule.i.i, align 8
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %244, align 8
  %247 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %extack1, align 4
  %protocol.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 1
  %249 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %protocol.i.i, align 4
  %251 = ptrtoint ptr %246 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %246, align 4
  %and.i.i = and i32 %252, -33555616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i22.i, label %if.end7.i.if.then43_crit_edge

if.end7.i.if.then43_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.end.i22.i:                                     ; preds = %if.end7.i
  br i1 %ingress, label %if.end.i22.i.if.end10.i.i_crit_edge, label %if.then5.i.i

if.end.i22.i.if.end10.i.i_crit_edge:              ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i.i

if.then5.i.i:                                     ; preds = %if.end.i22.i
  %vcap1.i.i.i = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 26
  %253 = ptrtoint ptr %vcap1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %vcap1.i.i.i, align 4
  %keys.i.i.i = getelementptr inbounds %struct.vcap_props, ptr %254, i32 0, i32 13
  %255 = ptrtoint ptr %keys.i.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %keys.i.i.i, align 4
  %length.i.i.i = getelementptr %struct.vcap_field, ptr %256, i32 1, i32 1
  %257 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %length.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i.i.i) #4
  %259 = ptrtoint ptr %match.i.i.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i.i.i, align 4, !annotation !115
  %260 = getelementptr inbounds %struct.flow_match_meta, ptr %match.i.i.i, i32 0, i32 1
  %261 = ptrtoint ptr %260 to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr inttoptr (i32 -1 to ptr), ptr %260, align 4, !annotation !115
  call void @flow_rule_match_meta(ptr noundef %244, ptr noundef nonnull %match.i.i.i) #4
  %262 = ptrtoint ptr %260 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %260, align 4
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %263, align 4
  %266 = zext i32 %265 to i64
  call void @__sanitizer_cov_trace_switch(i64 %266, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %265, label %do.body.i.i24.i [
    i32 0, label %if.then5.i.i.ocelot_flower_parse_indev.exit.i.i_crit_edge
    i32 -1, label %if.end10.i.i.i
  ]

if.then5.i.i.ocelot_flower_parse_indev.exit.i.i_crit_edge: ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ocelot_flower_parse_indev.exit.i.i

do.body.i.i24.i:                                  ; preds = %if.then5.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_indev.__msg) #4
  %tobool7.not.i.i23.i = icmp eq ptr %248, null
  br i1 %tobool7.not.i.i23.i, label %do.body.i.i24.i.ocelot_flower_parse_indev.exit.thread.i.i_crit_edge, label %do.body.i.i24.i.ocelot_flower_parse_indev.exit.thread.sink.split.i.i_crit_edge

do.body.i.i24.i.ocelot_flower_parse_indev.exit.thread.sink.split.i.i_crit_edge: ; preds = %do.body.i.i24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ocelot_flower_parse_indev.exit.thread.sink.split.i.i

do.body.i.i24.i.ocelot_flower_parse_indev.exit.thread.i.i_crit_edge: ; preds = %do.body.i.i24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ocelot_flower_parse_indev.exit.thread.i.i

if.end10.i.i.i:                                   ; preds = %if.then5.i.i
  %ops.i.i.i = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 3
  %267 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %ops.i.i.i, align 4
  %269 = ptrtoint ptr %268 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %268, align 4
  %call11.i.i.i = call ptr %270(ptr noundef %ocelot, i32 noundef %port) #4
  %tobool12.not.i.i.i = icmp eq ptr %call11.i.i.i, null
  br i1 %tobool12.not.i.i.i, label %if.end10.i.i.i.ocelot_flower_parse_indev.exit.thread.i.i_crit_edge, label %if.end14.i.i.i

if.end10.i.i.i.ocelot_flower_parse_indev.exit.thread.i.i_crit_edge: ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ocelot_flower_parse_indev.exit.thread.i.i

if.end14.i.i.i:                                   ; preds = %if.end10.i.i.i
  %nd_net.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %call11.i.i.i, i32 0, i32 127
  %271 = ptrtoint ptr %nd_net.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %nd_net.i.i.i.i, align 4
  %273 = ptrtoint ptr %match.i.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %match.i.i.i, align 4
  %275 = ptrtoint ptr %274 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %274, align 4
  %call17.i.i.i = call ptr @__dev_get_by_index(ptr noundef %272, i32 noundef %276) #4
  %tobool18.not.i.i.i = icmp eq ptr %call17.i.i.i, null
  br i1 %tobool18.not.i.i.i, label %do.body20.i.i.i, label %if.end28.i.i.i

do.body20.i.i.i:                                  ; preds = %if.end14.i.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_indev.__msg.35) #4
  %tobool22.not.i.i.i = icmp eq ptr %248, null
  br i1 %tobool22.not.i.i.i, label %do.body20.i.i.i.ocelot_flower_parse_indev.exit.thread.i.i_crit_edge, label %do.body20.i.i.i.ocelot_flower_parse_indev.exit.thread.sink.split.i.i_crit_edge

do.body20.i.i.i.ocelot_flower_parse_indev.exit.thread.sink.split.i.i_crit_edge: ; preds = %do.body20.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ocelot_flower_parse_indev.exit.thread.sink.split.i.i

do.body20.i.i.i.ocelot_flower_parse_indev.exit.thread.i.i_crit_edge: ; preds = %do.body20.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ocelot_flower_parse_indev.exit.thread.i.i

if.end28.i.i.i:                                   ; preds = %if.end14.i.i.i
  %277 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %ops.i.i.i, align 4
  %netdev_to_port.i.i.i = getelementptr inbounds %struct.ocelot_ops, ptr %278, i32 0, i32 1
  %279 = ptrtoint ptr %netdev_to_port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %netdev_to_port.i.i.i, align 4
  %call30.i.i.i = call i32 %280(ptr noundef nonnull %call17.i.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i.i)
  %cmp31.i.i.i = icmp slt i32 %call30.i.i.i, 0
  br i1 %cmp31.i.i.i, label %do.body33.i.i.i, label %if.end41.i.i.i

do.body33.i.i.i:                                  ; preds = %if.end28.i.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_indev.__msg.36) #4
  %tobool35.not.i.i.i = icmp eq ptr %248, null
  br i1 %tobool35.not.i.i.i, label %do.body33.i.i.i.ocelot_flower_parse_indev.exit.thread.i.i_crit_edge, label %do.body33.i.i.i.ocelot_flower_parse_indev.exit.thread.sink.split.i.i_crit_edge

do.body33.i.i.i.ocelot_flower_parse_indev.exit.thread.sink.split.i.i_crit_edge: ; preds = %do.body33.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ocelot_flower_parse_indev.exit.thread.sink.split.i.i

do.body33.i.i.i.ocelot_flower_parse_indev.exit.thread.i.i_crit_edge: ; preds = %do.body33.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ocelot_flower_parse_indev.exit.thread.i.i

if.end41.i.i.i:                                   ; preds = %if.end28.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call30.i.i.i, i32 %port)
  %cmp42.i.i.i = icmp eq i32 %call30.i.i.i, %port
  br i1 %cmp42.i.i.i, label %do.body44.i.i.i, label %if.end52.i.i.i

do.body44.i.i.i:                                  ; preds = %if.end41.i.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_indev.__msg.37) #4
  %tobool46.not.i.i.i = icmp eq ptr %248, null
  br i1 %tobool46.not.i.i.i, label %do.body44.i.i.i.ocelot_flower_parse_indev.exit.thread.i.i_crit_edge, label %do.body44.i.i.i.ocelot_flower_parse_indev.exit.thread.sink.split.i.i_crit_edge

do.body44.i.i.i.ocelot_flower_parse_indev.exit.thread.sink.split.i.i_crit_edge: ; preds = %do.body44.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ocelot_flower_parse_indev.exit.thread.sink.split.i.i

do.body44.i.i.i.ocelot_flower_parse_indev.exit.thread.i.i_crit_edge: ; preds = %do.body44.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ocelot_flower_parse_indev.exit.thread.i.i

if.end52.i.i.i:                                   ; preds = %if.end41.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i.i.i = trunc i32 %call30.i.i.i to i8
  %ingress_port53.i.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 11
  %281 = ptrtoint ptr %ingress_port53.i.i.i to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 %conv.i.i.i, ptr %ingress_port53.i.i.i, align 4
  %sub54.i.i.i = sub i32 32, %258
  %shr.i.i.i = lshr i32 -1, %sub54.i.i.i
  %conv55.i.i.i = trunc i32 %shr.i.i.i to i8
  %mask57.i.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 11, i32 1
  %282 = ptrtoint ptr %mask57.i.i.i to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 %conv55.i.i.i, ptr %mask57.i.i.i, align 1
  br label %ocelot_flower_parse_indev.exit.i.i

ocelot_flower_parse_indev.exit.thread.sink.split.i.i: ; preds = %do.body44.i.i.i.ocelot_flower_parse_indev.exit.thread.sink.split.i.i_crit_edge, %do.body33.i.i.i.ocelot_flower_parse_indev.exit.thread.sink.split.i.i_crit_edge, %do.body20.i.i.i.ocelot_flower_parse_indev.exit.thread.sink.split.i.i_crit_edge, %do.body.i.i24.i.ocelot_flower_parse_indev.exit.thread.sink.split.i.i_crit_edge
  %ocelot_flower_parse_indev.__msg.sink.i.i = phi ptr [ @ocelot_flower_parse_indev.__msg, %do.body.i.i24.i.ocelot_flower_parse_indev.exit.thread.sink.split.i.i_crit_edge ], [ @ocelot_flower_parse_indev.__msg.35, %do.body20.i.i.i.ocelot_flower_parse_indev.exit.thread.sink.split.i.i_crit_edge ], [ @ocelot_flower_parse_indev.__msg.36, %do.body33.i.i.i.ocelot_flower_parse_indev.exit.thread.sink.split.i.i_crit_edge ], [ @ocelot_flower_parse_indev.__msg.37, %do.body44.i.i.i.ocelot_flower_parse_indev.exit.thread.sink.split.i.i_crit_edge ]
  %retval.0.i.ph.ph.i.i = phi i32 [ -95, %do.body.i.i24.i.ocelot_flower_parse_indev.exit.thread.sink.split.i.i_crit_edge ], [ -2, %do.body20.i.i.i.ocelot_flower_parse_indev.exit.thread.sink.split.i.i_crit_edge ], [ -95, %do.body33.i.i.i.ocelot_flower_parse_indev.exit.thread.sink.split.i.i_crit_edge ], [ -22, %do.body44.i.i.i.ocelot_flower_parse_indev.exit.thread.sink.split.i.i_crit_edge ]
  %283 = ptrtoint ptr %248 to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr %ocelot_flower_parse_indev.__msg.sink.i.i, ptr %248, align 4
  br label %ocelot_flower_parse_indev.exit.thread.i.i

ocelot_flower_parse_indev.exit.thread.i.i:        ; preds = %ocelot_flower_parse_indev.exit.thread.sink.split.i.i, %do.body44.i.i.i.ocelot_flower_parse_indev.exit.thread.i.i_crit_edge, %do.body33.i.i.i.ocelot_flower_parse_indev.exit.thread.i.i_crit_edge, %do.body20.i.i.i.ocelot_flower_parse_indev.exit.thread.i.i_crit_edge, %if.end10.i.i.i.ocelot_flower_parse_indev.exit.thread.i.i_crit_edge, %do.body.i.i24.i.ocelot_flower_parse_indev.exit.thread.i.i_crit_edge
  %retval.0.i.ph.i25.i = phi i32 [ -22, %do.body44.i.i.i.ocelot_flower_parse_indev.exit.thread.i.i_crit_edge ], [ -95, %do.body33.i.i.i.ocelot_flower_parse_indev.exit.thread.i.i_crit_edge ], [ -2, %do.body20.i.i.i.ocelot_flower_parse_indev.exit.thread.i.i_crit_edge ], [ -22, %if.end10.i.i.i.ocelot_flower_parse_indev.exit.thread.i.i_crit_edge ], [ -95, %do.body.i.i24.i.ocelot_flower_parse_indev.exit.thread.i.i_crit_edge ], [ %retval.0.i.ph.ph.i.i, %ocelot_flower_parse_indev.exit.thread.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i.i.i) #4
  br label %if.then43

ocelot_flower_parse_indev.exit.i.i:               ; preds = %if.end52.i.i.i, %if.then5.i.i.ocelot_flower_parse_indev.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i.i.i) #4
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %ocelot_flower_parse_indev.exit.i.i, %if.end.i22.i.if.end10.i.i_crit_edge
  %284 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %244, align 8
  %286 = ptrtoint ptr %285 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %285, align 4
  %and.i.i.i.i = and i32 %287, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.i.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.i.not.i.i, label %if.end10.i.i.if.end14.i.i_crit_edge, label %if.then12.i.i

if.end10.i.i.if.end14.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14.i.i

if.then12.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match13.i.i) #4
  %288 = ptrtoint ptr %match13.i.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr inttoptr (i32 -1 to ptr), ptr %match13.i.i, align 4, !annotation !115
  %289 = getelementptr inbounds %struct.flow_match_control, ptr %match13.i.i, i32 0, i32 1
  %290 = ptrtoint ptr %289 to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr inttoptr (i32 -1 to ptr), ptr %289, align 4, !annotation !115
  call void @flow_rule_match_control(ptr noundef %244, ptr noundef nonnull %match13.i.i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match13.i.i) #4
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then12.i.i, %if.end10.i.i.if.end14.i.i_crit_edge
  %291 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %244, align 8
  %293 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %292, align 4
  %and.i.i406.i.i = and i32 %294, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i406.i.i)
  %tobool.i.i407.not.i.i = icmp eq i32 %and.i.i406.i.i, 0
  br i1 %tobool.i.i407.not.i.i, label %if.end64.i.i, label %if.then16.i.i

if.then16.i.i:                                    ; preds = %if.end14.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match17.i.i) #4
  %295 = ptrtoint ptr %match17.i.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr inttoptr (i32 -1 to ptr), ptr %match17.i.i, align 4, !annotation !115
  %296 = getelementptr inbounds %struct.flow_match_eth_addrs, ptr %match17.i.i, i32 0, i32 1
  %297 = ptrtoint ptr %296 to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr inttoptr (i32 -1 to ptr), ptr %296, align 4, !annotation !115
  %block_id.i26.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 2
  %298 = ptrtoint ptr %block_id.i26.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %block_id.i26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %cmp.i.i = icmp eq i32 %299, 0
  br i1 %cmp.i.i, label %do.body.i27.i, label %if.end22.i.i

do.body.i27.i:                                    ; preds = %if.then16.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_key.__msg) #4
  %tobool19.not.i.i = icmp eq ptr %248, null
  br i1 %tobool19.not.i.i, label %do.body.i27.i.cleanup.i.i_crit_edge, label %do.body.i27.i.cleanup.sink.split.i28.i_crit_edge

do.body.i27.i.cleanup.sink.split.i28.i_crit_edge: ; preds = %do.body.i27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i28.i

do.body.i27.i.cleanup.i.i_crit_edge:              ; preds = %do.body.i27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i.i

if.end22.i.i:                                     ; preds = %if.then16.i.i
  %300 = ptrtoint ptr %246 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %246, align 4
  %and24.i.i = and i32 %301, 131
  call void @__sanitizer_cov_trace_const_cmp4(i32 131, i32 %and24.i.i)
  %cmp25.not.i.i = icmp eq i32 %and24.i.i, 131
  br i1 %cmp25.not.i.i, label %if.end27.i.i, label %if.end22.i.i.cleanup.i.i_crit_edge

if.end22.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i.i

if.end27.i.i:                                     ; preds = %if.end22.i.i
  call void @flow_rule_match_eth_addrs(ptr noundef %244, ptr noundef nonnull %match17.i.i) #4
  %302 = ptrtoint ptr %block_id.i26.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %block_id.i26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %303)
  %cmp29.i.i = icmp eq i32 %303, 1
  br i1 %cmp29.i.i, label %land.lhs.true.i.i, label %if.end27.i.i.if.end40.i.i_crit_edge

if.end27.i.i.if.end40.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40.i.i

land.lhs.true.i.i:                                ; preds = %if.end27.i.i
  %304 = ptrtoint ptr %296 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %296, align 4
  %306 = ptrtoint ptr %305 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %305, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %305, i32 4
  %308 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %308)
  %309 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i408.i.i = zext i16 %309 to i32
  %or.i.i.i = or i32 %307, %conv.i408.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.if.end40.i.i_crit_edge, label %do.body32.i.i

land.lhs.true.i.i.if.end40.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40.i.i

do.body32.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_key.__msg.28) #4
  %tobool34.not.i.i = icmp eq ptr %248, null
  br i1 %tobool34.not.i.i, label %do.body32.i.i.cleanup.i.i_crit_edge, label %do.body32.i.i.cleanup.sink.split.i28.i_crit_edge

do.body32.i.i.cleanup.sink.split.i28.i_crit_edge: ; preds = %do.body32.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i28.i

do.body32.i.i.cleanup.i.i_crit_edge:              ; preds = %do.body32.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i.i

if.end40.i.i:                                     ; preds = %land.lhs.true.i.i.if.end40.i.i_crit_edge, %if.end27.i.i.if.end40.i.i_crit_edge
  %key_type.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 16
  %310 = ptrtoint ptr %key_type.i.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 1, ptr %key_type.i.i, align 8
  %key.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 17
  %311 = ptrtoint ptr %match17.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %match17.i.i, align 4
  %313 = ptrtoint ptr %312 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %312, align 4
  %315 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 %314, ptr %key.i.i, align 4
  %add.ptr.i409.i.i = getelementptr i8, ptr %312, i32 4
  %316 = ptrtoint ptr %add.ptr.i409.i.i to i32
  call void @__asan_load2_noabort(i32 %316)
  %317 = load i16, ptr %add.ptr.i409.i.i, align 2
  %add.ptr1.i.i.i = getelementptr %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 17, i32 0, i32 1, i32 0, i32 2
  %318 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %318)
  store i16 %317, ptr %add.ptr1.i.i.i, align 8
  %smac.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 17, i32 0, i32 1, i32 0, i32 10
  %src.i.i = getelementptr inbounds %struct.flow_dissector_key_eth_addrs, ptr %312, i32 0, i32 1
  %319 = ptrtoint ptr %src.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %src.i.i, align 4
  %321 = ptrtoint ptr %smac.i.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 %320, ptr %smac.i.i, align 8
  %add.ptr.i410.i.i = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %312, i32 0, i32 1, i32 4
  %322 = ptrtoint ptr %add.ptr.i410.i.i to i32
  call void @__asan_load2_noabort(i32 %322)
  %323 = load i16, ptr %add.ptr.i410.i.i, align 2
  %add.ptr1.i411.i.i = getelementptr %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 17, i32 0, i32 1, i32 0, i32 14
  %324 = ptrtoint ptr %add.ptr1.i411.i.i to i32
  call void @__asan_store2_noabort(i32 %324)
  store i16 %323, ptr %add.ptr1.i411.i.i, align 4
  %mask52.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 17, i32 0, i32 1, i32 0, i32 4
  %325 = ptrtoint ptr %296 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %296, align 4
  %327 = ptrtoint ptr %326 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %326, align 4
  %329 = ptrtoint ptr %mask52.i.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 %328, ptr %mask52.i.i, align 4
  %add.ptr.i412.i.i = getelementptr i8, ptr %326, i32 4
  %330 = ptrtoint ptr %add.ptr.i412.i.i to i32
  call void @__asan_load2_noabort(i32 %330)
  %331 = load i16, ptr %add.ptr.i412.i.i, align 2
  %add.ptr1.i413.i.i = getelementptr %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 17, i32 0, i32 1, i32 0, i32 8
  %332 = ptrtoint ptr %add.ptr1.i413.i.i to i32
  call void @__asan_store2_noabort(i32 %332)
  store i16 %331, ptr %add.ptr1.i413.i.i, align 2
  %mask59.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 17, i32 0, i32 1, i32 1
  %src62.i.i = getelementptr inbounds %struct.flow_dissector_key_eth_addrs, ptr %326, i32 0, i32 1
  %333 = ptrtoint ptr %src62.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %src62.i.i, align 4
  %335 = ptrtoint ptr %mask59.i.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 %334, ptr %mask59.i.i, align 4
  %add.ptr.i414.i.i = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %326, i32 0, i32 1, i32 4
  %336 = ptrtoint ptr %add.ptr.i414.i.i to i32
  call void @__asan_load2_noabort(i32 %336)
  %337 = load i16, ptr %add.ptr.i414.i.i, align 2
  %add.ptr1.i415.i.i = getelementptr %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 17, i32 0, i32 1, i32 1, i32 4
  %338 = ptrtoint ptr %add.ptr1.i415.i.i to i32
  call void @__asan_store2_noabort(i32 %338)
  store i16 %337, ptr %add.ptr1.i415.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match17.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %250)
  %cmp278.not.old.i.i = icmp eq i16 %250, 3
  br i1 %cmp278.not.old.i.i, label %if.end40.i.i.if.end44_crit_edge, label %if.end40.i.i.if.then280.i.i_crit_edge

if.end40.i.i.if.then280.i.i_crit_edge:            ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then280.i.i

if.end40.i.i.if.end44_crit_edge:                  ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

cleanup.sink.split.i28.i:                         ; preds = %do.body32.i.i.cleanup.sink.split.i28.i_crit_edge, %do.body.i27.i.cleanup.sink.split.i28.i_crit_edge
  %ocelot_flower_parse_key.__msg.28.sink.i.i = phi ptr [ @ocelot_flower_parse_key.__msg, %do.body.i27.i.cleanup.sink.split.i28.i_crit_edge ], [ @ocelot_flower_parse_key.__msg.28, %do.body32.i.i.cleanup.sink.split.i28.i_crit_edge ]
  %339 = ptrtoint ptr %248 to i32
  call void @__asan_store4_noabort(i32 %339)
  store ptr %ocelot_flower_parse_key.__msg.28.sink.i.i, ptr %248, align 4
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %cleanup.sink.split.i28.i, %do.body32.i.i.cleanup.i.i_crit_edge, %if.end22.i.i.cleanup.i.i_crit_edge, %do.body.i27.i.cleanup.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match17.i.i) #4
  br label %if.then43

if.end64.i.i:                                     ; preds = %if.end14.i.i
  %and.i.i416.i.i = and i32 %294, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i416.i.i)
  %tobool.i.i417.not.i.i = icmp eq i32 %and.i.i416.i.i, 0
  br i1 %tobool.i.i417.not.i.i, label %if.end64.i.i.if.end131.i.i_crit_edge, label %if.then66.i.i

if.end64.i.i.if.end131.i.i_crit_edge:             ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end131.i.i

if.then66.i.i:                                    ; preds = %if.end64.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match67.i.i) #4
  %340 = ptrtoint ptr %match67.i.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store ptr inttoptr (i32 -1 to ptr), ptr %match67.i.i, align 4, !annotation !115
  %341 = getelementptr inbounds %struct.flow_match_basic, ptr %match67.i.i, i32 0, i32 1
  %342 = ptrtoint ptr %341 to i32
  call void @__asan_store4_noabort(i32 %342)
  store ptr inttoptr (i32 -1 to ptr), ptr %341, align 4, !annotation !115
  call void @flow_rule_match_basic(ptr noundef %244, ptr noundef nonnull %match67.i.i) #4
  %343 = ptrtoint ptr %match67.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %match67.i.i, align 4
  %345 = ptrtoint ptr %344 to i32
  call void @__asan_load2_noabort(i32 %345)
  %346 = load i16, ptr %344, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %346)
  %cmp69.i.i = icmp eq i16 %346, 2048
  br i1 %cmp69.i.i, label %if.then71.i.i, label %if.then66.i.i.if.end96.i.i_crit_edge

if.then66.i.i.if.end96.i.i_crit_edge:             ; preds = %if.then66.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96.i.i

if.then71.i.i:                                    ; preds = %if.then66.i.i
  %block_id72.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 2
  %347 = ptrtoint ptr %block_id72.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %block_id72.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %348)
  %cmp73.i.i = icmp eq i32 %348, 0
  br i1 %cmp73.i.i, label %do.body76.i.i, label %if.end84.i.i

do.body76.i.i:                                    ; preds = %if.then71.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_key.__msg.29) #4
  %tobool78.not.i.i = icmp eq ptr %248, null
  br i1 %tobool78.not.i.i, label %do.body76.i.i.cleanup130.thread.i.i_crit_edge, label %do.body76.i.i.cleanup130.thread.sink.split.i.i_crit_edge

do.body76.i.i.cleanup130.thread.sink.split.i.i_crit_edge: ; preds = %do.body76.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup130.thread.sink.split.i.i

do.body76.i.i.cleanup130.thread.i.i_crit_edge:    ; preds = %do.body76.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup130.thread.i.i

if.end84.i.i:                                     ; preds = %if.then71.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %key_type85.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 16
  %349 = ptrtoint ptr %key_type85.i.i to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 5, ptr %key_type85.i.i, align 8
  %ip_proto.i.i = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %344, i32 0, i32 1
  %350 = ptrtoint ptr %ip_proto.i.i to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %ip_proto.i.i, align 2
  %proto88.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 17, i32 0, i32 1, i32 0, i32 12
  %352 = ptrtoint ptr %proto88.i.i to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 %351, ptr %proto88.i.i, align 2
  %353 = ptrtoint ptr %341 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %341, align 4
  %ip_proto91.i.i = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %354, i32 0, i32 1
  %355 = ptrtoint ptr %ip_proto91.i.i to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %ip_proto91.i.i, align 2
  %mask94.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 17, i32 0, i32 1, i32 0, i32 13
  %357 = ptrtoint ptr %mask94.i.i to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 %356, ptr %mask94.i.i, align 1
  %358 = ptrtoint ptr %344 to i32
  call void @__asan_load2_noabort(i32 %358)
  %.pr.i.i = load i16, ptr %344, align 2
  br label %if.end96.i.i

if.end96.i.i:                                     ; preds = %if.end84.i.i, %if.then66.i.i.if.end96.i.i_crit_edge
  %359 = phi i16 [ %.pr.i.i, %if.end84.i.i ], [ %346, %if.then66.i.i.if.end96.i.i_crit_edge ]
  %match_protocol.0.i.i = phi i8 [ 0, %if.end84.i.i ], [ 1, %if.then66.i.i.if.end96.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %359)
  %cmp100.i.i = icmp eq i16 %359, -31011
  br i1 %cmp100.i.i, label %if.then102.i.i, label %if.end96.i.i.cleanup130.i.i_crit_edge

if.end96.i.i.cleanup130.i.i_crit_edge:            ; preds = %if.end96.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup130.i.i

if.then102.i.i:                                   ; preds = %if.end96.i.i
  %block_id103.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 2
  %360 = ptrtoint ptr %block_id103.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %block_id103.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %361)
  %cmp104.i.i = icmp eq i32 %361, 0
  br i1 %cmp104.i.i, label %do.body107.i.i, label %if.end115.i.i

do.body107.i.i:                                   ; preds = %if.then102.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_key.__msg.30) #4
  %tobool109.not.i.i = icmp eq ptr %248, null
  br i1 %tobool109.not.i.i, label %do.body107.i.i.cleanup130.thread.i.i_crit_edge, label %do.body107.i.i.cleanup130.thread.sink.split.i.i_crit_edge

do.body107.i.i.cleanup130.thread.sink.split.i.i_crit_edge: ; preds = %do.body107.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup130.thread.sink.split.i.i

do.body107.i.i.cleanup130.thread.i.i_crit_edge:   ; preds = %do.body107.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup130.thread.i.i

if.end115.i.i:                                    ; preds = %if.then102.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %key_type116.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 16
  %362 = ptrtoint ptr %key_type116.i.i to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 6, ptr %key_type116.i.i, align 8
  %ip_proto118.i.i = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %344, i32 0, i32 1
  %363 = ptrtoint ptr %ip_proto118.i.i to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %ip_proto118.i.i, align 2
  %key119.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 17
  %365 = ptrtoint ptr %key119.i.i to i32
  call void @__asan_store1_noabort(i32 %365)
  store i8 %364, ptr %key119.i.i, align 4
  %366 = ptrtoint ptr %341 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %341, align 4
  %ip_proto124.i.i = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %367, i32 0, i32 1
  %368 = ptrtoint ptr %ip_proto124.i.i to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %ip_proto124.i.i, align 2
  %mask127.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 17, i32 0, i32 0, i32 1
  %370 = ptrtoint ptr %mask127.i.i to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 %369, ptr %mask127.i.i, align 1
  br label %cleanup130.i.i

cleanup130.thread.sink.split.i.i:                 ; preds = %do.body107.i.i.cleanup130.thread.sink.split.i.i_crit_edge, %do.body76.i.i.cleanup130.thread.sink.split.i.i_crit_edge
  %ocelot_flower_parse_key.__msg.29.sink.i.i = phi ptr [ @ocelot_flower_parse_key.__msg.29, %do.body76.i.i.cleanup130.thread.sink.split.i.i_crit_edge ], [ @ocelot_flower_parse_key.__msg.30, %do.body107.i.i.cleanup130.thread.sink.split.i.i_crit_edge ]
  %371 = ptrtoint ptr %248 to i32
  call void @__asan_store4_noabort(i32 %371)
  store ptr %ocelot_flower_parse_key.__msg.29.sink.i.i, ptr %248, align 4
  br label %cleanup130.thread.i.i

cleanup130.thread.i.i:                            ; preds = %cleanup130.thread.sink.split.i.i, %do.body107.i.i.cleanup130.thread.i.i_crit_edge, %do.body76.i.i.cleanup130.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match67.i.i) #4
  br label %if.then43

cleanup130.i.i:                                   ; preds = %if.end115.i.i, %if.end96.i.i.cleanup130.i.i_crit_edge
  %match_protocol.2.i.i = phi i8 [ 0, %if.end115.i.i ], [ %match_protocol.0.i.i, %if.end96.i.i.cleanup130.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match67.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %match_protocol.2.i.i)
  %extract.t403.i.i = icmp ne i8 %match_protocol.2.i.i, 0
  br label %if.end131.i.i

if.end131.i.i:                                    ; preds = %cleanup130.i.i, %if.end64.i.i.if.end131.i.i_crit_edge
  %match_protocol.3.off0.i.i = phi i1 [ %extract.t403.i.i, %cleanup130.i.i ], [ true, %if.end64.i.i.if.end131.i.i_crit_edge ]
  %372 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %244, align 8
  %374 = ptrtoint ptr %373 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %373, align 4
  %and.i.i418.i.i = and i32 %375, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i418.i.i)
  %tobool.i.i419.i.i = icmp ne i32 %and.i.i418.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %250)
  %cmp136.i.i = icmp eq i16 %250, 2048
  %or.cond.i29.i = select i1 %tobool.i.i419.i.i, i1 %cmp136.i.i, i1 false
  br i1 %or.cond.i29.i, label %if.then138.i.i, label %if.end199.i.i

if.then138.i.i:                                   ; preds = %if.end131.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match139.i.i) #4
  %376 = ptrtoint ptr %match139.i.i to i32
  call void @__asan_store4_noabort(i32 %376)
  store ptr inttoptr (i32 -1 to ptr), ptr %match139.i.i, align 4, !annotation !115
  %377 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %match139.i.i, i32 0, i32 1
  %378 = ptrtoint ptr %377 to i32
  call void @__asan_store4_noabort(i32 %378)
  store ptr inttoptr (i32 -1 to ptr), ptr %377, align 4, !annotation !115
  %block_id140.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 2
  %379 = ptrtoint ptr %block_id140.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %block_id140.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %380)
  %cmp141.i.i = icmp eq i32 %380, 0
  br i1 %cmp141.i.i, label %do.body144.i.i, label %if.end152.i.i

do.body144.i.i:                                   ; preds = %if.then138.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_key.__msg.31) #4
  %tobool146.not.i.i = icmp eq ptr %248, null
  br i1 %tobool146.not.i.i, label %do.body144.i.i.cleanup195.thread.i.i_crit_edge, label %do.body144.i.i.cleanup195.thread.sink.split.i.i_crit_edge

do.body144.i.i.cleanup195.thread.sink.split.i.i_crit_edge: ; preds = %do.body144.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup195.thread.sink.split.i.i

do.body144.i.i.cleanup195.thread.i.i_crit_edge:   ; preds = %do.body144.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup195.thread.i.i

if.end152.i.i:                                    ; preds = %if.then138.i.i
  call void @flow_rule_match_ipv4_addrs(ptr noundef %244, ptr noundef nonnull %match139.i.i) #4
  %381 = ptrtoint ptr %block_id140.i.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %block_id140.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %382)
  %cmp154.i.i = icmp eq i32 %382, 1
  br i1 %cmp154.i.i, label %land.lhs.true156.i.i, label %if.end152.i.i.if.end199.thread.i.i_crit_edge

if.end152.i.i.if.end199.thread.i.i_crit_edge:     ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end199.thread.i.i

land.lhs.true156.i.i:                             ; preds = %if.end152.i.i
  %383 = ptrtoint ptr %377 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %377, align 4
  %dst158.i.i = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %384, i32 0, i32 1
  %385 = ptrtoint ptr %dst158.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %dst158.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %386)
  %tobool159.not.i.i = icmp eq i32 %386, 0
  br i1 %tobool159.not.i.i, label %land.lhs.true156.i.i.if.end199.thread.i.i_crit_edge, label %do.body161.i.i

land.lhs.true156.i.i.if.end199.thread.i.i_crit_edge: ; preds = %land.lhs.true156.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end199.thread.i.i

do.body161.i.i:                                   ; preds = %land.lhs.true156.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_key.__msg.32) #4
  %tobool163.not.i.i = icmp eq ptr %248, null
  br i1 %tobool163.not.i.i, label %do.body161.i.i.cleanup195.thread.i.i_crit_edge, label %do.body161.i.i.cleanup195.thread.sink.split.i.i_crit_edge

do.body161.i.i.cleanup195.thread.sink.split.i.i_crit_edge: ; preds = %do.body161.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup195.thread.sink.split.i.i

do.body161.i.i.cleanup195.thread.i.i_crit_edge:   ; preds = %do.body161.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup195.thread.i.i

cleanup195.thread.sink.split.i.i:                 ; preds = %do.body161.i.i.cleanup195.thread.sink.split.i.i_crit_edge, %do.body144.i.i.cleanup195.thread.sink.split.i.i_crit_edge
  %ocelot_flower_parse_key.__msg.31.sink.i.i = phi ptr [ @ocelot_flower_parse_key.__msg.31, %do.body144.i.i.cleanup195.thread.sink.split.i.i_crit_edge ], [ @ocelot_flower_parse_key.__msg.32, %do.body161.i.i.cleanup195.thread.sink.split.i.i_crit_edge ]
  %387 = ptrtoint ptr %248 to i32
  call void @__asan_store4_noabort(i32 %387)
  store ptr %ocelot_flower_parse_key.__msg.31.sink.i.i, ptr %248, align 4
  br label %cleanup195.thread.i.i

cleanup195.thread.i.i:                            ; preds = %cleanup195.thread.sink.split.i.i, %do.body161.i.i.cleanup195.thread.i.i_crit_edge, %do.body144.i.i.cleanup195.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match139.i.i) #4
  br label %if.then43

if.end199.thread.i.i:                             ; preds = %land.lhs.true156.i.i.if.end199.thread.i.i_crit_edge, %if.end152.i.i.if.end199.thread.i.i_crit_edge
  %sip.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 17, i32 0, i32 1, i32 0, i32 14
  %388 = ptrtoint ptr %match139.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %match139.i.i, align 4
  %390 = ptrtoint ptr %389 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %389, align 4
  %392 = ptrtoint ptr %sip.i.i to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 %391, ptr %sip.i.i, align 4
  %mask177.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 17, i32 0, i32 1, i32 1, i32 2
  %393 = ptrtoint ptr %377 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %377, align 4
  %395 = ptrtoint ptr %394 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %394, align 4
  %397 = ptrtoint ptr %mask177.i.i to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 %396, ptr %mask177.i.i, align 8
  %dip.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 17, i32 0, i32 1, i32 1, i32 6
  %dst187.i.i = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %389, i32 0, i32 1
  %398 = ptrtoint ptr %dst187.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %dst187.i.i, align 4
  %400 = ptrtoint ptr %dip.i.i to i32
  call void @__asan_store4_noabort(i32 %400)
  store i32 %399, ptr %dip.i.i, align 4
  %mask190.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 17, i32 0, i32 1, i32 1, i32 10
  %dst194.i.i = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %394, i32 0, i32 1
  %401 = ptrtoint ptr %dst194.i.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %dst194.i.i, align 4
  %403 = ptrtoint ptr %mask190.i.i to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 %402, ptr %mask190.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match139.i.i) #4
  %404 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %244, align 8
  %406 = ptrtoint ptr %405 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %405, align 4
  br label %if.end207.i.i

if.end199.i.i:                                    ; preds = %if.end131.i.i
  %and.i.i420.i.i = and i32 %375, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i420.i.i)
  %tobool.i.i421.i.i = icmp ne i32 %and.i.i420.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %250)
  %cmp204.i.i = icmp eq i16 %250, -31011
  %or.cond404.i.i = select i1 %tobool.i.i421.i.i, i1 %cmp204.i.i, i1 false
  br i1 %or.cond404.i.i, label %if.end199.i.i.if.then43_crit_edge, label %if.end199.i.i.if.end207.i.i_crit_edge

if.end199.i.i.if.end207.i.i_crit_edge:            ; preds = %if.end199.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end207.i.i

if.end199.i.i.if.then43_crit_edge:                ; preds = %if.end199.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.end207.i.i:                                    ; preds = %if.end199.i.i.if.end207.i.i_crit_edge, %if.end199.thread.i.i
  %408 = phi i32 [ %407, %if.end199.thread.i.i ], [ %375, %if.end199.i.i.if.end207.i.i_crit_edge ]
  %match_protocol.5.off0438.i.i = phi i1 [ false, %if.end199.thread.i.i ], [ %match_protocol.3.off0.i.i, %if.end199.i.i.if.end207.i.i_crit_edge ]
  %and.i.i422.i.i = and i32 %408, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i422.i.i)
  %tobool.i.i423.not.i.i = icmp eq i32 %and.i.i422.i.i, 0
  br i1 %tobool.i.i423.not.i.i, label %if.end207.i.i.if.end245.i.i_crit_edge, label %if.then209.i.i

if.end207.i.i.if.end245.i.i_crit_edge:            ; preds = %if.end207.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end245.i.i

if.then209.i.i:                                   ; preds = %if.end207.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match210.i.i) #4
  %409 = ptrtoint ptr %match210.i.i to i32
  call void @__asan_store4_noabort(i32 %409)
  store ptr inttoptr (i32 -1 to ptr), ptr %match210.i.i, align 4, !annotation !115
  %410 = getelementptr inbounds %struct.flow_match_ports, ptr %match210.i.i, i32 0, i32 1
  %411 = ptrtoint ptr %410 to i32
  call void @__asan_store4_noabort(i32 %411)
  store ptr inttoptr (i32 -1 to ptr), ptr %410, align 4, !annotation !115
  %block_id211.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 2
  %412 = ptrtoint ptr %block_id211.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %block_id211.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %413)
  %cmp212.i.i = icmp eq i32 %413, 0
  br i1 %cmp212.i.i, label %do.body215.i.i, label %cleanup242.i.i

do.body215.i.i:                                   ; preds = %if.then209.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_key.__msg.33) #4
  %tobool217.not.i.i = icmp eq ptr %248, null
  br i1 %tobool217.not.i.i, label %do.body215.i.i.cleanup242.thread.i.i_crit_edge, label %if.then218.i.i

do.body215.i.i.cleanup242.thread.i.i_crit_edge:   ; preds = %do.body215.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup242.thread.i.i

if.then218.i.i:                                   ; preds = %do.body215.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %414 = ptrtoint ptr %248 to i32
  call void @__asan_store4_noabort(i32 %414)
  store ptr @ocelot_flower_parse_key.__msg.33, ptr %248, align 4
  br label %cleanup242.thread.i.i

cleanup242.thread.i.i:                            ; preds = %if.then218.i.i, %do.body215.i.i.cleanup242.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match210.i.i) #4
  br label %if.then43

cleanup242.i.i:                                   ; preds = %if.then209.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @flow_rule_match_ports(ptr noundef %244, ptr noundef nonnull %match210.i.i) #4
  %415 = ptrtoint ptr %match210.i.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %match210.i.i, align 4
  %417 = ptrtoint ptr %416 to i32
  call void @__asan_load2_noabort(i32 %417)
  %418 = load i16, ptr %416, align 4
  %sport.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 17, i32 0, i32 2, i32 0, i32 10
  %419 = ptrtoint ptr %sport.i.i to i32
  call void @__asan_store2_noabort(i32 %419)
  store i16 %418, ptr %sport.i.i, align 8
  %420 = ptrtoint ptr %410 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %410, align 4
  %422 = ptrtoint ptr %421 to i32
  call void @__asan_load2_noabort(i32 %422)
  %423 = load i16, ptr %421, align 4
  %mask232.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 17, i32 0, i32 2, i32 0, i32 12
  %424 = ptrtoint ptr %mask232.i.i to i32
  call void @__asan_store2_noabort(i32 %424)
  store i16 %423, ptr %mask232.i.i, align 2
  %dst234.i.i = getelementptr inbounds %struct.anon.181, ptr %416, i32 0, i32 1
  %425 = ptrtoint ptr %dst234.i.i to i32
  call void @__asan_load2_noabort(i32 %425)
  %426 = load i16, ptr %dst234.i.i, align 2
  %dport.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 17, i32 0, i32 2, i32 0, i32 14
  %427 = ptrtoint ptr %dport.i.i to i32
  call void @__asan_store2_noabort(i32 %427)
  store i16 %426, ptr %dport.i.i, align 4
  %dst238.i.i = getelementptr inbounds %struct.anon.181, ptr %421, i32 0, i32 1
  %428 = ptrtoint ptr %dst238.i.i to i32
  call void @__asan_load2_noabort(i32 %428)
  %429 = load i16, ptr %dst238.i.i, align 2
  %mask241.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 17, i32 0, i32 2, i32 1
  %430 = ptrtoint ptr %mask241.i.i to i32
  call void @__asan_store2_noabort(i32 %430)
  store i16 %429, ptr %mask241.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match210.i.i) #4
  br label %if.end245.i.i

if.end245.i.i:                                    ; preds = %cleanup242.i.i, %if.end207.i.i.if.end245.i.i_crit_edge
  %match_protocol.7.off0.i.i = phi i1 [ false, %cleanup242.i.i ], [ %match_protocol.5.off0438.i.i, %if.end207.i.i.if.end245.i.i_crit_edge ]
  %431 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %244, align 8
  %433 = ptrtoint ptr %432 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %432, align 4
  %and.i.i424.i.i = and i32 %434, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i424.i.i)
  %tobool.i.i425.not.i.i = icmp eq i32 %and.i.i424.i.i, 0
  br i1 %tobool.i.i425.not.i.i, label %finished_key_parsing.i.i, label %if.then247.i.i

if.then247.i.i:                                   ; preds = %if.end245.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match248.i.i) #4
  %435 = ptrtoint ptr %match248.i.i to i32
  call void @__asan_store4_noabort(i32 %435)
  store ptr inttoptr (i32 -1 to ptr), ptr %match248.i.i, align 4, !annotation !115
  %436 = getelementptr inbounds %struct.flow_match_vlan, ptr %match248.i.i, i32 0, i32 1
  %437 = ptrtoint ptr %436 to i32
  call void @__asan_store4_noabort(i32 %437)
  store ptr inttoptr (i32 -1 to ptr), ptr %436, align 4, !annotation !115
  call void @flow_rule_match_vlan(ptr noundef %244, ptr noundef nonnull %match248.i.i) #4
  %key_type249.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 16
  %438 = ptrtoint ptr %key_type249.i.i to i32
  call void @__asan_store4_noabort(i32 %438)
  store i32 0, ptr %key_type249.i.i, align 8
  %439 = ptrtoint ptr %match248.i.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %match248.i.i, align 4
  %441 = ptrtoint ptr %440 to i32
  call void @__asan_load2_noabort(i32 %441)
  %bf.load.i.i = load i16, ptr %440, align 2
  %bf.lshr.i.i = lshr i16 %bf.load.i.i, 4
  %vlan.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 15
  %442 = ptrtoint ptr %vlan.i.i to i32
  call void @__asan_store2_noabort(i32 %442)
  store i16 %bf.lshr.i.i, ptr %vlan.i.i, align 8
  %443 = ptrtoint ptr %436 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %436, align 4
  %445 = ptrtoint ptr %444 to i32
  call void @__asan_load2_noabort(i32 %445)
  %bf.load253.i.i = load i16, ptr %444, align 2
  %bf.lshr254.i.i = lshr i16 %bf.load253.i.i, 4
  %mask257.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 15, i32 0, i32 1
  %446 = ptrtoint ptr %mask257.i.i to i32
  call void @__asan_store2_noabort(i32 %446)
  store i16 %bf.lshr254.i.i, ptr %mask257.i.i, align 2
  %bf.load259.i.i = load i16, ptr %440, align 2
  %447 = trunc i16 %bf.load259.i.i to i8
  %conv260.i.i = and i8 %447, 7
  %pcp.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 15, i32 1
  %448 = ptrtoint ptr %pcp.i.i to i32
  call void @__asan_store1_noabort(i32 %448)
  store i8 %conv260.i.i, ptr %pcp.i.i, align 4
  %bf.load265.i.i = load i16, ptr %444, align 2
  %449 = trunc i16 %bf.load265.i.i to i8
  %conv267.i.i = and i8 %449, 7
  %mask270.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 15, i32 1, i32 1
  %450 = ptrtoint ptr %mask270.i.i to i32
  call void @__asan_store1_noabort(i32 %450)
  store i8 %conv267.i.i, ptr %mask270.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match248.i.i) #4
  br label %if.end44

finished_key_parsing.i.i:                         ; preds = %if.end245.i.i
  %match_protocol.7.off0.not.i.i = xor i1 %match_protocol.7.off0.i.i, true
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %250)
  %cmp278.not.i.i = icmp eq i16 %250, 3
  %or.cond405.i.i = select i1 %match_protocol.7.off0.not.i.i, i1 true, i1 %cmp278.not.i.i
  br i1 %or.cond405.i.i, label %finished_key_parsing.i.i.if.end44_crit_edge, label %finished_key_parsing.i.i.if.then280.i.i_crit_edge

finished_key_parsing.i.i.if.then280.i.i_crit_edge: ; preds = %finished_key_parsing.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then280.i.i

finished_key_parsing.i.i.if.end44_crit_edge:      ; preds = %finished_key_parsing.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

if.then280.i.i:                                   ; preds = %finished_key_parsing.i.i.if.then280.i.i_crit_edge, %if.end40.i.i.if.then280.i.i_crit_edge
  %block_id281.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 2
  %451 = ptrtoint ptr %block_id281.i.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %block_id281.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %452)
  %cmp282.i.i = icmp eq i32 %452, 0
  br i1 %cmp282.i.i, label %do.body285.i.i, label %if.end293.i.i

do.body285.i.i:                                   ; preds = %if.then280.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_parse_key.__msg.34) #4
  %tobool287.not.i.i = icmp eq ptr %248, null
  br i1 %tobool287.not.i.i, label %do.body285.i.i.if.then43_crit_edge, label %if.then288.i.i

do.body285.i.i.if.then43_crit_edge:               ; preds = %do.body285.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.then288.i.i:                                   ; preds = %do.body285.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %453 = ptrtoint ptr %248 to i32
  call void @__asan_store4_noabort(i32 %453)
  store ptr @ocelot_flower_parse_key.__msg.34, ptr %248, align 4
  br label %if.then43

if.end293.i.i:                                    ; preds = %if.then280.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %250)
  %cmp295.i.i = icmp ult i16 %250, 1536
  br i1 %cmp295.i.i, label %if.end293.i.i.if.then43_crit_edge, label %if.end298.i.i

if.end293.i.i.if.then43_crit_edge:                ; preds = %if.end293.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.end298.i.i:                                    ; preds = %if.end293.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %key_type299.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 16
  %454 = ptrtoint ptr %key_type299.i.i to i32
  call void @__asan_store4_noabort(i32 %454)
  store i32 1, ptr %key_type299.i.i, align 8
  %etype.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 17, i32 0, i32 1, i32 1, i32 6
  %455 = ptrtoint ptr %etype.i.i to i32
  call void @__asan_store2_noabort(i32 %455)
  store i16 %250, ptr %etype.i.i, align 4
  %mask305.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 17, i32 0, i32 1, i32 1, i32 8
  %456 = ptrtoint ptr %mask305.i.i to i32
  call void @__asan_store2_noabort(i32 %456)
  store i16 -1, ptr %mask305.i.i, align 2
  br label %if.end44

if.then43:                                        ; preds = %if.end293.i.i.if.then43_crit_edge, %if.then288.i.i, %do.body285.i.i.if.then43_crit_edge, %cleanup242.thread.i.i, %if.end199.i.i.if.then43_crit_edge, %cleanup195.thread.i.i, %cleanup130.thread.i.i, %cleanup.i.i, %ocelot_flower_parse_indev.exit.thread.i.i, %if.end7.i.if.then43_crit_edge, %cleanup.sink.split.i.i, %do.body437.i.i.if.then43_crit_edge, %do.body421.i.i.if.then43_crit_edge, %do.body387.i.i.if.then43_crit_edge, %do.body376.i.i.if.then43_crit_edge, %do.body357.i.i.if.then43_crit_edge, %do.body345.i.i.if.then43_crit_edge, %do.body309.i.i.if.then43_crit_edge, %do.body296.i.i.if.then43_crit_edge, %do.body278.i.i.if.then43_crit_edge, %do.body.i622.i.i.if.then43_crit_edge, %do.body5.i.i.i.if.then43_crit_edge, %do.body.i.i.i.if.then43_crit_edge, %do.body256.i.i.if.then43_crit_edge, %do.body240.i.i.if.then43_crit_edge, %do.body227.i.i.if.then43_crit_edge, %do.body208.i.i.if.then43_crit_edge, %do.body195.i.i.if.then43_crit_edge, %do.body182.i.i.if.then43_crit_edge, %if.end162.i.i.if.then43_crit_edge, %do.body135.i.i.if.then43_crit_edge, %do.body124.i.i.if.then43_crit_edge, %do.body111.i.i.if.then43_crit_edge, %do.body80.i.i.if.then43_crit_edge, %do.body67.i.i.if.then43_crit_edge, %do.body47.i.i.if.then43_crit_edge, %do.body34.i.i.if.then43_crit_edge, %do.body.i.i.if.then43_crit_edge, %do.body48.i.i.i.i.if.then43_crit_edge, %do.body.i.i.i.i.i.if.then43_crit_edge
  %retval.0.i134.ph = phi i32 [ -95, %do.body.i.i.if.then43_crit_edge ], [ -95, %do.body34.i.i.if.then43_crit_edge ], [ -95, %do.body47.i.i.if.then43_crit_edge ], [ -95, %do.body67.i.i.if.then43_crit_edge ], [ -95, %do.body80.i.i.if.then43_crit_edge ], [ -95, %do.body111.i.i.if.then43_crit_edge ], [ -95, %do.body124.i.i.if.then43_crit_edge ], [ -95, %do.body135.i.i.if.then43_crit_edge ], [ -95, %do.body182.i.i.if.then43_crit_edge ], [ -95, %do.body195.i.i.if.then43_crit_edge ], [ -95, %do.body208.i.i.if.then43_crit_edge ], [ -95, %do.body227.i.i.if.then43_crit_edge ], [ -95, %do.body240.i.i.if.then43_crit_edge ], [ -95, %do.body256.i.i.if.then43_crit_edge ], [ -95, %do.body296.i.i.if.then43_crit_edge ], [ -95, %do.body309.i.i.if.then43_crit_edge ], [ -95, %do.body345.i.i.if.then43_crit_edge ], [ -95, %do.body357.i.i.if.then43_crit_edge ], [ -95, %do.body376.i.i.if.then43_crit_edge ], [ -95, %do.body387.i.i.if.then43_crit_edge ], [ -95, %do.body421.i.i.if.then43_crit_edge ], [ -95, %do.body437.i.i.if.then43_crit_edge ], [ -95, %do.body48.i.i.i.i.if.then43_crit_edge ], [ -95, %do.body.i.i.i.i.i.if.then43_crit_edge ], [ -95, %do.body278.i.i.if.then43_crit_edge ], [ -95, %do.body.i.i.i.if.then43_crit_edge ], [ -95, %do.body5.i.i.i.if.then43_crit_edge ], [ -95, %do.body.i622.i.i.if.then43_crit_edge ], [ -95, %cleanup.sink.split.i.i ], [ -95, %cleanup242.thread.i.i ], [ -95, %cleanup195.thread.i.i ], [ -95, %cleanup130.thread.i.i ], [ %retval.0.i.ph.i25.i, %ocelot_flower_parse_indev.exit.thread.i.i ], [ -95, %if.end293.i.i.if.then43_crit_edge ], [ -95, %do.body285.i.i.if.then43_crit_edge ], [ -95, %if.then288.i.i ], [ -95, %if.end199.i.i.if.then43_crit_edge ], [ -95, %if.end7.i.if.then43_crit_edge ], [ -95, %cleanup.i.i ], [ -22, %if.end162.i.i.if.then43_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #4
  br label %cleanup

if.end44:                                         ; preds = %if.end298.i.i, %finished_key_parsing.i.i.if.end44_crit_edge, %if.then247.i.i, %if.end40.i.i.if.end44_crit_edge, %if.end.i133.if.end44_crit_edge
  %block_id.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 2
  %457 = ptrtoint ptr %block_id.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %block_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %458)
  %cmp.not.i = icmp eq i32 %458, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end44.if.end48_crit_edge

if.end44.if.end48_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

lor.lhs.false.i:                                  ; preds = %if.end44
  %tag_a_vid_sel.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 8, i32 0, i32 0, i32 3
  %459 = ptrtoint ptr %tag_a_vid_sel.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %tag_a_vid_sel.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %460)
  %cmp1.not.i = icmp eq i32 %460, 0
  br i1 %cmp1.not.i, label %if.end.i136, label %lor.lhs.false.i.if.end48_crit_edge

lor.lhs.false.i.if.end48_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

if.end.i136:                                      ; preds = %lor.lhs.false.i
  %mask.i135 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 15, i32 0, i32 1
  %461 = ptrtoint ptr %mask.i135 to i32
  call void @__asan_load2_noabort(i32 %461)
  %462 = load i16, ptr %mask.i135, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %462)
  %cmp2.not.i = icmp eq i16 %462, 4095
  br i1 %cmp2.not.i, label %if.end7.i138, label %do.body.i

do.body.i:                                        ; preds = %if.end.i136
  call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_flower_patch_es0_vlan_modify.__msg) #4
  %tobool.not.i137 = icmp eq ptr %1, null
  br i1 %tobool.not.i137, label %do.body.i.if.then47_crit_edge, label %if.then5.i

do.body.i.if.then47_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then47

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %463 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %463)
  store ptr @ocelot_flower_patch_es0_vlan_modify.__msg, ptr %1, align 4
  br label %if.then47

if.end7.i138:                                     ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #6
  %vlan.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 15
  %464 = ptrtoint ptr %vlan.i to i32
  call void @__asan_load2_noabort(i32 %464)
  %465 = load i16, ptr %vlan.i, align 8
  %vid_a_val.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 8, i32 0, i32 0, i32 5
  %466 = ptrtoint ptr %vid_a_val.i to i32
  call void @__asan_load2_noabort(i32 %466)
  %467 = load i16, ptr %vid_a_val.i, align 8
  %sub.i = sub i16 %467, %465
  %468 = and i16 %sub.i, 4095
  store i16 %468, ptr %vid_a_val.i, align 8
  br label %if.end48

if.then47:                                        ; preds = %if.then5.i, %do.body.i.if.then47_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #4
  br label %cleanup

if.end48:                                         ; preds = %if.end7.i138, %lor.lhs.false.i.if.end48_crit_edge, %if.end44.if.end48_crit_edge
  %469 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %type.i.i, align 8
  %471 = zext i32 %470 to i64
  call void @__sanitizer_cov_trace_switch(i64 %471, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %470, label %if.end70 [
    i32 0, label %if.then50
    i32 3, label %if.then55
  ]

if.then50:                                        ; preds = %if.end48
  %dummy_rules.i140 = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 23
  %472 = ptrtoint ptr %dummy_rules.i140 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %dummy_rules.i140, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %call7.i.i.i, ptr noundef %dummy_rules.i140, ptr noundef %473) #4
  br i1 %call.i.i.i, label %if.end.i.i.i141, label %if.then50.cleanup_crit_edge

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i.i.i141:                                  ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %473, i32 0, i32 1
  %474 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %474)
  store ptr %call7.i.i.i, ptr %prev1.i.i.i, align 4
  %475 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %475)
  store ptr %473, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %476 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %476)
  store ptr %dummy_rules.i140, ptr %prev3.i.i.i, align 4
  %477 = ptrtoint ptr %dummy_rules.i140 to i32
  call void @__asan_store4_noabort(i32 %477)
  store volatile ptr %call7.i.i.i, ptr %dummy_rules.i140, align 4
  br label %cleanup

if.then55:                                        ; preds = %if.end48
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #4
  %ops = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 3
  %478 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %ops, align 4
  %psfp_filter_add = getelementptr inbounds %struct.ocelot_ops, ptr %479, i32 0, i32 7
  %480 = ptrtoint ptr %psfp_filter_add to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %psfp_filter_add, align 4
  %tobool56.not = icmp eq ptr %481, null
  br i1 %tobool56.not, label %do.body62, label %if.then57

if.then57:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #6
  %call60 = call i32 %481(ptr noundef %ocelot, i32 noundef %port, ptr noundef %f) #4
  br label %cleanup

do.body62:                                        ; preds = %if.then55
  call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_cls_flower_replace.__msg.3) #4
  %tobool64.not = icmp eq ptr %1, null
  br i1 %tobool64.not, label %do.body62.cleanup_crit_edge, label %if.then65

do.body62.cleanup_crit_edge:                      ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then65:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #6
  %482 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %482)
  store ptr @ocelot_cls_flower_replace.__msg.3, ptr %1, align 4
  br label %cleanup

if.end70:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  %483 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %extack1, align 4
  %call73 = call i32 @ocelot_vcap_filter_add(ptr noundef %ocelot, ptr noundef nonnull %call7.i.i.i, ptr noundef %484) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.then65, %do.body62.cleanup_crit_edge, %if.then57, %if.end.i.i.i141, %if.then50.cleanup_crit_edge, %if.then47, %if.then43, %if.end34.cleanup_crit_edge, %if.end32, %if.then27, %do.body24.cleanup_crit_edge, %if.then13, %do.body10.cleanup_crit_edge, %if.then5, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %if.end32 ], [ %retval.0.i134.ph, %if.then43 ], [ -95, %if.then47 ], [ %call60, %if.then57 ], [ %call73, %if.end70 ], [ -95, %if.then5 ], [ -95, %do.body.cleanup_crit_edge ], [ -95, %if.then13 ], [ -95, %do.body10.cleanup_crit_edge ], [ -95, %if.then27 ], [ -95, %do.body24.cleanup_crit_edge ], [ -95, %if.then65 ], [ -95, %do.body62.cleanup_crit_edge ], [ -12, %if.end34.cleanup_crit_edge ], [ 0, %if.then50.cleanup_crit_edge ], [ 0, %if.end.i.i.i141 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocelot_vcap_block_find_filter_by_id(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_vcap_filter_replace(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_vcap_filter_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocelot_cls_flower_destroy(ptr noundef %ocelot, i32 noundef %port, ptr noundef %f, i1 noundef zeroext %ingress) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp3.i = icmp eq i32 %1, 0
  br i1 %ingress, label %if.end2.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  br i1 %cmp3.i, label %if.then.i.if.end9_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i.if.end9_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.end2.i:                                        ; preds = %entry
  br i1 %cmp3.i, label %if.end2.i.if.end9_crit_edge, label %for.body.preheader.i

if.end2.i.if.end9_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

for.body.preheader.i:                             ; preds = %if.end2.i
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %1, label %for.body15.i [
    i32 10000, label %for.body.preheader.i.if.end9_crit_edge
    i32 11000, label %for.body.preheader.i.if.end9_crit_edge54
    i32 12000, label %for.body.preheader.i.if.end9_crit_edge55
  ]

for.body.preheader.i.if.end9_crit_edge55:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

for.body.preheader.i.if.end9_crit_edge54:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

for.body.preheader.i.if.end9_crit_edge:           ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

for.body15.i:                                     ; preds = %for.body.preheader.i
  %3 = add i32 %1, -20000
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %3)
  %4 = icmp ult i32 %3, 256
  %indvars.iv.next.i = add i32 %1, -21000
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %indvars.iv.next.i)
  %5 = icmp ult i32 %indvars.iv.next.i, 256
  %or.cond.i = or i1 %4, %5
  br i1 %or.cond.i, label %for.body15.i.if.end9_crit_edge, label %for.inc25.1.i

for.body15.i.if.end9_crit_edge:                   ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

for.inc25.1.i:                                    ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %1)
  %cmp28.i = icmp eq i32 %1, 30000
  br i1 %cmp28.i, label %if.then2, label %for.inc25.1.i.cleanup_crit_edge

for.inc25.1.i.cleanup_crit_edge:                  ; preds = %for.inc25.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then2:                                         ; preds = %for.inc25.1.i
  %ops = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 3
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %psfp_filter_del = getelementptr inbounds %struct.ocelot_ops, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %psfp_filter_del to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %psfp_filter_del, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %if.then4

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call i32 %9(ptr noundef %ocelot, ptr noundef %f) #4
  br label %cleanup

if.end9:                                          ; preds = %for.body15.i.if.end9_crit_edge, %for.body.preheader.i.if.end9_crit_edge, %for.body.preheader.i.if.end9_crit_edge54, %for.body.preheader.i.if.end9_crit_edge55, %if.end2.i.if.end9_crit_edge, %if.then.i.if.end9_crit_edge
  %retval.0.i.ph.ph = phi i32 [ 2, %if.end2.i.if.end9_crit_edge ], [ 2, %for.body15.i.if.end9_crit_edge ], [ 1, %for.body.preheader.i.if.end9_crit_edge ], [ 1, %for.body.preheader.i.if.end9_crit_edge54 ], [ 1, %for.body.preheader.i.if.end9_crit_edge55 ], [ 0, %if.then.i.if.end9_crit_edge ]
  %arrayidx = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 24, i32 %retval.0.i.ph.ph
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 2
  %10 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cookie, align 4
  %call11 = tail call ptr @ocelot_vcap_block_find_filter_by_id(ptr noundef %arrayidx, i32 noundef %11, i1 noundef zeroext true) #4
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %type = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call11, i32 0, i32 1
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp15 = icmp eq i32 %13, 0
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end14
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call11) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then16.ocelot_vcap_dummy_filter_del.exit_crit_edge

if.then16.ocelot_vcap_dummy_filter_del.exit_crit_edge: ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %ocelot_vcap_dummy_filter_del.exit

if.end.i.i.i:                                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call11, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call11, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %ocelot_vcap_dummy_filter_del.exit

ocelot_vcap_dummy_filter_del.exit:                ; preds = %if.end.i.i.i, %if.then16.ocelot_vcap_dummy_filter_del.exit_crit_edge
  %20 = ptrtoint ptr %call11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %call11, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call11, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call11) #4
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  br i1 %ingress, label %if.then20, label %if.end18.if.end26_crit_edge

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then20:                                        ; preds = %if.end18
  %shl = shl nuw i32 1, %port
  %neg = xor i32 %shl, -1
  %ingress_port_mask = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call11, i32 0, i32 10
  %22 = ptrtoint ptr %ingress_port_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ingress_port_mask, align 8
  %and = and i32 %23, %neg
  store i32 %and, ptr %ingress_port_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.then20.if.end26_crit_edge, label %if.then23

if.then20.if.end26_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #6
  %call24 = tail call i32 @ocelot_vcap_filter_replace(ptr noundef %ocelot, ptr noundef nonnull %call11) #4
  br label %cleanup

if.end26:                                         ; preds = %if.then20.if.end26_crit_edge, %if.end18.if.end26_crit_edge
  %call27 = tail call i32 @ocelot_vcap_filter_del(ptr noundef %ocelot, ptr noundef nonnull %call11) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then23, %ocelot_vcap_dummy_filter_del.exit, %if.end9.cleanup_crit_edge, %if.then4, %if.then2.cleanup_crit_edge, %for.inc25.1.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then4 ], [ 0, %ocelot_vcap_dummy_filter_del.exit ], [ %call24, %if.then23 ], [ %call27, %if.end26 ], [ -95, %if.then2.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %for.inc25.1.i.cleanup_crit_edge ], [ 0, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_vcap_filter_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocelot_cls_flower_stats(ptr noundef %ocelot, i32 %port, ptr noundef %f, i1 noundef zeroext %ingress) #0 align 64 {
entry:
  %stats = alloca %struct.flow_stats, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %stats) #4
  %0 = call ptr @memset(ptr %stats, i32 0, i32 40)
  %1 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %f, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp3.i = icmp eq i32 %2, 0
  br i1 %ingress, label %if.end2.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  br i1 %cmp3.i, label %if.then.i.if.end12_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i.if.end12_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.end2.i:                                        ; preds = %entry
  br i1 %cmp3.i, label %if.end2.i.if.end12_crit_edge, label %for.body.preheader.i

if.end2.i.if.end12_crit_edge:                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

for.body.preheader.i:                             ; preds = %if.end2.i
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %2, label %for.body15.i [
    i32 10000, label %for.body.preheader.i.if.end12_crit_edge
    i32 11000, label %for.body.preheader.i.if.end12_crit_edge53
    i32 12000, label %for.body.preheader.i.if.end12_crit_edge54
  ]

for.body.preheader.i.if.end12_crit_edge54:        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

for.body.preheader.i.if.end12_crit_edge53:        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

for.body.preheader.i.if.end12_crit_edge:          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

for.body15.i:                                     ; preds = %for.body.preheader.i
  %4 = add i32 %2, -20000
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %4)
  %5 = icmp ult i32 %4, 256
  %indvars.iv.next.i = add i32 %2, -21000
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %indvars.iv.next.i)
  %6 = icmp ult i32 %indvars.iv.next.i, 256
  %or.cond.i = or i1 %5, %6
  br i1 %or.cond.i, label %for.body15.i.if.end12_crit_edge, label %for.inc25.1.i

for.body15.i.if.end12_crit_edge:                  ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

for.inc25.1.i:                                    ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %2)
  %cmp28.i = icmp eq i32 %2, 30000
  br i1 %cmp28.i, label %if.then2, label %for.inc25.1.i.cleanup_crit_edge

for.inc25.1.i.cleanup_crit_edge:                  ; preds = %for.inc25.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then2:                                         ; preds = %for.inc25.1.i
  %ops = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 3
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %psfp_stats_get = getelementptr inbounds %struct.ocelot_ops, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %psfp_stats_get to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %psfp_stats_get, align 4
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %if.then4

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then4:                                         ; preds = %if.then2
  %call7 = call i32 %10(ptr noundef %ocelot, ptr noundef %f, ptr noundef nonnull %stats) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then4.stats_update_crit_edge, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then4.stats_update_crit_edge:                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %stats_update

if.end12:                                         ; preds = %for.body15.i.if.end12_crit_edge, %for.body.preheader.i.if.end12_crit_edge, %for.body.preheader.i.if.end12_crit_edge53, %for.body.preheader.i.if.end12_crit_edge54, %if.end2.i.if.end12_crit_edge, %if.then.i.if.end12_crit_edge
  %retval.0.i.ph.ph = phi i32 [ 2, %if.end2.i.if.end12_crit_edge ], [ 2, %for.body15.i.if.end12_crit_edge ], [ 1, %for.body.preheader.i.if.end12_crit_edge ], [ 1, %for.body.preheader.i.if.end12_crit_edge53 ], [ 1, %for.body.preheader.i.if.end12_crit_edge54 ], [ 0, %if.then.i.if.end12_crit_edge ]
  %arrayidx = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 24, i32 %retval.0.i.ph.ph
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 2
  %11 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cookie, align 4
  %call14 = tail call ptr @ocelot_vcap_block_find_filter_by_id(ptr noundef %arrayidx, i32 noundef %12, i1 noundef zeroext true) #4
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %lor.lhs.false

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end12
  %type = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call14, i32 0, i32 1
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp16 = icmp eq i32 %14, 0
  br i1 %cmp16, label %lor.lhs.false.cleanup_crit_edge, label %if.end18

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false
  %call19 = tail call i32 @ocelot_vcap_filter_stats_update(ptr noundef %ocelot, ptr noundef nonnull %call14) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %pkts = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call14, i32 0, i32 9, i32 1
  %15 = ptrtoint ptr %pkts to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %pkts, align 8
  %17 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %stats, align 8
  br label %stats_update

stats_update:                                     ; preds = %if.end22, %if.then4.stats_update_crit_edge
  %stats25 = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 4
  %18 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %stats, align 8
  %drops = getelementptr inbounds %struct.flow_stats, ptr %stats, i32 0, i32 2
  %20 = ptrtoint ptr %drops to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %drops, align 8
  %22 = ptrtoint ptr %stats25 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %stats25, align 8
  %add.i = add i64 %23, %19
  store i64 %add.i, ptr %stats25, align 8
  %drops4.i = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %drops4.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %drops4.i, align 8
  %add5.i = add i64 %25, %21
  store i64 %add5.i, ptr %drops4.i, align 8
  %used_hw_stats28.i = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 4, i32 4
  %26 = ptrtoint ptr %used_hw_stats28.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %used_hw_stats28.i, align 8
  %or.i = or i32 %27, 1
  store i32 %or.i, ptr %used_hw_stats28.i, align 8
  %used_hw_stats_valid.i = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 4, i32 5
  %28 = ptrtoint ptr %used_hw_stats_valid.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %used_hw_stats_valid.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %stats_update, %if.end18.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %for.inc25.1.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %stats_update ], [ %call7, %if.then4.cleanup_crit_edge ], [ -95, %if.then2.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ], [ 0, %for.inc25.1.i.cleanup_crit_edge ], [ 0, %if.then.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %stats) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_vcap_filter_stats_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_control(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_eth_addrs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_basic(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ipv4_addrs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ports(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_vlan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_meta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @ocelot_cls_flower_replace.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 826, i32 3}
!2 = !{ptr @ocelot_cls_flower_replace.__msg.1, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 832, i32 3}
!4 = !{ptr @ocelot_cls_flower_replace.__msg.2, !5, !"__msg", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 841, i32 4}
!6 = !{ptr @ocelot_cls_flower_replace.__msg.3, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 878, i32 3}
!8 = !{ptr @__ksymtab_ocelot_cls_flower_replace, !9, !"__ksymtab_ocelot_cls_flower_replace", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 884, i32 1}
!10 = !{ptr @__ksymtab_ocelot_cls_flower_destroy, !11, !"__ksymtab_ocelot_cls_flower_destroy", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 921, i32 1}
!12 = !{ptr @__ksymtab_ocelot_cls_flower_stats, !13, !"__ksymtab_ocelot_cls_flower_stats", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 964, i32 1}
!14 = !{ptr @ocelot_flower_parse_action.__msg, !15, !"__msg", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 250, i32 3}
!16 = !{ptr @ocelot_flower_parse_action.__msg.4, !17, !"__msg", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 265, i32 5}
!18 = !{ptr @ocelot_flower_parse_action.__msg.5, !19, !"__msg", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 270, i32 5}
!20 = !{ptr @ocelot_flower_parse_action.__msg.6, !21, !"__msg", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 282, i32 5}
!22 = !{ptr @ocelot_flower_parse_action.__msg.7, !23, !"__msg", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 287, i32 5}
!24 = !{ptr @ocelot_flower_parse_action.__msg.8, !25, !"__msg", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 304, i32 5}
!26 = !{ptr @ocelot_flower_parse_action.__msg.9, !27, !"__msg", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 309, i32 5}
!28 = !{ptr @ocelot_flower_parse_action.__msg.10, !29, !"__msg", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 314, i32 5}
!30 = !{ptr @ocelot_flower_parse_action.__msg.11, !31, !"__msg", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 340, i32 5}
!32 = !{ptr @ocelot_flower_parse_action.__msg.12, !33, !"__msg", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 345, i32 5}
!34 = !{ptr @ocelot_flower_parse_action.__msg.13, !35, !"__msg", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 351, i32 5}
!36 = !{ptr @ocelot_flower_parse_action.__msg.14, !37, !"__msg", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 361, i32 5}
!38 = !{ptr @ocelot_flower_parse_action.__msg.15, !39, !"__msg", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 366, i32 5}
!40 = !{ptr @ocelot_flower_parse_action.__msg.16, !41, !"__msg", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 373, i32 5}
!42 = !{ptr @ocelot_flower_parse_action.__msg.17, !43, !"__msg", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 388, i32 5}
!44 = !{ptr @ocelot_flower_parse_action.__msg.18, !45, !"__msg", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 397, i32 5}
!46 = !{ptr @ocelot_flower_parse_action.__msg.19, !47, !"__msg", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 402, i32 5}
!48 = !{ptr @ocelot_flower_parse_action.__msg.20, !49, !"__msg", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 423, i32 5}
!50 = !{ptr @ocelot_flower_parse_action.__msg.21, !51, !"__msg", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 435, i32 5}
!52 = !{ptr @ocelot_flower_parse_action.__msg.22, !53, !"__msg", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 448, i32 5}
!54 = !{ptr @ocelot_flower_parse_action.__msg.23, !55, !"__msg", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 455, i32 4}
!56 = !{ptr @ocelot_flower_parse_action.__msg.24, !57, !"__msg", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 465, i32 4}
!58 = !{ptr @ocelot_flower_parse_action.__msg.25, !59, !"__msg", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 472, i32 3}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../include/net/flow_offload.h", i32 354, i32 2}
!62 = !{ptr @.str, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @__flow_action_hw_stats_check.__msg, !64, !"__msg", i1 false, i1 false}
!64 = !{!"../include/net/flow_offload.h", i32 358, i32 3}
!65 = distinct !{null, !66, !"__msg", i1 false, i1 false}
!66 = !{!"../include/net/flow_offload.h", i32 362, i32 3}
!67 = !{ptr @flow_action_mixed_hw_stats_check.__msg, !68, !"__msg", i1 false, i1 false}
!68 = !{!"../include/net/flow_offload.h", i32 323, i32 4}
!69 = !{ptr @ocelot_flower_parse_ingress_vlan_modify.__msg, !70, !"__msg", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 179, i32 3}
!71 = !{ptr @ocelot_flower_parse_ingress_vlan_modify.__msg.27, !72, !"__msg", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 185, i32 3}
!73 = !{ptr @ocelot_flower_parse_egress_vlan_modify.__msg, !74, !"__msg", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 214, i32 3}
!75 = !{ptr @ocelot_flower_parse_key.__msg, !76, !"__msg", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 571, i32 4}
!77 = !{ptr @ocelot_flower_parse_key.__msg.28, !78, !"__msg", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 593, i32 4}
!79 = !{ptr @ocelot_flower_parse_key.__msg.29, !80, !"__msg", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 616, i32 5}
!81 = !{ptr @ocelot_flower_parse_key.__msg.30, !82, !"__msg", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 630, i32 5}
!83 = !{ptr @ocelot_flower_parse_key.__msg.31, !84, !"__msg", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 650, i32 4}
!85 = !{ptr @ocelot_flower_parse_key.__msg.32, !86, !"__msg", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 658, i32 4}
!87 = !{ptr @ocelot_flower_parse_key.__msg.33, !88, !"__msg", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 686, i32 4}
!89 = !{ptr @ocelot_flower_parse_key.__msg.34, !90, !"__msg", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 714, i32 4}
!91 = !{ptr @ocelot_flower_parse_indev.__msg, !92, !"__msg", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 497, i32 3}
!93 = !{ptr @ocelot_flower_parse_indev.__msg.35, !94, !"__msg", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 507, i32 3}
!95 = !{ptr @ocelot_flower_parse_indev.__msg.36, !96, !"__msg", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 514, i32 3}
!97 = !{ptr @ocelot_flower_parse_indev.__msg.37, !98, !"__msg", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 519, i32 3}
!99 = !{ptr @ocelot_flower_patch_es0_vlan_modify.__msg, !100, !"__msg", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/mscc/ocelot_flower.c", i32 806, i32 3}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{!"branch_weights", i32 1, i32 2000}
!111 = !{!"branch_weights", i32 2000, i32 1}
!112 = !{i64 800131, i64 800158, i64 800180, i64 800208}
!113 = !{i64 800539, i64 800566, i64 800599, i64 800620, i64 800647, i64 800673}
!114 = !{i8 0, i8 2}
!115 = !{!"auto-init"}
