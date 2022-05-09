; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/flower/metadata.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/flower/metadata.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.15 }
%union.anon.15 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nfp_fl_flow_table_cmp_arg = type { ptr, i32 }
%struct.nfp_app = type { ptr, ptr, ptr, ptr, [3 x ptr], ptr, i32, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nfp_flower_priv = type { ptr, ptr, i32, i64, i64, i8, %struct.nfp_fl_stats_id, %struct.nfp_fl_mask_id, [1024 x %struct.hlist_head], i32, %struct.rhashtable, ptr, %struct.spinlock, %struct.rhashtable, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.nfp_fl_tunnel_offloads, %struct.atomic_t, %struct.wait_queue_head, %struct.nfp_mtu_conf, %struct.nfp_fl_lag, %struct.list_head, %struct.list_head, i32, i32, %struct.nfp_fl_internal_ports, %struct.delayed_work, i32, %struct.spinlock, i32, %struct.rhashtable, %struct.rhashtable, ptr, %struct.rhashtable }
%struct.nfp_fl_stats_id = type { %struct.circ_buf, i32, i8 }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.nfp_fl_mask_id = type { %struct.circ_buf, ptr, i8 }
%struct.hlist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.53, i32, %struct.spinlock }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { ptr, ptr }
%struct.nfp_fl_tunnel_offloads = type { %struct.rhashtable, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, %struct.ida, %struct.notifier_block }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.14 }
%union.anon.14 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nfp_mtu_conf = type { i32, i32, i8, %struct.wait_queue_head, %struct.spinlock }
%struct.nfp_fl_lag = type { %struct.delayed_work, %struct.mutex, %struct.list_head, %struct.ida, i32, i32, i8, i8, %struct.sk_buff_head }
%struct.list_head = type { ptr, ptr }
%struct.nfp_fl_internal_ports = type { %struct.idr, %struct.spinlock }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.callback_head = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.0, %union.anon.3, %union.anon.160, [48 x i8], %union.anon.161, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.163, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
%union.anon.160 = type { i64 }
%union.anon.161 = type { %struct.anon.162 }
%struct.anon.162 = type { i32, ptr }
%union.anon.163 = type { %struct.anon.164 }
%struct.anon.164 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.165, i32, i32, i32, i16, i16, %union.anon.167, i32, %union.anon.168, %union.anon.169, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.165 = type { i32 }
%union.anon.167 = type { i32 }
%union.anon.168 = type { i32 }
%union.anon.169 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nfp_fl_stats_frame = type { i32, i32, i64, i64 }
%struct.nfp_fl_stats = type { i64, i64, i64 }
%struct.nfp_fl_rule_metadata = type <{ i8, i8, i8, i8, i32, i64, i64, i32 }>
%struct.nfp_fl_payload = type { %struct.nfp_fl_rule_metadata, i32, %struct.rhash_head, %struct.callback_head, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i8, %struct.anon.197 }
%struct.rhash_head = type { ptr }
%struct.anon.197 = type { ptr, i16, i16 }
%struct.nfp_fl_stats_ctx_to_flow = type { %struct.rhash_head, i32, ptr }
%struct.nfp_mask_id_table = type { %struct.hlist_node, i32, i32, i8 }
%struct.nfp_fl_ct_zone_entry = type { i16, %struct.rhash_head, ptr, ptr, %struct.list_head, i32, %struct.list_head, i32, %struct.rhashtable, i32, %struct.list_head, i32, %struct.rhashtable, i32 }
%struct.nfp_fl_ct_map_entry = type { i32, %struct.rhash_head, ptr }
%struct.nf_flowtable = type { %struct.list_head, %struct.rhashtable, i32, ptr, %struct.delayed_work, i32, %struct.flow_block, %struct.rw_semaphore, %struct.possible_net_t }
%struct.flow_block = type { %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.possible_net_t = type { ptr }
%struct.flow_block_cb = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.flow_block_indr, i32 }
%struct.flow_block_indr = type { %struct.list_head, ptr, ptr, i32, ptr, ptr, ptr }

@nfp_flower_table_params = dso_local constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 0, i16 0, i16 32, i32 0, i16 0, i8 1, ptr @nfp_fl_key_hashfn, ptr @nfp_fl_obj_hashfn, ptr @nfp_fl_obj_cmpfn }, [36 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@nfp_compile_flow_metadata.__msg = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"nfp: invalid entry: cannot allocate new stats context\00", [42 x i8] zeroinitializer }, align 32
@stats_ctx_table_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 4, i16 4, i16 0, i32 0, i16 0, i8 0, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@nfp_compile_flow_metadata.__msg.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"nfp: invalid entry: cannot allocate a new mask id\00", [46 x i8] zeroinitializer }, align 32
@nfp_compile_flow_metadata.__msg.2 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"nfp: invalid entry: cannot offload duplicate flow entry\00", [40 x i8] zeroinitializer }, align 32
@nfp_compile_flow_metadata.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/ethernet/netronome/nfp/flower/metadata.c\00", [43 x i8] zeroinitializer }, align 32
@nfp_modify_flow_metadata.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@merge_table_params = dso_local constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 8, i16 0, i16 8, i32 0, i16 0, i8 0, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@nfp_zone_table_params = dso_local constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 2, i16 0, i16 4, i32 0, i16 0, i8 0, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@nfp_ct_map_params = dso_local constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 4, i16 0, i16 4, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@nfp_flower_metadata_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&priv->stats_lock\00", [46 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned.8 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned.12 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.13 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.15 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfp_zone_table_entry_destroy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"pre_ct_list not empty as expected, cleaning up\0A\00", [48 x i8] zeroinitializer }, align 32
@nfp_zone_table_entry_destroy.__already_done.19 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfp_zone_table_entry_destroy.__already_done.20 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"post_ct_list not empty as expected, cleaning up\0A\00", [47 x i8] zeroinitializer }, align 32
@nfp_zone_table_entry_destroy.__already_done.22 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfp_zone_table_entry_destroy.__already_done.23 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"nft_flows_list not empty as expected, cleaning up\0A\00", [45 x i8] zeroinitializer }, align 32
@nfp_zone_table_entry_destroy.__already_done.25 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"include/net/netfilter/nf_flow_table.h\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.27 = private unnamed_addr constant [24 x i8] c"nfp_flower_table_params\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 477, i32 32 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 319, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [23 x i8] c"stats_ctx_table_params\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 34, i32 39 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 352, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 368, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 381, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [19 x i8] c"merge_table_params\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 485, i32 32 }
@___asan_gen_.48 = private unnamed_addr constant [22 x i8] c"nfp_zone_table_params\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 491, i32 32 }
@___asan_gen_.51 = private unnamed_addr constant [18 x i8] c"nfp_ct_map_params\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 498, i32 32 }
@___asan_gen_.54 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 567, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 695, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 594, i32 8 }
@___asan_gen_.73 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 723, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 755, i32 10 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 600, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 619, i32 3 }
@___asan_gen_.85 = private constant [56 x i8] c"../drivers/net/ethernet/netronome/nfp/flower/metadata.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 645, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [41 x i8] c"../include/net/netfilter/nf_flow_table.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 257, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @nfp_flower_table_params, ptr @nfp_compile_flow_metadata.__msg, ptr @stats_ctx_table_params, ptr @nfp_compile_flow_metadata.__msg.1, ptr @nfp_compile_flow_metadata.__msg.2, ptr @.str, ptr @merge_table_params, ptr @nfp_zone_table_params, ptr @nfp_ct_map_params, ptr @nfp_flower_metadata_init.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_table_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_compile_flow_metadata.__msg to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats_ctx_table_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_compile_flow_metadata.__msg.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_compile_flow_metadata.__msg.2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @merge_table_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_zone_table_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_ct_map_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_metadata_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_flower_search_fl_table(ptr nocapture noundef readonly %app, i32 noundef %tc_flower_cookie, ptr noundef %netdev) local_unnamed_addr #0 align 64 {
entry:
  %flower_cmp_arg = alloca %struct.nfp_fl_flow_table_cmp_arg, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %flower_cmp_arg) #14
  %0 = getelementptr inbounds %struct.nfp_fl_flow_table_cmp_arg, ptr %flower_cmp_arg, i32 0, i32 1
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %1 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv1, align 4
  %3 = ptrtoint ptr %flower_cmp_arg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %netdev, ptr %flower_cmp_arg, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %tc_flower_cookie, ptr %0, align 4
  %flow_table = getelementptr inbounds %struct.nfp_flower_priv, ptr %2, i32 0, i32 10
  %call = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %flow_table, ptr noundef nonnull %flower_cmp_arg, [7 x i32] [i32 0, i32 32, i32 0, i32 256, i32 ptrtoint (ptr @nfp_fl_key_hashfn to i32), i32 ptrtoint (ptr @nfp_fl_obj_hashfn to i32), i32 ptrtoint (ptr @nfp_fl_obj_cmpfn to i32)])
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %flower_cmp_arg) #14
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rhashtable_lookup_fast(ptr noundef %ht, ptr noundef %key, [7 x i32] %params.coerce) unnamed_addr #2 align 64 {
entry:
  %arg.i.i = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !89
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %params.coerce.fca.6.extract.i.i = extractvalue [7 x i32] %params.coerce, 6
  %4 = inttoptr i32 %params.coerce.fca.6.extract.i.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i.i) #14
  %5 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ht, ptr %arg.i.i, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %key, ptr %5, align 4
  %8 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ht, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.do.end12.i.i_crit_edge

rcu_read_lock.exit.do.end12.i.i_crit_edge:        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit
  %call5.i.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b92.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 594, ptr noundef nonnull @.str.7) #14
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.do.end12.i.i_crit_edge
  %hashfn.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.6.extract.i.i)
  %tobool19.not.i.i = icmp eq i32 %params.coerce.fca.6.extract.i.i, 0
  %head_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.end60.i.i.if.then.i.i.i.i_crit_edge, %do.end12.i.i
  %tbl.0.i.i = phi ptr [ %9, %do.end12.i.i ], [ %40, %do.end60.i.i.if.then.i.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash_rnd.i.i.i, align 8
  %12 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %14 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %13(ptr noundef %key, i32 noundef %15, i32 noundef %11) #14
  %16 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tbl.0.i.i, align 128
  %sub.i.i.i.i = add i32 %17, -1
  %and.i3.i.i.i = and i32 %sub.i.i.i.i, %call.i.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i, !prof !90

cond.true.i.i.i:                                  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i) #14
  br label %rht_bucket.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i3.i.i.i
  br label %rht_bucket.exit.i.i

rht_bucket.exit.i.i:                              ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi ptr [ %call.i.i.i, %cond.true.i.i.i ], [ %arrayidx.i.i.i, %cond.false.i.i.i ]
  %20 = ptrtoint ptr %cond.i.i.i to i32
  %or.i.i.i.i = or i32 %20, 1
  %21 = inttoptr i32 %or.i.i.i.i to ptr
  br label %do.body16.i.i

do.body16.i.i:                                    ; preds = %do.cond34.i.i.do.body16.i.i_crit_edge, %rht_bucket.exit.i.i
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !91
  %22 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %cond.i.i.i, align 4
  %call.i93.i.i = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i)
  %tobool.not.i94.i.i = icmp eq i32 %call.i93.i.i, 0
  br i1 %tobool.not.i94.i.i, label %land.lhs.true.i.i.i, label %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge

do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge:     ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body16.i.i
  %call2.i.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b11.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i, label %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr_rcu.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 369, ptr noundef nonnull @.str.7) #14
  br label %rht_ptr_rcu.exit.i.i

rht_ptr_rcu.exit.i.i:                             ; preds = %if.then.i.i.i, %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge
  %24 = ptrtoint ptr %23 to i32
  %and.i.i95.i.i = and i32 %24, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i.i)
  %tobool.not.i.i96.i.i = icmp eq i32 %and.i.i95.i.i, 0
  %cond.i.i.i.i = select i1 %tobool.not.i.i96.i.i, i32 %or.i.i.i.i, i32 %and.i.i95.i.i
  %25 = inttoptr i32 %cond.i.i.i.i to ptr
  %and.i106.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i.i)
  %tobool.i.not107.i.i = icmp eq i32 %and.i106.i.i, 0
  br i1 %tobool.i.not107.i.i, label %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge, label %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge

rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge:     ; preds = %rht_ptr_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.cond34.i.i

rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge:      ; preds = %rht_ptr_rcu.exit.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge
  %he.0108.i.i = phi ptr [ %37, %for.inc.i.i.for.body.i.i_crit_edge ], [ %25, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge ]
  %26 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i98.i.i = zext i16 %27 to i32
  %idx.neg.i99.i.i = sub nsw i32 0, %conv.i98.i.i
  %add.ptr.i100.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i99.i.i
  br i1 %tobool19.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %for.body.i.i
  %call22.i.i = call i32 %4(ptr noundef nonnull %arg.i.i, ptr noundef %add.ptr.i100.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.true.i.i.for.inc.i.i_crit_edge

cond.true.i.i.for.inc.i.i_crit_edge:              ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rhashtable_lookup.exit.i

cond.false.i.i:                                   ; preds = %for.body.i.i
  %28 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arg.i.i, align 4
  %key_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %29, i32 0, i32 3, i32 2
  %30 = ptrtoint ptr %key_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %key_offset.i.i.i, align 4
  %conv.i101.i.i = zext i16 %31 to i32
  %add.ptr.i102.i.i = getelementptr i8, ptr %add.ptr.i100.i.i, i32 %conv.i101.i.i
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  %key_len.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %29, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %key_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %key_len.i.i.i, align 2
  %conv3.i.i.i = zext i16 %35 to i32
  %bcmp.i.i = call i32 @bcmp(ptr %add.ptr.i102.i.i, ptr %33, i32 %conv3.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool26.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool26.not.i.i, label %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.false.i.i.for.inc.i.i_crit_edge

cond.false.i.i.for.inc.i.i_crit_edge:             ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rhashtable_lookup.exit.i

for.inc.i.i:                                      ; preds = %cond.false.i.i.for.inc.i.i_crit_edge, %cond.true.i.i.for.inc.i.i_crit_edge
  %36 = ptrtoint ptr %he.0108.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %he.0108.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %and.i.i.i = and i32 %38, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.cond34.i.i_crit_edge

for.inc.i.i.do.cond34.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.cond34.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

do.cond34.i.i:                                    ; preds = %for.inc.i.i.do.cond34.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge
  %he.0.lcssa.i.i = phi ptr [ %25, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge ], [ %37, %for.inc.i.i.do.cond34.i.i_crit_edge ]
  %cmp.not.i.i = icmp eq ptr %he.0.lcssa.i.i, %21
  br i1 %cmp.not.i.i, label %do.end39.i.i, label %do.cond34.i.i.do.body16.i.i_crit_edge

do.cond34.i.i.do.body16.i.i_crit_edge:            ; preds = %do.cond34.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body16.i.i

do.end39.i.i:                                     ; preds = %do.cond34.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !92
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call47.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i)
  %tobool48.not.i.i = icmp eq i32 %call47.i.i, 0
  br i1 %tobool48.not.i.i, label %lor.lhs.false49.i.i, label %do.end39.i.i.do.end60.i.i_crit_edge

do.end39.i.i.do.end60.i.i_crit_edge:              ; preds = %do.end39.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60.i.i

lor.lhs.false49.i.i:                              ; preds = %do.end39.i.i
  %call50.i.i = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i)
  %tobool51.not.i.i = icmp eq i32 %call50.i.i, 0
  br i1 %tobool51.not.i.i, label %land.lhs.true52.i.i, label %lor.lhs.false49.i.i.do.end60.i.i_crit_edge

lor.lhs.false49.i.i.do.end60.i.i_crit_edge:       ; preds = %lor.lhs.false49.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60.i.i

land.lhs.true52.i.i:                              ; preds = %lor.lhs.false49.i.i
  %call53.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %tobool54.not.i.i = icmp eq i32 %call53.i.i, 0
  br i1 %tobool54.not.i.i, label %land.lhs.true52.i.i.do.end60.i.i_crit_edge, label %land.lhs.true55.i.i

land.lhs.true52.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true52.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60.i.i

land.lhs.true55.i.i:                              ; preds = %land.lhs.true52.i.i
  %.b9091.i.i = load i1, ptr @__rhashtable_lookup.__warned.8, align 1
  br i1 %.b9091.i.i, label %land.lhs.true55.i.i.do.end60.i.i_crit_edge, label %if.then57.i.i

land.lhs.true55.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60.i.i

if.then57.i.i:                                    ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_lookup.__warned.8, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 614, ptr noundef nonnull @.str.7) #14
  br label %do.end60.i.i

do.end60.i.i:                                     ; preds = %if.then57.i.i, %land.lhs.true55.i.i.do.end60.i.i_crit_edge, %land.lhs.true52.i.i.do.end60.i.i_crit_edge, %lor.lhs.false49.i.i.do.end60.i.i_crit_edge, %do.end39.i.i.do.end60.i.i_crit_edge
  %tobool62.not.i.i = icmp eq ptr %40, null
  br i1 %tobool62.not.i.i, label %__rhashtable_lookup.exit.thread.i, label %do.end60.i.i.if.then.i.i.i.i_crit_edge, !prof !90

do.end60.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i.i

__rhashtable_lookup.exit.thread.i:                ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #14
  br label %rhashtable_lookup.exit

__rhashtable_lookup.exit.i:                       ; preds = %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #14
  %tobool.not.i1 = icmp eq ptr %he.0108.i.i, null
  br i1 %tobool.not.i1, label %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, label %cond.true.i

__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge: ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rhashtable_lookup.exit

cond.true.i:                                      ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i = zext i16 %42 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i.i
  br label %rhashtable_lookup.exit

rhashtable_lookup.exit:                           ; preds = %cond.true.i, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, %__rhashtable_lookup.exit.thread.i
  %cond.i = phi ptr [ %add.ptr.i.i, %cond.true.i ], [ null, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge ], [ null, %__rhashtable_lookup.exit.thread.i ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i2, label %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %rhashtable_lookup.exit
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.9) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !93
  %43 = call i32 @llvm.read_register.i32(metadata !79) #14
  %and.i.i.i.i.i9 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret ptr %cond.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_flower_rx_flow_stats(ptr nocapture noundef readonly %app, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %sub.i = add i32 %1, -4
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %stats_lock = getelementptr inbounds %struct.nfp_flower_priv, ptr %3, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %stats_lock) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.i)
  %6 = icmp ult i32 %sub.i, 24
  br i1 %6, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %div = udiv i32 %sub.i, 24
  %stats3 = getelementptr inbounds %struct.nfp_flower_priv, ptr %3, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.nfp_fl_stats_frame, ptr %add.ptr.i, i32 %i.023
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr, align 8
  %pkt_count = getelementptr %struct.nfp_fl_stats_frame, ptr %add.ptr.i, i32 %i.023, i32 1
  %9 = ptrtoint ptr %pkt_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pkt_count, align 4
  %conv = zext i32 %10 to i64
  %11 = ptrtoint ptr %stats3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stats3, align 4
  %arrayidx = getelementptr %struct.nfp_fl_stats, ptr %12, i32 %8
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx, align 8
  %add = add i64 %14, %conv
  store i64 %add, ptr %arrayidx, align 8
  %byte_count = getelementptr %struct.nfp_fl_stats_frame, ptr %add.ptr.i, i32 %i.023, i32 2
  %15 = ptrtoint ptr %byte_count to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %byte_count, align 8
  %17 = load ptr, ptr %stats3, align 4
  %bytes = getelementptr %struct.nfp_fl_stats, ptr %17, i32 %8, i32 1
  %18 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %bytes, align 8
  %add6 = add i64 %19, %16
  store i64 %add6, ptr %bytes, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %conv7 = zext i32 %20 to i64
  %21 = load ptr, ptr %stats3, align 4
  %used = getelementptr %struct.nfp_fl_stats, ptr %21, i32 %8, i32 2
  %22 = ptrtoint ptr %used to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv7, ptr %used, align 8
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %stats_lock) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_compile_flow_metadata(ptr nocapture noundef readonly %app, i32 noundef %cookie, ptr noundef %nfp_flow, ptr noundef %netdev, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  %flower_cmp_arg.i = alloca %struct.nfp_fl_flow_table_cmp_arg, align 4
  %new_mask_id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %new_mask_id) #14
  %stats_ids.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 6
  %stats_ring_size.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %stats_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stats_ring_size.i, align 4
  %init_unalloc.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %init_unalloc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %init_unalloc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %if.end58.i, label %do.body6.i

do.body6.i:                                       ; preds = %entry
  %active_mem_unit.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %active_mem_unit.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %active_mem_unit.i, align 4
  %sub23.i = add i32 %5, 4194303
  %and24.i = and i32 %sub23.i, 4194303
  %shl49.i = shl i32 %7, 22
  %or.i = or i32 %shl49.i, %and24.i
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %active_mem_unit.i, align 4
  %total_mem_units.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 25
  %8 = ptrtoint ptr %total_mem_units.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %total_mem_units.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %9)
  %cmp52.i = icmp eq i32 %inc.i, %9
  br i1 %cmp52.i, label %if.then53.i, label %do.body6.i.if.end4_crit_edge

do.body6.i.if.end4_crit_edge:                     ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then53.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i = add i32 %5, -1
  %10 = ptrtoint ptr %init_unalloc.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub.i, ptr %init_unalloc.i, align 4
  %11 = ptrtoint ptr %active_mem_unit.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %active_mem_unit.i, align 4
  br label %if.end4

if.end58.i:                                       ; preds = %entry
  %head.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 6, i32 0, i32 1
  %12 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 6, i32 0, i32 2
  %14 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp59.i = icmp eq i32 %13, %15
  br i1 %cmp59.i, label %do.body, label %if.end61.i

if.end61.i:                                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %stats_ids.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stats_ids.i, align 4
  %mul.i = shl i32 %15, 2
  %arrayidx.i = getelementptr i8, ptr %17, i32 %mul.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %temp_stats_id.0.copyload.i = load i32, ptr %arrayidx.i, align 1
  store i32 %3, ptr %arrayidx.i, align 1
  %19 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tail.i, align 4
  %add.i = add i32 %20, 1
  %21 = ptrtoint ptr %stats_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stats_ring_size.i, align 4
  %sub69.i = add i32 %22, -1
  %and70.i = and i32 %sub69.i, %add.i
  store i32 %and70.i, ptr %tail.i, align 4
  br label %if.end4

do.body:                                          ; preds = %if.end58.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_compile_flow_metadata.__msg) #14
  %tobool2.not = icmp eq ptr %extack, null
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @nfp_compile_flow_metadata.__msg, ptr %extack, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end61.i, %if.then53.i, %do.body6.i.if.end4_crit_edge
  %stats_cxt.0.ph = phi i32 [ %or.i, %do.body6.i.if.end4_crit_edge ], [ %or.i, %if.then53.i ], [ %temp_stats_id.0.copyload.i, %if.end61.i ]
  %host_ctx_id = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %nfp_flow, i32 0, i32 4
  %24 = ptrtoint ptr %host_ctx_id to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %stats_cxt.0.ph, ptr %host_ctx_id, align 4
  %conv = zext i32 %cookie to i64
  %host_cookie = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %nfp_flow, i32 0, i32 5
  %25 = ptrtoint ptr %host_cookie to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %conv, ptr %host_cookie, align 4
  %ingress_dev = getelementptr inbounds %struct.nfp_fl_payload, ptr %nfp_flow, i32 0, i32 6
  %26 = ptrtoint ptr %ingress_dev to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %netdev, ptr %ingress_dev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 12) #18
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end4.err_release_stats_crit_edge, label %if.end9

if.end4.err_release_stats_crit_edge:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_release_stats

if.end9:                                          ; preds = %if.end4
  %stats_cxt10 = getelementptr inbounds %struct.nfp_fl_stats_ctx_to_flow, ptr %call7.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %stats_cxt10 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %stats_cxt.0.ph, ptr %stats_cxt10, align 4
  %flow = getelementptr inbounds %struct.nfp_fl_stats_ctx_to_flow, ptr %call7.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %nfp_flow, ptr %flow, align 8
  %stats_ctx_table = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 13
  %30 = tail call i32 @llvm.read_register.i32(metadata !79) #14
  %and.i.i.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %33, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !89
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i.i, label %if.end9.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end9.rcu_read_lock.exit.i.i_crit_edge:         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end9
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #14
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end9.rcu_read_lock.exit.i.i_crit_edge
  %34 = ptrtoint ptr %stats_ctx_table to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %stats_ctx_table, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %stats_ctx_table) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call5.i.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i163 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i163)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i163, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 715, ptr noundef nonnull @.str.7) #14
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge
  %head_offset.i.i.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 13, i32 3, i32 3
  %36 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %37 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call7.i.i, i32 %idx.neg.i.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 4
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %35, i32 0, i32 2
  %38 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add1.i.i.i.i.i.i = add i32 %39, -559038733
  %40 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i.i.i, align 4
  %add36.i.i.i.i.i.i = add i32 %41, %add1.i.i.i.i.i.i
  %or.i140.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i.i.i.i, i32 %add1.i.i.i.i.i.i, i32 14) #14
  %sub39.i.i.i.i.i.i = sub i32 0, %or.i140.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i = xor i32 %add36.i.i.i.i.i.i, %sub39.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i, i32 11) #14
  %sub42.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i, %add1.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i, i32 25) #14
  %sub45.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i, %sub39.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i, i32 16) #14
  %sub48.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i, %sub42.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i, i32 4) #14
  %sub51.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i, %sub45.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i, i32 14) #14
  %sub54.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i
  %xor55.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i, %sub48.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i, i32 24) #14
  %sub57.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %35, align 128
  %sub.i.i.i.i.i = add i32 %43, -1
  %and.i3.i.i.i.i = and i32 %sub57.i.i.i.i.i.i, %sub.i.i.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %35, i32 0, i32 1
  %44 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i4.i.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i4.i.i, label %cond.false.i7.i.i, label %cond.true.i6.i.i, !prof !90

cond.true.i6.i.i:                                 ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i5.i.i = tail call ptr @rht_bucket_nested_insert(ptr noundef %stats_ctx_table, ptr noundef %35, i32 noundef %and.i3.i.i.i.i) #14
  br label %rht_bucket_insert.exit.i.i

cond.false.i7.i.i:                                ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %35, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_insert.exit.i.i

rht_bucket_insert.exit.i.i:                       ; preds = %cond.false.i7.i.i, %cond.true.i6.i.i
  %cond.i8.i.i = phi ptr [ %call.i5.i.i, %cond.true.i6.i.i ], [ %arrayidx.i.i.i, %cond.false.i7.i.i ]
  %tobool17.not.i.i = icmp eq ptr %cond.i8.i.i, null
  br i1 %tobool17.not.i.i, label %rht_bucket_insert.exit.i.i.out.i.i_crit_edge, label %if.end19.i.i

rht_bucket_insert.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_bucket_insert.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i.i

if.end19.i.i:                                     ; preds = %rht_bucket_insert.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %35, ptr noundef nonnull %cond.i8.i.i) #14
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %35, i32 0, i32 5
  %46 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %tobool25.not.i.i = icmp eq ptr %47, null
  br i1 %tobool25.not.i.i, label %if.end30.i.i, label %if.end19.i.i.slow_path.i.i_crit_edge, !prof !90

if.end19.i.i.slow_path.i.i_crit_edge:             ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %slow_path.i.i

slow_path.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, %for.end.i.i.slow_path.i.i_crit_edge, %if.end19.i.i.slow_path.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %35, ptr noundef nonnull %cond.i8.i.i) #14
  %call.i10.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i10.i.i, label %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i13.i.i

slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %slow_path.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i13.i.i:                            ; preds = %slow_path.i.i
  %call1.i11.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i)
  %tobool.not.i12.i.i = icmp eq i32 %call1.i11.i.i, 0
  br i1 %tobool.not.i12.i.i, label %land.lhs.true.i13.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i15.i.i

land.lhs.true.i13.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i13.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i15.i.i:                           ; preds = %land.lhs.true.i13.i.i
  %.b4.i14.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i.i, label %land.lhs.true2.i15.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i16.i.i

land.lhs.true2.i15.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i.i

if.then.i16.i.i:                                  ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.9) #14
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i16.i.i, %land.lhs.true2.i15.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i13.i.i.rcu_read_unlock.exit.i.i_crit_edge, %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !93
  %48 = tail call i32 @llvm.read_register.i32(metadata !79) #14
  %and.i.i.i.i.i17.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i17.i.i to ptr
  %preempt_count.i.i.i.i18.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i.i.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i.i.i18.i.i, align 4
  %sub.i.i.i19.i.i = add i32 %51, -1
  store volatile i32 %sub.i.i.i19.i.i, ptr %preempt_count.i.i.i.i18.i.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %call29.i.i = tail call ptr @rhashtable_insert_slow(ptr noundef %stats_ctx_table, ptr noundef null, ptr noundef nonnull %call7.i.i) #14
  br label %rhashtable_insert_fast.exit

if.end30.i.i:                                     ; preds = %if.end19.i.i
  %call.i20.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %35, i32 noundef %and.i3.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i)
  %tobool.not.i21.i.i = icmp eq i32 %call.i20.i.i, 0
  br i1 %tobool.not.i21.i.i, label %land.lhs.true.i23.i.i, label %if.end30.i.i.rht_ptr.exit.i.i_crit_edge

if.end30.i.i.rht_ptr.exit.i.i_crit_edge:          ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i.i

land.lhs.true.i23.i.i:                            ; preds = %if.end30.i.i
  %call1.i22.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i22.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i23.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i23.i.i.rht_ptr.exit.i.i_crit_edge: ; preds = %land.lhs.true.i23.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i23.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i24.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i.i

if.then.i24.i.i:                                  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 377, ptr noundef nonnull @.str.11) #14
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i24.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i23.i.i.rht_ptr.exit.i.i_crit_edge, %if.end30.i.i.rht_ptr.exit.i.i_crit_edge
  %52 = ptrtoint ptr %cond.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cond.i8.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  %and.i.i.i.i = and i32 %54, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %55 = ptrtoint ptr %cond.i8.i.i to i32
  %or.i.i.i.i = or i32 %55, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i63.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63.i.i)
  %tobool.i.not64.i.i = icmp eq i32 %and.i63.i.i, 0
  br i1 %tobool.i.not64.i.i, label %for.body.preheader.i.i, label %rht_ptr.exit.i.i.if.end152.i.i_crit_edge

rht_ptr.exit.i.i.if.end152.i.i_crit_edge:         ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end152.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %56 = inttoptr i32 %cond.i.i.i.i to ptr
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %do.end147.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %head.066.i.i = phi ptr [ %58, %do.end147.i.i.for.body.i.i_crit_edge ], [ %56, %for.body.preheader.i.i ]
  %elasticity.065.i.i = phi i32 [ %dec.i.i, %do.end147.i.i.for.body.i.i_crit_edge ], [ 16, %for.body.preheader.i.i ]
  %dec.i.i = add i32 %elasticity.065.i.i, -1
  %call137.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %35, i32 noundef %and.i3.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i.i)
  %tobool138.not.i.i = icmp eq i32 %call137.i.i, 0
  br i1 %tobool138.not.i.i, label %land.lhs.true139.i.i, label %for.body.i.i.do.end147.i.i_crit_edge

for.body.i.i.do.end147.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end147.i.i

land.lhs.true139.i.i:                             ; preds = %for.body.i.i
  %call140.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i.i)
  %tobool141.not.i.i = icmp eq i32 %call140.i.i, 0
  br i1 %tobool141.not.i.i, label %land.lhs.true139.i.i.do.end147.i.i_crit_edge, label %land.lhs.true142.i.i

land.lhs.true139.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true139.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end147.i.i

land.lhs.true142.i.i:                             ; preds = %land.lhs.true139.i.i
  %.b2811.i.i = load i1, ptr @__rhashtable_insert_fast.__warned.12, align 1
  br i1 %.b2811.i.i, label %land.lhs.true142.i.i.do.end147.i.i_crit_edge, label %if.then144.i.i

land.lhs.true142.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end147.i.i

if.then144.i.i:                                   ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_insert_fast.__warned.12, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 732, ptr noundef nonnull @.str.11) #14
  br label %do.end147.i.i

do.end147.i.i:                                    ; preds = %if.then144.i.i, %land.lhs.true142.i.i.do.end147.i.i_crit_edge, %land.lhs.true139.i.i.do.end147.i.i_crit_edge, %for.body.i.i.do.end147.i.i_crit_edge
  %57 = ptrtoint ptr %head.066.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %head.066.i.i, align 4
  %59 = ptrtoint ptr %58 to i32
  %and.i.i.i = and i32 %59, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %do.end147.i.i.for.body.i.i_crit_edge, label %for.end.i.i

do.end147.i.i.for.body.i.i_crit_edge:             ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i)
  %phi.cmp.i.i = icmp slt i32 %dec.i.i, 1
  br i1 %phi.cmp.i.i, label %for.end.i.i.slow_path.i.i_crit_edge, label %for.end.i.i.if.end152.i.i_crit_edge

for.end.i.i.if.end152.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end152.i.i

for.end.i.i.slow_path.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %slow_path.i.i

if.end152.i.i:                                    ; preds = %for.end.i.i.if.end152.i.i_crit_edge, %rht_ptr.exit.i.i.if.end152.i.i_crit_edge
  %nelems.i.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 13, i32 8
  %call.i.i.i25.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #14
  %60 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %nelems.i.i.i, align 4
  %max_elems.i.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 13, i32 2
  %62 = ptrtoint ptr %max_elems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %max_elems.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp.i.not.i.i = icmp ult i32 %61, %63
  br i1 %cmp.i.not.i.i, label %if.end162.i.i, label %out_unlock.i.i, !prof !90

if.end162.i.i:                                    ; preds = %if.end152.i.i
  %call.i.i.i27.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #14
  %64 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %nelems.i.i.i, align 4
  %66 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %35, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp.i28.i.i = icmp ugt i32 %65, %67
  br i1 %cmp.i28.i.i, label %rht_grow_above_100.exit.i.i, label %if.end162.i.i.if.end171.i.i_crit_edge

if.end162.i.i.if.end171.i.i_crit_edge:            ; preds = %if.end162.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i:                      ; preds = %if.end162.i.i
  %max_size.i.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 13, i32 3, i32 4
  %68 = ptrtoint ptr %max_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %max_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i29.i.i = icmp eq i32 %69, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp4.i.i.i = icmp ult i32 %67, %69
  %spec.select.i.i.i = select i1 %tobool.not.i29.i.i, i1 true, i1 %cmp4.i.i.i
  br i1 %spec.select.i.i.i, label %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, label %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, !prof !94

rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %slow_path.i.i

if.end171.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, %if.end162.i.i.if.end171.i.i_crit_edge
  %call.i30.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %35, i32 noundef %and.i3.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i.i)
  %tobool.not.i31.i.i = icmp eq i32 %call.i30.i.i, 0
  br i1 %tobool.not.i31.i.i, label %land.lhs.true.i34.i.i, label %if.end171.i.i.rht_ptr.exit42.i.i_crit_edge

if.end171.i.i.rht_ptr.exit42.i.i_crit_edge:       ; preds = %if.end171.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit42.i.i

land.lhs.true.i34.i.i:                            ; preds = %if.end171.i.i
  %call1.i32.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32.i.i)
  %tobool2.not.i33.i.i = icmp eq i32 %call1.i32.i.i, 0
  br i1 %tobool2.not.i33.i.i, label %land.lhs.true.i34.i.i.rht_ptr.exit42.i.i_crit_edge, label %land.lhs.true3.i36.i.i

land.lhs.true.i34.i.i.rht_ptr.exit42.i.i_crit_edge: ; preds = %land.lhs.true.i34.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit42.i.i

land.lhs.true3.i36.i.i:                           ; preds = %land.lhs.true.i34.i.i
  %.b7.i35.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i35.i.i, label %land.lhs.true3.i36.i.i.rht_ptr.exit42.i.i_crit_edge, label %if.then.i37.i.i

land.lhs.true3.i36.i.i.rht_ptr.exit42.i.i_crit_edge: ; preds = %land.lhs.true3.i36.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit42.i.i

if.then.i37.i.i:                                  ; preds = %land.lhs.true3.i36.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 377, ptr noundef nonnull @.str.11) #14
  br label %rht_ptr.exit42.i.i

rht_ptr.exit42.i.i:                               ; preds = %if.then.i37.i.i, %land.lhs.true3.i36.i.i.rht_ptr.exit42.i.i_crit_edge, %land.lhs.true.i34.i.i.rht_ptr.exit42.i.i_crit_edge, %if.end171.i.i.rht_ptr.exit42.i.i_crit_edge
  %70 = ptrtoint ptr %cond.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cond.i8.i.i, align 4
  %72 = ptrtoint ptr %71 to i32
  %and.i.i38.i.i = and i32 %72, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i38.i.i)
  %tobool.not.i.i39.i.i = icmp eq i32 %and.i.i38.i.i, 0
  %cond.i.i41.i.i = select i1 %tobool.not.i.i39.i.i, i32 %or.i.i.i.i, i32 %and.i.i38.i.i
  %73 = inttoptr i32 %cond.i.i41.i.i to ptr
  %74 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %73, ptr %call7.i.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i.i, i32 1, i32 3, i32 1) #14
  %75 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i, ptr %nelems.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i) #14, !srcloc !95
  tail call fastcc void @rht_assign_unlock(ptr noundef %35, ptr noundef nonnull %cond.i8.i.i, ptr noundef nonnull %call7.i.i) #14
  %call.i.i.i44.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #14
  %76 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %nelems.i.i.i, align 4
  %78 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %35, align 128
  %div8.i.i.i = lshr i32 %79, 2
  %mul.i.i.i = mul nuw i32 %div8.i.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %mul.i.i.i)
  %cmp.i45.i.i = icmp ugt i32 %77, %mul.i.i.i
  br i1 %cmp.i45.i.i, label %rht_grow_above_75.exit.i.i, label %rht_ptr.exit42.i.i.out.i.i_crit_edge

rht_ptr.exit42.i.i.out.i.i_crit_edge:             ; preds = %rht_ptr.exit42.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i.i

rht_grow_above_75.exit.i.i:                       ; preds = %rht_ptr.exit42.i.i
  %max_size.i46.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 13, i32 3, i32 4
  %80 = ptrtoint ptr %max_size.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %max_size.i46.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i47.i.i = icmp eq i32 %81, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %81)
  %cmp4.i48.i.i = icmp ult i32 %79, %81
  %spec.select.i49.i.i = select i1 %tobool.not.i47.i.i, i1 true, i1 %cmp4.i48.i.i
  br i1 %spec.select.i49.i.i, label %if.then207.i.i, label %rht_grow_above_75.exit.i.i.out.i.i_crit_edge

rht_grow_above_75.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i.i

if.then207.i.i:                                   ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %run_work.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 13, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %82 = load ptr, ptr @system_wq, align 4
  %call.i.i51.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %82, ptr noundef %run_work.i.i) #14
  br label %out.i.i

out.i.i:                                          ; preds = %out_unlock.i.i, %if.then207.i.i, %rht_grow_above_75.exit.i.i.out.i.i_crit_edge, %rht_ptr.exit42.i.i.out.i.i_crit_edge, %rht_bucket_insert.exit.i.i.out.i.i_crit_edge
  %data.2.i.i = phi ptr [ inttoptr (i32 -7 to ptr), %out_unlock.i.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.i.out.i.i_crit_edge ], [ null, %if.then207.i.i ], [ null, %rht_grow_above_75.exit.i.i.out.i.i_crit_edge ], [ null, %rht_ptr.exit42.i.i.out.i.i_crit_edge ]
  %call.i52.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i52.i.i, label %out.i.i.rcu_read_unlock.exit62.i.i_crit_edge, label %land.lhs.true.i55.i.i

out.i.i.rcu_read_unlock.exit62.i.i_crit_edge:     ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit62.i.i

land.lhs.true.i55.i.i:                            ; preds = %out.i.i
  %call1.i53.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53.i.i)
  %tobool.not.i54.i.i = icmp eq i32 %call1.i53.i.i, 0
  br i1 %tobool.not.i54.i.i, label %land.lhs.true.i55.i.i.rcu_read_unlock.exit62.i.i_crit_edge, label %land.lhs.true2.i57.i.i

land.lhs.true.i55.i.i.rcu_read_unlock.exit62.i.i_crit_edge: ; preds = %land.lhs.true.i55.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit62.i.i

land.lhs.true2.i57.i.i:                           ; preds = %land.lhs.true.i55.i.i
  %.b4.i56.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56.i.i, label %land.lhs.true2.i57.i.i.rcu_read_unlock.exit62.i.i_crit_edge, label %if.then.i58.i.i

land.lhs.true2.i57.i.i.rcu_read_unlock.exit62.i.i_crit_edge: ; preds = %land.lhs.true2.i57.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit62.i.i

if.then.i58.i.i:                                  ; preds = %land.lhs.true2.i57.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.9) #14
  br label %rcu_read_unlock.exit62.i.i

rcu_read_unlock.exit62.i.i:                       ; preds = %if.then.i58.i.i, %land.lhs.true2.i57.i.i.rcu_read_unlock.exit62.i.i_crit_edge, %land.lhs.true.i55.i.i.rcu_read_unlock.exit62.i.i_crit_edge, %out.i.i.rcu_read_unlock.exit62.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !93
  %83 = tail call i32 @llvm.read_register.i32(metadata !79) #14
  %and.i.i.i.i.i59.i.i = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i.i.i59.i.i to ptr
  %preempt_count.i.i.i.i60.i.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %preempt_count.i.i.i.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %preempt_count.i.i.i.i60.i.i, align 4
  %sub.i.i.i61.i.i = add i32 %86, -1
  store volatile i32 %sub.i.i.i61.i.i, ptr %preempt_count.i.i.i.i60.i.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %rhashtable_insert_fast.exit

out_unlock.i.i:                                   ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @rht_unlock(ptr noundef %35, ptr noundef nonnull %cond.i8.i.i) #14
  br label %out.i.i

rhashtable_insert_fast.exit:                      ; preds = %rcu_read_unlock.exit62.i.i, %rcu_read_unlock.exit.i.i
  %retval.0.i.i = phi ptr [ %call29.i.i, %rcu_read_unlock.exit.i.i ], [ %data.2.i.i, %rcu_read_unlock.exit62.i.i ]
  %cmp.i = icmp eq ptr %retval.0.i.i, null
  br i1 %cmp.i, label %if.end14, label %rhashtable_insert_fast.exit.err_free_ctx_entry_crit_edge

rhashtable_insert_fast.exit.err_free_ctx_entry_crit_edge: ; preds = %rhashtable_insert_fast.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_ctx_entry

if.end14:                                         ; preds = %rhashtable_insert_fast.exit
  %87 = ptrtoint ptr %new_mask_id to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %new_mask_id, align 1
  %pre_tun_rule = getelementptr inbounds %struct.nfp_fl_payload, ptr %nfp_flow, i32 0, i32 12
  %88 = ptrtoint ptr %pre_tun_rule to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pre_tun_rule, align 4
  %tobool15.not = icmp eq ptr %89, null
  br i1 %tobool15.not, label %land.lhs.true, label %if.end14.if.end29_crit_edge

if.end14.if.end29_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end14
  %mask_data = getelementptr inbounds %struct.nfp_fl_payload, ptr %nfp_flow, i32 0, i32 8
  %90 = ptrtoint ptr %mask_data to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mask_data, align 4
  %mask_len = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %nfp_flow, i32 0, i32 1
  %92 = ptrtoint ptr %mask_len to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %mask_len, align 1
  %conv17 = zext i8 %93 to i32
  %flags = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %nfp_flow, i32 0, i32 3
  %94 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %priv1, align 4
  %mask_id_seed.i.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %mask_id_seed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %mask_id_seed.i.i.i, align 8
  %call.i.i.i165 = tail call fastcc i32 @jhash(ptr noundef %91, i32 noundef %conv17, i32 noundef %97) #14
  %mul.i.i.i.i.i = mul i32 %call.i.i.i165, 1640531527
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i.i, 22
  %arrayidx.i.i.i166 = getelementptr %struct.nfp_flower_priv, ptr %95, i32 0, i32 8, i32 %shr.i.i.i.i
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %land.lhs.true
  %mask_entry.0.in.i.i.i = phi ptr [ %arrayidx.i.i.i166, %land.lhs.true ], [ %mask_entry.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %98 = ptrtoint ptr %mask_entry.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %mask_entry.0.i.i.i = load ptr, ptr %mask_entry.0.in.i.i.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %mask_entry.0.i.i.i, null
  br i1 %tobool4.not.i.i.i, label %if.then.i, label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %hash_key5.i.i.i = getelementptr inbounds %struct.nfp_mask_id_table, ptr %mask_entry.0.i.i.i, i32 0, i32 1
  %99 = ptrtoint ptr %hash_key5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %hash_key5.i.i.i, align 4
  %cmp.i.i.i = icmp eq i32 %100, %call.i.i.i165
  br i1 %cmp.i.i.i, label %nfp_find_in_mask_table.exit.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i.i

nfp_find_in_mask_table.exit.i:                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %ref_cnt.i.i = getelementptr inbounds %struct.nfp_mask_id_table, ptr %mask_entry.0.i.i.i, i32 0, i32 2
  %101 = ptrtoint ptr %ref_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ref_cnt.i.i, align 4
  %inc.i.i = add i32 %102, 1
  store i32 %inc.i.i, ptr %ref_cnt.i.i, align 4
  %mask_id.i.i = getelementptr inbounds %struct.nfp_mask_id_table, ptr %mask_entry.0.i.i.i, i32 0, i32 3
  %103 = ptrtoint ptr %mask_id.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %mask_id.i.i, align 4
  br label %nfp_check_mask_add.exit

if.then.i:                                        ; preds = %for.cond.i.i.i
  %mask_ids.i.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %95, i32 0, i32 7
  %init_unallocated.i.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %95, i32 0, i32 7, i32 2
  %105 = ptrtoint ptr %init_unallocated.i.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %init_unallocated.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %cmp.not.i.i.i = icmp eq i8 %106, 0
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i167

if.then.i.i.i167:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %dec.i.i.i = add i8 %106, -1
  %107 = ptrtoint ptr %init_unallocated.i.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %dec.i.i.i, ptr %init_unallocated.i.i.i, align 8
  br label %if.end.i14.i

if.end.i.i.i:                                     ; preds = %if.then.i
  %head.i.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %95, i32 0, i32 7, i32 0, i32 1
  %108 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %head.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %95, i32 0, i32 7, i32 0, i32 2
  %110 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %tail.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %111)
  %cmp8.i.i.i = icmp eq i32 %109, %111
  br i1 %cmp8.i.i.i, label %if.end.i.i.i.do.body21_crit_edge, label %if.end11.i.i.i

if.end.i.i.i.do.body21_crit_edge:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body21

if.end11.i.i.i:                                   ; preds = %if.end.i.i.i
  %112 = ptrtoint ptr %mask_ids.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mask_ids.i.i.i, align 4
  %arrayidx.i.i12.i = getelementptr i8, ptr %113, i32 %111
  %114 = ptrtoint ptr %arrayidx.i.i12.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %temp_id.0.copyload.i.i.i = load i8, ptr %arrayidx.i.i12.i, align 1
  %last_used.i.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %95, i32 0, i32 7, i32 1
  %115 = ptrtoint ptr %last_used.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %last_used.i.i.i, align 4
  %idxprom.i.i.i = zext i8 %temp_id.0.copyload.i.i.i to i32
  %arrayidx14.i.i.i = getelementptr i64, ptr %116, i32 %idxprom.i.i.i
  %117 = ptrtoint ptr %arrayidx14.i.i.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %arrayidx14.i.i.i, align 8
  %add.i.i.i = add i64 %118, 40000
  %call.i.i13.i = tail call i64 @ktime_get() #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i13.i, i64 %add.i.i.i)
  %cmp.i.i.i.i.i = icmp slt i64 %call.i.i13.i, %add.i.i.i
  br i1 %cmp.i.i.i.i.i, label %if.end11.i.i.i.do.body21_crit_edge, label %if.end17.i.i.i

if.end11.i.i.i.do.body21_crit_edge:               ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body21

if.end17.i.i.i:                                   ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %119 = ptrtoint ptr %mask_ids.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %mask_ids.i.i.i, align 4
  %121 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %tail.i.i.i, align 4
  %arrayidx21.i.i.i = getelementptr i8, ptr %120, i32 %122
  %123 = ptrtoint ptr %arrayidx21.i.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 -1, ptr %arrayidx21.i.i.i, align 1
  %124 = load i32, ptr %tail.i.i.i, align 4
  %add23.i.i.i = add i32 %124, 1
  %and.i.i.i168 = and i32 %add23.i.i.i, 255
  store i32 %and.i.i.i168, ptr %tail.i.i.i, align 4
  br label %if.end.i14.i

if.end.i14.i:                                     ; preds = %if.end17.i.i.i, %if.then.i.i.i167
  %mask_id.0.ph.i.i = phi i8 [ %106, %if.then.i.i.i167 ], [ %temp_id.0.copyload.i.i.i, %if.end17.i.i.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %125 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %125, i32 noundef 3264, i32 noundef 20) #18
  %tobool3.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not.i.i, label %if.then4.i.i, label %if.end6.i.i

if.then4.i.i:                                     ; preds = %if.end.i14.i
  %126 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %priv1, align 4
  %tail.i25.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %127, i32 0, i32 7, i32 0, i32 2
  %128 = ptrtoint ptr %tail.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %tail.i25.i.i, align 4
  %head.i26.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %127, i32 0, i32 7, i32 0, i32 1
  %130 = ptrtoint ptr %head.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %head.i26.i.i, align 4
  %add.neg.i.i.i = xor i32 %131, -1
  %sub.i.i.i = add i32 %129, %add.neg.i.i.i
  %and.i27.i.i = and i32 %sub.i.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27.i.i)
  %cmp.i.i15.i = icmp eq i32 %and.i27.i.i, 0
  br i1 %cmp.i.i15.i, label %if.then4.i.i.do.body21_crit_edge, label %if.end.i33.i.i

if.then4.i.i.do.body21_crit_edge:                 ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body21

if.end.i33.i.i:                                   ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %mask_ids.i28.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %127, i32 0, i32 7
  %132 = ptrtoint ptr %mask_ids.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %mask_ids.i28.i.i, align 4
  %arrayidx.i29.i.i = getelementptr i8, ptr %133, i32 %131
  %134 = ptrtoint ptr %arrayidx.i29.i.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %mask_id.0.ph.i.i, ptr %arrayidx.i29.i.i, align 1
  %135 = ptrtoint ptr %head.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %head.i26.i.i, align 4
  %add4.i.i.i = add i32 %136, 1
  %and5.i.i.i = and i32 %add4.i.i.i, 255
  store i32 %and5.i.i.i, ptr %head.i26.i.i, align 4
  %call.i30.i.i169 = tail call i64 @ktime_get() #14
  %last_used.i31.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %127, i32 0, i32 7, i32 1
  %137 = ptrtoint ptr %last_used.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %last_used.i31.i.i, align 4
  %idxprom.i32.i.i = zext i8 %mask_id.0.ph.i.i to i32
  %arrayidx8.i.i.i = getelementptr i64, ptr %138, i32 %idxprom.i32.i.i
  %139 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %call.i30.i.i169, ptr %arrayidx8.i.i.i, align 8
  br label %do.body21

if.end6.i.i:                                      ; preds = %if.end.i14.i
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i.i, i32 0, i32 1
  %140 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr null, ptr %pprev.i.i.i, align 4
  %mask_id7.i.i = getelementptr inbounds %struct.nfp_mask_id_table, ptr %call7.i.i.i, i32 0, i32 3
  %141 = ptrtoint ptr %mask_id7.i.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %mask_id.0.ph.i.i, ptr %mask_id7.i.i, align 8
  %142 = ptrtoint ptr %mask_id_seed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %mask_id_seed.i.i.i, align 8
  %call8.i.i = tail call fastcc i32 @jhash(ptr noundef %91, i32 noundef %conv17, i32 noundef %143) #14
  %hash_key9.i.i = getelementptr inbounds %struct.nfp_mask_id_table, ptr %call7.i.i.i, i32 0, i32 1
  %144 = ptrtoint ptr %hash_key9.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %call8.i.i, ptr %hash_key9.i.i, align 8
  %ref_cnt.i16.i = getelementptr inbounds %struct.nfp_mask_id_table, ptr %call7.i.i.i, i32 0, i32 2
  %145 = ptrtoint ptr %ref_cnt.i16.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 1, ptr %ref_cnt.i16.i, align 4
  %mul.i.i.i.i = mul i32 %call8.i.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 22
  %arrayidx.i.i = getelementptr %struct.nfp_flower_priv, ptr %95, i32 0, i32 8, i32 %shr.i.i.i
  %146 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx.i.i, align 4
  %148 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store volatile ptr %147, ptr %call7.i.i.i, align 8
  %tobool.not.i.i.i170 = icmp eq ptr %147, null
  br i1 %tobool.not.i.i.i170, label %if.end6.i.i.nfp_add_mask_table.exit.i_crit_edge, label %do.body12.i.i.i

if.end6.i.i.nfp_add_mask_table.exit.i_crit_edge:  ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfp_add_mask_table.exit.i

do.body12.i.i.i:                                  ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev.i34.i.i = getelementptr inbounds %struct.hlist_node, ptr %147, i32 0, i32 1
  %149 = ptrtoint ptr %pprev.i34.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile ptr %call7.i.i.i, ptr %pprev.i34.i.i, align 4
  br label %nfp_add_mask_table.exit.i

nfp_add_mask_table.exit.i:                        ; preds = %do.body12.i.i.i, %if.end6.i.i.nfp_add_mask_table.exit.i_crit_edge
  %150 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile ptr %call7.i.i.i, ptr %arrayidx.i.i, align 4
  %151 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store volatile ptr %arrayidx.i.i, ptr %pprev.i.i.i, align 4
  %152 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %flags, align 1
  %154 = or i8 %153, -128
  store i8 %154, ptr %flags, align 1
  br label %nfp_check_mask_add.exit

nfp_check_mask_add.exit:                          ; preds = %nfp_add_mask_table.exit.i, %nfp_find_in_mask_table.exit.i
  %id.0.in.i = phi i8 [ %mask_id.0.ph.i.i, %nfp_add_mask_table.exit.i ], [ %104, %nfp_find_in_mask_table.exit.i ]
  %155 = ptrtoint ptr %new_mask_id to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %id.0.in.i, ptr %new_mask_id, align 1
  br label %if.end29

do.body21:                                        ; preds = %if.end.i33.i.i, %if.then4.i.i.do.body21_crit_edge, %if.end11.i.i.i.do.body21_crit_edge, %if.end.i.i.i.do.body21_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_compile_flow_metadata.__msg.1) #14
  %tobool23.not = icmp eq ptr %extack, null
  br i1 %tobool23.not, label %do.body21.err_remove_rhash_crit_edge, label %if.then24

do.body21.err_remove_rhash_crit_edge:             ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_remove_rhash

if.then24:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #16
  %156 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr @nfp_compile_flow_metadata.__msg.1, ptr %extack, align 4
  br label %err_remove_rhash

if.end29:                                         ; preds = %nfp_check_mask_add.exit, %if.end14.if.end29_crit_edge
  %flower_version = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 3
  %157 = ptrtoint ptr %flower_version to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %flower_version, align 8
  %flow_version = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %nfp_flow, i32 0, i32 6
  %159 = ptrtoint ptr %flow_version to i32
  call void @__asan_storeN_noabort(i32 %159, i32 8)
  store i64 %158, ptr %flow_version, align 4
  %160 = load i64, ptr %flower_version, align 8
  %inc = add i64 %160, 1
  store i64 %inc, ptr %flower_version, align 8
  %161 = ptrtoint ptr %new_mask_id to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %new_mask_id, align 1
  %unmasked_data = getelementptr inbounds %struct.nfp_fl_payload, ptr %nfp_flow, i32 0, i32 7
  %163 = ptrtoint ptr %unmasked_data to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %unmasked_data, align 4
  %arrayidx = getelementptr i8, ptr %164, i32 1
  %165 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %162, ptr %arrayidx, align 1
  %stats = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 11
  %166 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %stats, align 4
  %arrayidx32 = getelementptr %struct.nfp_fl_stats, ptr %167, i32 %stats_cxt.0.ph
  %168 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 0, ptr %arrayidx32, align 8
  %169 = load ptr, ptr %stats, align 4
  %bytes = getelementptr %struct.nfp_fl_stats, ptr %169, i32 %stats_cxt.0.ph, i32 1
  %170 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %170)
  store i64 0, ptr %bytes, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %171 = load volatile i32, ptr @jiffies, align 128
  %conv35 = zext i32 %171 to i64
  %172 = load ptr, ptr %stats, align 4
  %used = getelementptr %struct.nfp_fl_stats, ptr %172, i32 %stats_cxt.0.ph, i32 2
  %173 = ptrtoint ptr %used to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 %conv35, ptr %used, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %flower_cmp_arg.i) #14
  %174 = getelementptr inbounds %struct.nfp_fl_flow_table_cmp_arg, ptr %flower_cmp_arg.i, i32 0, i32 1
  %175 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %priv1, align 4
  %177 = ptrtoint ptr %flower_cmp_arg.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %netdev, ptr %flower_cmp_arg.i, align 4
  %178 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %cookie, ptr %174, align 4
  %flow_table.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %176, i32 0, i32 10
  %call.i = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %flow_table.i, ptr noundef nonnull %flower_cmp_arg.i, [7 x i32] [i32 0, i32 32, i32 0, i32 256, i32 ptrtoint (ptr @nfp_fl_key_hashfn to i32), i32 ptrtoint (ptr @nfp_fl_obj_hashfn to i32), i32 ptrtoint (ptr @nfp_fl_obj_cmpfn to i32)]) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %flower_cmp_arg.i) #14
  %tobool39.not = icmp eq ptr %call.i, null
  br i1 %tobool39.not, label %if.end29.cleanup_crit_edge, label %do.body41

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body41:                                        ; preds = %if.end29
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_compile_flow_metadata.__msg.2) #14
  %tobool43.not = icmp eq ptr %extack, null
  br i1 %tobool43.not, label %do.body41.if.end46_crit_edge, label %if.then44

do.body41.if.end46_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.then44:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #16
  %179 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr @nfp_compile_flow_metadata.__msg.2, ptr %extack, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %do.body41.if.end46_crit_edge
  %180 = ptrtoint ptr %pre_tun_rule to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %pre_tun_rule, align 4
  %tobool52.not = icmp eq ptr %181, null
  br i1 %tobool52.not, label %if.then53, label %if.end46.err_remove_rhash_crit_edge

if.end46.err_remove_rhash_crit_edge:              ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_remove_rhash

if.then53:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  %mask_data54 = getelementptr inbounds %struct.nfp_fl_payload, ptr %nfp_flow, i32 0, i32 8
  %182 = ptrtoint ptr %mask_data54 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %mask_data54, align 4
  %mask_len56 = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %nfp_flow, i32 0, i32 1
  %184 = ptrtoint ptr %mask_len56 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %mask_len56, align 1
  %conv57 = zext i8 %185 to i32
  call fastcc void @nfp_check_mask_remove(ptr noundef %app, ptr noundef %183, i32 noundef %conv57, ptr noundef null, ptr noundef nonnull %new_mask_id)
  br label %err_remove_rhash

err_remove_rhash:                                 ; preds = %if.then53, %if.end46.err_remove_rhash_crit_edge, %if.then24, %do.body21.err_remove_rhash_crit_edge
  %err.0 = phi i32 [ -17, %if.end46.err_remove_rhash_crit_edge ], [ -17, %if.then53 ], [ -2, %if.then24 ], [ -2, %do.body21.err_remove_rhash_crit_edge ]
  %call62 = call fastcc i32 @rhashtable_remove_fast(ptr noundef %stats_ctx_table, ptr noundef nonnull %call7.i.i, [7 x i32] [i32 4, i32 262144, i32 0, i32 0, i32 0, i32 0, i32 0])
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %err_remove_rhash.err_free_ctx_entry_crit_edge, label %land.rhs

err_remove_rhash.err_free_ctx_entry_crit_edge:    ; preds = %err_remove_rhash
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_ctx_entry

land.rhs:                                         ; preds = %err_remove_rhash
  %.b162 = load i1, ptr @nfp_compile_flow_metadata.__already_done, align 1
  br i1 %.b162, label %land.rhs.err_free_ctx_entry_crit_edge, label %if.then72, !prof !90

land.rhs.err_free_ctx_entry_crit_edge:            ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_ctx_entry

if.then72:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @nfp_compile_flow_metadata.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 383, i32 noundef 9, ptr noundef null) #14
  br label %err_free_ctx_entry

err_free_ctx_entry:                               ; preds = %if.then72, %land.rhs.err_free_ctx_entry_crit_edge, %err_remove_rhash.err_free_ctx_entry_crit_edge, %rhashtable_insert_fast.exit.err_free_ctx_entry_crit_edge
  %err.1 = phi i32 [ -12, %rhashtable_insert_fast.exit.err_free_ctx_entry_crit_edge ], [ %err.0, %err_remove_rhash.err_free_ctx_entry_crit_edge ], [ %err.0, %if.then72 ], [ %err.0, %land.rhs.err_free_ctx_entry_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %err_release_stats

err_release_stats:                                ; preds = %err_free_ctx_entry, %if.end4.err_release_stats_crit_edge
  %err.2 = phi i32 [ %err.1, %err_free_ctx_entry ], [ -12, %if.end4.err_release_stats_crit_edge ]
  %186 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %priv1, align 4
  %tail.i174 = getelementptr inbounds %struct.nfp_flower_priv, ptr %187, i32 0, i32 6, i32 0, i32 2
  %188 = ptrtoint ptr %tail.i174 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %tail.i174, align 4
  %head.i175 = getelementptr inbounds %struct.nfp_flower_priv, ptr %187, i32 0, i32 6, i32 0, i32 1
  %190 = ptrtoint ptr %head.i175 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %head.i175, align 4
  %add.neg.i = xor i32 %191, -1
  %sub.i176 = add i32 %189, %add.neg.i
  %stats_ring_size.i177 = getelementptr inbounds %struct.nfp_flower_priv, ptr %187, i32 0, i32 9
  %192 = ptrtoint ptr %stats_ring_size.i177 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %stats_ring_size.i177, align 4
  %sub2.i = add i32 %193, -1
  %and.i = and i32 %sub2.i, %sub.i176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i178 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i178, label %err_release_stats.cleanup_crit_edge, label %if.end.i

err_release_stats.cleanup_crit_edge:              ; preds = %err_release_stats
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %err_release_stats
  call void @__sanitizer_cov_trace_pc() #16
  %stats_ids.i179 = getelementptr inbounds %struct.nfp_flower_priv, ptr %187, i32 0, i32 6
  %194 = ptrtoint ptr %stats_ids.i179 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %stats_ids.i179, align 4
  %mul.i180 = shl i32 %191, 2
  %arrayidx.i181 = getelementptr i8, ptr %195, i32 %mul.i180
  %196 = ptrtoint ptr %arrayidx.i181 to i32
  call void @__asan_storeN_noabort(i32 %196, i32 4)
  store i32 %stats_cxt.0.ph, ptr %arrayidx.i181, align 1
  %197 = ptrtoint ptr %head.i175 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %head.i175, align 4
  %add5.i = add i32 %198, 1
  %199 = ptrtoint ptr %stats_ring_size.i177 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %stats_ring_size.i177, align 4
  %sub7.i = add i32 %200, -1
  %and8.i = and i32 %sub7.i, %add5.i
  store i32 %and8.i, ptr %head.i175, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %err_release_stats.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.then3 ], [ -2, %do.body.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ], [ %err.2, %err_release_stats.cleanup_crit_edge ], [ %err.2, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new_mask_id) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_check_mask_remove(ptr nocapture noundef readonly %app, ptr nocapture noundef readonly %mask_data, i32 noundef %mask_len, ptr noundef %meta_flags, ptr nocapture noundef %mask_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1.i, align 4
  %mask_id_seed.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mask_id_seed.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask_id_seed.i, align 8
  %call.i = tail call fastcc i32 @jhash(ptr noundef %mask_data, i32 noundef %mask_len, i32 noundef %3) #14
  %mul.i.i.i = mul i32 %call.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 22
  %arrayidx.i = getelementptr %struct.nfp_flower_priv, ptr %1, i32 0, i32 8, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %mask_entry.0.in.i = phi ptr [ %arrayidx.i, %entry ], [ %mask_entry.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %mask_entry.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %mask_entry.0.i = load ptr, ptr %mask_entry.0.in.i, align 4
  %tobool4.not.i = icmp eq ptr %mask_entry.0.i, null
  br i1 %tobool4.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %hash_key5.i = getelementptr inbounds %struct.nfp_mask_id_table, ptr %mask_entry.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %hash_key5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hash_key5.i, align 4
  %cmp.i = icmp eq i32 %6, %call.i
  br i1 %cmp.i, label %if.end, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

if.end:                                           ; preds = %for.body.i
  %mask_id1 = getelementptr inbounds %struct.nfp_mask_id_table, ptr %mask_entry.0.i, i32 0, i32 3
  %7 = ptrtoint ptr %mask_id1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mask_id1, align 4
  %9 = ptrtoint ptr %mask_id to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %mask_id, align 1
  %ref_cnt = getelementptr inbounds %struct.nfp_mask_id_table, ptr %mask_entry.0.i, i32 0, i32 2
  %10 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ref_cnt, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %ref_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool3.not = icmp eq i32 %dec, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %mask_entry.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.not.i.i, label %if.then4.hash_del.exit_crit_edge, label %if.then.i.i

if.then4.hash_del.exit_crit_edge:                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %hash_del.exit

if.then.i.i:                                      ; preds = %if.then4
  %14 = ptrtoint ptr %mask_entry.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mask_entry.0.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %15, ptr %13, align 4
  %tobool.not.i3.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %13, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %18 = ptrtoint ptr %mask_entry.0.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %mask_entry.0.i, align 4
  %19 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del.exit

hash_del.exit:                                    ; preds = %__hlist_del.exit.i.i, %if.then4.hash_del.exit_crit_edge
  %20 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv1.i, align 4
  %tail.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %21, i32 0, i32 7, i32 0, i32 2
  %22 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tail.i, align 4
  %head.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %21, i32 0, i32 7, i32 0, i32 1
  %24 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %head.i, align 4
  %add.neg.i = xor i32 %25, -1
  %sub.i = add i32 %23, %add.neg.i
  %and.i = and i32 %sub.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i2 = icmp eq i32 %and.i, 0
  br i1 %cmp.i2, label %hash_del.exit.nfp_release_mask_id.exit_crit_edge, label %if.end.i

hash_del.exit.nfp_release_mask_id.exit_crit_edge: ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfp_release_mask_id.exit

if.end.i:                                         ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %mask_id to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mask_id, align 1
  %mask_ids.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %21, i32 0, i32 7
  %28 = ptrtoint ptr %mask_ids.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mask_ids.i, align 4
  %arrayidx.i3 = getelementptr i8, ptr %29, i32 %25
  %30 = ptrtoint ptr %arrayidx.i3 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %27, ptr %arrayidx.i3, align 1
  %31 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %head.i, align 4
  %add4.i = add i32 %32, 1
  %and5.i = and i32 %add4.i, 255
  store i32 %and5.i, ptr %head.i, align 4
  %call.i4 = tail call i64 @ktime_get() #14
  %last_used.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %21, i32 0, i32 7, i32 1
  %33 = ptrtoint ptr %last_used.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %last_used.i, align 4
  %idxprom.i = zext i8 %27 to i32
  %arrayidx8.i = getelementptr i64, ptr %34, i32 %idxprom.i
  %35 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %call.i4, ptr %arrayidx8.i, align 8
  br label %nfp_release_mask_id.exit

nfp_release_mask_id.exit:                         ; preds = %if.end.i, %hash_del.exit.nfp_release_mask_id.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %mask_entry.0.i) #14
  %tobool6.not = icmp eq ptr %meta_flags, null
  br i1 %tobool6.not, label %nfp_release_mask_id.exit.cleanup_crit_edge, label %if.then7

nfp_release_mask_id.exit.cleanup_crit_edge:       ; preds = %nfp_release_mask_id.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then7:                                         ; preds = %nfp_release_mask_id.exit
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %meta_flags to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %meta_flags, align 1
  %38 = or i8 %37, -128
  store i8 %38, ptr %meta_flags, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %nfp_release_mask_id.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rhashtable_remove_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #14
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !89
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end10.i_crit_edge

rcu_read_lock.exit.i.do.end10.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true7.i.do.end10.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1076, ptr noundef nonnull @.str.7) #14
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then.i, %land.lhs.true7.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %lor.lhs.false.i.do.end10.i_crit_edge, %rcu_read_lock.exit.i.do.end10.i_crit_edge
  %params.coerce.fca.0.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 0
  %params.coerce.fca.5.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 5
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i.i to ptr
  %head_offset.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %params.coerce.fca.5.extract.i.i.i, 0
  %conv.i.i.i = and i32 %params.coerce.fca.0.extract.i.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  %key_len6.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %params.coerce.fca.1.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i.i = lshr i32 %params.coerce.fca.1.extract.i.i.i, 16
  %hashfn.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end33.i.while.cond.i_crit_edge, %do.end10.i
  %tbl.0.i = phi ptr [ %5, %do.end10.i ], [ %45, %do.end33.i.while.cond.i_crit_edge ]
  %7 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %8 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i.i.i
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.i.i, label %cond.true.i.i.i, !prof !94

cond.true.i.i.i:                                  ; preds = %while.cond.i
  br i1 %tobool4.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i.cond.end.i.i.i_crit_edge

cond.true.i.i.i.cond.end.i.i.i_crit_edge:         ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %key_len6.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_len6.i.i.i, align 2
  %conv7.i.i.i = zext i16 %10 to i32
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv7.i.i.i, %cond.false.i.i.i ], [ %conv.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_rnd.i.i.i, align 8
  %call8.i.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i.i, i32 noundef %cond.i.i.i, i32 noundef %12) #14
  br label %rht_head_hashfn.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i.i
  %15 = ptrtoint ptr %hashfn.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hashfn.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %key_len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len1.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i.i, i32 noundef %18, i32 noundef %14) #14
  br label %rht_head_hashfn.exit.i.i

rht_head_hashfn.exit.i.i:                         ; preds = %if.then.i.i.i.i.i, %cond.end.i.i.i
  %hash.2.i.i.sink.i.i.i = phi i32 [ %call8.i.i.i, %cond.end.i.i.i ], [ %call.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %19 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tbl.0.i, align 128
  %sub.i.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i.i = and i32 %sub.i.i.i.i.i, %hash.2.i.i.sink.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i3.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i3.i.i, label %cond.false.i5.i.i, label %cond.true.i4.i.i, !prof !90

cond.true.i4.i.i:                                 ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #14
  br label %rht_bucket_var.exit.i.i

cond.false.i5.i.i:                                ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_var.exit.i.i

rht_bucket_var.exit.i.i:                          ; preds = %cond.false.i5.i.i, %cond.true.i4.i.i
  %cond.i6.i.i = phi ptr [ %call.i.i.i, %cond.true.i4.i.i ], [ %arrayidx.i.i.i, %cond.false.i5.i.i ]
  %tobool.not.i3.i = icmp eq ptr %cond.i6.i.i, null
  br i1 %tobool.not.i3.i, label %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge, label %if.end.i.i

rht_bucket_var.exit.i.i.land.rhs.i_crit_edge:     ; preds = %rht_bucket_var.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

if.end.i.i:                                       ; preds = %rht_bucket_var.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #14
  %call.i8.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i)
  %tobool.not.i9.i.i = icmp eq i32 %call.i8.i.i, 0
  br i1 %tobool.not.i9.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.rht_ptr.exit.i.i_crit_edge

if.end.i.i.rht_ptr.exit.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 377, ptr noundef nonnull @.str.11) #14
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, %if.end.i.i.rht_ptr.exit.i.i_crit_edge
  %23 = ptrtoint ptr %cond.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cond.i6.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %and.i.i.i.i = and i32 %25, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %26 = ptrtoint ptr %cond.i6.i.i to i32
  %or.i.i.i.i = or i32 %26, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i20.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i)
  %tobool.i.not21.i.i = icmp eq i32 %and.i20.i.i, 0
  br i1 %tobool.i.not21.i.i, label %for.body.preheader.i.i, label %rht_ptr.exit.i.i.unlocked.i.i_crit_edge

rht_ptr.exit.i.i.unlocked.i.i_crit_edge:          ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlocked.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %27 = inttoptr i32 %cond.i.i.i.i to ptr
  %cmp.not.i21.i = icmp eq ptr %27, %obj
  br i1 %cmp.not.i21.i, label %for.body.preheader.i.i.do.body54.i.i_crit_edge, label %for.body.preheader.i.i.do.body145.i.i_crit_edge

for.body.preheader.i.i.do.body145.i.i_crit_edge:  ; preds = %for.body.preheader.i.i
  br label %do.body145.i.i

for.body.preheader.i.i.do.body54.i.i_crit_edge:   ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body54.i.i

for.body.i.i:                                     ; preds = %do.end156.i.i
  %cmp.not.i.i = icmp eq ptr %32, %obj
  br i1 %cmp.not.i.i, label %for.body.i.i.do.body54.i.i_crit_edge, label %for.body.i.i.do.body145.i.i_crit_edge

for.body.i.i.do.body145.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body145.i.i

for.body.i.i.do.body54.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body54.i.i

do.body54.i.i:                                    ; preds = %for.body.i.i.do.body54.i.i_crit_edge, %for.body.preheader.i.i.do.body54.i.i_crit_edge
  %pprev.023.i.lcssa.i = phi ptr [ %he.022.i22.i, %for.body.i.i.do.body54.i.i_crit_edge ], [ null, %for.body.preheader.i.i.do.body54.i.i_crit_edge ]
  %call55.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %tobool56.not.i.i = icmp eq i32 %call55.i.i, 0
  br i1 %tobool56.not.i.i, label %land.lhs.true57.i.i, label %do.body54.i.i.do.end65.i.i_crit_edge

do.body54.i.i.do.end65.i.i_crit_edge:             ; preds = %do.body54.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end65.i.i

land.lhs.true57.i.i:                              ; preds = %do.body54.i.i
  %call58.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %tobool59.not.i.i = icmp eq i32 %call58.i.i, 0
  br i1 %tobool59.not.i.i, label %land.lhs.true57.i.i.do.end65.i.i_crit_edge, label %land.lhs.true60.i.i

land.lhs.true57.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true57.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end65.i.i

land.lhs.true60.i.i:                              ; preds = %land.lhs.true57.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.15, align 1
  br i1 %.b2.i.i, label %land.lhs.true60.i.i.do.end65.i.i_crit_edge, label %if.then62.i.i

land.lhs.true60.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end65.i.i

if.then62.i.i:                                    ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.15, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1032, ptr noundef nonnull @.str.11) #14
  br label %do.end65.i.i

do.end65.i.i:                                     ; preds = %if.then62.i.i, %land.lhs.true60.i.i.do.end65.i.i_crit_edge, %land.lhs.true57.i.i.do.end65.i.i_crit_edge, %do.body54.i.i.do.end65.i.i_crit_edge
  %28 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %obj, align 4
  %tobool103.not.i.i = icmp eq ptr %pprev.023.i.lcssa.i, null
  br i1 %tobool103.not.i.i, label %if.else142.i.i, label %do.body105.i.i

do.body105.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !96
  %30 = ptrtoint ptr %pprev.023.i.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %pprev.023.i.lcssa.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #14
  br label %if.then160.i.i

if.else142.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i, ptr noundef %29) #14
  br label %if.then160.i.i

do.body145.i.i:                                   ; preds = %for.body.i.i.do.body145.i.i_crit_edge, %for.body.preheader.i.i.do.body145.i.i_crit_edge
  %he.022.i22.i = phi ptr [ %32, %for.body.i.i.do.body145.i.i_crit_edge ], [ %27, %for.body.preheader.i.i.do.body145.i.i_crit_edge ]
  %call146.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i)
  %tobool147.not.i.i = icmp eq i32 %call146.i.i, 0
  br i1 %tobool147.not.i.i, label %land.lhs.true148.i.i, label %do.body145.i.i.do.end156.i.i_crit_edge

do.body145.i.i.do.end156.i.i_crit_edge:           ; preds = %do.body145.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end156.i.i

land.lhs.true148.i.i:                             ; preds = %do.body145.i.i
  %call149.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i)
  %tobool150.not.i.i = icmp eq i32 %call149.i.i, 0
  br i1 %tobool150.not.i.i, label %land.lhs.true148.i.i.do.end156.i.i_crit_edge, label %land.lhs.true151.i.i

land.lhs.true148.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true148.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end156.i.i

land.lhs.true151.i.i:                             ; preds = %land.lhs.true148.i.i
  %.b2281.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.17, align 1
  br i1 %.b2281.i.i, label %land.lhs.true151.i.i.do.end156.i.i_crit_edge, label %if.then153.i.i

land.lhs.true151.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end156.i.i

if.then153.i.i:                                   ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.17, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1004, ptr noundef nonnull @.str.11) #14
  br label %do.end156.i.i

do.end156.i.i:                                    ; preds = %if.then153.i.i, %land.lhs.true151.i.i.do.end156.i.i_crit_edge, %land.lhs.true148.i.i.do.end156.i.i_crit_edge, %do.body145.i.i.do.end156.i.i_crit_edge
  %31 = ptrtoint ptr %he.022.i22.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %he.022.i22.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %and.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.body.i.i, label %do.end156.i.i.unlocked.i.i_crit_edge

do.end156.i.i.unlocked.i.i_crit_edge:             ; preds = %do.end156.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlocked.i.i

unlocked.i.i:                                     ; preds = %do.end156.i.i.unlocked.i.i_crit_edge, %rht_ptr.exit.i.i.unlocked.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #14
  br label %land.rhs.i

if.then160.i.i:                                   ; preds = %if.else142.i.i, %do.body105.i.i
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #14
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #14, !srcloc !97
  %automatic_shrinking.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 6
  %35 = ptrtoint ptr %automatic_shrinking.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %automatic_shrinking.i.i, align 2, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool161.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool161.not.i.i, label %if.then160.i.i.while.end.i_crit_edge, label %land.rhs162.i.i

if.then160.i.i.while.end.i_crit_edge:             ; preds = %if.then160.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

land.rhs162.i.i:                                  ; preds = %if.then160.i.i
  %call.i.i.i10.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #14
  %37 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %nelems.i.i, align 4
  %39 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tbl.0.i, align 128
  %mul.i.i.i = mul i32 %40, 3
  %div.i.i.i = udiv i32 %mul.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %div.i.i.i)
  %cmp.i.i.i = icmp ult i32 %38, %div.i.i.i
  br i1 %cmp.i.i.i, label %rht_shrink_below_30.exit.i.i, label %land.rhs162.i.i.while.end.i_crit_edge

land.rhs162.i.i.while.end.i_crit_edge:            ; preds = %land.rhs162.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

rht_shrink_below_30.exit.i.i:                     ; preds = %land.rhs162.i.i
  %min_size.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 5
  %41 = ptrtoint ptr %min_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %min_size.i.i.i, align 4
  %conv.i11.i.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.i11.i.i)
  %cmp2.i.i.i = icmp ugt i32 %40, %conv.i11.i.i
  br i1 %cmp2.i.i.i, label %if.then168.i.i, label %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, !prof !94

rht_shrink_below_30.exit.i.i.while.end.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

if.then168.i.i:                                   ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %run_work.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %run_work.i.i) #14
  br label %while.end.i

land.rhs.i:                                       ; preds = %unlocked.i.i, %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %44 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %future_tbl.i, align 4
  %call20.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false22.i, label %land.rhs.i.do.end33.i_crit_edge

land.rhs.i.do.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33.i

lor.lhs.false22.i:                                ; preds = %land.rhs.i
  %call23.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %lor.lhs.false22.i.do.end33.i_crit_edge

lor.lhs.false22.i.do.end33.i_crit_edge:           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33.i

land.lhs.true25.i:                                ; preds = %lor.lhs.false22.i
  %call26.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true25.i.do.end33.i_crit_edge, label %land.lhs.true28.i

land.lhs.true25.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33.i

land.lhs.true28.i:                                ; preds = %land.lhs.true25.i
  %.b401.i = load i1, ptr @__rhashtable_remove_fast.__warned.13, align 1
  br i1 %.b401.i, label %land.lhs.true28.i.do.end33.i_crit_edge, label %if.then30.i

land.lhs.true28.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_remove_fast.__warned.13, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1085, ptr noundef nonnull @.str.7) #14
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then30.i, %land.lhs.true28.i.do.end33.i_crit_edge, %land.lhs.true25.i.do.end33.i_crit_edge, %lor.lhs.false22.i.do.end33.i_crit_edge, %land.rhs.i.do.end33.i_crit_edge
  %tobool35.not.i = icmp eq ptr %45, null
  br i1 %tobool35.not.i, label %do.end33.i.while.end.i_crit_edge, label %do.end33.i.while.cond.i_crit_edge

do.end33.i.while.cond.i_crit_edge:                ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

do.end33.i.while.end.i_crit_edge:                 ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %do.end33.i.while.end.i_crit_edge, %if.then168.i.i, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, %land.rhs162.i.i.while.end.i_crit_edge, %if.then160.i.i.while.end.i_crit_edge
  %retval.0.i15.i = phi i32 [ 0, %if.then160.i.i.while.end.i_crit_edge ], [ 0, %if.then168.i.i ], [ 0, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge ], [ 0, %land.rhs162.i.i.while.end.i_crit_edge ], [ -2, %do.end33.i.while.end.i_crit_edge ]
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i4.i, label %while.end.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i

while.end.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rhashtable_remove_fast.exit

land.lhs.true.i7.i:                               ; preds = %while.end.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rhashtable_remove_fast.exit

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rhashtable_remove_fast.exit

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.9) #14
  br label %__rhashtable_remove_fast.exit

__rhashtable_remove_fast.exit:                    ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, %while.end.i.__rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !93
  %46 = tail call i32 @llvm.read_register.i32(metadata !79) #14
  %and.i.i.i.i.i11.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret i32 %retval.0.i15.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @__nfp_modify_flow_metadata(ptr nocapture noundef %priv, ptr nocapture noundef %nfp_flow) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %nfp_flow, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 1
  %2 = and i8 %1, 127
  store i8 %2, ptr %flags, align 1
  %flower_version = getelementptr inbounds %struct.nfp_flower_priv, ptr %priv, i32 0, i32 3
  %3 = ptrtoint ptr %flower_version to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %flower_version, align 8
  %flow_version = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %nfp_flow, i32 0, i32 6
  %5 = ptrtoint ptr %flow_version to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 %4, ptr %flow_version, align 4
  %6 = load i64, ptr %flower_version, align 8
  %inc = add i64 %6, 1
  store i64 %inc, ptr %flower_version, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_modify_flow_metadata(ptr nocapture noundef readonly %app, ptr noundef %nfp_flow) local_unnamed_addr #0 align 64 {
entry:
  %new_mask_id = alloca i8, align 1
  %temp_ctx_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %new_mask_id) #14
  %2 = ptrtoint ptr %new_mask_id to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %new_mask_id, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp_ctx_id) #14
  %flags.i = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %nfp_flow, i32 0, i32 3
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flags.i, align 1
  %5 = and i8 %4, 127
  store i8 %5, ptr %flags.i, align 1
  %flower_version.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %flower_version.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %flower_version.i, align 8
  %flow_version.i = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %nfp_flow, i32 0, i32 6
  %8 = ptrtoint ptr %flow_version.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %flow_version.i, align 4
  %9 = load i64, ptr %flower_version.i, align 8
  %inc.i = add i64 %9, 1
  store i64 %inc.i, ptr %flower_version.i, align 8
  %pre_tun_rule = getelementptr inbounds %struct.nfp_fl_payload, ptr %nfp_flow, i32 0, i32 12
  %10 = ptrtoint ptr %pre_tun_rule to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pre_tun_rule, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %mask_data = getelementptr inbounds %struct.nfp_fl_payload, ptr %nfp_flow, i32 0, i32 8
  %12 = ptrtoint ptr %mask_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mask_data, align 4
  %mask_len = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %nfp_flow, i32 0, i32 1
  %14 = ptrtoint ptr %mask_len to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mask_len, align 1
  %conv = zext i8 %15 to i32
  call fastcc void @nfp_check_mask_remove(ptr noundef %app, ptr noundef %13, i32 noundef %conv, ptr noundef %flags.i, ptr noundef nonnull %new_mask_id)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %new_mask_id to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %new_mask_id, align 1
  %unmasked_data = getelementptr inbounds %struct.nfp_fl_payload, ptr %nfp_flow, i32 0, i32 7
  %18 = ptrtoint ptr %unmasked_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %unmasked_data, align 4
  %arrayidx = getelementptr i8, ptr %19, i32 1
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %17, ptr %arrayidx, align 1
  %host_ctx_id = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %nfp_flow, i32 0, i32 4
  %21 = ptrtoint ptr %host_ctx_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %host_ctx_id, align 4
  %23 = ptrtoint ptr %temp_ctx_id to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %temp_ctx_id, align 4
  %stats_ctx_table = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 13
  %call4 = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %stats_ctx_table, ptr noundef nonnull %temp_ctx_id, [7 x i32] [i32 4, i32 262144, i32 0, i32 0, i32 0, i32 0, i32 0])
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = call fastcc i32 @rhashtable_remove_fast(ptr noundef %stats_ctx_table, ptr noundef nonnull %call4, [7 x i32] [i32 4, i32 262144, i32 0, i32 0, i32 0, i32 0, i32 0])
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end7.if.end41_crit_edge, label %land.rhs

if.end7.if.end41_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

land.rhs:                                         ; preds = %if.end7
  %.b79 = load i1, ptr @nfp_modify_flow_metadata.__already_done, align 1
  br i1 %.b79, label %land.rhs.if.end41_crit_edge, label %if.then19, !prof !90

land.rhs.if.end41_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

if.then19:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @nfp_modify_flow_metadata.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 428, i32 noundef 9, ptr noundef null) #14
  br label %if.end41

if.end41:                                         ; preds = %if.then19, %land.rhs.if.end41_crit_edge, %if.end7.if.end41_crit_edge
  call void @kfree(ptr noundef nonnull %call4) #14
  %24 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv1, align 4
  %tail.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %25, i32 0, i32 6, i32 0, i32 2
  %26 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tail.i, align 4
  %head.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %25, i32 0, i32 6, i32 0, i32 1
  %28 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %head.i, align 4
  %add.neg.i = xor i32 %29, -1
  %sub.i = add i32 %27, %add.neg.i
  %stats_ring_size.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %25, i32 0, i32 9
  %30 = ptrtoint ptr %stats_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stats_ring_size.i, align 4
  %sub2.i = add i32 %31, -1
  %and.i = and i32 %sub2.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end41.cleanup_crit_edge, label %if.end.i

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %temp_ctx_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %temp_ctx_id, align 4
  %stats_ids.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %25, i32 0, i32 6
  %34 = ptrtoint ptr %stats_ids.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stats_ids.i, align 4
  %mul.i = shl i32 %29, 2
  %arrayidx.i = getelementptr i8, ptr %35, i32 %mul.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %33, ptr %arrayidx.i, align 1
  %37 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %head.i, align 4
  %add5.i = add i32 %38, 1
  %39 = ptrtoint ptr %stats_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %stats_ring_size.i, align 4
  %sub7.i = add i32 %40, -1
  %and8.i = and i32 %sub7.i, %add5.i
  store i32 %and8.i, ptr %head.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end41.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.end.cleanup_crit_edge ], [ 0, %if.end.i ], [ -105, %if.end41.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp_ctx_id) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new_mask_id) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_flower_get_fl_payload_from_ctx(ptr nocapture noundef readonly %app, i32 noundef %ctx_id) local_unnamed_addr #0 align 64 {
entry:
  %ctx_id.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx_id.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %ctx_id, ptr %ctx_id.addr, align 4
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %1 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv1, align 4
  %stats_ctx_table = getelementptr inbounds %struct.nfp_flower_priv, ptr %2, i32 0, i32 13
  %call = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %stats_ctx_table, ptr noundef nonnull %ctx_id.addr, [7 x i32] [i32 4, i32 262144, i32 0, i32 0, i32 0, i32 0, i32 0])
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %flow = getelementptr inbounds %struct.nfp_fl_stats_ctx_to_flow, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %flow, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfp_fl_key_hashfn(ptr nocapture noundef readonly %data, i32 noundef %len, i32 noundef %seed) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie = getelementptr inbounds %struct.nfp_fl_flow_table_cmp_arg, ptr %data, i32 0, i32 1
  %add1.i = add i32 %seed, -559038733
  %0 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie, align 4
  %add36.i = add i32 %1, %add1.i
  %or.i140.i = tail call i32 @llvm.fshl.i32(i32 %add1.i, i32 %add1.i, i32 14) #14
  %sub39.i = sub i32 0, %or.i140.i
  %xor40.i = xor i32 %add36.i, %sub39.i
  %or.i141.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #14
  %sub42.i = sub i32 %xor40.i, %or.i141.i
  %xor43.i = xor i32 %sub42.i, %add1.i
  %or.i142.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #14
  %sub45.i = sub i32 %xor43.i, %or.i142.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i143.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #14
  %sub48.i = sub i32 %xor46.i, %or.i143.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i144.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #14
  %sub51.i = sub i32 %xor49.i, %or.i144.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i145.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #14
  %sub54.i = sub i32 %xor52.i, %or.i145.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i146.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #14
  %sub57.i = sub i32 %xor55.i, %or.i146.i
  ret i32 %sub57.i
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfp_fl_obj_hashfn(ptr nocapture noundef readonly %data, i32 noundef %len, i32 noundef %seed) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tc_flower_cookie = getelementptr inbounds %struct.nfp_fl_payload, ptr %data, i32 0, i32 1
  %add1.i = add i32 %seed, -559038733
  %0 = ptrtoint ptr %tc_flower_cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tc_flower_cookie, align 4
  %add36.i = add i32 %1, %add1.i
  %or.i140.i = tail call i32 @llvm.fshl.i32(i32 %add1.i, i32 %add1.i, i32 14) #14
  %sub39.i = sub i32 0, %or.i140.i
  %xor40.i = xor i32 %add36.i, %sub39.i
  %or.i141.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #14
  %sub42.i = sub i32 %xor40.i, %or.i141.i
  %xor43.i = xor i32 %sub42.i, %add1.i
  %or.i142.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #14
  %sub45.i = sub i32 %xor43.i, %or.i142.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i143.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #14
  %sub48.i = sub i32 %xor46.i, %or.i143.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i144.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #14
  %sub51.i = sub i32 %xor49.i, %or.i144.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i145.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #14
  %sub54.i = sub i32 %xor52.i, %or.i145.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i146.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #14
  %sub57.i = sub i32 %xor55.i, %or.i146.i
  ret i32 %sub57.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfp_fl_obj_cmpfn(ptr nocapture noundef readonly %arg, ptr nocapture noundef readonly %obj) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %key = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key, align 4
  %ingress_dev = getelementptr inbounds %struct.nfp_fl_payload, ptr %obj, i32 0, i32 6
  %2 = ptrtoint ptr %ingress_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ingress_dev, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %cmp = icmp eq ptr %3, %5
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %tc_flower_cookie = getelementptr inbounds %struct.nfp_fl_payload, ptr %obj, i32 0, i32 1
  %6 = ptrtoint ptr %tc_flower_cookie to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tc_flower_cookie, align 4
  %cookie = getelementptr inbounds %struct.nfp_fl_flow_table_cmp_arg, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cookie, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp1 = icmp ne i32 %7, %9
  %conv = zext i1 %cmp1 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.then ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_flower_metadata_init(ptr nocapture noundef readonly %app, i64 noundef %host_ctx_count, i32 noundef %host_num_mems) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %mask_table = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 8
  %2 = call ptr @memset(ptr %mask_table, i32 0, i32 4096)
  %flow_table = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 10
  %call = tail call i32 @rhashtable_init(ptr noundef %flow_table, ptr noundef nonnull @nfp_flower_table_params) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %stats_ctx_table = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 13
  %call2 = tail call i32 @rhashtable_init(ptr noundef %stats_ctx_table, ptr noundef nonnull @stats_ctx_table_params) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err_free_flow_table_crit_edge

if.end.err_free_flow_table_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_flow_table

if.end5:                                          ; preds = %if.end
  %merge_table = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 31
  %call6 = tail call i32 @rhashtable_init(ptr noundef %merge_table, ptr noundef nonnull @merge_table_params) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.err_free_stats_ctx_table_crit_edge

if.end5.err_free_stats_ctx_table_crit_edge:       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_stats_ctx_table

if.end9:                                          ; preds = %if.end5
  %ct_zone_table = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 32
  %call10 = tail call i32 @rhashtable_init(ptr noundef %ct_zone_table, ptr noundef nonnull @nfp_zone_table_params) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.err_free_merge_table_crit_edge

if.end9.err_free_merge_table_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_merge_table

if.end13:                                         ; preds = %if.end9
  %ct_map_table = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 34
  %call14 = tail call i32 @rhashtable_init(ptr noundef %ct_map_table, ptr noundef nonnull @nfp_ct_map_params) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.err_free_ct_zone_table_crit_edge

if.end13.err_free_ct_zone_table_crit_edge:        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_ct_zone_table

if.end17:                                         ; preds = %if.end13
  %mask_id_seed = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 2
  tail call void @get_random_bytes(ptr noundef %mask_id_seed, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 256) #18
  %mask_ids = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %mask_ids to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %mask_ids, align 8
  %tobool22.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool22.not, label %if.end17.err_free_ct_map_table_crit_edge, label %if.end24

if.end17.err_free_ct_map_table_crit_edge:         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_ct_map_table

if.end24:                                         ; preds = %if.end17
  %init_unallocated = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 7, i32 2
  %5 = ptrtoint ptr %init_unallocated to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %init_unallocated, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i150 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 2048) #18
  %last_used = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %last_used to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i150, ptr %last_used, align 4
  %tobool30.not = icmp eq ptr %call7.i.i150, null
  br i1 %tobool30.not, label %if.end24.err_free_mask_id_crit_edge, label %if.end32

if.end24.err_free_mask_id_crit_edge:              ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_mask_id

if.end32:                                         ; preds = %if.end24
  %stats_ring_size = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %stats_ring_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stats_ring_size, align 4
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 4) #14
  %11 = extractvalue { i32, i1 } %10, 1
  %12 = extractvalue { i32, i1 } %10, 0
  %retval.0.i = select i1 %11, i32 -1, i32 %12
  %call34 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i) #19
  %stats_ids = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %stats_ids to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call34, ptr %stats_ids, align 4
  %tobool39.not = icmp eq ptr %call34, null
  br i1 %tobool39.not, label %if.end32.err_free_last_used_crit_edge, label %if.else162.i.i

if.end32.err_free_last_used_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_last_used

if.else162.i.i:                                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %host_ctx_count)
  %cmp164.i.i = icmp ult i64 %host_ctx_count, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !90

if.then168.i.i:                                   ; preds = %if.else162.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv169.i.i = trunc i64 %host_ctx_count to i32
  %div172.i.i = udiv i32 %conv169.i.i, %host_num_mems
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.else162.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %host_num_mems, i64 %host_ctx_count) #20, !srcloc !99
  %asmresult1.i.i.i = extractvalue { i64, i64 } %14, 1
  %extract.t156 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t156, %if.else174.i.i ]
  %init_unalloc = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %init_unalloc to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %dividend.addr.0.i.i.off0, ptr %init_unalloc, align 4
  %conv59 = trunc i64 %host_ctx_count to i32
  %and60 = and i32 %conv59, 4194303
  %sub = shl i32 %host_num_mems, 22
  %shl85 = add i32 %sub, -4194304
  %or = or i32 %shl85, %and60
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %or, i32 24) #14
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %kvmalloc_array.exit.thread, label %kvmalloc_array.exit, !prof !94

kvmalloc_array.exit.thread:                       ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #16
  %stats153 = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %stats153 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %stats153, align 4
  br label %err_free_ring_buf

kvmalloc_array.exit:                              ; preds = %div_u64.exit
  %19 = extractvalue { i32, i1 } %16, 0
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %19, i32 noundef 3264, i32 noundef -1) #19
  %stats = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i, ptr %stats, align 4
  %tobool89.not = icmp eq ptr %call.i.i, null
  br i1 %tobool89.not, label %kvmalloc_array.exit.err_free_ring_buf_crit_edge, label %do.body92

kvmalloc_array.exit.err_free_ring_buf_crit_edge:  ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_ring_buf

do.body92:                                        ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #16
  %stats_lock = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %stats_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @nfp_flower_metadata_init.__key, i16 noundef signext 3) #14
  br label %cleanup

err_free_ring_buf:                                ; preds = %kvmalloc_array.exit.err_free_ring_buf_crit_edge, %kvmalloc_array.exit.thread
  %21 = ptrtoint ptr %stats_ids to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stats_ids, align 4
  tail call void @vfree(ptr noundef %22) #14
  br label %err_free_last_used

err_free_last_used:                               ; preds = %err_free_ring_buf, %if.end32.err_free_last_used_crit_edge
  %23 = ptrtoint ptr %last_used to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %last_used, align 4
  tail call void @kfree(ptr noundef %24) #14
  br label %err_free_mask_id

err_free_mask_id:                                 ; preds = %err_free_last_used, %if.end24.err_free_mask_id_crit_edge
  %25 = ptrtoint ptr %mask_ids to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mask_ids, align 8
  tail call void @kfree(ptr noundef %26) #14
  br label %err_free_ct_map_table

err_free_ct_map_table:                            ; preds = %err_free_mask_id, %if.end17.err_free_ct_map_table_crit_edge
  tail call void @rhashtable_destroy(ptr noundef %ct_map_table) #14
  br label %err_free_ct_zone_table

err_free_ct_zone_table:                           ; preds = %err_free_ct_map_table, %if.end13.err_free_ct_zone_table_crit_edge
  tail call void @rhashtable_destroy(ptr noundef %ct_zone_table) #14
  br label %err_free_merge_table

err_free_merge_table:                             ; preds = %err_free_ct_zone_table, %if.end9.err_free_merge_table_crit_edge
  tail call void @rhashtable_destroy(ptr noundef %merge_table) #14
  br label %err_free_stats_ctx_table

err_free_stats_ctx_table:                         ; preds = %err_free_merge_table, %if.end5.err_free_stats_ctx_table_crit_edge
  tail call void @rhashtable_destroy(ptr noundef %stats_ctx_table) #14
  br label %err_free_flow_table

err_free_flow_table:                              ; preds = %err_free_stats_ctx_table, %if.end.err_free_flow_table_crit_edge
  tail call void @rhashtable_destroy(ptr noundef %flow_table) #14
  br label %cleanup

cleanup:                                          ; preds = %err_free_flow_table, %do.body92, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %err_free_flow_table ], [ 0, %do.body92 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_flower_metadata_cleanup(ptr nocapture noundef readonly %app) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %flow_table = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 10
  tail call void @rhashtable_free_and_destroy(ptr noundef %flow_table, ptr noundef nonnull @nfp_check_rhashtable_empty, ptr noundef null) #14
  %stats_ctx_table = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 13
  tail call void @rhashtable_free_and_destroy(ptr noundef %stats_ctx_table, ptr noundef nonnull @nfp_check_rhashtable_empty, ptr noundef null) #14
  %merge_table = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 31
  tail call void @rhashtable_free_and_destroy(ptr noundef %merge_table, ptr noundef nonnull @nfp_check_rhashtable_empty, ptr noundef null) #14
  %ct_zone_table = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 32
  tail call void @rhashtable_free_and_destroy(ptr noundef %ct_zone_table, ptr noundef nonnull @nfp_free_zone_table_entry, ptr noundef null) #14
  %ct_zone_wc = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %ct_zone_wc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ct_zone_wc, align 4
  tail call fastcc void @nfp_zone_table_entry_destroy(ptr noundef %3)
  %ct_map_table = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 34
  tail call void @rhashtable_free_and_destroy(ptr noundef %ct_map_table, ptr noundef nonnull @nfp_free_map_table_entry, ptr noundef null) #14
  %stats = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stats, align 4
  tail call void @kvfree(ptr noundef %5) #14
  %mask_ids = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %mask_ids to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mask_ids, align 8
  tail call void @kfree(ptr noundef %7) #14
  %last_used = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %last_used to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %last_used, align 4
  tail call void @kfree(ptr noundef %9) #14
  %stats_ids = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %stats_ids to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stats_ids, align 4
  tail call void @vfree(ptr noundef %11) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_free_and_destroy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_check_rhashtable_empty(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp_free_zone_table_entry(ptr noundef %ptr, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @nfp_zone_table_entry_destroy(ptr noundef %ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_zone_table_entry_destroy(ptr noundef %zt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %zt, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %pre_ct_list = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %zt, i32 0, i32 4
  %0 = ptrtoint ptr %pre_ct_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pre_ct_list, align 4
  %cmp.i.not = icmp eq ptr %1, %pre_ct_list
  br i1 %cmp.i.not, label %if.end.if.end110_crit_edge, label %if.then2

if.end.if.end110_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end110

if.then2:                                         ; preds = %if.end
  %priv = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %zt, i32 0, i32 2
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %ct_map_table = getelementptr inbounds %struct.nfp_flower_priv, ptr %3, i32 0, i32 34
  %.b450 = load i1, ptr @nfp_zone_table_entry_destroy.__already_done, align 1
  br i1 %.b450, label %if.then2.if.end32_crit_edge, label %if.then9, !prof !90

if.then2.if.end32_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then9:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @nfp_zone_table_entry_destroy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 600, i32 noundef 9, ptr noundef nonnull @.str.18) #14
  br label %if.end32

if.end32:                                         ; preds = %if.then9, %if.then2.if.end32_crit_edge
  %4 = ptrtoint ptr %pre_ct_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pre_ct_list, align 4
  %cmp.not503 = icmp eq ptr %5, %pre_ct_list
  br i1 %cmp.not503, label %if.end32.if.end110_crit_edge, label %if.end32.for.body_crit_edge

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  br label %for.body

if.end32.if.end110_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end110

for.body:                                         ; preds = %if.end97.for.body_crit_edge, %if.end32.for.body_crit_edge
  %.pn505.in = phi ptr [ %.pn505, %if.end97.for.body_crit_edge ], [ %5, %if.end32.for.body_crit_edge ]
  %entry3.0504 = getelementptr i8, ptr %.pn505.in, i32 -4
  %6 = ptrtoint ptr %.pn505.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn505 = load ptr, ptr %.pn505.in, align 4
  %call50 = tail call fastcc ptr @rhashtable_lookup_fast(ptr noundef %ct_map_table, ptr noundef %entry3.0504, [7 x i32] [i32 4, i32 4, i32 0, i32 256, i32 0, i32 0, i32 0])
  %hash_node = getelementptr inbounds %struct.nfp_fl_ct_map_entry, ptr %call50, i32 0, i32 1
  %call52 = tail call fastcc i32 @rhashtable_remove_fast(ptr noundef %ct_map_table, ptr noundef %hash_node, [7 x i32] [i32 4, i32 4, i32 0, i32 256, i32 0, i32 0, i32 0])
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %for.body.if.end97_crit_edge, label %land.rhs59

for.body.if.end97_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end97

land.rhs59:                                       ; preds = %for.body
  %.b445493 = load i1, ptr @nfp_zone_table_entry_destroy.__already_done.19, align 1
  br i1 %.b445493, label %land.rhs59.if.end97_crit_edge, label %if.then70, !prof !90

land.rhs59.if.end97_crit_edge:                    ; preds = %land.rhs59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end97

if.then70:                                        ; preds = %land.rhs59
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @nfp_zone_table_entry_destroy.__already_done.19, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 608, i32 noundef 9, ptr noundef null) #14
  br label %if.end97

if.end97:                                         ; preds = %if.then70, %land.rhs59.if.end97_crit_edge, %for.body.if.end97_crit_edge
  tail call void @nfp_fl_ct_clean_flow_entry(ptr noundef %entry3.0504) #14
  tail call void @kfree(ptr noundef %call50) #14
  %cmp.not = icmp eq ptr %.pn505, %pre_ct_list
  br i1 %cmp.not, label %if.end97.if.end110_crit_edge, label %if.end97.for.body_crit_edge

if.end97.for.body_crit_edge:                      ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end97.if.end110_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end110

if.end110:                                        ; preds = %if.end97.if.end110_crit_edge, %if.end32.if.end110_crit_edge, %if.end.if.end110_crit_edge
  %post_ct_list = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %zt, i32 0, i32 6
  %7 = ptrtoint ptr %post_ct_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %post_ct_list, align 4
  %cmp.i497.not = icmp eq ptr %8, %post_ct_list
  br i1 %cmp.i497.not, label %if.end110.if.end250_crit_edge, label %if.then113

if.end110.if.end250_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end250

if.then113:                                       ; preds = %if.end110
  %priv115 = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %zt, i32 0, i32 2
  %9 = ptrtoint ptr %priv115 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv115, align 4
  %ct_map_table116 = getelementptr inbounds %struct.nfp_flower_priv, ptr %10, i32 0, i32 34
  %.b446451 = load i1, ptr @nfp_zone_table_entry_destroy.__already_done.20, align 1
  br i1 %.b446451, label %if.then113.if.end160_crit_edge, label %if.then133, !prof !90

if.then113.if.end160_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end160

if.then133:                                       ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @nfp_zone_table_entry_destroy.__already_done.20, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 619, i32 noundef 9, ptr noundef nonnull @.str.21) #14
  br label %if.end160

if.end160:                                        ; preds = %if.then133, %if.then113.if.end160_crit_edge
  %11 = ptrtoint ptr %post_ct_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %post_ct_list, align 4
  %cmp181.not508 = icmp eq ptr %12, %post_ct_list
  br i1 %cmp181.not508, label %if.end160.if.end250_crit_edge, label %if.end160.for.body184_crit_edge

if.end160.for.body184_crit_edge:                  ; preds = %if.end160
  br label %for.body184

if.end160.if.end250_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end250

for.body184:                                      ; preds = %if.end235.for.body184_crit_edge, %if.end160.for.body184_crit_edge
  %.pn452510.in = phi ptr [ %.pn452510, %if.end235.for.body184_crit_edge ], [ %12, %if.end160.for.body184_crit_edge ]
  %entry117.0509 = getelementptr i8, ptr %.pn452510.in, i32 -4
  %13 = ptrtoint ptr %.pn452510.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn452510 = load ptr, ptr %.pn452510.in, align 4
  %call186 = tail call fastcc ptr @rhashtable_lookup_fast(ptr noundef %ct_map_table116, ptr noundef %entry117.0509, [7 x i32] [i32 4, i32 4, i32 0, i32 256, i32 0, i32 0, i32 0])
  %hash_node188 = getelementptr inbounds %struct.nfp_fl_ct_map_entry, ptr %call186, i32 0, i32 1
  %call189 = tail call fastcc i32 @rhashtable_remove_fast(ptr noundef %ct_map_table116, ptr noundef %hash_node188, [7 x i32] [i32 4, i32 4, i32 0, i32 256, i32 0, i32 0, i32 0])
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %for.body184.if.end235_crit_edge, label %land.rhs197

for.body184.if.end235_crit_edge:                  ; preds = %for.body184
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end235

land.rhs197:                                      ; preds = %for.body184
  %.b447480 = load i1, ptr @nfp_zone_table_entry_destroy.__already_done.22, align 1
  br i1 %.b447480, label %land.rhs197.if.end235_crit_edge, label %if.then208, !prof !90

land.rhs197.if.end235_crit_edge:                  ; preds = %land.rhs197
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end235

if.then208:                                       ; preds = %land.rhs197
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @nfp_zone_table_entry_destroy.__already_done.22, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 627, i32 noundef 9, ptr noundef null) #14
  br label %if.end235

if.end235:                                        ; preds = %if.then208, %land.rhs197.if.end235_crit_edge, %for.body184.if.end235_crit_edge
  tail call void @nfp_fl_ct_clean_flow_entry(ptr noundef %entry117.0509) #14
  tail call void @kfree(ptr noundef %call186) #14
  %cmp181.not = icmp eq ptr %.pn452510, %post_ct_list
  br i1 %cmp181.not, label %if.end235.if.end250_crit_edge, label %if.end235.for.body184_crit_edge

if.end235.for.body184_crit_edge:                  ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body184

if.end235.if.end250_crit_edge:                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end250

if.end250:                                        ; preds = %if.end235.if.end250_crit_edge, %if.end160.if.end250_crit_edge, %if.end110.if.end250_crit_edge
  %nft = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %zt, i32 0, i32 3
  %14 = ptrtoint ptr %nft to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nft, align 4
  %tobool251.not = icmp eq ptr %15, null
  br i1 %tobool251.not, label %if.end250.if.end255_crit_edge, label %if.then252

if.end250.if.end255_crit_edge:                    ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end255

if.then252:                                       ; preds = %if.end250
  %flow_block.i = getelementptr inbounds %struct.nf_flowtable, ptr %15, i32 0, i32 6
  %flow_block_lock.i = getelementptr inbounds %struct.nf_flowtable, ptr %15, i32 0, i32 7
  tail call void @down_write(ptr noundef %flow_block_lock.i) #14
  %call.i = tail call ptr @flow_block_cb_lookup(ptr noundef %flow_block.i, ptr noundef nonnull @nfp_fl_ct_handle_nft_flow, ptr noundef nonnull %zt) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then252
  %list.i = getelementptr inbounds %struct.flow_block_cb, ptr %call.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call.i, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %22 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call.i, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @flow_block_cb_free(ptr noundef nonnull %call.i) #14
  br label %nf_flow_table_offload_del_cb.exit

do.end.i:                                         ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 257, i32 noundef 9, ptr noundef null) #14
  br label %nf_flow_table_offload_del_cb.exit

nf_flow_table_offload_del_cb.exit:                ; preds = %do.end.i, %list_del.exit.i
  tail call void @up_write(ptr noundef %flow_block_lock.i) #14
  %24 = ptrtoint ptr %nft to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %nft, align 4
  br label %if.end255

if.end255:                                        ; preds = %nf_flow_table_offload_del_cb.exit, %if.end250.if.end255_crit_edge
  %nft_flows_list = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %zt, i32 0, i32 10
  %25 = ptrtoint ptr %nft_flows_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %nft_flows_list, align 4
  %cmp.i499.not = icmp eq ptr %26, %nft_flows_list
  br i1 %cmp.i499.not, label %if.end255.if.end395_crit_edge, label %if.then258

if.end255.if.end395_crit_edge:                    ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end395

if.then258:                                       ; preds = %if.end255
  %priv260 = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %zt, i32 0, i32 2
  %27 = ptrtoint ptr %priv260 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv260, align 4
  %ct_map_table261 = getelementptr inbounds %struct.nfp_flower_priv, ptr %28, i32 0, i32 34
  %.b448453 = load i1, ptr @nfp_zone_table_entry_destroy.__already_done.23, align 1
  br i1 %.b448453, label %if.then258.if.end305_crit_edge, label %if.then278, !prof !90

if.then258.if.end305_crit_edge:                   ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end305

if.then278:                                       ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @nfp_zone_table_entry_destroy.__already_done.23, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 645, i32 noundef 9, ptr noundef nonnull @.str.24) #14
  br label %if.end305

if.end305:                                        ; preds = %if.then278, %if.then258.if.end305_crit_edge
  %29 = ptrtoint ptr %nft_flows_list to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nft_flows_list, align 4
  %cmp326.not513 = icmp eq ptr %30, %nft_flows_list
  br i1 %cmp326.not513, label %if.end305.if.end395_crit_edge, label %if.end305.for.body329_crit_edge

if.end305.for.body329_crit_edge:                  ; preds = %if.end305
  br label %for.body329

if.end305.if.end395_crit_edge:                    ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end395

for.body329:                                      ; preds = %if.end380.for.body329_crit_edge, %if.end305.for.body329_crit_edge
  %.pn454515.in = phi ptr [ %.pn454515, %if.end380.for.body329_crit_edge ], [ %30, %if.end305.for.body329_crit_edge ]
  %entry262.0514 = getelementptr i8, ptr %.pn454515.in, i32 -4
  %31 = ptrtoint ptr %.pn454515.in to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn454515 = load ptr, ptr %.pn454515.in, align 4
  %call331 = tail call fastcc ptr @rhashtable_lookup_fast(ptr noundef %ct_map_table261, ptr noundef %entry262.0514, [7 x i32] [i32 4, i32 4, i32 0, i32 256, i32 0, i32 0, i32 0])
  %hash_node333 = getelementptr inbounds %struct.nfp_fl_ct_map_entry, ptr %call331, i32 0, i32 1
  %call334 = tail call fastcc i32 @rhashtable_remove_fast(ptr noundef %ct_map_table261, ptr noundef %hash_node333, [7 x i32] [i32 4, i32 4, i32 0, i32 256, i32 0, i32 0, i32 0])
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call334)
  %tobool335.not = icmp eq i32 %call334, 0
  br i1 %tobool335.not, label %for.body329.if.end380_crit_edge, label %land.rhs342

for.body329.if.end380_crit_edge:                  ; preds = %for.body329
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end380

land.rhs342:                                      ; preds = %for.body329
  %.b449467 = load i1, ptr @nfp_zone_table_entry_destroy.__already_done.25, align 1
  br i1 %.b449467, label %land.rhs342.if.end380_crit_edge, label %if.then353, !prof !90

land.rhs342.if.end380_crit_edge:                  ; preds = %land.rhs342
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end380

if.then353:                                       ; preds = %land.rhs342
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @nfp_zone_table_entry_destroy.__already_done.25, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 653, i32 noundef 9, ptr noundef null) #14
  br label %if.end380

if.end380:                                        ; preds = %if.then353, %land.rhs342.if.end380_crit_edge, %for.body329.if.end380_crit_edge
  tail call void @nfp_fl_ct_clean_flow_entry(ptr noundef %entry262.0514) #14
  tail call void @kfree(ptr noundef %call331) #14
  %cmp326.not = icmp eq ptr %.pn454515, %nft_flows_list
  br i1 %cmp326.not, label %if.end380.if.end395_crit_edge, label %if.end380.for.body329_crit_edge

if.end380.for.body329_crit_edge:                  ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body329

if.end380.if.end395_crit_edge:                    ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end395

if.end395:                                        ; preds = %if.end380.if.end395_crit_edge, %if.end305.if.end395_crit_edge, %if.end255.if.end395_crit_edge
  %tc_merge_tb = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %zt, i32 0, i32 8
  tail call void @rhashtable_free_and_destroy(ptr noundef %tc_merge_tb, ptr noundef nonnull @nfp_check_rhashtable_empty, ptr noundef null) #14
  %nft_merge_tb = getelementptr inbounds %struct.nfp_fl_ct_zone_entry, ptr %zt, i32 0, i32 12
  tail call void @rhashtable_free_and_destroy(ptr noundef %nft_merge_tb, ptr noundef nonnull @nfp_check_rhashtable_empty, ptr noundef null) #14
  tail call void @kfree(ptr noundef nonnull %zt) #14
  br label %return

return:                                           ; preds = %if.end395, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp_free_map_table_entry(ptr noundef %ptr, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %ptr) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jhash(ptr nocapture noundef readonly %key, i32 noundef %length, i32 noundef %initval) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %add = add i32 %length, -559038737
  %add1 = add i32 %add, %initval
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %length)
  %cmp213 = icmp ugt i32 %length, 12
  br i1 %cmp213, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %k.0218 = phi ptr [ %add.ptr31, %while.body.while.body_crit_edge ], [ %key, %entry.while.body_crit_edge ]
  %c.0217 = phi i32 [ %xor28, %while.body.while.body_crit_edge ], [ %add1, %entry.while.body_crit_edge ]
  %b.0216 = phi i32 [ %add29, %while.body.while.body_crit_edge ], [ %add1, %entry.while.body_crit_edge ]
  %a.0215 = phi i32 [ %add25, %while.body.while.body_crit_edge ], [ %add1, %entry.while.body_crit_edge ]
  %length.addr.0214 = phi i32 [ %sub30, %while.body.while.body_crit_edge ], [ %length, %entry.while.body_crit_edge ]
  %0 = ptrtoint ptr %k.0218 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %k.0218, align 1
  %add2 = add i32 %1, %a.0215
  %add.ptr = getelementptr i8, ptr %k.0218, i32 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr, align 1
  %add4 = add i32 %3, %b.0216
  %add.ptr5 = getelementptr i8, ptr %k.0218, i32 8
  %4 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr5, align 1
  %add7 = add i32 %5, %c.0217
  %sub = sub i32 %add2, %add7
  %or.i = tail call i32 @llvm.fshl.i32(i32 %add7, i32 %add7, i32 4) #14
  %xor = xor i32 %sub, %or.i
  %add9 = add i32 %add7, %add4
  %sub10 = sub i32 %add4, %xor
  %or.i201 = tail call i32 @llvm.fshl.i32(i32 %xor, i32 %xor, i32 6) #14
  %xor12 = xor i32 %sub10, %or.i201
  %add13 = add i32 %xor, %add9
  %sub14 = sub i32 %add9, %xor12
  %or.i202 = tail call i32 @llvm.fshl.i32(i32 %xor12, i32 %xor12, i32 8) #14
  %xor16 = xor i32 %sub14, %or.i202
  %add17 = add i32 %xor12, %add13
  %sub18 = sub i32 %add13, %xor16
  %or.i203 = tail call i32 @llvm.fshl.i32(i32 %xor16, i32 %xor16, i32 16) #14
  %xor20 = xor i32 %sub18, %or.i203
  %add21 = add i32 %xor16, %add17
  %sub22 = sub i32 %add17, %xor20
  %or.i204 = tail call i32 @llvm.fshl.i32(i32 %xor20, i32 %xor20, i32 19) #14
  %xor24 = xor i32 %sub22, %or.i204
  %add25 = add i32 %xor20, %add21
  %sub26 = sub i32 %add21, %xor24
  %or.i205 = tail call i32 @llvm.fshl.i32(i32 %xor24, i32 %xor24, i32 4) #14
  %xor28 = xor i32 %sub26, %or.i205
  %add29 = add i32 %xor24, %add25
  %sub30 = add i32 %length.addr.0214, -12
  %add.ptr31 = getelementptr i8, ptr %k.0218, i32 12
  %cmp = icmp ugt i32 %sub30, 12
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %length.addr.0.lcssa = phi i32 [ %length, %entry.while.end_crit_edge ], [ %sub30, %while.body.while.end_crit_edge ]
  %a.0.lcssa = phi i32 [ %add1, %entry.while.end_crit_edge ], [ %add25, %while.body.while.end_crit_edge ]
  %b.0.lcssa = phi i32 [ %add1, %entry.while.end_crit_edge ], [ %add29, %while.body.while.end_crit_edge ]
  %c.0.lcssa = phi i32 [ %add1, %entry.while.end_crit_edge ], [ %xor28, %while.body.while.end_crit_edge ]
  %k.0.lcssa = phi ptr [ %key, %entry.while.end_crit_edge ], [ %add.ptr31, %while.body.while.end_crit_edge ]
  %6 = zext i32 %length.addr.0.lcssa to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %length.addr.0.lcssa, label %while.end.sw.epilog_crit_edge [
    i32 12, label %sw.bb
    i32 11, label %while.end.sw.bb33_crit_edge
    i32 10, label %while.end.sw.bb38_crit_edge
    i32 9, label %while.end.sw.bb43_crit_edge
    i32 8, label %while.end.sw.bb47_crit_edge
    i32 7, label %while.end.sw.bb52_crit_edge
    i32 6, label %while.end.sw.bb57_crit_edge
    i32 5, label %while.end.sw.bb62_crit_edge
    i32 4, label %while.end.sw.bb66_crit_edge
    i32 3, label %while.end.sw.bb71_crit_edge
    i32 2, label %while.end.sw.bb76_crit_edge
    i32 1, label %while.end.sw.bb81_crit_edge
  ]

while.end.sw.bb81_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb81

while.end.sw.bb76_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb76

while.end.sw.bb71_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb71

while.end.sw.bb66_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb66

while.end.sw.bb62_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb62

while.end.sw.bb57_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb57

while.end.sw.bb52_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb52

while.end.sw.bb47_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb47

while.end.sw.bb43_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb43

while.end.sw.bb38_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb38

while.end.sw.bb33_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb33

while.end.sw.epilog_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr i8, ptr %k.0.lcssa, i32 11
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %shl = shl nuw i32 %conv, 24
  %add32 = add i32 %shl, %c.0.lcssa
  br label %sw.bb33

sw.bb33:                                          ; preds = %sw.bb, %while.end.sw.bb33_crit_edge
  %c.1 = phi i32 [ %c.0.lcssa, %while.end.sw.bb33_crit_edge ], [ %add32, %sw.bb ]
  %arrayidx34 = getelementptr i8, ptr %k.0.lcssa, i32 10
  %9 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %10 to i32
  %shl36 = shl nuw nsw i32 %conv35, 16
  %add37 = add i32 %shl36, %c.1
  br label %sw.bb38

sw.bb38:                                          ; preds = %sw.bb33, %while.end.sw.bb38_crit_edge
  %c.2 = phi i32 [ %c.0.lcssa, %while.end.sw.bb38_crit_edge ], [ %add37, %sw.bb33 ]
  %arrayidx39 = getelementptr i8, ptr %k.0.lcssa, i32 9
  %11 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %12 to i32
  %shl41 = shl nuw nsw i32 %conv40, 8
  %add42 = add i32 %shl41, %c.2
  br label %sw.bb43

sw.bb43:                                          ; preds = %sw.bb38, %while.end.sw.bb43_crit_edge
  %c.3 = phi i32 [ %c.0.lcssa, %while.end.sw.bb43_crit_edge ], [ %add42, %sw.bb38 ]
  %arrayidx44 = getelementptr i8, ptr %k.0.lcssa, i32 8
  %13 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %14 to i32
  %add46 = add i32 %c.3, %conv45
  br label %sw.bb47

sw.bb47:                                          ; preds = %sw.bb43, %while.end.sw.bb47_crit_edge
  %c.4 = phi i32 [ %c.0.lcssa, %while.end.sw.bb47_crit_edge ], [ %add46, %sw.bb43 ]
  %arrayidx48 = getelementptr i8, ptr %k.0.lcssa, i32 7
  %15 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %16 to i32
  %shl50 = shl nuw i32 %conv49, 24
  %add51 = add i32 %shl50, %b.0.lcssa
  br label %sw.bb52

sw.bb52:                                          ; preds = %sw.bb47, %while.end.sw.bb52_crit_edge
  %b.1 = phi i32 [ %b.0.lcssa, %while.end.sw.bb52_crit_edge ], [ %add51, %sw.bb47 ]
  %c.5 = phi i32 [ %c.0.lcssa, %while.end.sw.bb52_crit_edge ], [ %c.4, %sw.bb47 ]
  %arrayidx53 = getelementptr i8, ptr %k.0.lcssa, i32 6
  %17 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %18 to i32
  %shl55 = shl nuw nsw i32 %conv54, 16
  %add56 = add i32 %shl55, %b.1
  br label %sw.bb57

sw.bb57:                                          ; preds = %sw.bb52, %while.end.sw.bb57_crit_edge
  %b.2 = phi i32 [ %b.0.lcssa, %while.end.sw.bb57_crit_edge ], [ %add56, %sw.bb52 ]
  %c.6 = phi i32 [ %c.0.lcssa, %while.end.sw.bb57_crit_edge ], [ %c.5, %sw.bb52 ]
  %arrayidx58 = getelementptr i8, ptr %k.0.lcssa, i32 5
  %19 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %20 to i32
  %shl60 = shl nuw nsw i32 %conv59, 8
  %add61 = add i32 %shl60, %b.2
  br label %sw.bb62

sw.bb62:                                          ; preds = %sw.bb57, %while.end.sw.bb62_crit_edge
  %b.3 = phi i32 [ %b.0.lcssa, %while.end.sw.bb62_crit_edge ], [ %add61, %sw.bb57 ]
  %c.7 = phi i32 [ %c.0.lcssa, %while.end.sw.bb62_crit_edge ], [ %c.6, %sw.bb57 ]
  %arrayidx63 = getelementptr i8, ptr %k.0.lcssa, i32 4
  %21 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %22 to i32
  %add65 = add i32 %b.3, %conv64
  br label %sw.bb66

sw.bb66:                                          ; preds = %sw.bb62, %while.end.sw.bb66_crit_edge
  %b.4 = phi i32 [ %b.0.lcssa, %while.end.sw.bb66_crit_edge ], [ %add65, %sw.bb62 ]
  %c.8 = phi i32 [ %c.0.lcssa, %while.end.sw.bb66_crit_edge ], [ %c.7, %sw.bb62 ]
  %arrayidx67 = getelementptr i8, ptr %k.0.lcssa, i32 3
  %23 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %24 to i32
  %shl69 = shl nuw i32 %conv68, 24
  %add70 = add i32 %shl69, %a.0.lcssa
  br label %sw.bb71

sw.bb71:                                          ; preds = %sw.bb66, %while.end.sw.bb71_crit_edge
  %a.1 = phi i32 [ %a.0.lcssa, %while.end.sw.bb71_crit_edge ], [ %add70, %sw.bb66 ]
  %b.5 = phi i32 [ %b.0.lcssa, %while.end.sw.bb71_crit_edge ], [ %b.4, %sw.bb66 ]
  %c.9 = phi i32 [ %c.0.lcssa, %while.end.sw.bb71_crit_edge ], [ %c.8, %sw.bb66 ]
  %arrayidx72 = getelementptr i8, ptr %k.0.lcssa, i32 2
  %25 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %26 to i32
  %shl74 = shl nuw nsw i32 %conv73, 16
  %add75 = add i32 %shl74, %a.1
  br label %sw.bb76

sw.bb76:                                          ; preds = %sw.bb71, %while.end.sw.bb76_crit_edge
  %a.2 = phi i32 [ %a.0.lcssa, %while.end.sw.bb76_crit_edge ], [ %add75, %sw.bb71 ]
  %b.6 = phi i32 [ %b.0.lcssa, %while.end.sw.bb76_crit_edge ], [ %b.5, %sw.bb71 ]
  %c.10 = phi i32 [ %c.0.lcssa, %while.end.sw.bb76_crit_edge ], [ %c.9, %sw.bb71 ]
  %arrayidx77 = getelementptr i8, ptr %k.0.lcssa, i32 1
  %27 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx77, align 1
  %conv78 = zext i8 %28 to i32
  %shl79 = shl nuw nsw i32 %conv78, 8
  %add80 = add i32 %shl79, %a.2
  br label %sw.bb81

sw.bb81:                                          ; preds = %sw.bb76, %while.end.sw.bb81_crit_edge
  %a.3 = phi i32 [ %a.0.lcssa, %while.end.sw.bb81_crit_edge ], [ %add80, %sw.bb76 ]
  %b.7 = phi i32 [ %b.0.lcssa, %while.end.sw.bb81_crit_edge ], [ %b.6, %sw.bb76 ]
  %c.11 = phi i32 [ %c.0.lcssa, %while.end.sw.bb81_crit_edge ], [ %c.10, %sw.bb76 ]
  %29 = ptrtoint ptr %k.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %k.0.lcssa, align 1
  %conv83 = zext i8 %30 to i32
  %add84 = add i32 %a.3, %conv83
  %xor85 = xor i32 %c.11, %b.7
  %or.i206 = tail call i32 @llvm.fshl.i32(i32 %b.7, i32 %b.7, i32 14) #14
  %sub87 = sub i32 %xor85, %or.i206
  %xor88 = xor i32 %add84, %sub87
  %or.i207 = tail call i32 @llvm.fshl.i32(i32 %sub87, i32 %sub87, i32 11) #14
  %sub90 = sub i32 %xor88, %or.i207
  %xor91 = xor i32 %sub90, %b.7
  %or.i208 = tail call i32 @llvm.fshl.i32(i32 %sub90, i32 %sub90, i32 25) #14
  %sub93 = sub i32 %xor91, %or.i208
  %xor94 = xor i32 %sub93, %sub87
  %or.i209 = tail call i32 @llvm.fshl.i32(i32 %sub93, i32 %sub93, i32 16) #14
  %sub96 = sub i32 %xor94, %or.i209
  %xor97 = xor i32 %sub96, %sub90
  %or.i210 = tail call i32 @llvm.fshl.i32(i32 %sub96, i32 %sub96, i32 4) #14
  %sub99 = sub i32 %xor97, %or.i210
  %xor100 = xor i32 %sub99, %sub93
  %or.i211 = tail call i32 @llvm.fshl.i32(i32 %sub99, i32 %sub99, i32 14) #14
  %sub102 = sub i32 %xor100, %or.i211
  %xor103 = xor i32 %sub102, %sub96
  %or.i212 = tail call i32 @llvm.fshl.i32(i32 %sub102, i32 %sub102, i32 24) #14
  %sub105 = sub i32 %xor103, %or.i212
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb81, %while.end.sw.epilog_crit_edge
  %c.12 = phi i32 [ %c.0.lcssa, %while.end.sw.epilog_crit_edge ], [ %sub105, %sw.bb81 ]
  ret i32 %c.12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #14
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !100
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #14
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !101

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #14
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #14, !srcloc !102
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !103
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !90

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !104
  %7 = tail call i32 @llvm.read_register.i32(metadata !79) #14
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !105
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !106
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #16
  %13 = tail call i32 @llvm.read_register.i32(metadata !79) #14
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !107
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #14
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !94

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #14, !srcloc !108
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !109
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #14, !srcloc !110
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !111
  %3 = tail call i32 @llvm.read_register.i32(metadata !79) #14
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !112
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !113
  %2 = tail call i32 @llvm.read_register.i32(metadata !79) #14
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_fl_ct_clean_flow_entry(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_fl_ct_handle_nft_flow(i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_block_cb_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_block_cb_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !36, !37, !39, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !67, !69, !70, !72, !74, !75, !77}
!llvm.named.register.sp = !{!79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @nfp_compile_flow_metadata.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/flower/metadata.c", i32 319, i32 3}
!2 = !{ptr @nfp_compile_flow_metadata.__msg.1, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/netronome/nfp/flower/metadata.c", i32 352, i32 3}
!4 = !{ptr @nfp_compile_flow_metadata.__msg.2, !5, !"__msg", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/netronome/nfp/flower/metadata.c", i32 368, i32 3}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/netronome/nfp/flower/metadata.c", i32 381, i32 2}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/netronome/nfp/flower/metadata.c", i32 426, i32 2}
!11 = !{ptr @nfp_flower_table_params, !12, !"nfp_flower_table_params", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/netronome/nfp/flower/metadata.c", i32 477, i32 32}
!13 = !{ptr @merge_table_params, !14, !"merge_table_params", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/netronome/nfp/flower/metadata.c", i32 485, i32 32}
!15 = !{ptr @nfp_zone_table_params, !16, !"nfp_zone_table_params", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/netronome/nfp/flower/metadata.c", i32 491, i32 32}
!17 = !{ptr @nfp_ct_map_params, !18, !"nfp_ct_map_params", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/netronome/nfp/flower/metadata.c", i32 498, i32 32}
!19 = !{ptr @nfp_flower_metadata_init.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/netronome/nfp/flower/metadata.c", i32 567, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!36 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!46 = !{ptr @stats_ctx_table_params, !47, !"stats_ctx_table_params", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/netronome/nfp/flower/metadata.c", i32 34, i32 39}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/netronome/nfp/flower/metadata.c", i32 600, i32 3}
!64 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/netronome/nfp/flower/metadata.c", i32 606, i32 4}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/netronome/nfp/flower/metadata.c", i32 619, i32 3}
!69 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/netronome/nfp/flower/metadata.c", i32 625, i32 4}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/netronome/nfp/flower/metadata.c", i32 645, i32 3}
!74 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/netronome/nfp/flower/metadata.c", i32 651, i32 4}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/net/netfilter/nf_flow_table.h", i32 257, i32 3}
!79 = !{!"sp"}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i64 2149192326}
!90 = !{!"branch_weights", i32 2000, i32 1}
!91 = !{i64 2159629955}
!92 = !{i64 2159633389}
!93 = !{i64 2149192592}
!94 = !{!"branch_weights", i32 1, i32 2000}
!95 = !{i64 2148332015, i64 2148332041, i64 2148332070, i64 2148332104, i64 2148332135, i64 2148332158}
!96 = !{i64 2159697331}
!97 = !{i64 2148334480, i64 2148334506, i64 2148334535, i64 2148334569, i64 2148334600, i64 2148334623}
!98 = !{i8 0, i8 2}
!99 = !{i64 2148722609, i64 2148722889, i64 2148723223, i64 2148723557}
!100 = !{i64 2152798597}
!101 = !{!"branch_weights", i32 2146410443, i32 1073205}
!102 = !{i64 2148340873, i64 2148340905, i64 2148340934, i64 2148340968, i64 2148340999, i64 2148341022}
!103 = !{i64 2148429978}
!104 = !{i64 2152798757}
!105 = !{i64 2152799034}
!106 = !{i64 2152798876}
!107 = !{i64 2152799239}
!108 = !{i64 2152800302, i64 2152800794, i64 2152800339, i64 2152800395, i64 2152800429, i64 2152800453, i64 2152800494, i64 2152800515, i64 2152800543, i64 2152800577}
!109 = !{i64 2148428865}
!110 = !{i64 2148339260, i64 2148339292, i64 2148339321, i64 2148339355, i64 2148339386, i64 2148339409}
!111 = !{i64 2152801697}
!112 = !{i64 2159623028}
!113 = !{i64 2159625327}
