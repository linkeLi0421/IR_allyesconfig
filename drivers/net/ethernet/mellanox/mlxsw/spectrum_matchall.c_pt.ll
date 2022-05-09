; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum_matchall.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum_matchall.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlxsw_sp_mall_ops = type { ptr, ptr }
%struct.mlxsw_reg_info = type { i16, i16, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.tc_cls_matchall_offload = type { %struct.flow_cls_common_offload, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.180, ptr }
%union.anon.180 = type { %struct.anon.188 }
%struct.anon.188 = type { i32, i64, i64, i64, i32 }
%struct.mlxsw_sp_flow_block = type { %struct.list_head, %struct.anon.164, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.anon.164 = type { %struct.list_head, i32, i32 }
%struct.mlxsw_sp_mall_entry = type { %struct.list_head, i32, i32, i32, i8, %union.anon.173, %struct.callback_head }
%union.anon.173 = type { %struct.mlxsw_sp_mall_sample_entry }
%struct.mlxsw_sp_mall_sample_entry = type { %struct.mlxsw_sp_sample_params, i32 }
%struct.mlxsw_sp_sample_params = type { ptr, i32, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.anon.187 = type { ptr, i32, i32, i8 }
%struct.mlxsw_sp_flow_block_binding = type { %struct.list_head, ptr, i8 }
%struct.mlxsw_sp_sample_trigger = type { i32, i16 }
%struct.mlxsw_sp_span_agent_parms = type { ptr, i16, i8, i32 }
%struct.mlxsw_sp_span_trigger_parms = type { i32, i32 }
%struct.mlxsw_sp_port = type { ptr, ptr, ptr, i16, i8, i16, i16, %struct.anon.161, %struct.anon.162, %struct.mlxsw_sp_port_mapping, %struct.anon.163, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.anon.165, i32, i32, ptr, i64 }
%struct.anon.161 = type { i8 }
%struct.anon.162 = type { ptr, ptr, ptr, i32 }
%struct.mlxsw_sp_port_mapping = type { i8, i8, i8, i8 }
%struct.anon.163 = type { %struct.rtnl_link_stats64, %struct.mlxsw_sp_port_xstats, %struct.delayed_work }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlxsw_sp_port_xstats = type { i64, [16 x i64], [16 x i64], [16 x i64], [16 x i64], [8 x i64], [8 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.165 = type { %struct.delayed_work, %struct.hwtstamp_config, i16, i16, %struct.mlxsw_sp_ptp_port_stats }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.mlxsw_sp_ptp_port_stats = type { %struct.mlxsw_sp_ptp_port_dir_stats, %struct.mlxsw_sp_ptp_port_dir_stats }
%struct.mlxsw_sp_ptp_port_dir_stats = type { i64, i64 }
%struct.mlxsw_sp = type { ptr, ptr, ptr, [6 x i8], ptr, ptr, ptr, %struct.rhashtable, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, ptr, ptr, ptr, %struct.mlxsw_sp_parsing, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.rhashtable, %struct.mutex }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlxsw_sp_parsing = type { %struct.refcount_struct, i16, i16, %struct.mutex }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@mlxsw_sp_mall_replace.__msg = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Only singular actions are supported\00", [60 x i8] zeroinitializer }, align 32
@mlxsw_sp_mall_replace.__msg.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Only chain 0 is supported\00", [38 x i8] zeroinitializer }, align 32
@mlxsw_sp_mall_replace.__msg.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Only not mixed bound blocks are supported\00", [54 x i8] zeroinitializer }, align 32
@mlxsw_sp_mall_replace.__msg.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get flower priorities\00", [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_mall_replace.__msg.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"matchall rules only supported with 'all' protocol\00", [46 x i8] zeroinitializer }, align 32
@mlxsw_sp_mall_replace.__msg.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to add behind existing flower rules\00", [53 x i8] zeroinitializer }, align 32
@mlxsw_sp_mall_replace.__msg.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to add in front of existing flower rules\00", [48 x i8] zeroinitializer }, align 32
@mlxsw_sp_mall_destroy.__msg = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Entry not found\00", [16 x i8] zeroinitializer }, align 32
@mlxsw_sp1_mall_ops = dso_local constant { %struct.mlxsw_sp_mall_ops, [24 x i8] } { %struct.mlxsw_sp_mall_ops { ptr @mlxsw_sp1_mall_sample_add, ptr @mlxsw_sp1_mall_sample_del }, [24 x i8] zeroinitializer }, align 32
@mlxsw_sp2_mall_ops = dso_local constant { %struct.mlxsw_sp_mall_ops, [24 x i8] } { %struct.mlxsw_sp_mall_ops { ptr @mlxsw_sp2_mall_sample_add, ptr @mlxsw_sp2_mall_sample_del }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/net/ethernet/mellanox/mlxsw/spectrum_matchall.c\00", [40 x i8] zeroinitializer }, align 32
@mlxsw_sp_mall_port_mirror_add.__msg = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not find requested device\00", [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_mall_port_mirror_add.__msg.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get SPAN agent\00", [39 x i8] zeroinitializer }, align 32
@mlxsw_sp_mall_port_mirror_add.__msg.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get analyzed port\00", [36 x i8] zeroinitializer }, align 32
@mlxsw_sp_mall_port_mirror_add.__msg.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to bind SPAN agent\00", [38 x i8] zeroinitializer }, align 32
@mlxsw_sp1_mall_sample_add.__msg = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Sampling is not supported on egress\00", [60 x i8] zeroinitializer }, align 32
@mlxsw_sp1_mall_sample_add.__msg.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported sampling rate\00", [38 x i8] zeroinitializer }, align 32
@mlxsw_reg_mpsc = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -28544, i16 28, ptr @.str.22 }, [24 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 35, ptr null, ptr null }, align 1
@.str.11 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_mpsc_local_port\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_mpsc_lp_msb\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reg_mpsc_e\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg_mpsc_rate\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpsc\00", [27 x i8] zeroinitializer }, align 32
@__const.mlxsw_sp2_mall_sample_add.agent_parms = private unnamed_addr constant { ptr, i16, i8, [1 x i8], i32 } { ptr null, i16 0, i8 0, [1 x i8] zeroinitializer, i32 1 }, align 4
@mlxsw_sp2_mall_sample_add.__msg = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get SPAN agent\00", [39 x i8] zeroinitializer }, align 32
@mlxsw_sp2_mall_sample_add.__msg.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get analyzed port\00", [36 x i8] zeroinitializer }, align 32
@mlxsw_sp2_mall_sample_add.__msg.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to bind SPAN agent\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 21]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 214, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 219, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 224, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 232, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 242, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 255, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 261, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 318, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [19 x i8] c"mlxsw_sp1_mall_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 406, i32 32 }
@___asan_gen_.55 = private unnamed_addr constant [19 x i8] c"mlxsw_sp2_mall_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 475, i32 32 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 163, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 37, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 45, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 52, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 63, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 387, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 392, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_mpsc\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 33, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 10795, i32 1 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 10801, i32 1 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 10810, i32 1 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/reg.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 10788, i32 1 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 428, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 435, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.113 = private constant [59 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum_matchall.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 446, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @mlxsw_sp_mall_replace.__msg, ptr @mlxsw_sp_mall_replace.__msg.1, ptr @mlxsw_sp_mall_replace.__msg.2, ptr @mlxsw_sp_mall_replace.__msg.3, ptr @mlxsw_sp_mall_replace.__msg.4, ptr @mlxsw_sp_mall_replace.__msg.5, ptr @mlxsw_sp_mall_replace.__msg.6, ptr @mlxsw_sp_mall_destroy.__msg, ptr @mlxsw_sp1_mall_ops, ptr @mlxsw_sp2_mall_ops, ptr @.str, ptr @mlxsw_sp_mall_port_mirror_add.__msg, ptr @mlxsw_sp_mall_port_mirror_add.__msg.7, ptr @mlxsw_sp_mall_port_mirror_add.__msg.8, ptr @mlxsw_sp_mall_port_mirror_add.__msg.9, ptr @mlxsw_sp1_mall_sample_add.__msg, ptr @mlxsw_sp1_mall_sample_add.__msg.10, ptr @mlxsw_reg_mpsc, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @mlxsw_sp2_mall_sample_add.__msg, ptr @mlxsw_sp2_mall_sample_add.__msg.23, ptr @mlxsw_sp2_mall_sample_add.__msg.24], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_mall_replace.__msg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_mall_replace.__msg.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_mall_replace.__msg.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_mall_replace.__msg.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_mall_replace.__msg.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_mall_replace.__msg.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_mall_replace.__msg.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_mall_destroy.__msg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_mall_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_mall_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_mall_port_mirror_add.__msg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_mall_port_mirror_add.__msg.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_mall_port_mirror_add.__msg.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_mall_port_mirror_add.__msg.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_mall_sample_add.__msg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_mall_sample_add.__msg.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_mpsc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_mall_sample_add.__msg to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_mall_sample_add.__msg.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_mall_sample_add.__msg.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_mall_replace(ptr noundef %mlxsw_sp, ptr noundef %block, ptr nocapture noundef readonly %f) local_unnamed_addr #0 align 64 {
entry:
  %flower_min_prio = alloca i32, align 4
  %flower_max_prio = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol1 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %protocol1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flower_min_prio) #6
  %2 = ptrtoint ptr %flower_min_prio to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flower_min_prio, align 4, !annotation !69
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flower_max_prio) #6
  %3 = ptrtoint ptr %flower_max_prio to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %flower_max_prio, align 4, !annotation !69
  %rule = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %f, i32 0, i32 2
  %4 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rule, align 4
  %action = getelementptr inbounds %struct.flow_rule, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %action, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  br i1 %cmp.i, label %if.end4, label %do.body

do.body:                                          ; preds = %entry
  %extack = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %extack, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_mall_replace.__msg) #6
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mlxsw_sp_mall_replace.__msg, ptr %9, align 4
  br label %cleanup

if.end4:                                          ; preds = %entry
  %11 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %f, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.not = icmp eq i32 %12, 0
  br i1 %tobool6.not, label %if.end18, label %do.body8

do.body8:                                         ; preds = %if.end4
  %extack11 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %13 = ptrtoint ptr %extack11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %extack11, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_mall_replace.__msg.1) #6
  %tobool12.not = icmp eq ptr %14, null
  br i1 %tobool12.not, label %do.body8.cleanup_crit_edge, label %if.then13

do.body8.cleanup_crit_edge:                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @mlxsw_sp_mall_replace.__msg.1, ptr %14, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end4
  %ingress_binding_count.i = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %block, i32 0, i32 8
  %16 = ptrtoint ptr %ingress_binding_count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ingress_binding_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.end18.if.end31_crit_edge, label %mlxsw_sp_flow_block_is_mixed_bound.exit

if.end18.if.end31_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

mlxsw_sp_flow_block_is_mixed_bound.exit:          ; preds = %if.end18
  %egress_binding_count.i = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %block, i32 0, i32 9
  %18 = ptrtoint ptr %egress_binding_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %egress_binding_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool1.i.not = icmp eq i32 %19, 0
  br i1 %tobool1.i.not, label %mlxsw_sp_flow_block_is_mixed_bound.exit.if.end31_crit_edge, label %do.body21

mlxsw_sp_flow_block_is_mixed_bound.exit.if.end31_crit_edge: ; preds = %mlxsw_sp_flow_block_is_mixed_bound.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

do.body21:                                        ; preds = %mlxsw_sp_flow_block_is_mixed_bound.exit
  %extack24 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %20 = ptrtoint ptr %extack24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %extack24, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_mall_replace.__msg.2) #6
  %tobool25.not = icmp eq ptr %21, null
  br i1 %tobool25.not, label %do.body21.cleanup_crit_edge, label %if.then26

do.body21.cleanup_crit_edge:                      ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then26:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mlxsw_sp_mall_replace.__msg.2, ptr %21, align 4
  br label %cleanup

if.end31:                                         ; preds = %mlxsw_sp_flow_block_is_mixed_bound.exit.if.end31_crit_edge, %if.end18.if.end31_crit_edge
  %call34 = call i32 @mlxsw_sp_flower_prio_get(ptr noundef %mlxsw_sp, ptr noundef %block, i32 noundef 0, ptr noundef nonnull %flower_min_prio, ptr noundef nonnull %flower_max_prio) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  %23 = zext i32 %call34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call34, label %do.body38 [
    i32 -2, label %if.end31.if.end49_crit_edge
    i32 0, label %if.end31.if.end49_crit_edge259
  ]

if.end31.if.end49_crit_edge259:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.end31.if.end49_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

do.body38:                                        ; preds = %if.end31
  %extack41 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %24 = ptrtoint ptr %extack41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %extack41, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_mall_replace.__msg.3) #6
  %tobool42.not = icmp eq ptr %25, null
  br i1 %tobool42.not, label %do.body38.cleanup_crit_edge, label %if.then43

do.body38.cleanup_crit_edge:                      ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then43:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @mlxsw_sp_mall_replace.__msg.3, ptr %25, align 4
  br label %cleanup

if.end49:                                         ; preds = %if.end31.if.end49_crit_edge, %if.end31.if.end49_crit_edge259
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %1)
  %cmp50.not = icmp eq i16 %1, 3
  br i1 %cmp50.not, label %if.end63, label %do.body53

do.body53:                                        ; preds = %if.end49
  %extack56 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %27 = ptrtoint ptr %extack56 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %extack56, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_mall_replace.__msg.4) #6
  %tobool57.not = icmp eq ptr %28, null
  br i1 %tobool57.not, label %do.body53.cleanup_crit_edge, label %if.then58

do.body53.cleanup_crit_edge:                      ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then58:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @mlxsw_sp_mall_replace.__msg.4, ptr %28, align 4
  br label %cleanup

if.end63:                                         ; preds = %if.end49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 52) #9
  %tobool65.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool65.not, label %if.end63.cleanup_crit_edge, label %if.end67

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end67:                                         ; preds = %if.end63
  %cookie = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %f, i32 0, i32 4
  %31 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cookie, align 8
  %cookie68 = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %call7.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %cookie68 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %cookie68, align 8
  %prio = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 2
  %34 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %prio, align 8
  %priority = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %call7.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %priority, align 4
  %37 = ptrtoint ptr %ingress_binding_count.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ingress_binding_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.i = icmp ne i32 %38, 0
  %ingress = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %call7.i.i, i32 0, i32 4
  %frombool = zext i1 %tobool.i to i8
  %39 = ptrtoint ptr %ingress to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %frombool, ptr %ingress, align 4
  %40 = select i1 %tobool35.not, i1 %tobool.i, i1 false
  br i1 %40, label %land.lhs.true76, label %if.end67.if.end91_crit_edge

if.end67.if.end91_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end91

land.lhs.true76:                                  ; preds = %if.end67
  %41 = ptrtoint ptr %flower_min_prio to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flower_min_prio, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %42)
  %cmp78.not = icmp ult i32 %35, %42
  br i1 %cmp78.not, label %land.lhs.true76.if.end91_crit_edge, label %do.body81

land.lhs.true76.if.end91_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end91

do.body81:                                        ; preds = %land.lhs.true76
  %extack84 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %43 = ptrtoint ptr %extack84 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %extack84, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_mall_replace.__msg.5) #6
  %tobool85.not = icmp eq ptr %44, null
  br i1 %tobool85.not, label %do.body81.errout_crit_edge, label %if.then86

do.body81.errout_crit_edge:                       ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #8
  br label %errout

if.then86:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @mlxsw_sp_mall_replace.__msg.5, ptr %44, align 4
  br label %errout

if.end91:                                         ; preds = %land.lhs.true76.if.end91_crit_edge, %if.end67.if.end91_crit_edge
  %tobool96.not = xor i1 %tobool.i, true
  %or.cond = select i1 %tobool35.not, i1 %tobool96.not, i1 false
  br i1 %or.cond, label %land.lhs.true97, label %if.end91.if.end112_crit_edge

if.end91.if.end112_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

land.lhs.true97:                                  ; preds = %if.end91
  %46 = ptrtoint ptr %flower_max_prio to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flower_max_prio, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %47)
  %cmp99.not = icmp ugt i32 %35, %47
  br i1 %cmp99.not, label %land.lhs.true97.if.end112_crit_edge, label %do.body102

land.lhs.true97.if.end112_crit_edge:              ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

do.body102:                                       ; preds = %land.lhs.true97
  %extack105 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %48 = ptrtoint ptr %extack105 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %extack105, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_mall_replace.__msg.6) #6
  %tobool106.not = icmp eq ptr %49, null
  br i1 %tobool106.not, label %do.body102.errout_crit_edge, label %if.then107

do.body102.errout_crit_edge:                      ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #8
  br label %errout

if.then107:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @mlxsw_sp_mall_replace.__msg.6, ptr %49, align 4
  br label %errout

if.end112:                                        ; preds = %land.lhs.true97.if.end112_crit_edge, %if.end91.if.end112_crit_edge
  %51 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rule, align 4
  %entries = getelementptr inbounds %struct.flow_rule, ptr %52, i32 1
  %53 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %entries, align 8
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %54, label %if.end112.errout_crit_edge [
    i32 5, label %sw.bb
    i32 21, label %sw.bb115
  ]

if.end112.errout_crit_edge:                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %errout

sw.bb:                                            ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  %type = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %call7.i.i, i32 0, i32 3
  %56 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %type, align 8
  %57 = getelementptr inbounds %struct.flow_rule, ptr %52, i32 2
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 8
  %60 = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %call7.i.i, i32 0, i32 5
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %59, ptr %60, align 8
  br label %sw.epilog

sw.bb115:                                         ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  %type116 = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %call7.i.i, i32 0, i32 3
  %62 = ptrtoint ptr %type116 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %type116, align 8
  %63 = getelementptr inbounds %struct.flow_rule, ptr %52, i32 2
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 8
  %66 = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %call7.i.i, i32 0, i32 5
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %65, ptr %66, align 8
  %truncate = getelementptr inbounds %struct.anon.187, ptr %63, i32 0, i32 3
  %68 = ptrtoint ptr %truncate to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %truncate, align 4, !range !70
  %truncate120 = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 0, i32 3
  %70 = ptrtoint ptr %truncate120 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %truncate120, align 4
  %trunc_size = getelementptr inbounds %struct.flow_rule, ptr %52, i32 2, i32 0, i32 2
  %71 = ptrtoint ptr %trunc_size to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %trunc_size, align 8
  %trunc_size123 = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 0, i32 1
  %73 = ptrtoint ptr %trunc_size123 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %trunc_size123, align 4
  %rate = getelementptr inbounds %struct.flow_rule, ptr %52, i32 2, i32 0, i32 1
  %74 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rate, align 4
  %rate125 = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 0, i32 2
  %76 = ptrtoint ptr %rate125 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %rate125, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb115, %sw.bb
  %extack130 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %sw.epilog
  %binding.0.in = phi ptr [ %block, %sw.epilog ], [ %binding.0, %for.body.for.cond_crit_edge ]
  %77 = ptrtoint ptr %binding.0.in to i32
  call void @__asan_load4_noabort(i32 %77)
  %binding.0 = load ptr, ptr %binding.0.in, align 4
  %cmp127.not = icmp eq ptr %binding.0, %block
  br i1 %cmp127.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %mlxsw_sp_port = getelementptr inbounds %struct.mlxsw_sp_flow_block_binding, ptr %binding.0, i32 0, i32 1
  %78 = ptrtoint ptr %mlxsw_sp_port to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mlxsw_sp_port, align 4
  %80 = ptrtoint ptr %extack130 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %extack130, align 4
  %call131 = call fastcc i32 @mlxsw_sp_mall_port_rule_add(ptr noundef %79, ptr noundef nonnull %call7.i.i, ptr noundef %81)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %for.body.for.cond_crit_edge, label %for.cond153.preheader

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.cond153.preheader:                            ; preds = %for.body
  %binding.1.in249 = getelementptr inbounds %struct.list_head, ptr %binding.0, i32 0, i32 1
  %82 = ptrtoint ptr %binding.1.in249 to i32
  call void @__asan_load4_noabort(i32 %82)
  %binding.1250 = load ptr, ptr %binding.1.in249, align 4
  %cmp156.not251 = icmp eq ptr %binding.1250, %block
  br i1 %cmp156.not251, label %for.cond153.preheader.errout_crit_edge, label %for.cond153.preheader.for.body159_crit_edge

for.cond153.preheader.for.body159_crit_edge:      ; preds = %for.cond153.preheader
  br label %for.body159

for.cond153.preheader.errout_crit_edge:           ; preds = %for.cond153.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %errout

for.end:                                          ; preds = %for.cond
  %rule_count = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %block, i32 0, i32 4
  %83 = ptrtoint ptr %rule_count to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rule_count, align 4
  %inc = add i32 %84, 1
  store i32 %inc, ptr %rule_count, align 4
  %85 = ptrtoint ptr %ingress to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %ingress, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool141.not = icmp eq i8 %86, 0
  %ingress_blocker_rule_count = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %block, i32 0, i32 6
  %egress_blocker_rule_count = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %block, i32 0, i32 7
  %ingress_blocker_rule_count.sink255 = select i1 %tobool141.not, ptr %ingress_blocker_rule_count, ptr %egress_blocker_rule_count
  %87 = ptrtoint ptr %ingress_blocker_rule_count.sink255 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %ingress_blocker_rule_count.sink255, align 4
  %inc145 = add i32 %88, 1
  store i32 %inc145, ptr %ingress_blocker_rule_count.sink255, align 4
  %mall = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %block, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %block, i32 0, i32 1, i32 0, i32 1
  %89 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %90, ptr noundef %mall) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add_tail.exit_crit_edge

for.end.list_add_tail.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %91 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %92 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %mall, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %93 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %prev3.i.i, align 4
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %call7.i.i, ptr %90, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.end.list_add_tail.exit_crit_edge
  call fastcc void @mlxsw_sp_mall_prio_update(ptr noundef %block)
  br label %cleanup

for.body159:                                      ; preds = %for.body159.for.body159_crit_edge, %for.cond153.preheader.for.body159_crit_edge
  %binding.1252 = phi ptr [ %binding.1, %for.body159.for.body159_crit_edge ], [ %binding.1250, %for.cond153.preheader.for.body159_crit_edge ]
  %mlxsw_sp_port160 = getelementptr inbounds %struct.mlxsw_sp_flow_block_binding, ptr %binding.1252, i32 0, i32 1
  %95 = ptrtoint ptr %mlxsw_sp_port160 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mlxsw_sp_port160, align 4
  call fastcc void @mlxsw_sp_mall_port_rule_del(ptr noundef %96, ptr noundef nonnull %call7.i.i)
  %binding.1.in = getelementptr inbounds %struct.list_head, ptr %binding.1252, i32 0, i32 1
  %97 = ptrtoint ptr %binding.1.in to i32
  call void @__asan_load4_noabort(i32 %97)
  %binding.1 = load ptr, ptr %binding.1.in, align 4
  %cmp156.not = icmp eq ptr %binding.1, %block
  br i1 %cmp156.not, label %for.body159.errout_crit_edge, label %for.body159.for.body159_crit_edge

for.body159.for.body159_crit_edge:                ; preds = %for.body159
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body159

for.body159.errout_crit_edge:                     ; preds = %for.body159
  call void @__sanitizer_cov_trace_pc() #8
  br label %errout

errout:                                           ; preds = %for.body159.errout_crit_edge, %for.cond153.preheader.errout_crit_edge, %if.end112.errout_crit_edge, %if.then107, %do.body102.errout_crit_edge, %if.then86, %do.body81.errout_crit_edge
  %err.0 = phi i32 [ -95, %if.then86 ], [ -95, %do.body81.errout_crit_edge ], [ -95, %if.then107 ], [ -95, %do.body102.errout_crit_edge ], [ -95, %if.end112.errout_crit_edge ], [ %call131, %for.cond153.preheader.errout_crit_edge ], [ %call131, %for.body159.errout_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %errout, %list_add_tail.exit, %if.end63.cleanup_crit_edge, %if.then58, %do.body53.cleanup_crit_edge, %if.then43, %do.body38.cleanup_crit_edge, %if.then26, %do.body21.cleanup_crit_edge, %if.then13, %do.body8.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %errout ], [ 0, %list_add_tail.exit ], [ -95, %if.then3 ], [ -95, %do.body.cleanup_crit_edge ], [ -95, %if.then13 ], [ -95, %do.body8.cleanup_crit_edge ], [ -95, %if.then26 ], [ -95, %do.body21.cleanup_crit_edge ], [ %call34, %if.then43 ], [ %call34, %do.body38.cleanup_crit_edge ], [ -95, %if.then58 ], [ -95, %do.body53.cleanup_crit_edge ], [ -12, %if.end63.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flower_max_prio) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flower_min_prio) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_flower_prio_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_mall_port_rule_add(ptr noundef %mlxsw_sp_port, ptr noundef %mall_entry, ptr noundef %extack) unnamed_addr #0 align 64 {
entry:
  %trigger.i = alloca %struct.mlxsw_sp_sample_trigger, align 8
  %agent_parms.i = alloca %struct.mlxsw_sp_span_agent_parms, align 4
  %parms.i = alloca %struct.mlxsw_sp_span_trigger_parms, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %mall_entry, i32 0, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %1, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %mlxsw_sp1.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %3 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mlxsw_sp1.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %agent_parms.i) #6
  %5 = getelementptr inbounds i8, ptr %agent_parms.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parms.i) #6
  %7 = ptrtoint ptr %parms.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %parms.i, align 4, !annotation !69
  %8 = getelementptr inbounds %struct.mlxsw_sp_span_trigger_parms, ptr %parms.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !69
  %10 = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %mall_entry, i32 0, i32 5
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end4.i

do.body.i:                                        ; preds = %sw.bb
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_mall_port_mirror_add.__msg) #6
  %tobool2.not.i = icmp eq ptr %extack, null
  br i1 %tobool2.not.i, label %do.body.i.mlxsw_sp_mall_port_mirror_add.exit_crit_edge, label %if.then3.i

do.body.i.mlxsw_sp_mall_port_mirror_add.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxsw_sp_mall_port_mirror_add.exit

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mlxsw_sp_mall_port_mirror_add.__msg, ptr %extack, align 4
  br label %mlxsw_sp_mall_port_mirror_add.exit

if.end4.i:                                        ; preds = %sw.bb
  %14 = ptrtoint ptr %agent_parms.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %agent_parms.i, align 4
  %span_id.i = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %mall_entry, i32 0, i32 5, i32 0, i32 0, i32 1
  %call.i = call i32 @mlxsw_sp_span_agent_get(ptr noundef %4, ptr noundef %span_id.i, ptr noundef nonnull %agent_parms.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.not.i, label %if.end17.i, label %do.body9.i

do.body9.i:                                       ; preds = %if.end4.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_mall_port_mirror_add.__msg.7) #6
  %tobool11.not.i = icmp eq ptr %extack, null
  br i1 %tobool11.not.i, label %do.body9.i.mlxsw_sp_mall_port_mirror_add.exit_crit_edge, label %if.then12.i

do.body9.i.mlxsw_sp_mall_port_mirror_add.exit_crit_edge: ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxsw_sp_mall_port_mirror_add.exit

if.then12.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @mlxsw_sp_mall_port_mirror_add.__msg.7, ptr %extack, align 4
  br label %mlxsw_sp_mall_port_mirror_add.exit

if.end17.i:                                       ; preds = %if.end4.i
  %ingress.i = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %mall_entry, i32 0, i32 4
  %16 = ptrtoint ptr %ingress.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ingress.i, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool18.i = icmp ne i8 %17, 0
  %call19.i = call i32 @mlxsw_sp_span_analyzed_port_get(ptr noundef %mlxsw_sp_port, i1 noundef zeroext %tobool18.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end30.i, label %do.body22.i

do.body22.i:                                      ; preds = %if.end17.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_mall_port_mirror_add.__msg.8) #6
  %tobool24.not.i = icmp eq ptr %extack, null
  br i1 %tobool24.not.i, label %do.body22.i.err_analyzed_port_get.i_crit_edge, label %if.then25.i

do.body22.i.err_analyzed_port_get.i_crit_edge:    ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_analyzed_port_get.i

if.then25.i:                                      ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mlxsw_sp_mall_port_mirror_add.__msg.8, ptr %extack, align 4
  br label %err_analyzed_port_get.i

if.end30.i:                                       ; preds = %if.end17.i
  %19 = ptrtoint ptr %ingress.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ingress.i, align 4, !range !70
  %21 = xor i8 %20, 1
  %22 = zext i8 %21 to i32
  %23 = ptrtoint ptr %span_id.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %span_id.i, align 4
  %25 = ptrtoint ptr %parms.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %parms.i, align 4
  %26 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %8, align 4
  %call35.i = call i32 @mlxsw_sp_span_agent_bind(ptr noundef %4, i32 noundef %22, ptr noundef %mlxsw_sp_port, ptr noundef nonnull %parms.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end30.i.mlxsw_sp_mall_port_mirror_add.exit_crit_edge, label %do.body38.i

if.end30.i.mlxsw_sp_mall_port_mirror_add.exit_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxsw_sp_mall_port_mirror_add.exit

do.body38.i:                                      ; preds = %if.end30.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_mall_port_mirror_add.__msg.9) #6
  %tobool40.not.i = icmp eq ptr %extack, null
  br i1 %tobool40.not.i, label %do.body38.i.if.end43.i_crit_edge, label %if.then41.i

do.body38.i.if.end43.i_crit_edge:                 ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.i

if.then41.i:                                      ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @mlxsw_sp_mall_port_mirror_add.__msg.9, ptr %extack, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then41.i, %do.body38.i.if.end43.i_crit_edge
  %28 = ptrtoint ptr %ingress.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ingress.i, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool48.i = icmp ne i8 %29, 0
  call void @mlxsw_sp_span_analyzed_port_put(ptr noundef %mlxsw_sp_port, i1 noundef zeroext %tobool48.i) #6
  br label %err_analyzed_port_get.i

err_analyzed_port_get.i:                          ; preds = %if.end43.i, %if.then25.i, %do.body22.i.err_analyzed_port_get.i_crit_edge
  %err.0.i = phi i32 [ %call35.i, %if.end43.i ], [ %call19.i, %if.then25.i ], [ %call19.i, %do.body22.i.err_analyzed_port_get.i_crit_edge ]
  %30 = ptrtoint ptr %span_id.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %span_id.i, align 4
  call void @mlxsw_sp_span_agent_put(ptr noundef %4, i32 noundef %31) #6
  br label %mlxsw_sp_mall_port_mirror_add.exit

mlxsw_sp_mall_port_mirror_add.exit:               ; preds = %err_analyzed_port_get.i, %if.end30.i.mlxsw_sp_mall_port_mirror_add.exit_crit_edge, %if.then12.i, %do.body9.i.mlxsw_sp_mall_port_mirror_add.exit_crit_edge, %if.then3.i, %do.body.i.mlxsw_sp_mall_port_mirror_add.exit_crit_edge
  %retval.0.i = phi i32 [ %err.0.i, %err_analyzed_port_get.i ], [ -22, %if.then3.i ], [ -22, %do.body.i.mlxsw_sp_mall_port_mirror_add.exit_crit_edge ], [ %call.i, %if.then12.i ], [ %call.i, %do.body9.i.mlxsw_sp_mall_port_mirror_add.exit_crit_edge ], [ 0, %if.end30.i.mlxsw_sp_mall_port_mirror_add.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parms.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %agent_parms.i) #6
  br label %return

sw.bb1:                                           ; preds = %entry
  %mlxsw_sp1.i22 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %32 = ptrtoint ptr %mlxsw_sp1.i22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mlxsw_sp1.i22, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %trigger.i) #6
  %34 = ptrtoint ptr %trigger.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 -1, ptr %trigger.i, align 8, !annotation !69
  %ingress.i23 = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %mall_entry, i32 0, i32 4
  %35 = ptrtoint ptr %ingress.i23 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ingress.i23, align 4, !range !70
  %37 = xor i8 %36, 1
  %38 = zext i8 %37 to i32
  store i32 %38, ptr %trigger.i, align 8
  %local_port.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  %39 = ptrtoint ptr %local_port.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %local_port.i, align 4
  %local_port3.i = getelementptr inbounds %struct.mlxsw_sp_sample_trigger, ptr %trigger.i, i32 0, i32 1
  %41 = ptrtoint ptr %local_port3.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %local_port3.i, align 4
  %42 = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %mall_entry, i32 0, i32 5
  %call.i24 = call i32 @mlxsw_sp_sample_trigger_params_set(ptr noundef %33, ptr noundef nonnull %trigger.i, ptr noundef %42, ptr noundef %extack) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool4.not.i = icmp eq i32 %call.i24, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %sw.bb1.mlxsw_sp_mall_port_sample_add.exit_crit_edge

sw.bb1.mlxsw_sp_mall_port_sample_add.exit_crit_edge: ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxsw_sp_mall_port_sample_add.exit

if.end6.i:                                        ; preds = %sw.bb1
  %mall_ops.i = getelementptr inbounds %struct.mlxsw_sp, ptr %33, i32 0, i32 41
  %43 = ptrtoint ptr %mall_ops.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mall_ops.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %call7.i = call i32 %46(ptr noundef %33, ptr noundef %mlxsw_sp_port, ptr noundef %mall_entry, ptr noundef %extack) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.mlxsw_sp_mall_port_sample_add.exit_crit_edge, label %err_port_sample_set.i

if.end6.i.mlxsw_sp_mall_port_sample_add.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxsw_sp_mall_port_sample_add.exit

err_port_sample_set.i:                            ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @mlxsw_sp_sample_trigger_params_unset(ptr noundef %33, ptr noundef nonnull %trigger.i) #6
  br label %mlxsw_sp_mall_port_sample_add.exit

mlxsw_sp_mall_port_sample_add.exit:               ; preds = %err_port_sample_set.i, %if.end6.i.mlxsw_sp_mall_port_sample_add.exit_crit_edge, %sw.bb1.mlxsw_sp_mall_port_sample_add.exit_crit_edge
  %retval.0.i25 = phi i32 [ %call7.i, %err_port_sample_set.i ], [ %call.i24, %sw.bb1.mlxsw_sp_mall_port_sample_add.exit_crit_edge ], [ 0, %if.end6.i.mlxsw_sp_mall_port_sample_add.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %trigger.i) #6
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 163, i32 noundef 9, ptr noundef null) #6
  br label %return

return:                                           ; preds = %do.end, %mlxsw_sp_mall_port_sample_add.exit, %mlxsw_sp_mall_port_mirror_add.exit
  %retval.0 = phi i32 [ -22, %do.end ], [ %retval.0.i25, %mlxsw_sp_mall_port_sample_add.exit ], [ %retval.0.i, %mlxsw_sp_mall_port_mirror_add.exit ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_mall_prio_update(ptr noundef %block) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mall = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %block, i32 0, i32 1
  %0 = ptrtoint ptr %mall to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mall, align 4
  %cmp.i.not = icmp eq ptr %1, %mall
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %min_prio = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %block, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %min_prio to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %min_prio, align 4
  %max_prio = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %block, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %max_prio to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %max_prio, align 4
  %4 = ptrtoint ptr %mall to i32
  call void @__asan_load4_noabort(i32 %4)
  %mall_entry.044 = load ptr, ptr %mall, align 4
  %cmp.not45 = icmp eq ptr %mall_entry.044, %mall
  br i1 %cmp.not45, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %mall_entry.046 = phi ptr [ %mall_entry.0, %for.inc.for.body_crit_edge ], [ %mall_entry.044, %if.end.for.body_crit_edge ]
  %priority = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %mall_entry.046, i32 0, i32 2
  %5 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %priority, align 4
  %7 = ptrtoint ptr %min_prio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %min_prio, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp10 = icmp ult i32 %6, %8
  br i1 %cmp10, label %if.then11, label %for.body.if.end15_crit_edge

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %min_prio to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %min_prio, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %for.body.if.end15_crit_edge
  %10 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %priority, align 4
  %12 = ptrtoint ptr %max_prio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_prio, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp19 = icmp ugt i32 %11, %13
  br i1 %cmp19, label %if.then20, label %if.end15.for.inc_crit_edge

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %max_prio to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %max_prio, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %if.end15.for.inc_crit_edge
  %15 = ptrtoint ptr %mall_entry.046 to i32
  call void @__asan_load4_noabort(i32 %15)
  %mall_entry.0 = load ptr, ptr %mall_entry.046, align 4
  %cmp.not = icmp eq ptr %mall_entry.0, %mall
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_mall_port_rule_del(ptr noundef %mlxsw_sp_port, ptr noundef %mall_entry) unnamed_addr #0 align 64 {
entry:
  %trigger.i = alloca %struct.mlxsw_sp_sample_trigger, align 8
  %parms.i = alloca %struct.mlxsw_sp_span_trigger_parms, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %mall_entry, i32 0, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %1, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mlxsw_sp1.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %3 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mlxsw_sp1.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parms.i) #6
  %5 = getelementptr inbounds %struct.mlxsw_sp_span_trigger_parms, ptr %parms.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !69
  %ingress.i = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %mall_entry, i32 0, i32 4
  %7 = ptrtoint ptr %ingress.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ingress.i, align 4, !range !70
  %9 = xor i8 %8, 1
  %10 = zext i8 %9 to i32
  %span_id.i = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %mall_entry, i32 0, i32 5, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %span_id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %span_id.i, align 4
  %13 = ptrtoint ptr %parms.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %parms.i, align 4
  call void @mlxsw_sp_span_agent_unbind(ptr noundef %4, i32 noundef %10, ptr noundef %mlxsw_sp_port, ptr noundef nonnull %parms.i) #6
  %14 = ptrtoint ptr %ingress.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ingress.i, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool4.i = icmp ne i8 %15, 0
  call void @mlxsw_sp_span_analyzed_port_put(ptr noundef %mlxsw_sp_port, i1 noundef zeroext %tobool4.i) #6
  %16 = ptrtoint ptr %span_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %span_id.i, align 4
  call void @mlxsw_sp_span_agent_put(ptr noundef %4, i32 noundef %17) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parms.i) #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mlxsw_sp1.i20 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %18 = ptrtoint ptr %mlxsw_sp1.i20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mlxsw_sp1.i20, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %trigger.i) #6
  %20 = ptrtoint ptr %trigger.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 -1, ptr %trigger.i, align 8, !annotation !69
  %ingress.i21 = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %mall_entry, i32 0, i32 4
  %21 = ptrtoint ptr %ingress.i21 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ingress.i21, align 4, !range !70
  %23 = xor i8 %22, 1
  %24 = zext i8 %23 to i32
  store i32 %24, ptr %trigger.i, align 8
  %local_port.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  %25 = ptrtoint ptr %local_port.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %local_port.i, align 4
  %local_port3.i = getelementptr inbounds %struct.mlxsw_sp_sample_trigger, ptr %trigger.i, i32 0, i32 1
  %27 = ptrtoint ptr %local_port3.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %local_port3.i, align 4
  %mall_ops.i = getelementptr inbounds %struct.mlxsw_sp, ptr %19, i32 0, i32 41
  %28 = ptrtoint ptr %mall_ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mall_ops.i, align 4
  %sample_del.i = getelementptr inbounds %struct.mlxsw_sp_mall_ops, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %sample_del.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sample_del.i, align 4
  tail call void %31(ptr noundef %19, ptr noundef %mlxsw_sp_port, ptr noundef %mall_entry) #6
  call void @mlxsw_sp_sample_trigger_params_unset(ptr noundef %19, ptr noundef nonnull %trigger.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %trigger.i) #6
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 180, i32 noundef 9, ptr noundef null) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_mall_destroy(ptr noundef %block, ptr nocapture noundef readonly %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %f, i32 0, i32 4
  %0 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie, align 8
  %mall.i = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %block, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %mall_entry.0.in.i = phi ptr [ %mall.i, %entry ], [ %mall_entry.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %mall_entry.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %mall_entry.0.i = load ptr, ptr %mall_entry.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mall_entry.0.i, %mall.i
  br i1 %cmp.not.i, label %for.cond.i.do.body_crit_edge, label %for.body.i

for.cond.i.do.body_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.body.i:                                       ; preds = %for.cond.i
  %cookie4.i = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %mall_entry.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %cookie4.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cookie4.i, align 4
  %cmp5.i = icmp eq i32 %4, %1
  br i1 %cmp5.i, label %mlxsw_sp_mall_entry_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

mlxsw_sp_mall_entry_find.exit:                    ; preds = %for.body.i
  %tobool.not = icmp eq ptr %mall_entry.0.i, null
  br i1 %tobool.not, label %mlxsw_sp_mall_entry_find.exit.do.body_crit_edge, label %if.end3

mlxsw_sp_mall_entry_find.exit.do.body_crit_edge:  ; preds = %mlxsw_sp_mall_entry_find.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %mlxsw_sp_mall_entry_find.exit.do.body_crit_edge, %for.cond.i.do.body_crit_edge
  %extack = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %5 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extack, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_mall_destroy.__msg) #6
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mlxsw_sp_mall_destroy.__msg, ptr %6, align 4
  br label %cleanup

if.end3:                                          ; preds = %mlxsw_sp_mall_entry_find.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %mall_entry.0.i) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end3.list_del.exit_crit_edge

if.end3.list_del.exit_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mall_entry.0.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %mall_entry.0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mall_entry.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end3.list_del.exit_crit_edge
  %14 = ptrtoint ptr %mall_entry.0.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %mall_entry.0.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mall_entry.0.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %ingress = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %mall_entry.0.i, i32 0, i32 4
  %16 = ptrtoint ptr %ingress to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ingress, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool4.not = icmp eq i8 %17, 0
  %ingress_blocker_rule_count = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %block, i32 0, i32 6
  %egress_blocker_rule_count = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %block, i32 0, i32 7
  %ingress_blocker_rule_count.sink54 = select i1 %tobool4.not, ptr %ingress_blocker_rule_count, ptr %egress_blocker_rule_count
  %18 = ptrtoint ptr %ingress_blocker_rule_count.sink54 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ingress_blocker_rule_count.sink54, align 4
  %dec6 = add i32 %19, -1
  store i32 %dec6, ptr %ingress_blocker_rule_count.sink54, align 4
  %rule_count = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %block, i32 0, i32 4
  %20 = ptrtoint ptr %rule_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rule_count, align 4
  %dec8 = add i32 %21, -1
  store i32 %dec8, ptr %rule_count, align 4
  %22 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %22)
  %binding.048 = load ptr, ptr %block, align 4
  %cmp.not49 = icmp eq ptr %binding.048, %block
  br i1 %cmp.not49, label %list_del.exit.do.end21_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  br label %for.body

list_del.exit.do.end21_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

for.body:                                         ; preds = %for.body.for.body_crit_edge, %list_del.exit.for.body_crit_edge
  %binding.050 = phi ptr [ %binding.0, %for.body.for.body_crit_edge ], [ %binding.048, %list_del.exit.for.body_crit_edge ]
  %mlxsw_sp_port = getelementptr inbounds %struct.mlxsw_sp_flow_block_binding, ptr %binding.050, i32 0, i32 1
  %23 = ptrtoint ptr %mlxsw_sp_port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mlxsw_sp_port, align 4
  tail call fastcc void @mlxsw_sp_mall_port_rule_del(ptr noundef %24, ptr noundef nonnull %mall_entry.0.i)
  %25 = ptrtoint ptr %binding.050 to i32
  call void @__asan_load4_noabort(i32 %25)
  %binding.0 = load ptr, ptr %binding.050, align 4
  %cmp.not = icmp eq ptr %binding.0, %block
  br i1 %cmp.not, label %for.body.do.end21_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.do.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

do.end21:                                         ; preds = %for.body.do.end21_crit_edge, %list_del.exit.do.end21_crit_edge
  %rcu = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %mall_entry.0.i, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 44 to ptr)) #6
  %26 = ptrtoint ptr %mall.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %mall.i, align 4
  %cmp.i.not.i = icmp eq ptr %27, %mall.i
  br i1 %cmp.i.not.i, label %do.end21.cleanup_crit_edge, label %if.end.i

do.end21.cleanup_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %do.end21
  %min_prio.i = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %block, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %min_prio.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %min_prio.i, align 4
  %max_prio.i = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %block, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %max_prio.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %max_prio.i, align 4
  br label %for.body.i42

for.body.i42:                                     ; preds = %for.inc.i.for.body.i42_crit_edge, %if.end.i
  %mall_entry.046.i = phi ptr [ %mall_entry.0.i43, %for.inc.i.for.body.i42_crit_edge ], [ %27, %if.end.i ]
  %priority.i = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %mall_entry.046.i, i32 0, i32 2
  %30 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %priority.i, align 4
  %32 = ptrtoint ptr %min_prio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %min_prio.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp10.i = icmp ult i32 %31, %33
  br i1 %cmp10.i, label %if.then11.i, label %for.body.i42.if.end15.i_crit_edge

for.body.i42.if.end15.i_crit_edge:                ; preds = %for.body.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.then11.i:                                      ; preds = %for.body.i42
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %min_prio.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %31, ptr %min_prio.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then11.i, %for.body.i42.if.end15.i_crit_edge
  %35 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %priority.i, align 4
  %37 = ptrtoint ptr %max_prio.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_prio.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp19.i = icmp ugt i32 %36, %38
  br i1 %cmp19.i, label %if.then20.i, label %if.end15.i.for.inc.i_crit_edge

if.end15.i.for.inc.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then20.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %max_prio.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %36, ptr %max_prio.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then20.i, %if.end15.i.for.inc.i_crit_edge
  %40 = ptrtoint ptr %mall_entry.046.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %mall_entry.0.i43 = load ptr, ptr %mall_entry.046.i, align 4
  %cmp.not.i44 = icmp eq ptr %mall_entry.0.i43, %mall.i
  br i1 %cmp.not.i44, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i42_crit_edge

for.inc.i.for.body.i42_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i42

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %do.end21.cleanup_crit_edge, %if.then2, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_mall_port_bind(ptr noundef readonly %block, ptr noundef %mlxsw_sp_port, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mall = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %block, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %mall_entry.0.in = phi ptr [ %mall, %entry ], [ %mall_entry.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %mall_entry.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %mall_entry.0 = load ptr, ptr %mall_entry.0.in, align 4
  %cmp.not = icmp eq ptr %mall_entry.0, %mall
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %call = tail call fastcc i32 @mlxsw_sp_mall_port_rule_add(ptr noundef %mlxsw_sp_port, ptr noundef %mall_entry.0, ptr noundef %extack)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %for.cond13.preheader

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.cond13.preheader:                             ; preds = %for.body
  %mall_entry.1.in40 = getelementptr inbounds %struct.list_head, ptr %mall_entry.0, i32 0, i32 1
  %1 = ptrtoint ptr %mall_entry.1.in40 to i32
  call void @__asan_load4_noabort(i32 %1)
  %mall_entry.141 = load ptr, ptr %mall_entry.1.in40, align 4
  %cmp17.not42 = icmp eq ptr %mall_entry.141, %mall
  br i1 %cmp17.not42, label %for.cond13.preheader.cleanup_crit_edge, label %for.cond13.preheader.for.body19_crit_edge

for.cond13.preheader.for.body19_crit_edge:        ; preds = %for.cond13.preheader
  br label %for.body19

for.cond13.preheader.cleanup_crit_edge:           ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %for.cond13.preheader.for.body19_crit_edge
  %mall_entry.143 = phi ptr [ %mall_entry.1, %for.body19.for.body19_crit_edge ], [ %mall_entry.141, %for.cond13.preheader.for.body19_crit_edge ]
  tail call fastcc void @mlxsw_sp_mall_port_rule_del(ptr noundef %mlxsw_sp_port, ptr noundef %mall_entry.143)
  %mall_entry.1.in = getelementptr inbounds %struct.list_head, ptr %mall_entry.143, i32 0, i32 1
  %2 = ptrtoint ptr %mall_entry.1.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %mall_entry.1 = load ptr, ptr %mall_entry.1.in, align 4
  %cmp17.not = icmp eq ptr %mall_entry.1, %mall
  br i1 %cmp17.not, label %for.body19.cleanup_crit_edge, label %for.body19.for.body19_crit_edge

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body19

for.body19.cleanup_crit_edge:                     ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body19.cleanup_crit_edge, %for.cond13.preheader.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %for.cond13.preheader.cleanup_crit_edge ], [ %call, %for.body19.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_mall_port_unbind(ptr noundef readonly %block, ptr noundef %mlxsw_sp_port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mall = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %block, i32 0, i32 1
  %0 = ptrtoint ptr %mall to i32
  call void @__asan_load4_noabort(i32 %0)
  %mall_entry.012 = load ptr, ptr %mall, align 4
  %cmp.not13 = icmp eq ptr %mall_entry.012, %mall
  br i1 %cmp.not13, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %mall_entry.014 = phi ptr [ %mall_entry.0, %for.body.for.body_crit_edge ], [ %mall_entry.012, %entry.for.body_crit_edge ]
  tail call fastcc void @mlxsw_sp_mall_port_rule_del(ptr noundef %mlxsw_sp_port, ptr noundef %mall_entry.014)
  %1 = ptrtoint ptr %mall_entry.014 to i32
  call void @__asan_load4_noabort(i32 %1)
  %mall_entry.0 = load ptr, ptr %mall_entry.014, align 4
  %cmp.not = icmp eq ptr %mall_entry.0, %mall
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlxsw_sp_mall_prio_get(ptr noundef %block, i32 noundef %chain_index, ptr nocapture noundef writeonly %p_min_prio, ptr nocapture noundef writeonly %p_max_prio) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chain_index)
  %tobool.not = icmp eq i32 %chain_index, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %mall = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %block, i32 0, i32 1
  %0 = ptrtoint ptr %mall to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mall, align 4
  %cmp.i.not = icmp eq ptr %1, %mall
  br i1 %cmp.i.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %min_prio = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %block, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %min_prio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min_prio, align 4
  %4 = ptrtoint ptr %p_min_prio to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %p_min_prio, align 4
  %max_prio = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %block, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %max_prio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_prio, align 4
  %7 = ptrtoint ptr %p_max_prio to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %p_max_prio, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %lor.lhs.false.return_crit_edge ], [ -2, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp1_mall_sample_add(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readonly %mlxsw_sp_port, ptr nocapture noundef readonly %mall_entry, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rate1 = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %mall_entry, i32 0, i32 5, i32 0, i32 0, i32 2
  %0 = ptrtoint ptr %rate1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rate1, align 4
  %ingress = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %mall_entry, i32 0, i32 4
  %2 = ptrtoint ptr %ingress to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ingress, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp1_mall_sample_add.__msg) #6
  %tobool2.not = icmp eq ptr %extack, null
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mlxsw_sp1_mall_sample_add.__msg, ptr %extack, align 4
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -794967296, i32 %1)
  %cmp = icmp ugt i32 %1, -794967296
  br i1 %cmp, label %do.body6, label %if.end14

do.body6:                                         ; preds = %if.end4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp1_mall_sample_add.__msg.10) #6
  %tobool8.not = icmp eq ptr %extack, null
  br i1 %tobool8.not, label %do.body6.cleanup_crit_edge, label %if.then9

do.body6.cleanup_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mlxsw_sp1_mall_sample_add.__msg.10, ptr %extack, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call fastcc i32 @mlxsw_sp_mall_port_sample_set(ptr noundef %mlxsw_sp_port, i1 noundef zeroext true, i32 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then9, %do.body6.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end14 ], [ -95, %if.then3 ], [ -95, %do.body.cleanup_crit_edge ], [ -95, %if.then9 ], [ -95, %do.body6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp1_mall_sample_del(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readonly %mlxsw_sp_port, ptr nocapture noundef readnone %mall_entry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mlxsw_sp_mall_port_sample_set(ptr noundef %mlxsw_sp_port, i1 noundef zeroext false, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_mall_sample_add(ptr noundef %mlxsw_sp, ptr noundef %mlxsw_sp_port, ptr noundef %mall_entry, ptr noundef writeonly %extack) #0 align 64 {
entry:
  %trigger_parms = alloca %struct.mlxsw_sp_span_trigger_parms, align 8
  %agent_parms = alloca %struct.mlxsw_sp_span_agent_parms, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %trigger_parms) #6
  %0 = ptrtoint ptr %trigger_parms to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %trigger_parms, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %agent_parms) #6
  %1 = call ptr @memcpy(ptr %agent_parms, ptr @__const.mlxsw_sp2_mall_sample_add.agent_parms, i32 12)
  %rate1 = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %mall_entry, i32 0, i32 5, i32 0, i32 0, i32 2
  %2 = ptrtoint ptr %rate1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate1, align 4
  %span_id = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %mall_entry, i32 0, i32 5, i32 0, i32 1
  %call = call i32 @mlxsw_sp_span_agent_get(ptr noundef %mlxsw_sp, ptr noundef %span_id, ptr noundef nonnull %agent_parms) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %do.body

do.body:                                          ; preds = %entry
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp2_mall_sample_add.__msg) #6
  %tobool2.not = icmp eq ptr %extack, null
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mlxsw_sp2_mall_sample_add.__msg, ptr %extack, align 4
  br label %cleanup

if.end4:                                          ; preds = %entry
  %ingress = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %mall_entry, i32 0, i32 4
  %5 = ptrtoint ptr %ingress to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ingress, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5 = icmp ne i8 %6, 0
  %call6 = call i32 @mlxsw_sp_span_analyzed_port_get(ptr noundef %mlxsw_sp_port, i1 noundef zeroext %tobool5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end17, label %do.body9

do.body9:                                         ; preds = %if.end4
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp2_mall_sample_add.__msg.23) #6
  %tobool11.not = icmp eq ptr %extack, null
  br i1 %tobool11.not, label %do.body9.err_analyzed_port_get_crit_edge, label %if.then12

do.body9.err_analyzed_port_get_crit_edge:         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_analyzed_port_get

if.then12:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mlxsw_sp2_mall_sample_add.__msg.23, ptr %extack, align 4
  br label %err_analyzed_port_get

if.end17:                                         ; preds = %if.end4
  %8 = ptrtoint ptr %ingress to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ingress, align 4, !range !70
  %10 = xor i8 %9, 1
  %11 = zext i8 %10 to i32
  %12 = ptrtoint ptr %span_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %span_id, align 4
  %14 = ptrtoint ptr %trigger_parms to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %trigger_parms, align 8
  %probability_rate = getelementptr inbounds %struct.mlxsw_sp_span_trigger_parms, ptr %trigger_parms, i32 0, i32 1
  %15 = ptrtoint ptr %probability_rate to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %3, ptr %probability_rate, align 4
  %call22 = call i32 @mlxsw_sp_span_agent_bind(ptr noundef %mlxsw_sp, i32 noundef %11, ptr noundef %mlxsw_sp_port, ptr noundef nonnull %trigger_parms) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end17.cleanup_crit_edge, label %do.body25

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body25:                                        ; preds = %if.end17
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp2_mall_sample_add.__msg.24) #6
  %tobool27.not = icmp eq ptr %extack, null
  br i1 %tobool27.not, label %do.body25.if.end30_crit_edge, label %if.then28

do.body25.if.end30_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then28:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mlxsw_sp2_mall_sample_add.__msg.24, ptr %extack, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %do.body25.if.end30_crit_edge
  %17 = ptrtoint ptr %ingress to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ingress, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool35 = icmp ne i8 %18, 0
  call void @mlxsw_sp_span_analyzed_port_put(ptr noundef %mlxsw_sp_port, i1 noundef zeroext %tobool35) #6
  br label %err_analyzed_port_get

err_analyzed_port_get:                            ; preds = %if.end30, %if.then12, %do.body9.err_analyzed_port_get_crit_edge
  %err.0 = phi i32 [ %call22, %if.end30 ], [ %call6, %if.then12 ], [ %call6, %do.body9.err_analyzed_port_get_crit_edge ]
  %19 = ptrtoint ptr %span_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %span_id, align 4
  call void @mlxsw_sp_span_agent_put(ptr noundef %mlxsw_sp, i32 noundef %20) #6
  br label %cleanup

cleanup:                                          ; preds = %err_analyzed_port_get, %if.end17.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_analyzed_port_get ], [ %call, %if.then3 ], [ %call, %do.body.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %agent_parms) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %trigger_parms) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp2_mall_sample_del(ptr noundef %mlxsw_sp, ptr noundef %mlxsw_sp_port, ptr nocapture noundef readonly %mall_entry) #0 align 64 {
entry:
  %trigger_parms = alloca %struct.mlxsw_sp_span_trigger_parms, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %trigger_parms) #6
  %0 = ptrtoint ptr %trigger_parms to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %trigger_parms, align 8
  %ingress = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %mall_entry, i32 0, i32 4
  %1 = ptrtoint ptr %ingress to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ingress, align 4, !range !70
  %3 = xor i8 %2, 1
  %4 = zext i8 %3 to i32
  %span_id = getelementptr inbounds %struct.mlxsw_sp_mall_entry, ptr %mall_entry, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %span_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %span_id, align 4
  store i32 %6, ptr %trigger_parms, align 8
  call void @mlxsw_sp_span_agent_unbind(ptr noundef %mlxsw_sp, i32 noundef %4, ptr noundef %mlxsw_sp_port, ptr noundef nonnull %trigger_parms) #6
  %7 = ptrtoint ptr %ingress to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ingress, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3 = icmp ne i8 %8, 0
  call void @mlxsw_sp_span_analyzed_port_put(ptr noundef %mlxsw_sp_port, i1 noundef zeroext %tobool3) #6
  %9 = ptrtoint ptr %span_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %span_id, align 4
  call void @mlxsw_sp_span_agent_put(ptr noundef %mlxsw_sp, i32 noundef %10) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %trigger_parms) #6
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_span_agent_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_span_analyzed_port_get(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_span_agent_bind(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_span_analyzed_port_put(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_span_agent_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_sample_trigger_params_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_sample_trigger_params_unset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_span_agent_unbind(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_mall_port_sample_set(ptr nocapture noundef readonly %mlxsw_sp_port, i1 noundef zeroext %enable, i32 noundef %rate) unnamed_addr #0 align 64 {
entry:
  %mpsc_pl = alloca [28 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %mpsc_pl) #6
  %local_port = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  %2 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %local_port, align 4
  %4 = call ptr @memset(ptr %mpsc_pl, i32 0, i32 28)
  %conv1.i = zext i16 %3 to i32
  %and.i.i = shl nuw i32 %conv1.i, 16
  %spec.select.i.i.i = and i32 %and.i.i, 16711680
  %5 = ptrtoint ptr %mpsc_pl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mpsc_pl, align 4
  %and7.i.i.i = and i32 %6, -16723969
  %or.i.i.i = or i32 %spec.select.i.i.i, %and7.i.i.i
  %7 = shl nuw nsw i32 %conv1.i, 4
  %and6.i26.i.i = and i32 %7, 12288
  %or.i30.i.i = or i32 %and6.i26.i.i, %or.i.i.i
  store i32 %or.i30.i.i, ptr %mpsc_pl, align 4
  %spec.select.i.i24.i = select i1 %enable, i32 1073741824, i32 0
  %arrayidx.i.i30.i = getelementptr inbounds i32, ptr %mpsc_pl, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i30.i, align 4
  %and7.i.i32.i = and i32 %9, -1073741825
  %or.i.i33.i = or i32 %spec.select.i.i24.i, %and7.i.i32.i
  store i32 %or.i.i33.i, ptr %arrayidx.i.i30.i, align 4
  %arrayidx.i.i59.i = getelementptr inbounds i32, ptr %mpsc_pl, i32 2
  %10 = ptrtoint ptr %arrayidx.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %rate, ptr %arrayidx.i.i59.i, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_write(ptr noundef %12, ptr noundef nonnull @mlxsw_reg_mpsc, ptr noundef nonnull %mpsc_pl) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %mpsc_pl) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !50, !51, !53, !54, !56, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @mlxsw_sp_mall_replace.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_matchall.c", i32 214, i32 3}
!2 = !{ptr @mlxsw_sp_mall_replace.__msg.1, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_matchall.c", i32 219, i32 3}
!4 = !{ptr @mlxsw_sp_mall_replace.__msg.2, !5, !"__msg", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_matchall.c", i32 224, i32 3}
!6 = !{ptr @mlxsw_sp_mall_replace.__msg.3, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_matchall.c", i32 232, i32 4}
!8 = !{ptr @mlxsw_sp_mall_replace.__msg.4, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_matchall.c", i32 242, i32 3}
!10 = !{ptr @mlxsw_sp_mall_replace.__msg.5, !11, !"__msg", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_matchall.c", i32 255, i32 3}
!12 = !{ptr @mlxsw_sp_mall_replace.__msg.6, !13, !"__msg", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_matchall.c", i32 261, i32 3}
!14 = !{ptr @mlxsw_sp_mall_destroy.__msg, !15, !"__msg", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_matchall.c", i32 318, i32 3}
!16 = !{ptr @mlxsw_sp1_mall_ops, !17, !"mlxsw_sp1_mall_ops", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_matchall.c", i32 406, i32 32}
!18 = !{ptr @mlxsw_sp2_mall_ops, !19, !"mlxsw_sp2_mall_ops", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_matchall.c", i32 475, i32 32}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_matchall.c", i32 163, i32 3}
!22 = !{ptr @mlxsw_sp_mall_port_mirror_add.__msg, !23, !"__msg", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_matchall.c", i32 37, i32 3}
!24 = !{ptr @mlxsw_sp_mall_port_mirror_add.__msg.7, !25, !"__msg", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_matchall.c", i32 45, i32 3}
!26 = !{ptr @mlxsw_sp_mall_port_mirror_add.__msg.8, !27, !"__msg", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_matchall.c", i32 52, i32 3}
!28 = !{ptr @mlxsw_sp_mall_port_mirror_add.__msg.9, !29, !"__msg", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_matchall.c", i32 63, i32 3}
!30 = !{ptr @mlxsw_sp1_mall_sample_add.__msg, !31, !"__msg", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_matchall.c", i32 387, i32 3}
!32 = !{ptr @mlxsw_sp1_mall_sample_add.__msg.10, !33, !"__msg", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_matchall.c", i32 392, i32 3}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @__mlxsw_item_offset._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @__mlxsw_item_offset._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10795, i32 1}
!42 = distinct !{null, !41, !"mlxsw_reg_mpsc_local_port_item", i1 false, i1 false}
!43 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !41, !"mlxsw_reg_mpsc_lp_msb_item", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10801, i32 1}
!47 = distinct !{null, !46, !"mlxsw_reg_mpsc_e_item", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10810, i32 1}
!50 = distinct !{null, !49, !"mlxsw_reg_mpsc_rate_item", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 10788, i32 1}
!53 = !{ptr @mlxsw_reg_mpsc, !52, !"mlxsw_reg_mpsc", i1 false, i1 false}
!54 = !{ptr @mlxsw_sp2_mall_sample_add.__msg, !55, !"__msg", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_matchall.c", i32 428, i32 3}
!56 = !{ptr @mlxsw_sp2_mall_sample_add.__msg.23, !57, !"__msg", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_matchall.c", i32 435, i32 3}
!58 = !{ptr @mlxsw_sp2_mall_sample_add.__msg.24, !59, !"__msg", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_matchall.c", i32 446, i32 3}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"auto-init"}
!70 = !{i8 0, i8 2}
