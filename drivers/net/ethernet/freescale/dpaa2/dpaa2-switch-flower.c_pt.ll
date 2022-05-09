; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-flower.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-flower.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dpaa2_switch_acl_entry = type { %struct.list_head, i16, i32, %struct.dpsw_acl_entry_cfg, %struct.dpsw_acl_key }
%struct.list_head = type { ptr, ptr }
%struct.dpsw_acl_entry_cfg = type { i64, %struct.dpsw_acl_result, i32 }
%struct.dpsw_acl_result = type { i32, i16 }
%struct.dpsw_acl_key = type { %struct.dpsw_acl_fields, %struct.dpsw_acl_fields }
%struct.dpsw_acl_fields = type { [6 x i8], [6 x i8], i16, i8, i16, i16, i8, i8, i32, i32, i16, i16 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.page = type { i32, %union.anon.2, %union.anon.125, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.125 = type { %struct.atomic_t }
%struct.ethsw_core = type { ptr, ptr, i16, %struct.dpsw_attr, i16, i16, i32, i32, ptr, ptr, [4096 x i8], ptr, [2 x %struct.dpaa2_switch_fq], ptr, i32, i16, i32, ptr, ptr, i16 }
%struct.dpsw_attr = type { i32, i64, i16, i8, i8, i16, i16, i16, i16, i16, i16, i8, i32, i32, i32 }
%struct.dpaa2_switch_fq = type { ptr, i32, ptr, %struct.dpaa2_io_notification_ctx, %struct.napi_struct, i32 }
%struct.dpaa2_io_notification_ctx = type { ptr, i32, i32, i32, i32, i64, %struct.list_head, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.dpaa2_switch_filter_block = type { ptr, i64, i8, %struct.list_head, i16, i8, %struct.list_head }
%struct.flow_match_vlan = type { ptr, ptr }
%struct.flow_match_basic = type { ptr, ptr }
%struct.flow_match_eth_addrs = type { ptr, ptr }
%struct.flow_match_ipv4_addrs = type { ptr, ptr }
%struct.flow_match_ports = type { ptr, ptr }
%struct.flow_match_ip = type { ptr, ptr }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.155, ptr }
%union.anon.155 = type { %struct.anon.160 }
%struct.anon.160 = type { i32, i64, i64, i64, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_eth_addrs = type { [6 x i8], [6 x i8] }
%struct.flow_dissector_key_vlan = type { %union.anon.168, i16 }
%union.anon.168 = type { %struct.anon.169 }
%struct.anon.169 = type { i16 }
%struct.flow_dissector_key_ipv4_addrs = type { i32, i32 }
%struct.anon.171 = type { i16, i16 }
%struct.flow_dissector_key_ip = type { i8, i8 }
%struct.ethsw_port_priv = type { ptr, i16, ptr, i8, i8, [4096 x i8], i16, i16, ptr, i8, i8, i8, ptr, ptr }
%struct.dpaa2_switch_mirror_entry = type { %struct.list_head, %struct.dpsw_reflection_cfg, i32, i16 }
%struct.dpsw_reflection_cfg = type { i32, i16 }
%struct.tc_cls_matchall_offload = type { %struct.flow_cls_common_offload, i32, ptr, %struct.flow_stats, i32 }

@dpaa2_switch_acl_entry_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 134, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DMA mapping failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dpaa2_switch_acl_entry_add\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-flower.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dpaa2_switch_acl_entry_add._entry_ptr = internal global ptr @dpaa2_switch_acl_entry_add._entry, section ".printk_index", align 4
@dpaa2_switch_acl_entry_add._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 144, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dpsw_acl_add_entry() failed %d\0A\00", [32 x i8] zeroinitializer }, align 32
@dpaa2_switch_acl_entry_add._entry_ptr.7 = internal global ptr @dpaa2_switch_acl_entry_add._entry.5, section ".printk_index", align 4
@dpaa2_switch_cls_flower_replace.__msg = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Only singular actions are supported\00", [60 x i8] zeroinitializer }, align 32
@dpaa2_switch_cls_flower_replace.__msg.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"fsl_dpaa2_switch: Action not supported\00", [57 x i8] zeroinitializer }, align 32
@dpaa2_switch_cls_matchall_replace.__msg = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Only singular actions are supported\00", [60 x i8] zeroinitializer }, align 32
@dpaa2_switch_cls_matchall_replace.__msg.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"fsl_dpaa2_switch: Action not supported\00", [57 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@dpaa2_switch_cls_flower_replace_acl.__msg = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Maximum filter capacity reached\00", [32 x i8] zeroinitializer }, align 32
@dpaa2_switch_flower_parse_key.__msg = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"fsl_dpaa2_switch: Unsupported keys used\00", [56 x i8] zeroinitializer }, align 32
@dpaa2_switch_flower_parse_key.__msg.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"fsl_dpaa2_switch: Matching on TTL not supported\00", [48 x i8] zeroinitializer }, align 32
@dpaa2_switch_flower_parse_key.__msg.13 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"fsl_dpaa2_switch: Matching on ECN not supported, only DSCP\00", [37 x i8] zeroinitializer }, align 32
@dpaa2_switch_tc_parse_action_acl.__msg = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"fsl_dpaa2_switch: Destination not a DPAA2 switch port\00", [42 x i8] zeroinitializer }, align 32
@dpaa2_switch_tc_parse_action_acl.__msg.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"fsl_dpaa2_switch: Action not supported\00", [57 x i8] zeroinitializer }, align 32
@dpaa2_switch_acl_entry_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.15, ptr @.str.2, i32 174, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dpaa2_switch_acl_entry_remove\00", [34 x i8] zeroinitializer }, align 32
@dpaa2_switch_acl_entry_remove._entry_ptr = internal global ptr @dpaa2_switch_acl_entry_remove._entry, section ".printk_index", align 4
@dpaa2_switch_acl_entry_remove._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 184, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dpsw_acl_remove_entry() failed %d\0A\00", [61 x i8] zeroinitializer }, align 32
@dpaa2_switch_acl_entry_remove._entry_ptr.18 = internal global ptr @dpaa2_switch_acl_entry_remove._entry.16, section ".printk_index", align 4
@dpaa2_switch_cls_flower_replace_mirror.__msg = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"fsl_dpaa2_switch: Destination not a DPAA2 switch port\00", [42 x i8] zeroinitializer }, align 32
@dpaa2_switch_cls_flower_replace_mirror.__msg.19 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"fsl_dpaa2_switch: Multiple mirror ports not supported\00", [42 x i8] zeroinitializer }, align 32
@dpaa2_switch_cls_flower_replace_mirror.__msg.20 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"fsl_dpaa2_switch: VLAN mirror filter already installed\00", [41 x i8] zeroinitializer }, align 32
@dpaa2_switch_flower_parse_mirror_key.__msg = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"fsl_dpaa2_switch: Mirroring is supported only per VLAN\00", [41 x i8] zeroinitializer }, align 32
@dpaa2_switch_flower_parse_mirror_key.__msg.21 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"fsl_dpaa2_switch: Only matching on VLAN ID supported\00", [43 x i8] zeroinitializer }, align 32
@dpaa2_switch_flower_parse_mirror_key.__msg.22 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"fsl_dpaa2_switch: Masked matching not supported\00", [48 x i8] zeroinitializer }, align 32
@dpaa2_switch_block_add_mirror.__msg = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VLAN must be installed on the switch port\00", [54 x i8] zeroinitializer }, align 32
@dpaa2_switch_cls_matchall_replace_acl.__msg = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Maximum filter capacity reached\00", [32 x i8] zeroinitializer }, align 32
@dpaa2_switch_cls_matchall_replace_mirror.__msg = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"fsl_dpaa2_switch: Destination not a DPAA2 switch port\00", [42 x i8] zeroinitializer }, align 32
@dpaa2_switch_cls_matchall_replace_mirror.__msg.23 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"fsl_dpaa2_switch: Multiple mirror ports not supported\00", [42 x i8] zeroinitializer }, align 32
@dpaa2_switch_cls_matchall_replace_mirror.__msg.24 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"fsl_dpaa2_switch: Matchall mirror filter already installed\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 134, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 144, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 645, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 658, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 790, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 803, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 326, i32 6 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 496, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 28, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 96, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 102, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 370, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 382, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 174, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 184, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 590, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 601, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 619, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 541, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 553, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 559, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 426, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 696, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 743, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 754, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.131 = private constant [62 x i8] c"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-flower.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 766, i32 4 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @dpaa2_switch_acl_entry_add._entry, ptr @dpaa2_switch_acl_entry_add._entry.5, ptr @dpaa2_switch_acl_entry_add._entry_ptr, ptr @dpaa2_switch_acl_entry_add._entry_ptr.7, ptr @dpaa2_switch_acl_entry_remove._entry, ptr @dpaa2_switch_acl_entry_remove._entry.16, ptr @dpaa2_switch_acl_entry_remove._entry_ptr, ptr @dpaa2_switch_acl_entry_remove._entry_ptr.18, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @dpaa2_switch_cls_flower_replace.__msg, ptr @dpaa2_switch_cls_flower_replace.__msg.8, ptr @dpaa2_switch_cls_matchall_replace.__msg, ptr @dpaa2_switch_cls_matchall_replace.__msg.9, ptr @.str.10, ptr @.str.11, ptr @dpaa2_switch_cls_flower_replace_acl.__msg, ptr @dpaa2_switch_flower_parse_key.__msg, ptr @dpaa2_switch_flower_parse_key.__msg.12, ptr @dpaa2_switch_flower_parse_key.__msg.13, ptr @dpaa2_switch_tc_parse_action_acl.__msg, ptr @dpaa2_switch_tc_parse_action_acl.__msg.14, ptr @.str.15, ptr @.str.17, ptr @dpaa2_switch_cls_flower_replace_mirror.__msg, ptr @dpaa2_switch_cls_flower_replace_mirror.__msg.19, ptr @dpaa2_switch_cls_flower_replace_mirror.__msg.20, ptr @dpaa2_switch_flower_parse_mirror_key.__msg, ptr @dpaa2_switch_flower_parse_mirror_key.__msg.21, ptr @dpaa2_switch_flower_parse_mirror_key.__msg.22, ptr @dpaa2_switch_block_add_mirror.__msg, ptr @dpaa2_switch_cls_matchall_replace_acl.__msg, ptr @dpaa2_switch_cls_matchall_replace_mirror.__msg, ptr @dpaa2_switch_cls_matchall_replace_mirror.__msg.23, ptr @dpaa2_switch_cls_matchall_replace_mirror.__msg.24], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_acl_entry_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_acl_entry_add._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_cls_flower_replace.__msg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_cls_flower_replace.__msg.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_cls_matchall_replace.__msg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_cls_matchall_replace.__msg.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_cls_flower_replace_acl.__msg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_flower_parse_key.__msg to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_flower_parse_key.__msg.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_flower_parse_key.__msg.13 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_tc_parse_action_acl.__msg to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_tc_parse_action_acl.__msg.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_acl_entry_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_acl_entry_remove._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_cls_flower_replace_mirror.__msg to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_cls_flower_replace_mirror.__msg.19 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_cls_flower_replace_mirror.__msg.20 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_flower_parse_mirror_key.__msg to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_flower_parse_mirror_key.__msg.21 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_flower_parse_mirror_key.__msg.22 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_block_add_mirror.__msg to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_cls_matchall_replace_acl.__msg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_cls_matchall_replace_mirror.__msg to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_cls_matchall_replace_mirror.__msg.23 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_switch_cls_matchall_replace_mirror.__msg.24 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpaa2_switch_acl_entry_add(ptr nocapture noundef readonly %filter_block, ptr noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %filter_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filter_block, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 256) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %key = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %entry1, i32 0, i32 4
  tail call void @dpsw_acl_prepare_entry_cfg(ptr noundef %key, ptr noundef nonnull %call7.i.i) #5
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call7.i.i) #5
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !75

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %3) #5
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #5
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @debug_dma_map_single(ptr noundef %3, ptr noundef nonnull %call7.i.i, i32 noundef 256) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %9 = load ptr, ptr @mem_map, align 4
  %10 = ptrtoint ptr %call7.i.i to i32
  %sub.i = add i32 %10, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %9, i32 %shr.i
  %and.i = and i32 %10, 4088
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 256, i32 noundef 1, i32 noundef 0) #5
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %conv = zext i32 %retval.0.i to i64
  %11 = ptrtoint ptr %cfg to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv, ptr %cfg, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %retval.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %do.end, label %if.end12

do.end:                                           ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str) #9
  br label %cleanup

if.end12:                                         ; preds = %dma_map_single_attrs.exit
  %mc_io = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mc_io, align 4
  %dpsw_handle = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %dpsw_handle, align 8
  %acl_id = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %filter_block, i32 0, i32 4
  %16 = ptrtoint ptr %acl_id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %acl_id, align 4
  %call13 = tail call i32 @dpsw_acl_add_entry(ptr noundef %13, i32 noundef 0, i16 noundef zeroext %15, i16 noundef zeroext %17, ptr noundef %cfg) #5
  %18 = ptrtoint ptr %cfg to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %cfg, align 8
  %conv15 = trunc i64 %19 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %conv15, i32 noundef 4, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool16.not = icmp eq i32 %call13, 0
  br i1 %tobool16.not, label %if.end21, label %do.end20

do.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %call13) #9
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end20, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %do.end ], [ %call13, %do.end20 ], [ 0, %if.end21 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpsw_acl_prepare_entry_cfg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_acl_add_entry(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpaa2_switch_cls_flower_replace(ptr noundef %block, ptr nocapture noundef readonly %cls) local_unnamed_addr #0 align 64 {
entry:
  %match8.i.i = alloca %struct.flow_match_vlan, align 4
  %match9.i.i = alloca %struct.flow_match_basic, align 4
  %match20.i.i = alloca %struct.flow_match_eth_addrs, align 4
  %match38.i.i = alloca %struct.flow_match_vlan, align 4
  %match72.i.i = alloca %struct.flow_match_ipv4_addrs, align 4
  %match86.i.i = alloca %struct.flow_match_ports, align 4
  %match100.i.i = alloca %struct.flow_match_ip, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rule.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 3
  %0 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule.i, align 8
  %extack1 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls, i32 0, i32 3
  %2 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extack1, align 4
  %action = getelementptr inbounds %struct.flow_rule, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %action, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  br i1 %cmp.i, label %if.end4, label %do.body

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dpaa2_switch_cls_flower_replace.__msg) #5
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @dpaa2_switch_cls_flower_replace.__msg, ptr %3, align 4
  br label %cleanup

if.end4:                                          ; preds = %entry
  %entries = getelementptr inbounds %struct.flow_rule, ptr %1, i32 1
  %7 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %entries, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %do.body9 [
    i32 4, label %if.end4.sw.bb_crit_edge
    i32 2, label %if.end4.sw.bb_crit_edge62
    i32 1, label %if.end4.sw.bb_crit_edge63
    i32 5, label %sw.bb7
  ]

if.end4.sw.bb_crit_edge63:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end4.sw.bb_crit_edge62:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end4.sw.bb_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %if.end4.sw.bb_crit_edge, %if.end4.sw.bb_crit_edge62, %if.end4.sw.bb_crit_edge63
  %10 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %block, align 8
  %num_acl_rules.i.i = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %block, i32 0, i32 5
  %12 = ptrtoint ptr %num_acl_rules.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_acl_rules.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %13)
  %cmp.i.i = icmp ugt i8 %13, 14
  br i1 %cmp.i.i, label %do.body.i, label %if.end5.i

do.body.i:                                        ; preds = %sw.bb
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dpaa2_switch_cls_flower_replace_acl.__msg) #5
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %if.then4.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @dpaa2_switch_cls_flower_replace_acl.__msg, ptr %3, align 4
  br label %cleanup

if.end5.i:                                        ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 112) #8
  %tobool7.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool7.not.i, label %if.end5.i.cleanup_crit_edge, label %if.end9.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9.i:                                        ; preds = %if.end5.i
  %key.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rule.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %20 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %extack1, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %19, align 4
  %and.i.i = and i32 %23, -2098336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end5.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end9.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dpaa2_switch_flower_parse_key.__msg) #5
  %tobool3.not.i.i = icmp eq ptr %21, null
  br i1 %tobool3.not.i.i, label %do.body.i.i.free_acl_entry.i_crit_edge, label %if.then4.i.i

do.body.i.i.free_acl_entry.i_crit_edge:           ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_acl_entry.i

if.then4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @dpaa2_switch_flower_parse_key.__msg, ptr %21, align 4
  br label %free_acl_entry.i

if.end5.i.i:                                      ; preds = %if.end9.i
  %mask.i.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %and.i.i.i.i = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.i.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.i.not.i.i, label %if.end5.i.i.if.end17.i.i_crit_edge, label %if.then8.i.i

if.end5.i.i.if.end17.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i.i

if.then8.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match9.i.i) #5
  %25 = ptrtoint ptr %match9.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 -1 to ptr), ptr %match9.i.i, align 4, !annotation !76
  %26 = getelementptr inbounds %struct.flow_match_basic, ptr %match9.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 -1 to ptr), ptr %26, align 4, !annotation !76
  call void @flow_rule_match_basic(ptr noundef %17, ptr noundef nonnull %match9.i.i) #5
  %28 = ptrtoint ptr %match9.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %match9.i.i, align 4
  %ip_proto.i.i = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %ip_proto.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ip_proto.i.i, align 2
  %l3_protocol.i.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 7
  %32 = ptrtoint ptr %l3_protocol.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %l3_protocol.i.i, align 1
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %29, align 2
  %l2_ether_type.i.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 5
  %35 = ptrtoint ptr %l2_ether_type.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %l2_ether_type.i.i, align 2
  %36 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %26, align 4
  %ip_proto12.i.i = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %ip_proto12.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ip_proto12.i.i, align 2
  %l3_protocol13.i.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 4, i32 1, i32 7
  %40 = ptrtoint ptr %l3_protocol13.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %l3_protocol13.i.i, align 1
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %37, align 2
  %l2_ether_type16.i.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 4, i32 1, i32 5
  %43 = ptrtoint ptr %l2_ether_type16.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %l2_ether_type16.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match9.i.i) #5
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then8.i.i, %if.end5.i.i.if.end17.i.i_crit_edge
  %44 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %17, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %and.i.i188.i.i = and i32 %47, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i188.i.i)
  %tobool.i.i189.not.i.i = icmp eq i32 %and.i.i188.i.i, 0
  br i1 %tobool.i.i189.not.i.i, label %if.end17.i.i.if.end35.i.i_crit_edge, label %if.then19.i.i

if.end17.i.i.if.end35.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i.i

if.then19.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match20.i.i) #5
  %48 = ptrtoint ptr %match20.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 -1 to ptr), ptr %match20.i.i, align 4, !annotation !76
  %49 = getelementptr inbounds %struct.flow_match_eth_addrs, ptr %match20.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 -1 to ptr), ptr %49, align 4, !annotation !76
  call void @flow_rule_match_eth_addrs(ptr noundef %17, ptr noundef nonnull %match20.i.i) #5
  %51 = ptrtoint ptr %match20.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %match20.i.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %55 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %key.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %52, i32 4
  %56 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 0, i32 4
  %58 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %add.ptr1.i.i.i, align 4
  %l2_source_mac.i.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 1
  %src.i.i = getelementptr inbounds %struct.flow_dissector_key_eth_addrs, ptr %52, i32 0, i32 1
  %59 = ptrtoint ptr %src.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %src.i.i, align 4
  %61 = ptrtoint ptr %l2_source_mac.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %l2_source_mac.i.i, align 4
  %add.ptr.i190.i.i = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %52, i32 0, i32 1, i32 4
  %62 = ptrtoint ptr %add.ptr.i190.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %add.ptr.i190.i.i, align 2
  %add.ptr1.i191.i.i = getelementptr %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 1, i32 4
  %64 = ptrtoint ptr %add.ptr1.i191.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %add.ptr1.i191.i.i, align 2
  %65 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %49, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %69 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %mask.i.i, align 4
  %add.ptr.i192.i.i = getelementptr i8, ptr %66, i32 4
  %70 = ptrtoint ptr %add.ptr.i192.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %add.ptr.i192.i.i, align 2
  %add.ptr1.i193.i.i = getelementptr %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 4, i32 1, i32 0, i32 4
  %72 = ptrtoint ptr %add.ptr1.i193.i.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %add.ptr1.i193.i.i, align 8
  %l2_source_mac30.i.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 4, i32 1, i32 1
  %src33.i.i = getelementptr inbounds %struct.flow_dissector_key_eth_addrs, ptr %66, i32 0, i32 1
  %73 = ptrtoint ptr %src33.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %src33.i.i, align 4
  %75 = ptrtoint ptr %l2_source_mac30.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %l2_source_mac30.i.i, align 4
  %add.ptr.i194.i.i = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %66, i32 0, i32 1, i32 4
  %76 = ptrtoint ptr %add.ptr.i194.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %add.ptr.i194.i.i, align 2
  %add.ptr1.i195.i.i = getelementptr %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 4, i32 1, i32 1, i32 4
  %78 = ptrtoint ptr %add.ptr1.i195.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %add.ptr1.i195.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match20.i.i) #5
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %if.then19.i.i, %if.end17.i.i.if.end35.i.i_crit_edge
  %79 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %17, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  %and.i.i196.i.i = and i32 %82, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i196.i.i)
  %tobool.i.i197.not.i.i = icmp eq i32 %and.i.i196.i.i, 0
  br i1 %tobool.i.i197.not.i.i, label %if.end35.i.i.if.end69.i.i_crit_edge, label %if.then37.i.i

if.end35.i.i.if.end69.i.i_crit_edge:              ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69.i.i

if.then37.i.i:                                    ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match38.i.i) #5
  %83 = ptrtoint ptr %match38.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr inttoptr (i32 -1 to ptr), ptr %match38.i.i, align 4, !annotation !76
  %84 = getelementptr inbounds %struct.flow_match_vlan, ptr %match38.i.i, i32 0, i32 1
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 -1 to ptr), ptr %84, align 4, !annotation !76
  call void @flow_rule_match_vlan(ptr noundef %17, ptr noundef nonnull %match38.i.i) #5
  %86 = ptrtoint ptr %match38.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %match38.i.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load2_noabort(i32 %88)
  %bf.load.i.i = load i16, ptr %87, align 2
  %bf.lshr.i.i = lshr i16 %bf.load.i.i, 4
  %l2_vlan_id.i.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 4
  %89 = ptrtoint ptr %l2_vlan_id.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %bf.lshr.i.i, ptr %l2_vlan_id.i.i, align 8
  %vlan_tpid.i.i = getelementptr inbounds %struct.flow_dissector_key_vlan, ptr %87, i32 0, i32 1
  %90 = ptrtoint ptr %vlan_tpid.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %vlan_tpid.i.i, align 2
  %l2_tpid.i.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 2
  %92 = ptrtoint ptr %l2_tpid.i.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %l2_tpid.i.i, align 4
  %bf.load42.i.i = load i16, ptr %87, align 2
  %bf.clear.i.i = shl i16 %bf.load42.i.i, 1
  %93 = and i16 %bf.clear.i.i, 14
  %bf.lshr45.i.i = lshr i16 %bf.load42.i.i, 3
  %bf.clear46.i.i = and i16 %bf.lshr45.i.i, 1
  %or186.i.i = or i16 %93, %bf.clear46.i.i
  %conv48.i.i = trunc i16 %or186.i.i to i8
  %l2_pcp_dei.i.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 3
  %94 = ptrtoint ptr %l2_pcp_dei.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv48.i.i, ptr %l2_pcp_dei.i.i, align 2
  %95 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %84, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load2_noabort(i32 %97)
  %bf.load50.i.i = load i16, ptr %96, align 2
  %bf.lshr51.i.i = lshr i16 %bf.load50.i.i, 4
  %l2_vlan_id52.i.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 4, i32 1, i32 4
  %98 = ptrtoint ptr %l2_vlan_id52.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %bf.lshr51.i.i, ptr %l2_vlan_id52.i.i, align 4
  %vlan_tpid54.i.i = getelementptr inbounds %struct.flow_dissector_key_vlan, ptr %96, i32 0, i32 1
  %99 = ptrtoint ptr %vlan_tpid54.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %vlan_tpid54.i.i, align 2
  %l2_tpid55.i.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 4, i32 1, i32 2
  %101 = ptrtoint ptr %l2_tpid55.i.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %l2_tpid55.i.i, align 8
  %bf.load57.i.i = load i16, ptr %96, align 2
  %bf.clear58.i.i = shl i16 %bf.load57.i.i, 1
  %102 = and i16 %bf.clear58.i.i, 14
  %bf.lshr63.i.i = lshr i16 %bf.load57.i.i, 3
  %bf.clear64.i.i = and i16 %bf.lshr63.i.i, 1
  %or66187.i.i = or i16 %102, %bf.clear64.i.i
  %conv67.i.i = trunc i16 %or66187.i.i to i8
  %l2_pcp_dei68.i.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 4, i32 1, i32 3
  %103 = ptrtoint ptr %l2_pcp_dei68.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv67.i.i, ptr %l2_pcp_dei68.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match38.i.i) #5
  br label %if.end69.i.i

if.end69.i.i:                                     ; preds = %if.then37.i.i, %if.end35.i.i.if.end69.i.i_crit_edge
  %104 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %17, align 8
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %105, align 4
  %and.i.i198.i.i = and i32 %107, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i198.i.i)
  %tobool.i.i199.not.i.i = icmp eq i32 %and.i.i198.i.i, 0
  br i1 %tobool.i.i199.not.i.i, label %if.end69.i.i.if.end83.i.i_crit_edge, label %if.then71.i.i

if.end69.i.i.if.end83.i.i_crit_edge:              ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83.i.i

if.then71.i.i:                                    ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match72.i.i) #5
  %108 = ptrtoint ptr %match72.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr inttoptr (i32 -1 to ptr), ptr %match72.i.i, align 4, !annotation !76
  %109 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %match72.i.i, i32 0, i32 1
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr inttoptr (i32 -1 to ptr), ptr %109, align 4, !annotation !76
  call void @flow_rule_match_ipv4_addrs(ptr noundef %17, ptr noundef nonnull %match72.i.i) #5
  %111 = ptrtoint ptr %match72.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %match72.i.i, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %112, align 4
  %l3_source_ip.i.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 8
  %115 = ptrtoint ptr %l3_source_ip.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %l3_source_ip.i.i, align 8
  %dst76.i.i = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %112, i32 0, i32 1
  %116 = ptrtoint ptr %dst76.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %dst76.i.i, align 4
  %l3_dest_ip.i.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 9
  %118 = ptrtoint ptr %l3_dest_ip.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %l3_dest_ip.i.i, align 4
  %119 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %109, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %120, align 4
  %l3_source_ip79.i.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 4, i32 1, i32 8
  %123 = ptrtoint ptr %l3_source_ip79.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %l3_source_ip79.i.i, align 4
  %dst81.i.i = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %120, i32 0, i32 1
  %124 = ptrtoint ptr %dst81.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %dst81.i.i, align 4
  %l3_dest_ip82.i.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 4, i32 1, i32 9
  %126 = ptrtoint ptr %l3_dest_ip82.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %l3_dest_ip82.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match72.i.i) #5
  br label %if.end83.i.i

if.end83.i.i:                                     ; preds = %if.then71.i.i, %if.end69.i.i.if.end83.i.i_crit_edge
  %127 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %17, align 8
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %128, align 4
  %and.i.i200.i.i = and i32 %130, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i200.i.i)
  %tobool.i.i201.not.i.i = icmp eq i32 %and.i.i200.i.i, 0
  br i1 %tobool.i.i201.not.i.i, label %if.end83.i.i.if.end97.i.i_crit_edge, label %if.then85.i.i

if.end83.i.i.if.end97.i.i_crit_edge:              ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97.i.i

if.then85.i.i:                                    ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match86.i.i) #5
  %131 = ptrtoint ptr %match86.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr inttoptr (i32 -1 to ptr), ptr %match86.i.i, align 4, !annotation !76
  %132 = getelementptr inbounds %struct.flow_match_ports, ptr %match86.i.i, i32 0, i32 1
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr inttoptr (i32 -1 to ptr), ptr %132, align 4, !annotation !76
  call void @flow_rule_match_ports(ptr noundef %17, ptr noundef nonnull %match86.i.i) #5
  %134 = ptrtoint ptr %match86.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %match86.i.i, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %135, align 4
  %l4_source_port.i.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 10
  %138 = ptrtoint ptr %l4_source_port.i.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %137, ptr %l4_source_port.i.i, align 8
  %dst90.i.i = getelementptr inbounds %struct.anon.171, ptr %135, i32 0, i32 1
  %139 = ptrtoint ptr %dst90.i.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %dst90.i.i, align 2
  %l4_dest_port.i.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 11
  %141 = ptrtoint ptr %l4_dest_port.i.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %140, ptr %l4_dest_port.i.i, align 2
  %142 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %132, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %143, align 4
  %l4_source_port93.i.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 4, i32 1, i32 10
  %146 = ptrtoint ptr %l4_source_port93.i.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %145, ptr %l4_source_port93.i.i, align 4
  %dst95.i.i = getelementptr inbounds %struct.anon.171, ptr %143, i32 0, i32 1
  %147 = ptrtoint ptr %dst95.i.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %dst95.i.i, align 2
  %l4_dest_port96.i.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 4, i32 1, i32 11
  %149 = ptrtoint ptr %l4_dest_port96.i.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %148, ptr %l4_dest_port96.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match86.i.i) #5
  br label %if.end97.i.i

if.end97.i.i:                                     ; preds = %if.then85.i.i, %if.end83.i.i.if.end97.i.i_crit_edge
  %150 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %17, align 8
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %151, align 4
  %and.i.i202.i.i = and i32 %153, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i202.i.i)
  %tobool.i.i203.not.i.i = icmp eq i32 %and.i.i202.i.i, 0
  br i1 %tobool.i.i203.not.i.i, label %if.end97.i.i.if.end13.i_crit_edge, label %if.then99.i.i

if.end97.i.i.if.end13.i_crit_edge:                ; preds = %if.end97.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

if.then99.i.i:                                    ; preds = %if.end97.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match100.i.i) #5
  %154 = ptrtoint ptr %match100.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr inttoptr (i32 -1 to ptr), ptr %match100.i.i, align 4, !annotation !76
  %155 = getelementptr inbounds %struct.flow_match_ip, ptr %match100.i.i, i32 0, i32 1
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr inttoptr (i32 -1 to ptr), ptr %155, align 4, !annotation !76
  call void @flow_rule_match_ip(ptr noundef %17, ptr noundef nonnull %match100.i.i) #5
  %157 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %155, align 4
  %ttl.i.i = getelementptr inbounds %struct.flow_dissector_key_ip, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %ttl.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %ttl.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %cmp.not.i.i = icmp eq i8 %160, 0
  br i1 %cmp.not.i.i, label %if.end113.i.i, label %do.body105.i.i

do.body105.i.i:                                   ; preds = %if.then99.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @dpaa2_switch_flower_parse_key.__msg.12) #5
  %tobool107.not.i.i = icmp eq ptr %21, null
  br i1 %tobool107.not.i.i, label %do.body105.i.i.cleanup.i.i_crit_edge, label %do.body105.i.i.cleanup.sink.split.i.i_crit_edge

do.body105.i.i.cleanup.sink.split.i.i_crit_edge:  ; preds = %do.body105.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i.i

do.body105.i.i.cleanup.i.i_crit_edge:             ; preds = %do.body105.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i.i

if.end113.i.i:                                    ; preds = %if.then99.i.i
  %161 = ptrtoint ptr %158 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %158, align 1
  %163 = and i8 %162, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %cmp117.not.i.i = icmp eq i8 %163, 0
  br i1 %cmp117.not.i.i, label %if.end128.i.i, label %do.body120.i.i

do.body120.i.i:                                   ; preds = %if.end113.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @dpaa2_switch_flower_parse_key.__msg.13) #5
  %tobool122.not.i.i = icmp eq ptr %21, null
  br i1 %tobool122.not.i.i, label %do.body120.i.i.cleanup.i.i_crit_edge, label %do.body120.i.i.cleanup.sink.split.i.i_crit_edge

do.body120.i.i.cleanup.sink.split.i.i_crit_edge:  ; preds = %do.body120.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i.i

do.body120.i.i.cleanup.i.i_crit_edge:             ; preds = %do.body120.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i.i

if.end128.i.i:                                    ; preds = %if.end113.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %164 = ptrtoint ptr %match100.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %match100.i.i, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %165, align 1
  %168 = lshr i8 %167, 2
  %l3_dscp.i.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 6
  %169 = ptrtoint ptr %l3_dscp.i.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %168, ptr %l3_dscp.i.i, align 4
  %170 = ptrtoint ptr %158 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %158, align 1
  %172 = lshr i8 %171, 2
  %l3_dscp138.i.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 4, i32 1, i32 6
  %173 = ptrtoint ptr %l3_dscp138.i.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %172, ptr %l3_dscp138.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match100.i.i) #5
  br label %if.end13.i

cleanup.sink.split.i.i:                           ; preds = %do.body120.i.i.cleanup.sink.split.i.i_crit_edge, %do.body105.i.i.cleanup.sink.split.i.i_crit_edge
  %dpaa2_switch_flower_parse_key.__msg.13.sink.i.i = phi ptr [ @dpaa2_switch_flower_parse_key.__msg.12, %do.body105.i.i.cleanup.sink.split.i.i_crit_edge ], [ @dpaa2_switch_flower_parse_key.__msg.13, %do.body120.i.i.cleanup.sink.split.i.i_crit_edge ]
  %174 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %dpaa2_switch_flower_parse_key.__msg.13.sink.i.i, ptr %21, align 4
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %cleanup.sink.split.i.i, %do.body120.i.i.cleanup.i.i_crit_edge, %do.body105.i.i.cleanup.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match100.i.i) #5
  br label %free_acl_entry.i

if.end13.i:                                       ; preds = %if.end128.i.i, %if.end97.i.i.if.end13.i_crit_edge
  %result.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %175 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %entries, align 8
  %177 = zext i32 %176 to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %176, label %do.body8.i.i [
    i32 2, label %if.end13.i.if.end17.i_crit_edge
    i32 4, label %sw.bb1.i.i
    i32 1, label %sw.bb6.i.i
  ]

if.end13.i.if.end17.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

sw.bb1.i.i:                                       ; preds = %if.end13.i
  %178 = getelementptr inbounds %struct.flow_rule, ptr %1, i32 2
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %178, align 8
  %call.i.i = call zeroext i1 @dpaa2_switch_port_dev_check(ptr noundef %180) #5
  br i1 %call.i.i, label %if.end3.i.i, label %do.body.i48.i

do.body.i48.i:                                    ; preds = %sw.bb1.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @dpaa2_switch_tc_parse_action_acl.__msg) #5
  %tobool.not.i47.i = icmp eq ptr %3, null
  br i1 %tobool.not.i47.i, label %do.body.i48.i.free_acl_entry.i_crit_edge, label %if.then2.i.i

do.body.i48.i.free_acl_entry.i_crit_edge:         ; preds = %do.body.i48.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_acl_entry.i

if.then2.i.i:                                     ; preds = %do.body.i48.i
  call void @__sanitizer_cov_trace_pc() #7
  %181 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr @dpaa2_switch_tc_parse_action_acl.__msg, ptr %3, align 4
  br label %free_acl_entry.i

if.end3.i.i:                                      ; preds = %sw.bb1.i.i
  %182 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %178, align 8
  %num_ifs.i.i.i = getelementptr inbounds %struct.ethsw_core, ptr %11, i32 0, i32 3, i32 8
  %184 = ptrtoint ptr %num_ifs.i.i.i to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %num_ifs.i.i.i, align 2
  %conv.i.i.i = zext i16 %185 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %185)
  %cmp13.not.i.i.i = icmp eq i16 %185, 0
  br i1 %cmp13.not.i.i.i, label %if.end3.i.i.dpaa2_switch_get_index.exit.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end3.i.i.dpaa2_switch_get_index.exit.i.i_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpaa2_switch_get_index.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end3.i.i
  %ports.i.i.i = getelementptr inbounds %struct.ethsw_core, ptr %11, i32 0, i32 8
  %186 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %ports.i.i.i, align 4
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.014.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.dpaa2_switch_get_index.exit.i.i_crit_edge, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

for.cond.i.i.i.dpaa2_switch_get_index.exit.i.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpaa2_switch_get_index.exit.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.014.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr ptr, ptr %187, i32 %i.014.i.i.i
  %188 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %arrayidx.i.i.i, align 4
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %189, align 4
  %cmp3.i.i.i = icmp eq ptr %191, %183
  br i1 %cmp3.i.i.i, label %if.then.i.i.i, label %for.cond.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %idx.i.i.i = getelementptr inbounds %struct.ethsw_port_priv, ptr %189, i32 0, i32 1
  %192 = ptrtoint ptr %idx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %idx.i.i.i, align 4
  br label %dpaa2_switch_get_index.exit.i.i

dpaa2_switch_get_index.exit.i.i:                  ; preds = %if.then.i.i.i, %for.cond.i.i.i.dpaa2_switch_get_index.exit.i.i_crit_edge, %if.end3.i.i.dpaa2_switch_get_index.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i16 [ %193, %if.then.i.i.i ], [ -22, %if.end3.i.i.dpaa2_switch_get_index.exit.i.i_crit_edge ], [ -22, %for.cond.i.i.i.dpaa2_switch_get_index.exit.i.i_crit_edge ]
  %if_id.i.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 1, i32 1
  %194 = ptrtoint ptr %if_id.i.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %retval.0.i.i.i, ptr %if_id.i.i, align 4
  br label %if.end17.i

sw.bb6.i.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

do.body8.i.i:                                     ; preds = %if.end13.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @dpaa2_switch_tc_parse_action_acl.__msg.14) #5
  %tobool10.not.i.i = icmp eq ptr %3, null
  br i1 %tobool10.not.i.i, label %do.body8.i.i.free_acl_entry.i_crit_edge, label %if.then11.i.i

do.body8.i.i.free_acl_entry.i_crit_edge:          ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_acl_entry.i

if.then11.i.i:                                    ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %195 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr @dpaa2_switch_tc_parse_action_acl.__msg.14, ptr %3, align 4
  br label %free_acl_entry.i

if.end17.i:                                       ; preds = %sw.bb6.i.i, %dpaa2_switch_get_index.exit.i.i, %if.end13.i.if.end17.i_crit_edge
  %.sink.i = phi i32 [ 0, %sw.bb6.i.i ], [ 1, %dpaa2_switch_get_index.exit.i.i ], [ 3, %if.end13.i.if.end17.i_crit_edge ]
  %196 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %.sink.i, ptr %result.i, align 8
  %prio.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls, i32 0, i32 2
  %197 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %prio.i, align 8
  %conv.i = trunc i32 %198 to i16
  %prio19.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 1
  %199 = ptrtoint ptr %prio19.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 %conv.i, ptr %prio19.i, align 8
  %cookie.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 2
  %200 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %cookie.i, align 4
  %cookie20.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 2
  %202 = ptrtoint ptr %cookie20.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %201, ptr %cookie20.i, align 4
  %call21.i = call fastcc i32 @dpaa2_switch_acl_tbl_add_entry(ptr noundef %block, ptr noundef nonnull %call7.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end17.i.cleanup_crit_edge, label %if.end17.i.free_acl_entry.i_crit_edge

if.end17.i.free_acl_entry.i_crit_edge:            ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_acl_entry.i

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

free_acl_entry.i:                                 ; preds = %if.end17.i.free_acl_entry.i_crit_edge, %if.then11.i.i, %do.body8.i.i.free_acl_entry.i_crit_edge, %if.then2.i.i, %do.body.i48.i.free_acl_entry.i_crit_edge, %cleanup.i.i, %if.then4.i.i, %do.body.i.i.free_acl_entry.i_crit_edge
  %err.0.i = phi i32 [ %call21.i, %if.end17.i.free_acl_entry.i_crit_edge ], [ -95, %cleanup.i.i ], [ -95, %if.then4.i.i ], [ -95, %do.body.i.i.free_acl_entry.i_crit_edge ], [ -95, %if.then2.i.i ], [ -95, %do.body.i48.i.free_acl_entry.i_crit_edge ], [ -95, %if.then11.i.i ], [ -95, %do.body8.i.i.free_acl_entry.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  br label %cleanup

sw.bb7:                                           ; preds = %if.end4
  %203 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %block, align 8
  %mirror_port.i = getelementptr inbounds %struct.ethsw_core, ptr %204, i32 0, i32 19
  %205 = ptrtoint ptr %mirror_port.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %mirror_port.i, align 8
  %num_ifs.i = getelementptr inbounds %struct.ethsw_core, ptr %204, i32 0, i32 3, i32 8
  %207 = ptrtoint ptr %num_ifs.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %num_ifs.i, align 2
  %209 = getelementptr inbounds %struct.flow_rule, ptr %1, i32 2
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %209, align 8
  %call.i = tail call zeroext i1 @dpaa2_switch_port_dev_check(ptr noundef %211) #5
  br i1 %call.i, label %if.end6.i, label %do.body.i30

do.body.i30:                                      ; preds = %sw.bb7
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dpaa2_switch_cls_flower_replace_mirror.__msg) #5
  %tobool.not.i29 = icmp eq ptr %3, null
  br i1 %tobool.not.i29, label %do.body.i30.cleanup_crit_edge, label %if.then5.i

do.body.i30.cleanup_crit_edge:                    ; preds = %do.body.i30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5.i:                                       ; preds = %do.body.i30
  call void @__sanitizer_cov_trace_pc() #7
  %212 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr @dpaa2_switch_cls_flower_replace_mirror.__msg, ptr %3, align 4
  br label %cleanup

if.end6.i:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_cmp2(i16 %206, i16 %208)
  %cmp.not.i = icmp eq i16 %206, %208
  %213 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %209, align 8
  %215 = ptrtoint ptr %num_ifs.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %num_ifs.i, align 2
  %conv.i.i = zext i16 %216 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %216)
  %cmp13.not.i.i = icmp eq i16 %216, 0
  br i1 %cmp13.not.i.i, label %if.end6.i.dpaa2_switch_get_index.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end6.i.dpaa2_switch_get_index.exit.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpaa2_switch_get_index.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end6.i
  %ports.i.i = getelementptr inbounds %struct.ethsw_core, ptr %204, i32 0, i32 8
  %217 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %ports.i.i, align 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.014.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.dpaa2_switch_get_index.exit.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.cond.i.i.dpaa2_switch_get_index.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpaa2_switch_get_index.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.014.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %218, i32 %i.014.i.i
  %219 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %arrayidx.i.i, align 4
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %220, align 4
  %cmp3.i.i = icmp eq ptr %222, %214
  br i1 %cmp3.i.i, label %if.then.i.i, label %for.cond.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %idx.i.i = getelementptr inbounds %struct.ethsw_port_priv, ptr %220, i32 0, i32 1
  %223 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %idx.i.i, align 4
  br label %dpaa2_switch_get_index.exit.i

dpaa2_switch_get_index.exit.i:                    ; preds = %if.then.i.i, %for.cond.i.i.dpaa2_switch_get_index.exit.i_crit_edge, %if.end6.i.dpaa2_switch_get_index.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ %224, %if.then.i.i ], [ -22, %if.end6.i.dpaa2_switch_get_index.exit.i_crit_edge ], [ -22, %for.cond.i.i.dpaa2_switch_get_index.exit.i_crit_edge ]
  br i1 %cmp.not.i, label %dpaa2_switch_get_index.exit.i.if.end25.i_crit_edge, label %land.lhs.true.i

dpaa2_switch_get_index.exit.i.if.end25.i_crit_edge: ; preds = %dpaa2_switch_get_index.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.i

land.lhs.true.i:                                  ; preds = %dpaa2_switch_get_index.exit.i
  %225 = ptrtoint ptr %mirror_port.i to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %mirror_port.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %226, i16 %retval.0.i.i)
  %cmp14.not.i = icmp eq i16 %226, %retval.0.i.i
  br i1 %cmp14.not.i, label %land.lhs.true.i.if.end25.i_crit_edge, label %do.body17.i

land.lhs.true.i.if.end25.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.i

do.body17.i:                                      ; preds = %land.lhs.true.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dpaa2_switch_cls_flower_replace_mirror.__msg.19) #5
  %tobool19.not.i = icmp eq ptr %3, null
  br i1 %tobool19.not.i, label %do.body17.i.cleanup_crit_edge, label %if.then20.i

do.body17.i.cleanup_crit_edge:                    ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then20.i:                                      ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #7
  %227 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr @dpaa2_switch_cls_flower_replace_mirror.__msg.19, ptr %3, align 4
  br label %cleanup

if.end25.i:                                       ; preds = %land.lhs.true.i.if.end25.i_crit_edge, %dpaa2_switch_get_index.exit.i.if.end25.i_crit_edge
  %228 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %rule.i, align 8
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %229, align 8
  %232 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %extack1, align 4
  %234 = ptrtoint ptr %231 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %231, align 4
  %and.i.i31 = and i32 %235, -1028
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i31)
  %tobool.not.i.i32 = icmp eq i32 %and.i.i31, 0
  br i1 %tobool.not.i.i32, label %if.end5.i.i38, label %do.body.i.i34

do.body.i.i34:                                    ; preds = %if.end25.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dpaa2_switch_flower_parse_mirror_key.__msg) #5
  %tobool3.not.i.i33 = icmp eq ptr %233, null
  br i1 %tobool3.not.i.i33, label %do.body.i.i34.cleanup_crit_edge, label %if.then4.i.i35

do.body.i.i34.cleanup_crit_edge:                  ; preds = %do.body.i.i34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4.i.i35:                                   ; preds = %do.body.i.i34
  call void @__sanitizer_cov_trace_pc() #7
  %236 = ptrtoint ptr %233 to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr @dpaa2_switch_flower_parse_mirror_key.__msg, ptr %233, align 4
  br label %cleanup

if.end5.i.i38:                                    ; preds = %if.end25.i
  %and.i.i.i.i36 = and i32 %235, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i36)
  %tobool.i.i.not.i.i37 = icmp eq i32 %and.i.i.i.i36, 0
  br i1 %tobool.i.i.not.i.i37, label %if.end5.i.i38.cleanup_crit_edge, label %if.then7.i.i

if.end5.i.i38.cleanup_crit_edge:                  ; preds = %if.end5.i.i38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7.i.i:                                     ; preds = %if.end5.i.i38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match8.i.i) #5
  %237 = ptrtoint ptr %match8.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr inttoptr (i32 -1 to ptr), ptr %match8.i.i, align 4, !annotation !76
  %238 = getelementptr inbounds %struct.flow_match_vlan, ptr %match8.i.i, i32 0, i32 1
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr inttoptr (i32 -1 to ptr), ptr %238, align 4, !annotation !76
  call void @flow_rule_match_vlan(ptr noundef %229, ptr noundef nonnull %match8.i.i) #5
  %240 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %238, align 4
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_load2_noabort(i32 %242)
  %bf.load.i.i39 = load i16, ptr %241, align 2
  %243 = and i16 %bf.load.i.i39, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %243)
  %244 = icmp eq i16 %243, 0
  br i1 %244, label %if.end25.i.i, label %do.body17.i.i

do.body17.i.i:                                    ; preds = %if.then7.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @dpaa2_switch_flower_parse_mirror_key.__msg.21) #5
  %tobool19.not.i.i = icmp eq ptr %233, null
  br i1 %tobool19.not.i.i, label %do.body17.i.i.cleanup.thread.i.i_crit_edge, label %do.body17.i.i.cleanup.thread.sink.split.i.i_crit_edge

do.body17.i.i.cleanup.thread.sink.split.i.i_crit_edge: ; preds = %do.body17.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.sink.split.i.i

do.body17.i.i.cleanup.thread.i.i_crit_edge:       ; preds = %do.body17.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.i.i

if.end25.i.i:                                     ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -17, i16 %bf.load.i.i39)
  %cmp30.not.i.i = icmp ugt i16 %bf.load.i.i39, -17
  br i1 %cmp30.not.i.i, label %if.end29.i, label %do.body33.i.i

do.body33.i.i:                                    ; preds = %if.end25.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @dpaa2_switch_flower_parse_mirror_key.__msg.22) #5
  %tobool35.not.i.i = icmp eq ptr %233, null
  br i1 %tobool35.not.i.i, label %do.body33.i.i.cleanup.thread.i.i_crit_edge, label %do.body33.i.i.cleanup.thread.sink.split.i.i_crit_edge

do.body33.i.i.cleanup.thread.sink.split.i.i_crit_edge: ; preds = %do.body33.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.sink.split.i.i

do.body33.i.i.cleanup.thread.i.i_crit_edge:       ; preds = %do.body33.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.i.i

cleanup.thread.sink.split.i.i:                    ; preds = %do.body33.i.i.cleanup.thread.sink.split.i.i_crit_edge, %do.body17.i.i.cleanup.thread.sink.split.i.i_crit_edge
  %dpaa2_switch_flower_parse_mirror_key.__msg.21.sink.i.i = phi ptr [ @dpaa2_switch_flower_parse_mirror_key.__msg.21, %do.body17.i.i.cleanup.thread.sink.split.i.i_crit_edge ], [ @dpaa2_switch_flower_parse_mirror_key.__msg.22, %do.body33.i.i.cleanup.thread.sink.split.i.i_crit_edge ]
  %245 = ptrtoint ptr %233 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %dpaa2_switch_flower_parse_mirror_key.__msg.21.sink.i.i, ptr %233, align 4
  br label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %cleanup.thread.sink.split.i.i, %do.body33.i.i.cleanup.thread.i.i_crit_edge, %do.body17.i.i.cleanup.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match8.i.i) #5
  br label %cleanup

if.end29.i:                                       ; preds = %if.end25.i.i
  %246 = ptrtoint ptr %match8.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %match8.i.i, align 4
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_load2_noabort(i32 %248)
  %bf.load42.i.i40 = load i16, ptr %247, align 2
  %bf.lshr43.i.i = lshr i16 %bf.load42.i.i40, 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match8.i.i) #5
  %mirror_entries.i = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %block, i32 0, i32 6
  %249 = ptrtoint ptr %mirror_entries.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %mirror_entries.i, align 8
  %cmp.i.not107.i = icmp eq ptr %250, %mirror_entries.i
  br i1 %cmp.i.not107.i, label %if.end29.i.for.end.i_crit_edge, label %if.end29.i.for.body.i_crit_edge

if.end29.i.for.body.i_crit_edge:                  ; preds = %if.end29.i
  br label %for.body.i

if.end29.i.for.end.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end29.i.for.body.i_crit_edge
  %pos.0108.i = phi ptr [ %n.0109.i, %for.inc.i.for.body.i_crit_edge ], [ %250, %if.end29.i.for.body.i_crit_edge ]
  %251 = ptrtoint ptr %pos.0108.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %n.0109.i = load ptr, ptr %pos.0108.i, align 4
  %cfg.i = getelementptr inbounds %struct.dpaa2_switch_mirror_entry, ptr %pos.0108.i, i32 0, i32 1
  %252 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %cfg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %253)
  %cmp35.i = icmp eq i32 %253, 1
  br i1 %cmp35.i, label %land.lhs.true37.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true37.i:                                ; preds = %for.body.i
  %vlan_id.i = getelementptr inbounds %struct.dpaa2_switch_mirror_entry, ptr %pos.0108.i, i32 0, i32 1, i32 1
  %254 = ptrtoint ptr %vlan_id.i to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %vlan_id.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %255, i16 %bf.lshr43.i.i)
  %cmp41.i = icmp eq i16 %255, %bf.lshr43.i.i
  br i1 %cmp41.i, label %do.body44.i, label %land.lhs.true37.i.for.inc.i_crit_edge

land.lhs.true37.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

do.body44.i:                                      ; preds = %land.lhs.true37.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @dpaa2_switch_cls_flower_replace_mirror.__msg.20) #5
  %tobool46.not.i = icmp eq ptr %3, null
  br i1 %tobool46.not.i, label %do.body44.i.cleanup_crit_edge, label %if.then47.i

do.body44.i.cleanup_crit_edge:                    ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then47.i:                                      ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #7
  %256 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr @dpaa2_switch_cls_flower_replace_mirror.__msg.20, ptr %3, align 4
  br label %cleanup

for.inc.i:                                        ; preds = %land.lhs.true37.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.i.not.i = icmp eq ptr %n.0109.i, %mirror_entries.i
  br i1 %cmp.i.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end29.i.for.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %257 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i41 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %257, i32 noundef 3520, i32 noundef 24) #8
  %tobool55.not.i = icmp eq ptr %call7.i.i.i41, null
  br i1 %tobool55.not.i, label %for.end.i.cleanup_crit_edge, label %if.end57.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end57.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %cfg58.i = getelementptr inbounds %struct.dpaa2_switch_mirror_entry, ptr %call7.i.i.i41, i32 0, i32 1
  %258 = ptrtoint ptr %cfg58.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 1, ptr %cfg58.i, align 8
  %vlan_id61.i = getelementptr inbounds %struct.dpaa2_switch_mirror_entry, ptr %call7.i.i.i41, i32 0, i32 1, i32 1
  %259 = ptrtoint ptr %vlan_id61.i to i32
  call void @__asan_store2_noabort(i32 %259)
  store i16 %bf.lshr43.i.i, ptr %vlan_id61.i, align 4
  %cookie.i42 = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 2
  %260 = ptrtoint ptr %cookie.i42 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %cookie.i42, align 4
  %cookie62.i = getelementptr inbounds %struct.dpaa2_switch_mirror_entry, ptr %call7.i.i.i41, i32 0, i32 2
  %262 = ptrtoint ptr %cookie62.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %261, ptr %cookie62.i, align 8
  %call63.i = call fastcc i32 @dpaa2_switch_block_add_mirror(ptr noundef %block, ptr noundef nonnull %call7.i.i.i41, i16 noundef zeroext %retval.0.i.i, ptr noundef %3) #5
  br label %cleanup

do.body9:                                         ; preds = %if.end4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dpaa2_switch_cls_flower_replace.__msg.8) #5
  %tobool11.not = icmp eq ptr %3, null
  br i1 %tobool11.not, label %do.body9.cleanup_crit_edge, label %if.then12

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then12:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  %263 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr @dpaa2_switch_cls_flower_replace.__msg.8, ptr %3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %do.body9.cleanup_crit_edge, %if.end57.i, %for.end.i.cleanup_crit_edge, %if.then47.i, %do.body44.i.cleanup_crit_edge, %cleanup.thread.i.i, %if.end5.i.i38.cleanup_crit_edge, %if.then4.i.i35, %do.body.i.i34.cleanup_crit_edge, %if.then20.i, %do.body17.i.cleanup_crit_edge, %if.then5.i, %do.body.i30.cleanup_crit_edge, %free_acl_entry.i, %if.end17.i.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %if.then4.i, %do.body.i.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then3 ], [ -95, %do.body.cleanup_crit_edge ], [ -95, %if.then12 ], [ -95, %do.body9.cleanup_crit_edge ], [ %err.0.i, %free_acl_entry.i ], [ -12, %if.then4.i ], [ -12, %do.body.i.cleanup_crit_edge ], [ -12, %if.end5.i.cleanup_crit_edge ], [ 0, %if.end17.i.cleanup_crit_edge ], [ %call63.i, %if.end57.i ], [ -95, %if.then5.i ], [ -95, %do.body.i30.cleanup_crit_edge ], [ -16, %if.then20.i ], [ -16, %do.body17.i.cleanup_crit_edge ], [ -16, %if.then47.i ], [ -16, %do.body44.i.cleanup_crit_edge ], [ -12, %for.end.i.cleanup_crit_edge ], [ -95, %if.then4.i.i35 ], [ -95, %do.body.i.i34.cleanup_crit_edge ], [ -95, %cleanup.thread.i.i ], [ -95, %if.end5.i.i38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpaa2_switch_cls_flower_destroy(ptr noundef %block, ptr nocapture noundef readonly %cls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 2
  %0 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie, align 4
  %acl_entries.i = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %block, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %tmp.0.in.i = phi ptr [ %acl_entries.i, %entry ], [ %tmp.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %tmp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0.i = load ptr, ptr %tmp.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %tmp.0.i, %acl_entries.i
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %cookie8.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %tmp.0.i, i32 0, i32 2
  %3 = ptrtoint ptr %cookie8.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cookie8.i, align 4
  %cmp9.i = icmp eq i32 %4, %1
  br i1 %cmp9.i, label %dpaa2_switch_acl_tbl_find_entry_by_cookie.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

dpaa2_switch_acl_tbl_find_entry_by_cookie.exit:   ; preds = %for.body.i
  %tobool.not = icmp eq ptr %tmp.0.i, null
  br i1 %tobool.not, label %dpaa2_switch_acl_tbl_find_entry_by_cookie.exit.if.end_crit_edge, label %if.then

dpaa2_switch_acl_tbl_find_entry_by_cookie.exit.if.end_crit_edge: ; preds = %dpaa2_switch_acl_tbl_find_entry_by_cookie.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %dpaa2_switch_acl_tbl_find_entry_by_cookie.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call fastcc i32 @dpaa2_switch_acl_tbl_remove_entry(ptr noundef %block, ptr noundef nonnull %tmp.0.i)
  br label %cleanup

if.end:                                           ; preds = %dpaa2_switch_acl_tbl_find_entry_by_cookie.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  %mirror_entries.i = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %block, i32 0, i32 6
  br label %for.cond.i18

for.cond.i18:                                     ; preds = %for.body.i21.for.cond.i18_crit_edge, %if.end
  %tmp.0.in.i15 = phi ptr [ %mirror_entries.i, %if.end ], [ %tmp.0.i16, %for.body.i21.for.cond.i18_crit_edge ]
  %5 = ptrtoint ptr %tmp.0.in.i15 to i32
  call void @__asan_load4_noabort(i32 %5)
  %tmp.0.i16 = load ptr, ptr %tmp.0.in.i15, align 4
  %cmp.not.i17 = icmp eq ptr %tmp.0.i16, %mirror_entries.i
  br i1 %cmp.not.i17, label %for.cond.i18.cleanup_crit_edge, label %for.body.i21

for.cond.i18.cleanup_crit_edge:                   ; preds = %for.cond.i18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i21:                                     ; preds = %for.cond.i18
  %cookie8.i19 = getelementptr inbounds %struct.dpaa2_switch_mirror_entry, ptr %tmp.0.i16, i32 0, i32 2
  %6 = ptrtoint ptr %cookie8.i19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cookie8.i19, align 4
  %cmp9.i20 = icmp eq i32 %7, %1
  br i1 %cmp9.i20, label %dpaa2_switch_mirror_find_entry_by_cookie.exit, label %for.body.i21.for.cond.i18_crit_edge

for.body.i21.for.cond.i18_crit_edge:              ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i18

dpaa2_switch_mirror_find_entry_by_cookie.exit:    ; preds = %for.body.i21
  %tobool4.not = icmp eq ptr %tmp.0.i16, null
  br i1 %tobool4.not, label %dpaa2_switch_mirror_find_entry_by_cookie.exit.cleanup_crit_edge, label %if.then5

dpaa2_switch_mirror_find_entry_by_cookie.exit.cleanup_crit_edge: ; preds = %dpaa2_switch_mirror_find_entry_by_cookie.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5:                                         ; preds = %dpaa2_switch_mirror_find_entry_by_cookie.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dpaa2_switch_block_remove_mirror(ptr noundef %block, ptr noundef nonnull %tmp.0.i16)
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %dpaa2_switch_mirror_find_entry_by_cookie.exit.cleanup_crit_edge, %for.cond.i18.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %if.then5 ], [ 0, %dpaa2_switch_mirror_find_entry_by_cookie.exit.cleanup_crit_edge ], [ 0, %for.cond.i18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dpaa2_switch_acl_tbl_remove_entry(ptr noundef %block, ptr noundef %entry1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %acl_entries.i = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %block, i32 0, i32 3
  %0 = ptrtoint ptr %acl_entries.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acl_entries.i, align 4
  %cmp.not24.i = icmp eq ptr %1, %acl_entries.i
  br i1 %cmp.not24.i, label %entry.dpaa2_switch_acl_entry_get_index.exit_crit_edge, label %for.body.lr.ph.i

entry.dpaa2_switch_acl_entry_get_index.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpaa2_switch_acl_entry_get_index.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %cookie9.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %entry1, i32 0, i32 2
  %2 = ptrtoint ptr %cookie9.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cookie9.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %tmp.026.i = phi ptr [ %1, %for.body.lr.ph.i ], [ %n.027.i, %if.end.i.for.body.i_crit_edge ]
  %index.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %cookie.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %tmp.026.i, i32 0, i32 2
  %4 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cookie.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp10.i = icmp eq i32 %5, %3
  br i1 %cmp10.i, label %for.body.i.dpaa2_switch_acl_entry_get_index.exit_crit_edge, label %if.end.i

for.body.i.dpaa2_switch_acl_entry_get_index.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpaa2_switch_acl_entry_get_index.exit

if.end.i:                                         ; preds = %for.body.i
  %6 = ptrtoint ptr %tmp.026.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %n.027.i = load ptr, ptr %tmp.026.i, align 8
  %inc.i = add i32 %index.025.i, 1
  %cmp.not.i = icmp eq ptr %n.027.i, %acl_entries.i
  br i1 %cmp.not.i, label %if.end.i.dpaa2_switch_acl_entry_get_index.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end.i.dpaa2_switch_acl_entry_get_index.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpaa2_switch_acl_entry_get_index.exit

dpaa2_switch_acl_entry_get_index.exit:            ; preds = %if.end.i.dpaa2_switch_acl_entry_get_index.exit_crit_edge, %for.body.i.dpaa2_switch_acl_entry_get_index.exit_crit_edge, %entry.dpaa2_switch_acl_entry_get_index.exit_crit_edge
  %retval.0.i = phi i32 [ -2, %entry.dpaa2_switch_acl_entry_get_index.exit_crit_edge ], [ %index.025.i, %for.body.i.dpaa2_switch_acl_entry_get_index.exit_crit_edge ], [ -2, %if.end.i.dpaa2_switch_acl_entry_get_index.exit_crit_edge ]
  %call2 = tail call fastcc i32 @dpaa2_switch_acl_entry_remove(ptr noundef %block, ptr noundef %entry1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %dpaa2_switch_acl_entry_get_index.exit.cleanup_crit_edge

dpaa2_switch_acl_entry_get_index.exit.cleanup_crit_edge: ; preds = %dpaa2_switch_acl_entry_get_index.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %dpaa2_switch_acl_entry_get_index.exit
  %num_acl_rules = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %block, i32 0, i32 5
  %7 = ptrtoint ptr %num_acl_rules to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_acl_rules, align 2
  %dec = add i8 %8, -1
  store i8 %dec, ptr %num_acl_rules, align 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %entry1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %15 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry1, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %i.038 = add i32 %retval.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.038)
  %cmp39 = icmp sgt i32 %i.038, -1
  br i1 %cmp39, label %for.body.preheader, label %list_del.exit.for.end_crit_edge

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.preheader:                               ; preds = %list_del.exit
  %precedence3 = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %entry1, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %precedence3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %precedence3, align 8
  br label %for.body

for.cond:                                         ; preds = %dpaa2_switch_acl_entry_set_precedence.exit
  %dec9 = add i32 %precedence.040, -1
  %i.0 = add i32 %i.041, -1
  %cmp = icmp sgt i32 %i.0, -1
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.041 = phi i32 [ %i.0, %for.cond.for.body_crit_edge ], [ %i.038, %for.body.preheader ]
  %precedence.040 = phi i32 [ %dec9, %for.cond.for.body_crit_edge ], [ %18, %for.body.preheader ]
  %19 = ptrtoint ptr %acl_entries.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %tmp.014.i = load ptr, ptr %acl_entries.i, align 4
  %cmp.not15.i = icmp eq ptr %tmp.014.i, %acl_entries.i
  br i1 %cmp.not15.i, label %for.body.dpaa2_switch_acl_entry_get_by_index.exit_crit_edge, label %for.body.for.body.i32_crit_edge

for.body.for.body.i32_crit_edge:                  ; preds = %for.body
  br label %for.body.i32

for.body.dpaa2_switch_acl_entry_get_by_index.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpaa2_switch_acl_entry_get_by_index.exit

for.cond.i:                                       ; preds = %for.body.i32
  %inc.i30 = add i32 %i.016.i, 1
  %20 = ptrtoint ptr %tmp.017.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %tmp.0.i = load ptr, ptr %tmp.017.i, align 4
  %cmp.not.i31 = icmp eq ptr %tmp.0.i, %acl_entries.i
  br i1 %cmp.not.i31, label %for.cond.i.dpaa2_switch_acl_entry_get_by_index.exit_crit_edge, label %for.cond.i.for.body.i32_crit_edge

for.cond.i.for.body.i32_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i32

for.cond.i.dpaa2_switch_acl_entry_get_by_index.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpaa2_switch_acl_entry_get_by_index.exit

for.body.i32:                                     ; preds = %for.cond.i.for.body.i32_crit_edge, %for.body.for.body.i32_crit_edge
  %tmp.017.i = phi ptr [ %tmp.0.i, %for.cond.i.for.body.i32_crit_edge ], [ %tmp.014.i, %for.body.for.body.i32_crit_edge ]
  %i.016.i = phi i32 [ %inc.i30, %for.cond.i.for.body.i32_crit_edge ], [ 0, %for.body.for.body.i32_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.016.i, i32 %i.041)
  %cmp3.i = icmp eq i32 %i.016.i, %i.041
  br i1 %cmp3.i, label %for.body.i32.dpaa2_switch_acl_entry_get_by_index.exit_crit_edge, label %for.cond.i

for.body.i32.dpaa2_switch_acl_entry_get_by_index.exit_crit_edge: ; preds = %for.body.i32
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpaa2_switch_acl_entry_get_by_index.exit

dpaa2_switch_acl_entry_get_by_index.exit:         ; preds = %for.body.i32.dpaa2_switch_acl_entry_get_by_index.exit_crit_edge, %for.cond.i.dpaa2_switch_acl_entry_get_by_index.exit_crit_edge, %for.body.dpaa2_switch_acl_entry_get_by_index.exit_crit_edge
  %retval.0.i33 = phi ptr [ null, %for.body.dpaa2_switch_acl_entry_get_by_index.exit_crit_edge ], [ %tmp.017.i, %for.body.i32.dpaa2_switch_acl_entry_get_by_index.exit_crit_edge ], [ null, %for.cond.i.dpaa2_switch_acl_entry_get_by_index.exit_crit_edge ]
  %call.i = tail call fastcc i32 @dpaa2_switch_acl_entry_remove(ptr noundef %block, ptr noundef %retval.0.i33) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %dpaa2_switch_acl_entry_set_precedence.exit, label %dpaa2_switch_acl_entry_get_by_index.exit.cleanup_crit_edge

dpaa2_switch_acl_entry_get_by_index.exit.cleanup_crit_edge: ; preds = %dpaa2_switch_acl_entry_get_by_index.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

dpaa2_switch_acl_entry_set_precedence.exit:       ; preds = %dpaa2_switch_acl_entry_get_by_index.exit
  %precedence2.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %retval.0.i33, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %precedence2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %precedence.040, ptr %precedence2.i, align 8
  %call3.i = tail call i32 @dpaa2_switch_acl_entry_add(ptr noundef %block, ptr noundef %retval.0.i33) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool6.not = icmp eq i32 %call3.i, 0
  br i1 %tobool6.not, label %for.cond, label %dpaa2_switch_acl_entry_set_precedence.exit.cleanup_crit_edge

dpaa2_switch_acl_entry_set_precedence.exit.cleanup_crit_edge: ; preds = %dpaa2_switch_acl_entry_set_precedence.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %list_del.exit.for.end_crit_edge
  tail call void @kfree(ptr noundef %entry1) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %dpaa2_switch_acl_entry_set_precedence.exit.cleanup_crit_edge, %dpaa2_switch_acl_entry_get_by_index.exit.cleanup_crit_edge, %dpaa2_switch_acl_entry_get_index.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call2, %dpaa2_switch_acl_entry_get_index.exit.cleanup_crit_edge ], [ %call.i, %dpaa2_switch_acl_entry_get_by_index.exit.cleanup_crit_edge ], [ %call3.i, %dpaa2_switch_acl_entry_set_precedence.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dpaa2_switch_block_remove_mirror(ptr noundef %block, ptr noundef %entry1) unnamed_addr #0 align 64 {
entry:
  %block_ports = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg2 = getelementptr inbounds %struct.dpaa2_switch_mirror_entry, ptr %entry1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %block_ports) #5
  %ports = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %block, i32 0, i32 1
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ports, align 8
  %conv = trunc i64 %1 to i32
  %2 = ptrtoint ptr %block_ports to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %block_ports, align 4
  %3 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %block, align 8
  %num_ifs = getelementptr inbounds %struct.ethsw_core, ptr %4, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %num_ifs to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_ifs, align 2
  %conv4 = zext i16 %6 to i32
  %call = call i32 @_find_next_bit_be(ptr noundef nonnull %block_ports, i32 noundef %conv4, i32 noundef 0) #5
  %7 = ptrtoint ptr %num_ifs to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_ifs, align 2
  %conv71 = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv71)
  %cmp2 = icmp slt i32 %call, %conv71
  br i1 %cmp2, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mc_io = getelementptr inbounds %struct.ethsw_core, ptr %4, i32 0, i32 1
  %dpsw_handle = getelementptr inbounds %struct.ethsw_core, ptr %4, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %port.03 = phi i32 [ %call, %for.body.lr.ph ], [ %call14, %for.body.for.body_crit_edge ]
  %9 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mc_io, align 4
  %11 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %dpsw_handle, align 8
  %conv9 = trunc i32 %port.03 to i16
  %call10 = call i32 @dpsw_if_remove_reflection(ptr noundef %10, i32 noundef 0, i16 noundef zeroext %12, i16 noundef zeroext %conv9, ptr noundef %cfg2) #5
  %13 = ptrtoint ptr %num_ifs to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_ifs, align 2
  %conv13 = zext i16 %14 to i32
  %add = add nsw i32 %port.03, 1
  %call14 = call i32 @_find_next_bit_be(ptr noundef nonnull %block_ports, i32 noundef %conv13, i32 noundef %add) #5
  %15 = ptrtoint ptr %num_ifs to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num_ifs, align 2
  %conv7 = zext i16 %16 to i32
  %cmp = icmp slt i32 %call14, %conv7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_del.exit_crit_edge

for.end.list_del.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry1, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %entry1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.end.list_del.exit_crit_edge
  %23 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry1, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %entry1) #5
  %mirror_entries = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %block, i32 0, i32 6
  %25 = ptrtoint ptr %mirror_entries to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %mirror_entries, align 4
  %cmp.i.not = icmp eq ptr %26, %mirror_entries
  br i1 %cmp.i.not, label %if.then, label %list_del.exit.if.end_crit_edge

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %num_ifs to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %num_ifs, align 2
  %mirror_port = getelementptr inbounds %struct.ethsw_core, ptr %4, i32 0, i32 19
  %29 = ptrtoint ptr %mirror_port to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %mirror_port, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %block_ports) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpaa2_switch_cls_matchall_replace(ptr noundef %block, ptr nocapture noundef readonly %cls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %extack1 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls, i32 0, i32 3
  %0 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extack1, align 4
  %rule = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls, i32 0, i32 2
  %2 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rule, align 4
  %action = getelementptr inbounds %struct.flow_rule, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %action, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  br i1 %cmp.i, label %if.end3, label %do.body

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dpaa2_switch_cls_matchall_replace.__msg) #5
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @dpaa2_switch_cls_matchall_replace.__msg, ptr %1, align 4
  br label %cleanup

if.end3:                                          ; preds = %entry
  %entries = getelementptr inbounds %struct.flow_rule, ptr %3, i32 1
  %7 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %entries, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %8, label %do.body9 [
    i32 4, label %if.end3.sw.bb_crit_edge
    i32 2, label %if.end3.sw.bb_crit_edge51
    i32 1, label %if.end3.sw.bb_crit_edge52
    i32 5, label %sw.bb7
  ]

if.end3.sw.bb_crit_edge52:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end3.sw.bb_crit_edge51:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end3.sw.bb_crit_edge:                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %if.end3.sw.bb_crit_edge, %if.end3.sw.bb_crit_edge51, %if.end3.sw.bb_crit_edge52
  %10 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %block, align 8
  %num_acl_rules.i.i = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %block, i32 0, i32 5
  %12 = ptrtoint ptr %num_acl_rules.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_acl_rules.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %13)
  %cmp.i.i = icmp ugt i8 %13, 14
  br i1 %cmp.i.i, label %do.body.i, label %if.end4.i

do.body.i:                                        ; preds = %sw.bb
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dpaa2_switch_cls_matchall_replace_acl.__msg) #5
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %if.then3.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @dpaa2_switch_cls_matchall_replace_acl.__msg, ptr %1, align 4
  br label %cleanup

if.end4.i:                                        ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 112) #8
  %tobool6.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool6.not.i, label %if.end4.i.cleanup_crit_edge, label %if.end8.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8.i:                                        ; preds = %if.end4.i
  %16 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rule, align 4
  %entries.i = getelementptr inbounds %struct.flow_rule, ptr %17, i32 1
  %result.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %entries.i, align 8
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %19, label %do.body8.i.i [
    i32 2, label %if.end8.i.if.end12.i_crit_edge
    i32 4, label %sw.bb1.i.i
    i32 1, label %sw.bb6.i.i
  ]

if.end8.i.if.end12.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

sw.bb1.i.i:                                       ; preds = %if.end8.i
  %21 = getelementptr inbounds %struct.flow_rule, ptr %17, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %call.i.i = tail call zeroext i1 @dpaa2_switch_port_dev_check(ptr noundef %23) #5
  br i1 %call.i.i, label %if.end3.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %sw.bb1.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dpaa2_switch_tc_parse_action_acl.__msg) #5
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %do.body.i.i.free_acl_entry.i_crit_edge, label %do.body.i.i.free_acl_entry.sink.split.i_crit_edge

do.body.i.i.free_acl_entry.sink.split.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_acl_entry.sink.split.i

do.body.i.i.free_acl_entry.i_crit_edge:           ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_acl_entry.i

if.end3.i.i:                                      ; preds = %sw.bb1.i.i
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 8
  %num_ifs.i.i.i = getelementptr inbounds %struct.ethsw_core, ptr %11, i32 0, i32 3, i32 8
  %26 = ptrtoint ptr %num_ifs.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num_ifs.i.i.i, align 2
  %conv.i.i.i = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp13.not.i.i.i = icmp eq i16 %27, 0
  br i1 %cmp13.not.i.i.i, label %if.end3.i.i.dpaa2_switch_get_index.exit.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end3.i.i.dpaa2_switch_get_index.exit.i.i_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpaa2_switch_get_index.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end3.i.i
  %ports.i.i.i = getelementptr inbounds %struct.ethsw_core, ptr %11, i32 0, i32 8
  %28 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ports.i.i.i, align 4
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.014.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.dpaa2_switch_get_index.exit.i.i_crit_edge, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

for.cond.i.i.i.dpaa2_switch_get_index.exit.i.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpaa2_switch_get_index.exit.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.014.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr ptr, ptr %29, i32 %i.014.i.i.i
  %30 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %cmp3.i.i.i = icmp eq ptr %33, %25
  br i1 %cmp3.i.i.i, label %if.then.i.i.i, label %for.cond.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %idx.i.i.i = getelementptr inbounds %struct.ethsw_port_priv, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %idx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %idx.i.i.i, align 4
  br label %dpaa2_switch_get_index.exit.i.i

dpaa2_switch_get_index.exit.i.i:                  ; preds = %if.then.i.i.i, %for.cond.i.i.i.dpaa2_switch_get_index.exit.i.i_crit_edge, %if.end3.i.i.dpaa2_switch_get_index.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i16 [ %35, %if.then.i.i.i ], [ -22, %if.end3.i.i.dpaa2_switch_get_index.exit.i.i_crit_edge ], [ -22, %for.cond.i.i.i.dpaa2_switch_get_index.exit.i.i_crit_edge ]
  %if_id.i.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 3, i32 1, i32 1
  %36 = ptrtoint ptr %if_id.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %retval.0.i.i.i, ptr %if_id.i.i, align 4
  br label %if.end12.i

sw.bb6.i.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

do.body8.i.i:                                     ; preds = %if.end8.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dpaa2_switch_tc_parse_action_acl.__msg.14) #5
  %tobool10.not.i.i = icmp eq ptr %1, null
  br i1 %tobool10.not.i.i, label %do.body8.i.i.free_acl_entry.i_crit_edge, label %do.body8.i.i.free_acl_entry.sink.split.i_crit_edge

do.body8.i.i.free_acl_entry.sink.split.i_crit_edge: ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_acl_entry.sink.split.i

do.body8.i.i.free_acl_entry.i_crit_edge:          ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_acl_entry.i

if.end12.i:                                       ; preds = %sw.bb6.i.i, %dpaa2_switch_get_index.exit.i.i, %if.end8.i.if.end12.i_crit_edge
  %.sink.i = phi i32 [ 0, %sw.bb6.i.i ], [ 1, %dpaa2_switch_get_index.exit.i.i ], [ 3, %if.end8.i.if.end12.i_crit_edge ]
  %37 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink.i, ptr %result.i, align 8
  %prio.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls, i32 0, i32 2
  %38 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %prio.i, align 8
  %conv.i = trunc i32 %39 to i16
  %prio14.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %prio14.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i, ptr %prio14.i, align 8
  %cookie.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls, i32 0, i32 4
  %41 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cookie.i, align 8
  %cookie15.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %call7.i.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %cookie15.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %cookie15.i, align 4
  %call16.i = tail call fastcc i32 @dpaa2_switch_acl_tbl_add_entry(ptr noundef %block, ptr noundef nonnull %call7.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end12.i.cleanup_crit_edge, label %if.end12.i.free_acl_entry.i_crit_edge

if.end12.i.free_acl_entry.i_crit_edge:            ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_acl_entry.i

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

free_acl_entry.sink.split.i:                      ; preds = %do.body8.i.i.free_acl_entry.sink.split.i_crit_edge, %do.body.i.i.free_acl_entry.sink.split.i_crit_edge
  %dpaa2_switch_tc_parse_action_acl.__msg.14.sink.i = phi ptr [ @dpaa2_switch_tc_parse_action_acl.__msg, %do.body.i.i.free_acl_entry.sink.split.i_crit_edge ], [ @dpaa2_switch_tc_parse_action_acl.__msg.14, %do.body8.i.i.free_acl_entry.sink.split.i_crit_edge ]
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %dpaa2_switch_tc_parse_action_acl.__msg.14.sink.i, ptr %1, align 4
  br label %free_acl_entry.i

free_acl_entry.i:                                 ; preds = %free_acl_entry.sink.split.i, %if.end12.i.free_acl_entry.i_crit_edge, %do.body8.i.i.free_acl_entry.i_crit_edge, %do.body.i.i.free_acl_entry.i_crit_edge
  %err.0.i = phi i32 [ %call16.i, %if.end12.i.free_acl_entry.i_crit_edge ], [ -95, %do.body.i.i.free_acl_entry.i_crit_edge ], [ -95, %do.body8.i.i.free_acl_entry.i_crit_edge ], [ -95, %free_acl_entry.sink.split.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  br label %cleanup

sw.bb7:                                           ; preds = %if.end3
  %45 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %block, align 8
  %mirror_port.i = getelementptr inbounds %struct.ethsw_core, ptr %46, i32 0, i32 19
  %47 = ptrtoint ptr %mirror_port.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %mirror_port.i, align 8
  %num_ifs.i = getelementptr inbounds %struct.ethsw_core, ptr %46, i32 0, i32 3, i32 8
  %49 = ptrtoint ptr %num_ifs.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %num_ifs.i, align 2
  %51 = getelementptr inbounds %struct.flow_rule, ptr %3, i32 2
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 8
  %call.i = tail call zeroext i1 @dpaa2_switch_port_dev_check(ptr noundef %53) #5
  br i1 %call.i, label %if.end6.i, label %do.body.i29

do.body.i29:                                      ; preds = %sw.bb7
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dpaa2_switch_cls_matchall_replace_mirror.__msg) #5
  %tobool.not.i28 = icmp eq ptr %1, null
  br i1 %tobool.not.i28, label %do.body.i29.cleanup_crit_edge, label %if.then5.i

do.body.i29.cleanup_crit_edge:                    ; preds = %do.body.i29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5.i:                                       ; preds = %do.body.i29
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @dpaa2_switch_cls_matchall_replace_mirror.__msg, ptr %1, align 4
  br label %cleanup

if.end6.i:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_cmp2(i16 %48, i16 %50)
  %cmp.not.i = icmp eq i16 %48, %50
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %51, align 8
  %57 = ptrtoint ptr %num_ifs.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %num_ifs.i, align 2
  %conv.i.i = zext i16 %58 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %cmp13.not.i.i = icmp eq i16 %58, 0
  br i1 %cmp13.not.i.i, label %if.end6.i.dpaa2_switch_get_index.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end6.i.dpaa2_switch_get_index.exit.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpaa2_switch_get_index.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end6.i
  %ports.i.i = getelementptr inbounds %struct.ethsw_core, ptr %46, i32 0, i32 8
  %59 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ports.i.i, align 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.014.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.dpaa2_switch_get_index.exit.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.cond.i.i.dpaa2_switch_get_index.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpaa2_switch_get_index.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.014.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %60, i32 %i.014.i.i
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %cmp3.i.i = icmp eq ptr %64, %56
  br i1 %cmp3.i.i, label %if.then.i.i, label %for.cond.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %idx.i.i = getelementptr inbounds %struct.ethsw_port_priv, ptr %62, i32 0, i32 1
  %65 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %idx.i.i, align 4
  br label %dpaa2_switch_get_index.exit.i

dpaa2_switch_get_index.exit.i:                    ; preds = %if.then.i.i, %for.cond.i.i.dpaa2_switch_get_index.exit.i_crit_edge, %if.end6.i.dpaa2_switch_get_index.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ %66, %if.then.i.i ], [ -22, %if.end6.i.dpaa2_switch_get_index.exit.i_crit_edge ], [ -22, %for.cond.i.i.dpaa2_switch_get_index.exit.i_crit_edge ]
  br i1 %cmp.not.i, label %dpaa2_switch_get_index.exit.i.if.end25.i_crit_edge, label %land.lhs.true.i

dpaa2_switch_get_index.exit.i.if.end25.i_crit_edge: ; preds = %dpaa2_switch_get_index.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.i

land.lhs.true.i:                                  ; preds = %dpaa2_switch_get_index.exit.i
  %67 = ptrtoint ptr %mirror_port.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %mirror_port.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %68, i16 %retval.0.i.i)
  %cmp14.not.i = icmp eq i16 %68, %retval.0.i.i
  br i1 %cmp14.not.i, label %land.lhs.true.i.if.end25.i_crit_edge, label %do.body17.i

land.lhs.true.i.if.end25.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.i

do.body17.i:                                      ; preds = %land.lhs.true.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dpaa2_switch_cls_matchall_replace_mirror.__msg.23) #5
  %tobool19.not.i = icmp eq ptr %1, null
  br i1 %tobool19.not.i, label %do.body17.i.cleanup_crit_edge, label %if.then20.i

do.body17.i.cleanup_crit_edge:                    ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then20.i:                                      ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @dpaa2_switch_cls_matchall_replace_mirror.__msg.23, ptr %1, align 4
  br label %cleanup

if.end25.i:                                       ; preds = %land.lhs.true.i.if.end25.i_crit_edge, %dpaa2_switch_get_index.exit.i.if.end25.i_crit_edge
  %mirror_entries.i = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %block, i32 0, i32 6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end25.i
  %pos.0.in.i = phi ptr [ %mirror_entries.i, %if.end25.i ], [ %pos.0.i, %for.body.i.for.cond.i_crit_edge ]
  %70 = ptrtoint ptr %pos.0.in.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %pos.0.i = load ptr, ptr %pos.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, %mirror_entries.i
  br i1 %cmp.i.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %cfg.i = getelementptr inbounds %struct.dpaa2_switch_mirror_entry, ptr %pos.0.i, i32 0, i32 1
  %71 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cfg.i, align 4
  %cmp31.i = icmp eq i32 %72, 0
  br i1 %cmp31.i, label %do.body34.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

do.body34.i:                                      ; preds = %for.body.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dpaa2_switch_cls_matchall_replace_mirror.__msg.24) #5
  %tobool36.not.i = icmp eq ptr %1, null
  br i1 %tobool36.not.i, label %do.body34.i.cleanup_crit_edge, label %if.then37.i

do.body34.i.cleanup_crit_edge:                    ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then37.i:                                      ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @dpaa2_switch_cls_matchall_replace_mirror.__msg.24, ptr %1, align 4
  br label %cleanup

for.end.i:                                        ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %74 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i30 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %74, i32 noundef 3520, i32 noundef 24) #8
  %tobool45.not.i = icmp eq ptr %call7.i.i.i30, null
  br i1 %tobool45.not.i, label %for.end.i.cleanup_crit_edge, label %if.end47.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end47.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %cfg48.i = getelementptr inbounds %struct.dpaa2_switch_mirror_entry, ptr %call7.i.i.i30, i32 0, i32 1
  %75 = ptrtoint ptr %cfg48.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %cfg48.i, align 8
  %cookie.i31 = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls, i32 0, i32 4
  %76 = ptrtoint ptr %cookie.i31 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cookie.i31, align 8
  %cookie50.i = getelementptr inbounds %struct.dpaa2_switch_mirror_entry, ptr %call7.i.i.i30, i32 0, i32 2
  %78 = ptrtoint ptr %cookie50.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %cookie50.i, align 8
  %call51.i = tail call fastcc i32 @dpaa2_switch_block_add_mirror(ptr noundef %block, ptr noundef nonnull %call7.i.i.i30, i16 noundef zeroext %retval.0.i.i, ptr noundef %1) #5
  br label %cleanup

do.body9:                                         ; preds = %if.end3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dpaa2_switch_cls_matchall_replace.__msg.9) #5
  %tobool11.not = icmp eq ptr %1, null
  br i1 %tobool11.not, label %do.body9.cleanup_crit_edge, label %if.then12

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then12:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @dpaa2_switch_cls_matchall_replace.__msg.9, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %do.body9.cleanup_crit_edge, %if.end47.i, %for.end.i.cleanup_crit_edge, %if.then37.i, %do.body34.i.cleanup_crit_edge, %if.then20.i, %do.body17.i.cleanup_crit_edge, %if.then5.i, %do.body.i29.cleanup_crit_edge, %free_acl_entry.i, %if.end12.i.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.then3.i, %do.body.i.cleanup_crit_edge, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then2 ], [ -95, %do.body.cleanup_crit_edge ], [ -95, %if.then12 ], [ -95, %do.body9.cleanup_crit_edge ], [ %err.0.i, %free_acl_entry.i ], [ -12, %if.then3.i ], [ -12, %do.body.i.cleanup_crit_edge ], [ -12, %if.end4.i.cleanup_crit_edge ], [ 0, %if.end12.i.cleanup_crit_edge ], [ %call51.i, %if.end47.i ], [ -95, %if.then5.i ], [ -95, %do.body.i29.cleanup_crit_edge ], [ -16, %if.then20.i ], [ -16, %do.body17.i.cleanup_crit_edge ], [ -16, %if.then37.i ], [ -16, %do.body34.i.cleanup_crit_edge ], [ -12, %for.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpaa2_switch_block_offload_mirror(ptr noundef readonly %block, ptr nocapture noundef readonly %port_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ethsw_data = getelementptr inbounds %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 2
  %0 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ethsw_data, align 4
  %mirror_entries = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %block, i32 0, i32 6
  %mc_io = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 1
  %dpsw_handle = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 2
  %idx = getelementptr inbounds %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %tmp.0.in = phi ptr [ %mirror_entries, %entry ], [ %tmp.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %tmp.0.in, align 4
  %cmp.not = icmp eq ptr %tmp.0, %mirror_entries
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %3 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mc_io, align 4
  %5 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %dpsw_handle, align 8
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %idx, align 4
  %cfg = getelementptr inbounds %struct.dpaa2_switch_mirror_entry, ptr %tmp.0, i32 0, i32 1
  %call = tail call i32 @dpsw_if_add_reflection(ptr noundef %4, i32 noundef 0, i16 noundef zeroext %6, i16 noundef zeroext %8, ptr noundef %cfg) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %for.cond13.preheader

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

for.cond13.preheader:                             ; preds = %for.body
  %9 = ptrtoint ptr %mirror_entries to i32
  call void @__asan_load4_noabort(i32 %9)
  %tmp.148 = load ptr, ptr %mirror_entries, align 4
  %cmp16.not49 = icmp eq ptr %tmp.148, %mirror_entries
  br i1 %cmp16.not49, label %for.cond13.preheader.cleanup_crit_edge, label %for.cond13.preheader.for.body18_crit_edge

for.cond13.preheader.for.body18_crit_edge:        ; preds = %for.cond13.preheader
  br label %for.body18

for.cond13.preheader.cleanup_crit_edge:           ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.cond13.preheader.for.body18_crit_edge
  %tmp.150 = phi ptr [ %tmp.1, %for.body18.for.body18_crit_edge ], [ %tmp.148, %for.cond13.preheader.for.body18_crit_edge ]
  %10 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mc_io, align 4
  %12 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dpsw_handle, align 8
  %14 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %idx, align 4
  %cfg22 = getelementptr inbounds %struct.dpaa2_switch_mirror_entry, ptr %tmp.150, i32 0, i32 1
  %call23 = tail call i32 @dpsw_if_remove_reflection(ptr noundef %11, i32 noundef 0, i16 noundef zeroext %13, i16 noundef zeroext %15, ptr noundef %cfg22) #5
  %16 = ptrtoint ptr %tmp.150 to i32
  call void @__asan_load4_noabort(i32 %16)
  %tmp.1 = load ptr, ptr %tmp.150, align 4
  %cmp16.not = icmp eq ptr %tmp.1, %mirror_entries
  br i1 %cmp16.not, label %for.body18.cleanup_crit_edge, label %for.body18.for.body18_crit_edge

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body18

for.body18.cleanup_crit_edge:                     ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body18.cleanup_crit_edge, %for.cond13.preheader.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %for.cond13.preheader.cleanup_crit_edge ], [ %call, %for.body18.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_if_add_reflection(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_if_remove_reflection(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpaa2_switch_block_unoffload_mirror(ptr noundef readonly %block, ptr nocapture noundef readonly %port_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ethsw_data = getelementptr inbounds %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 2
  %0 = ptrtoint ptr %ethsw_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ethsw_data, align 4
  %mirror_entries = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %block, i32 0, i32 6
  %mc_io = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 1
  %dpsw_handle = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 2
  %idx = getelementptr inbounds %struct.ethsw_port_priv, ptr %port_priv, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %tmp.0.in = phi ptr [ %mirror_entries, %entry ], [ %tmp.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %tmp.0.in, align 4
  %cmp.not = icmp eq ptr %tmp.0, %mirror_entries
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %3 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mc_io, align 4
  %5 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %dpsw_handle, align 8
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %idx, align 4
  %cfg = getelementptr inbounds %struct.dpaa2_switch_mirror_entry, ptr %tmp.0, i32 0, i32 1
  %call = tail call i32 @dpsw_if_remove_reflection(ptr noundef %4, i32 noundef 0, i16 noundef zeroext %6, i16 noundef zeroext %8, ptr noundef %cfg) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %for.cond13.preheader

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

for.cond13.preheader:                             ; preds = %for.body
  %9 = ptrtoint ptr %mirror_entries to i32
  call void @__asan_load4_noabort(i32 %9)
  %tmp.148 = load ptr, ptr %mirror_entries, align 4
  %cmp16.not49 = icmp eq ptr %tmp.148, %mirror_entries
  br i1 %cmp16.not49, label %for.cond13.preheader.cleanup_crit_edge, label %for.cond13.preheader.for.body18_crit_edge

for.cond13.preheader.for.body18_crit_edge:        ; preds = %for.cond13.preheader
  br label %for.body18

for.cond13.preheader.cleanup_crit_edge:           ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.cond13.preheader.for.body18_crit_edge
  %tmp.150 = phi ptr [ %tmp.1, %for.body18.for.body18_crit_edge ], [ %tmp.148, %for.cond13.preheader.for.body18_crit_edge ]
  %10 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mc_io, align 4
  %12 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dpsw_handle, align 8
  %14 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %idx, align 4
  %cfg22 = getelementptr inbounds %struct.dpaa2_switch_mirror_entry, ptr %tmp.150, i32 0, i32 1
  %call23 = tail call i32 @dpsw_if_add_reflection(ptr noundef %11, i32 noundef 0, i16 noundef zeroext %13, i16 noundef zeroext %15, ptr noundef %cfg22) #5
  %16 = ptrtoint ptr %tmp.150 to i32
  call void @__asan_load4_noabort(i32 %16)
  %tmp.1 = load ptr, ptr %tmp.150, align 4
  %cmp16.not = icmp eq ptr %tmp.1, %mirror_entries
  br i1 %cmp16.not, label %for.body18.cleanup_crit_edge, label %for.body18.for.body18_crit_edge

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body18

for.body18.cleanup_crit_edge:                     ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body18.cleanup_crit_edge, %for.cond13.preheader.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %for.cond13.preheader.cleanup_crit_edge ], [ %call, %for.body18.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpaa2_switch_cls_matchall_destroy(ptr noundef %block, ptr nocapture noundef readonly %cls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %cls, i32 0, i32 4
  %0 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie, align 8
  %acl_entries.i = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %block, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %tmp.0.in.i = phi ptr [ %acl_entries.i, %entry ], [ %tmp.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %tmp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0.i = load ptr, ptr %tmp.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %tmp.0.i, %acl_entries.i
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %cookie8.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %tmp.0.i, i32 0, i32 2
  %3 = ptrtoint ptr %cookie8.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cookie8.i, align 4
  %cmp9.i = icmp eq i32 %4, %1
  br i1 %cmp9.i, label %dpaa2_switch_acl_tbl_find_entry_by_cookie.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

dpaa2_switch_acl_tbl_find_entry_by_cookie.exit:   ; preds = %for.body.i
  %tobool.not = icmp eq ptr %tmp.0.i, null
  br i1 %tobool.not, label %dpaa2_switch_acl_tbl_find_entry_by_cookie.exit.if.end_crit_edge, label %if.then

dpaa2_switch_acl_tbl_find_entry_by_cookie.exit.if.end_crit_edge: ; preds = %dpaa2_switch_acl_tbl_find_entry_by_cookie.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %dpaa2_switch_acl_tbl_find_entry_by_cookie.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call fastcc i32 @dpaa2_switch_acl_tbl_remove_entry(ptr noundef %block, ptr noundef nonnull %tmp.0.i)
  br label %cleanup

if.end:                                           ; preds = %dpaa2_switch_acl_tbl_find_entry_by_cookie.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  %mirror_entries.i = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %block, i32 0, i32 6
  br label %for.cond.i18

for.cond.i18:                                     ; preds = %for.body.i21.for.cond.i18_crit_edge, %if.end
  %tmp.0.in.i15 = phi ptr [ %mirror_entries.i, %if.end ], [ %tmp.0.i16, %for.body.i21.for.cond.i18_crit_edge ]
  %5 = ptrtoint ptr %tmp.0.in.i15 to i32
  call void @__asan_load4_noabort(i32 %5)
  %tmp.0.i16 = load ptr, ptr %tmp.0.in.i15, align 4
  %cmp.not.i17 = icmp eq ptr %tmp.0.i16, %mirror_entries.i
  br i1 %cmp.not.i17, label %for.cond.i18.cleanup_crit_edge, label %for.body.i21

for.cond.i18.cleanup_crit_edge:                   ; preds = %for.cond.i18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i21:                                     ; preds = %for.cond.i18
  %cookie8.i19 = getelementptr inbounds %struct.dpaa2_switch_mirror_entry, ptr %tmp.0.i16, i32 0, i32 2
  %6 = ptrtoint ptr %cookie8.i19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cookie8.i19, align 4
  %cmp9.i20 = icmp eq i32 %7, %1
  br i1 %cmp9.i20, label %dpaa2_switch_mirror_find_entry_by_cookie.exit, label %for.body.i21.for.cond.i18_crit_edge

for.body.i21.for.cond.i18_crit_edge:              ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i18

dpaa2_switch_mirror_find_entry_by_cookie.exit:    ; preds = %for.body.i21
  %tobool4.not = icmp eq ptr %tmp.0.i16, null
  br i1 %tobool4.not, label %dpaa2_switch_mirror_find_entry_by_cookie.exit.cleanup_crit_edge, label %if.then5

dpaa2_switch_mirror_find_entry_by_cookie.exit.cleanup_crit_edge: ; preds = %dpaa2_switch_mirror_find_entry_by_cookie.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5:                                         ; preds = %dpaa2_switch_mirror_find_entry_by_cookie.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dpaa2_switch_block_remove_mirror(ptr noundef %block, ptr noundef nonnull %tmp.0.i16)
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %dpaa2_switch_mirror_find_entry_by_cookie.exit.cleanup_crit_edge, %for.cond.i18.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %if.then5 ], [ 0, %dpaa2_switch_mirror_find_entry_by_cookie.exit.cleanup_crit_edge ], [ 0, %for.cond.i18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dpaa2_switch_acl_tbl_add_entry(ptr noundef %block, ptr noundef %entry1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %acl_entries.i = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %block, i32 0, i32 3
  %0 = ptrtoint ptr %acl_entries.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %acl_entries.i, align 4
  %cmp.i.not.i = icmp eq ptr %1, %acl_entries.i
  br i1 %cmp.i.not.i, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %entry
  %prio.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %entry1, i32 0, i32 1
  %2 = ptrtoint ptr %prio.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prio.i, align 8
  br label %for.body.i

if.then.i:                                        ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry1, ptr noundef %acl_entries.i, ptr noundef %acl_entries.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %dpaa2_switch_acl_entry_add_to_list.exit.thread

dpaa2_switch_acl_entry_add_to_list.exit.thread:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %num_acl_rules42 = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %block, i32 0, i32 5
  %4 = ptrtoint ptr %num_acl_rules42 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_acl_rules42, align 2
  %conv43 = zext i8 %5 to i32
  %sub244 = sub nsw i32 15, %conv43
  br label %for.end

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %block, i32 0, i32 3, i32 1
  br label %cleanup.sink.split.i

for.body.i:                                       ; preds = %if.end13.i.for.body.i_crit_edge, %for.cond.preheader.i
  %index.040.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %if.end13.i.for.body.i_crit_edge ]
  %pos.039.i = phi ptr [ %1, %for.cond.preheader.i ], [ %n.041.i, %if.end13.i.for.body.i_crit_edge ]
  %prio9.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %pos.039.i, i32 0, i32 1
  %6 = ptrtoint ptr %prio9.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %prio9.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %7)
  %cmp.i = icmp ult i16 %3, %7
  br i1 %cmp.i, label %for.body.i.for.end.i_crit_edge, label %if.end13.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.end13.i:                                       ; preds = %for.body.i
  %8 = ptrtoint ptr %pos.039.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %n.041.i = load ptr, ptr %pos.039.i, align 4
  %inc.i = add i32 %index.040.i, 1
  %cmp.i30.not.i = icmp eq ptr %n.041.i, %acl_entries.i
  br i1 %cmp.i30.not.i, label %if.end13.i.for.end.i_crit_edge, label %if.end13.i.for.body.i_crit_edge

if.end13.i.for.body.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end13.i.for.end.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %if.end13.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %pos.0.lcssa.i = phi ptr [ %pos.039.i, %for.body.i.for.end.i_crit_edge ], [ %acl_entries.i, %if.end13.i.for.end.i_crit_edge ]
  %index.0.lcssa.i = phi i32 [ %index.040.i, %for.body.i.for.end.i_crit_edge ], [ %inc.i, %if.end13.i.for.end.i_crit_edge ]
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pos.0.lcssa.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call.i.i32.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry1, ptr noundef %10, ptr noundef %12) #5
  br i1 %call.i.i32.i, label %if.end.i.i35.i, label %for.end.i.dpaa2_switch_acl_entry_add_to_list.exit_crit_edge

for.end.i.dpaa2_switch_acl_entry_add_to_list.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpaa2_switch_acl_entry_add_to_list.exit

if.end.i.i35.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i33.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end.i.i35.i, %if.end.i.i.i
  %prev1.i.i33.sink.i = phi ptr [ %prev1.i.i33.i, %if.end.i.i35.i ], [ %prev1.i.i.i, %if.end.i.i.i ]
  %.sink46.i = phi ptr [ %12, %if.end.i.i35.i ], [ %acl_entries.i, %if.end.i.i.i ]
  %.sink45.i = phi ptr [ %10, %if.end.i.i35.i ], [ %acl_entries.i, %if.end.i.i.i ]
  %retval.0.ph.i = phi i32 [ %index.0.lcssa.i, %if.end.i.i35.i ], [ 0, %if.end.i.i.i ]
  %13 = ptrtoint ptr %prev1.i.i33.sink.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry1, ptr %prev1.i.i33.sink.i, align 4
  %14 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %.sink46.i, ptr %entry1, align 4
  %prev3.i.i34.i = getelementptr inbounds %struct.list_head, ptr %entry1, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %.sink45.i, ptr %prev3.i.i34.i, align 4
  %16 = ptrtoint ptr %.sink45.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry1, ptr %.sink45.i, align 4
  br label %dpaa2_switch_acl_entry_add_to_list.exit

dpaa2_switch_acl_entry_add_to_list.exit:          ; preds = %cleanup.sink.split.i, %for.end.i.dpaa2_switch_acl_entry_add_to_list.exit_crit_edge
  %retval.0.i = phi i32 [ %index.0.lcssa.i, %for.end.i.dpaa2_switch_acl_entry_add_to_list.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  %num_acl_rules = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %block, i32 0, i32 5
  %17 = ptrtoint ptr %num_acl_rules to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %num_acl_rules, align 2
  %conv = zext i8 %18 to i32
  %sub2 = sub nsw i32 15, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp36 = icmp sgt i32 %retval.0.i, 0
  br i1 %cmp36, label %dpaa2_switch_acl_entry_add_to_list.exit.for.body_crit_edge, label %dpaa2_switch_acl_entry_add_to_list.exit.for.end_crit_edge

dpaa2_switch_acl_entry_add_to_list.exit.for.end_crit_edge: ; preds = %dpaa2_switch_acl_entry_add_to_list.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

dpaa2_switch_acl_entry_add_to_list.exit.for.body_crit_edge: ; preds = %dpaa2_switch_acl_entry_add_to_list.exit
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %dpaa2_switch_acl_entry_add_to_list.exit.for.body_crit_edge
  %precedence.040 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ %sub2, %dpaa2_switch_acl_entry_add_to_list.exit.for.body_crit_edge ]
  %i.037 = phi i32 [ %inc6, %if.end.for.body_crit_edge ], [ 0, %dpaa2_switch_acl_entry_add_to_list.exit.for.body_crit_edge ]
  %19 = ptrtoint ptr %acl_entries.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %tmp.014.i = load ptr, ptr %acl_entries.i, align 4
  %cmp.not15.i = icmp eq ptr %tmp.014.i, %acl_entries.i
  br i1 %cmp.not15.i, label %for.body.dpaa2_switch_acl_entry_get_by_index.exit_crit_edge, label %for.body.for.body.i30_crit_edge

for.body.for.body.i30_crit_edge:                  ; preds = %for.body
  br label %for.body.i30

for.body.dpaa2_switch_acl_entry_get_by_index.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpaa2_switch_acl_entry_get_by_index.exit

for.cond.i:                                       ; preds = %for.body.i30
  %inc.i29 = add nuw nsw i32 %i.016.i, 1
  %20 = ptrtoint ptr %tmp.017.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %tmp.0.i = load ptr, ptr %tmp.017.i, align 4
  %cmp.not.i = icmp eq ptr %tmp.0.i, %acl_entries.i
  br i1 %cmp.not.i, label %for.cond.i.dpaa2_switch_acl_entry_get_by_index.exit_crit_edge, label %for.cond.i.for.body.i30_crit_edge

for.cond.i.for.body.i30_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i30

for.cond.i.dpaa2_switch_acl_entry_get_by_index.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpaa2_switch_acl_entry_get_by_index.exit

for.body.i30:                                     ; preds = %for.cond.i.for.body.i30_crit_edge, %for.body.for.body.i30_crit_edge
  %tmp.017.i = phi ptr [ %tmp.0.i, %for.cond.i.for.body.i30_crit_edge ], [ %tmp.014.i, %for.body.for.body.i30_crit_edge ]
  %i.016.i = phi i32 [ %inc.i29, %for.cond.i.for.body.i30_crit_edge ], [ 0, %for.body.for.body.i30_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.016.i, i32 %i.037)
  %cmp3.i = icmp eq i32 %i.016.i, %i.037
  br i1 %cmp3.i, label %for.body.i30.dpaa2_switch_acl_entry_get_by_index.exit_crit_edge, label %for.cond.i

for.body.i30.dpaa2_switch_acl_entry_get_by_index.exit_crit_edge: ; preds = %for.body.i30
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpaa2_switch_acl_entry_get_by_index.exit

dpaa2_switch_acl_entry_get_by_index.exit:         ; preds = %for.body.i30.dpaa2_switch_acl_entry_get_by_index.exit_crit_edge, %for.cond.i.dpaa2_switch_acl_entry_get_by_index.exit_crit_edge, %for.body.dpaa2_switch_acl_entry_get_by_index.exit_crit_edge
  %retval.0.i31 = phi ptr [ null, %for.body.dpaa2_switch_acl_entry_get_by_index.exit_crit_edge ], [ %tmp.017.i, %for.body.i30.dpaa2_switch_acl_entry_get_by_index.exit_crit_edge ], [ null, %for.cond.i.dpaa2_switch_acl_entry_get_by_index.exit_crit_edge ]
  %call.i = tail call fastcc i32 @dpaa2_switch_acl_entry_remove(ptr noundef %block, ptr noundef %retval.0.i31) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %dpaa2_switch_acl_entry_set_precedence.exit, label %dpaa2_switch_acl_entry_get_by_index.exit.cleanup_crit_edge

dpaa2_switch_acl_entry_get_by_index.exit.cleanup_crit_edge: ; preds = %dpaa2_switch_acl_entry_get_by_index.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

dpaa2_switch_acl_entry_set_precedence.exit:       ; preds = %dpaa2_switch_acl_entry_get_by_index.exit
  %precedence2.i = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %retval.0.i31, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %precedence2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %precedence.040, ptr %precedence2.i, align 8
  %call3.i = tail call i32 @dpaa2_switch_acl_entry_add(ptr noundef %block, ptr noundef %retval.0.i31) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %if.end, label %dpaa2_switch_acl_entry_set_precedence.exit.cleanup_crit_edge

dpaa2_switch_acl_entry_set_precedence.exit.cleanup_crit_edge: ; preds = %dpaa2_switch_acl_entry_set_precedence.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %dpaa2_switch_acl_entry_set_precedence.exit
  %inc = add i32 %precedence.040, 1
  %inc6 = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc6, %retval.0.i
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %dpaa2_switch_acl_entry_add_to_list.exit.for.end_crit_edge, %dpaa2_switch_acl_entry_add_to_list.exit.thread
  %num_acl_rules46 = phi ptr [ %num_acl_rules, %dpaa2_switch_acl_entry_add_to_list.exit.for.end_crit_edge ], [ %num_acl_rules42, %dpaa2_switch_acl_entry_add_to_list.exit.thread ], [ %num_acl_rules, %if.end.for.end_crit_edge ]
  %precedence.0.lcssa = phi i32 [ %sub2, %dpaa2_switch_acl_entry_add_to_list.exit.for.end_crit_edge ], [ %sub244, %dpaa2_switch_acl_entry_add_to_list.exit.thread ], [ %inc, %if.end.for.end_crit_edge ]
  %precedence7 = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %entry1, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %precedence7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %precedence.0.lcssa, ptr %precedence7, align 8
  %call8 = tail call i32 @dpaa2_switch_acl_entry_add(ptr noundef %block, ptr noundef %entry1)
  %23 = ptrtoint ptr %num_acl_rules46 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num_acl_rules46, align 2
  %inc10 = add i8 %24, 1
  store i8 %inc10, ptr %num_acl_rules46, align 2
  br label %cleanup

cleanup:                                          ; preds = %for.end, %dpaa2_switch_acl_entry_set_precedence.exit.cleanup_crit_edge, %dpaa2_switch_acl_entry_get_by_index.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %for.end ], [ %call.i, %dpaa2_switch_acl_entry_get_by_index.exit.cleanup_crit_edge ], [ %call3.i, %dpaa2_switch_acl_entry_set_precedence.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_basic(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_eth_addrs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_vlan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ipv4_addrs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ports(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ip(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dpaa2_switch_port_dev_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dpaa2_switch_acl_entry_remove(ptr nocapture noundef readonly %block, ptr noundef %entry1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 256) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %key = getelementptr inbounds %struct.dpaa2_switch_acl_entry, ptr %entry1, i32 0, i32 4
  tail call void @dpsw_acl_prepare_entry_cfg(ptr noundef %key, ptr noundef nonnull %call7.i.i) #5
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call7.i.i) #5
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !75

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %3) #5
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #5
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @debug_dma_map_single(ptr noundef %3, ptr noundef nonnull %call7.i.i, i32 noundef 256) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %9 = load ptr, ptr @mem_map, align 4
  %10 = ptrtoint ptr %call7.i.i to i32
  %sub.i = add i32 %10, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %9, i32 %shr.i
  %and.i = and i32 %10, 4088
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 256, i32 noundef 1, i32 noundef 0) #5
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %conv = zext i32 %retval.0.i to i64
  %11 = ptrtoint ptr %cfg to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv, ptr %cfg, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %retval.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %do.end, label %if.end12

do.end:                                           ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str) #9
  br label %cleanup

if.end12:                                         ; preds = %dma_map_single_attrs.exit
  %mc_io = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mc_io, align 4
  %dpsw_handle = getelementptr inbounds %struct.ethsw_core, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %dpsw_handle, align 8
  %acl_id = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %block, i32 0, i32 4
  %16 = ptrtoint ptr %acl_id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %acl_id, align 4
  %call13 = tail call i32 @dpsw_acl_remove_entry(ptr noundef %13, i32 noundef 0, i16 noundef zeroext %15, i16 noundef zeroext %17, ptr noundef %cfg) #5
  %18 = ptrtoint ptr %cfg to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %cfg, align 8
  %conv15 = trunc i64 %19 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %conv15, i32 noundef 4, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool16.not = icmp eq i32 %call13, 0
  br i1 %tobool16.not, label %if.end21, label %do.end20

do.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17, i32 noundef %call13) #9
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end20, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %do.end ], [ %call13, %do.end20 ], [ 0, %if.end21 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_acl_remove_entry(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dpaa2_switch_block_add_mirror(ptr noundef %block, ptr noundef %entry1, i16 noundef zeroext %to, ptr noundef writeonly %extack) unnamed_addr #0 align 64 {
entry:
  %block_ports = alloca i32, align 4
  %ports_added = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %block_ports) #5
  %ports = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %block, i32 0, i32 1
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ports, align 8
  %conv = trunc i64 %1 to i32
  %2 = ptrtoint ptr %block_ports to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %block_ports, align 4
  %3 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %block, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ports_added) #5
  %5 = ptrtoint ptr %ports_added to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ports_added, align 4
  %cfg = getelementptr inbounds %struct.dpaa2_switch_mirror_entry, ptr %entry1, i32 0, i32 1
  %vlan_id = getelementptr inbounds %struct.dpaa2_switch_mirror_entry, ptr %entry1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vlan_id, align 4
  %mirror_port = getelementptr inbounds %struct.ethsw_core, ptr %4, i32 0, i32 19
  %8 = ptrtoint ptr %mirror_port to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mirror_port, align 8
  %num_ifs = getelementptr inbounds %struct.ethsw_core, ptr %4, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %num_ifs to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num_ifs, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp.not = icmp eq i16 %9, %11
  br i1 %cmp.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then:                                          ; preds = %entry
  %mc_io = getelementptr inbounds %struct.ethsw_core, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mc_io, align 4
  %dpsw_handle = getelementptr inbounds %struct.ethsw_core, ptr %4, i32 0, i32 2
  %14 = ptrtoint ptr %dpsw_handle to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %dpsw_handle, align 8
  %call = tail call i32 @dpsw_set_reflection_if(ptr noundef %13, i32 noundef 0, i16 noundef zeroext %15, i16 noundef zeroext %to) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %mirror_port to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %to, ptr %mirror_port, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  %17 = ptrtoint ptr %num_ifs to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_ifs, align 2
  %conv12 = zext i16 %18 to i32
  %call13 = call i32 @_find_next_bit_be(ptr noundef nonnull %block_ports, i32 noundef %conv12, i32 noundef 0) #5
  %19 = ptrtoint ptr %num_ifs to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %num_ifs, align 2
  %conv16115 = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call13, i32 %conv16115)
  %cmp17116 = icmp slt i32 %call13, %conv16115
  br i1 %cmp17116, label %for.body.lr.ph, label %if.end9.for.end_crit_edge

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end9
  %ports19 = getelementptr inbounds %struct.ethsw_core, ptr %4, i32 0, i32 8
  %idxprom = zext i16 %7 to i32
  %mc_io31 = getelementptr inbounds %struct.ethsw_core, ptr %4, i32 0, i32 1
  %dpsw_handle32 = getelementptr inbounds %struct.ethsw_core, ptr %4, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end38.for.body_crit_edge, %for.body.lr.ph
  %port.0117 = phi i32 [ %call13, %for.body.lr.ph ], [ %call42, %if.end38.for.body_crit_edge ]
  %21 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp21 = icmp eq i32 %22, 1
  br i1 %cmp21, label %land.lhs.true, label %for.body.if.end30_crit_edge

for.body.if.end30_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

land.lhs.true:                                    ; preds = %for.body
  %23 = ptrtoint ptr %ports19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ports19, align 4
  %arrayidx = getelementptr ptr, ptr %24, i32 %port.0117
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %arrayidx23 = getelementptr %struct.ethsw_port_priv, ptr %26, i32 0, i32 5, i32 %idxprom
  %27 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx23, align 1
  %29 = and i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool25.not = icmp eq i8 %29, 0
  br i1 %tobool25.not, label %do.body, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

do.body:                                          ; preds = %land.lhs.true
  call void @do_trace_netlink_extack(ptr noundef nonnull @dpaa2_switch_block_add_mirror.__msg) #5
  %tobool27.not = icmp eq ptr %extack, null
  br i1 %tobool27.not, label %do.body.err_remove_filters_crit_edge, label %if.then28

do.body.err_remove_filters_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_remove_filters

if.then28:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @dpaa2_switch_block_add_mirror.__msg, ptr %extack, align 4
  br label %err_remove_filters

if.end30:                                         ; preds = %land.lhs.true.if.end30_crit_edge, %for.body.if.end30_crit_edge
  %31 = ptrtoint ptr %mc_io31 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mc_io31, align 4
  %33 = ptrtoint ptr %dpsw_handle32 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %dpsw_handle32, align 8
  %conv33 = trunc i32 %port.0117 to i16
  %call35 = call i32 @dpsw_if_add_reflection(ptr noundef %32, i32 noundef 0, i16 noundef zeroext %34, i16 noundef zeroext %conv33, ptr noundef %cfg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end30.err_remove_filters_crit_edge

if.end30.err_remove_filters_crit_edge:            ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_remove_filters

if.end38:                                         ; preds = %if.end30
  %shl = shl nuw i32 1, %port.0117
  %35 = ptrtoint ptr %ports_added to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ports_added, align 4
  %or = or i32 %36, %shl
  store i32 %or, ptr %ports_added, align 4
  %37 = ptrtoint ptr %num_ifs to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %num_ifs, align 2
  %conv41 = zext i16 %38 to i32
  %add = add nsw i32 %port.0117, 1
  %call42 = call i32 @_find_next_bit_be(ptr noundef nonnull %block_ports, i32 noundef %conv41, i32 noundef %add) #5
  %39 = ptrtoint ptr %num_ifs to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %num_ifs, align 2
  %conv16 = zext i16 %40 to i32
  %cmp17 = icmp slt i32 %call42, %conv16
  br i1 %cmp17, label %if.end38.for.body_crit_edge, label %if.end38.for.end_crit_edge

if.end38.for.end_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end38.for.body_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end38.for.end_crit_edge, %if.end9.for.end_crit_edge
  %mirror_entries = getelementptr inbounds %struct.dpaa2_switch_filter_block, ptr %block, i32 0, i32 6
  %41 = ptrtoint ptr %mirror_entries to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mirror_entries, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %entry1, ptr noundef %mirror_entries, ptr noundef %42) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %entry1, ptr %prev1.i.i, align 4
  %44 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %42, ptr %entry1, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %entry1, i32 0, i32 1
  %45 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %mirror_entries, ptr %prev3.i.i, align 4
  %46 = ptrtoint ptr %mirror_entries to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %entry1, ptr %mirror_entries, align 4
  br label %cleanup

err_remove_filters:                               ; preds = %if.end30.err_remove_filters_crit_edge, %if.then28, %do.body.err_remove_filters_crit_edge
  %err.0 = phi i32 [ -22, %if.then28 ], [ -22, %do.body.err_remove_filters_crit_edge ], [ %call35, %if.end30.err_remove_filters_crit_edge ]
  %47 = ptrtoint ptr %num_ifs to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %num_ifs, align 2
  %conv45 = zext i16 %48 to i32
  %call46 = call i32 @_find_next_bit_be(ptr noundef nonnull %ports_added, i32 noundef %conv45, i32 noundef 0) #5
  %49 = ptrtoint ptr %num_ifs to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %num_ifs, align 2
  %conv50119 = zext i16 %50 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call46, i32 %conv50119)
  %cmp51120 = icmp slt i32 %call46, %conv50119
  br i1 %cmp51120, label %err_remove_filters.for.body53_crit_edge, label %err_remove_filters.for.end65_crit_edge

err_remove_filters.for.end65_crit_edge:           ; preds = %err_remove_filters
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end65

err_remove_filters.for.body53_crit_edge:          ; preds = %err_remove_filters
  br label %for.body53

for.body53:                                       ; preds = %for.body53.for.body53_crit_edge, %err_remove_filters.for.body53_crit_edge
  %port.1121 = phi i32 [ %call64, %for.body53.for.body53_crit_edge ], [ %call46, %err_remove_filters.for.body53_crit_edge ]
  %51 = ptrtoint ptr %mc_io31 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mc_io31, align 4
  %53 = ptrtoint ptr %dpsw_handle32 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %dpsw_handle32, align 8
  %conv56 = trunc i32 %port.1121 to i16
  %call58 = call i32 @dpsw_if_remove_reflection(ptr noundef %52, i32 noundef 0, i16 noundef zeroext %54, i16 noundef zeroext %conv56, ptr noundef %cfg) #5
  %55 = ptrtoint ptr %num_ifs to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %num_ifs, align 2
  %conv62 = zext i16 %56 to i32
  %add63 = add nsw i32 %port.1121, 1
  %call64 = call i32 @_find_next_bit_be(ptr noundef nonnull %ports_added, i32 noundef %conv62, i32 noundef %add63) #5
  %57 = ptrtoint ptr %num_ifs to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %num_ifs, align 2
  %conv50 = zext i16 %58 to i32
  %cmp51 = icmp slt i32 %call64, %conv50
  br i1 %cmp51, label %for.body53.for.body53_crit_edge, label %for.body53.for.end65_crit_edge

for.body53.for.end65_crit_edge:                   ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end65

for.body53.for.body53_crit_edge:                  ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body53

for.end65:                                        ; preds = %for.body53.for.end65_crit_edge, %err_remove_filters.for.end65_crit_edge
  %.lcssa = phi i16 [ %50, %err_remove_filters.for.end65_crit_edge ], [ %58, %for.body53.for.end65_crit_edge ]
  br i1 %cmp.not, label %if.then67, label %for.end65.cleanup_crit_edge

for.end65.cleanup_crit_edge:                      ; preds = %for.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then67:                                        ; preds = %for.end65
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %mirror_port to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %.lcssa, ptr %mirror_port, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then67, %for.end65.cleanup_crit_edge, %if.end.i.i, %for.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %err.0, %if.then67 ], [ %err.0, %for.end65.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ports_added) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %block_ports) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpsw_set_reflection_if(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-flower.c", i32 134, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @dpaa2_switch_acl_entry_add._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @dpaa2_switch_acl_entry_add._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-flower.c", i32 144, i32 3}
!10 = !{ptr @dpaa2_switch_acl_entry_add._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @dpaa2_switch_acl_entry_add._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @dpaa2_switch_cls_flower_replace.__msg, !13, !"__msg", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-flower.c", i32 645, i32 3}
!14 = !{ptr @dpaa2_switch_cls_flower_replace.__msg.8, !15, !"__msg", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-flower.c", i32 658, i32 3}
!16 = !{ptr @dpaa2_switch_cls_matchall_replace.__msg, !17, !"__msg", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-flower.c", i32 790, i32 3}
!18 = !{ptr @dpaa2_switch_cls_matchall_replace.__msg.9, !19, !"__msg", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-flower.c", i32 803, i32 3}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @dpaa2_switch_cls_flower_replace_acl.__msg, !25, !"__msg", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-flower.c", i32 496, i32 3}
!26 = !{ptr @dpaa2_switch_flower_parse_key.__msg, !27, !"__msg", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-flower.c", i32 28, i32 3}
!28 = !{ptr @dpaa2_switch_flower_parse_key.__msg.12, !29, !"__msg", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-flower.c", i32 96, i32 4}
!30 = !{ptr @dpaa2_switch_flower_parse_key.__msg.13, !31, !"__msg", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-flower.c", i32 102, i32 4}
!32 = !{ptr @dpaa2_switch_tc_parse_action_acl.__msg, !33, !"__msg", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-flower.c", i32 370, i32 4}
!34 = !{ptr @dpaa2_switch_tc_parse_action_acl.__msg.14, !35, !"__msg", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-flower.c", i32 382, i32 3}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-flower.c", i32 174, i32 3}
!38 = !{ptr @dpaa2_switch_acl_entry_remove._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @dpaa2_switch_acl_entry_remove._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-flower.c", i32 184, i32 3}
!42 = !{ptr @dpaa2_switch_acl_entry_remove._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @dpaa2_switch_acl_entry_remove._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @dpaa2_switch_cls_flower_replace_mirror.__msg, !45, !"__msg", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-flower.c", i32 590, i32 3}
!46 = !{ptr @dpaa2_switch_cls_flower_replace_mirror.__msg.19, !47, !"__msg", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-flower.c", i32 601, i32 3}
!48 = !{ptr @dpaa2_switch_cls_flower_replace_mirror.__msg.20, !49, !"__msg", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-flower.c", i32 619, i32 4}
!50 = !{ptr @dpaa2_switch_flower_parse_mirror_key.__msg, !51, !"__msg", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-flower.c", i32 541, i32 3}
!52 = !{ptr @dpaa2_switch_flower_parse_mirror_key.__msg.21, !53, !"__msg", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-flower.c", i32 553, i32 4}
!54 = !{ptr @dpaa2_switch_flower_parse_mirror_key.__msg.22, !55, !"__msg", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-flower.c", i32 559, i32 4}
!56 = !{ptr @dpaa2_switch_block_add_mirror.__msg, !57, !"__msg", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-flower.c", i32 426, i32 4}
!58 = !{ptr @dpaa2_switch_cls_matchall_replace_acl.__msg, !59, !"__msg", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-flower.c", i32 696, i32 3}
!60 = !{ptr @dpaa2_switch_cls_matchall_replace_mirror.__msg, !61, !"__msg", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-flower.c", i32 743, i32 3}
!62 = !{ptr @dpaa2_switch_cls_matchall_replace_mirror.__msg.23, !63, !"__msg", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-flower.c", i32 754, i32 3}
!64 = !{ptr @dpaa2_switch_cls_matchall_replace_mirror.__msg.24, !65, !"__msg", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-switch-flower.c", i32 766, i32 4}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{!"auto-init"}
