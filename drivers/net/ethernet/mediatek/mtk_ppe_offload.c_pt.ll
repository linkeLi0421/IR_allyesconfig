; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mediatek/mtk_ppe_offload.c_pt.bc'
source_filename = "../drivers/net/ethernet/mediatek/mtk_ppe_offload.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mtk_eth = type { ptr, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, [116 x i8], %struct.net_device, [2 x ptr], [2 x ptr], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, i8, %struct.refcount_struct, %struct.mtk_tx_ring, [4 x %struct.mtk_rx_ring], %struct.mtk_rx_ring, %struct.napi_struct, %struct.napi_struct, ptr, i32, ptr, [18 x ptr], ptr, %struct.work_struct, i32, ptr, %struct.spinlock, i32, i32, i32, %struct.dim, i32, i32, i32, %struct.dim, i32, i32, i32, i32, %struct.mtk_ppe, %struct.rhashtable, [100 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.165, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.165 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mtk_tx_ring = type { ptr, ptr, i32, ptr, ptr, i32, i16, %struct.atomic_t, i32, ptr, i32, i32 }
%struct.mtk_rx_ring = type { ptr, ptr, i32, i16, i16, i16, i8, i16, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mtk_ppe = type { ptr, ptr, i32, ptr, i32, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.flow_block_offload = type { i32, i32, i8, i8, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.flow_block_cb = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.flow_block_indr, i32 }
%struct.flow_block_indr = type { %struct.list_head, ptr, ptr, i32, ptr, ptr, ptr }
%struct.mtk_flow_data = type { %struct.ethhdr, %union.anon.178, i16, i16, %struct.anon.180, %struct.anon.181 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%union.anon.178 = type { %struct.anon.179 }
%struct.anon.179 = type { i32, i32 }
%struct.anon.180 = type { i16, i16, i8 }
%struct.anon.181 = type { i16, i8 }
%struct.mtk_foe_entry = type { i32, %union.anon.171 }
%union.anon.171 = type { %struct.mtk_foe_ipv4_dslite }
%struct.mtk_foe_ipv4_dslite = type { %struct.mtk_ipv4_tuple, [4 x i32], [4 x i32], [3 x i8], i8, i32, i32, %struct.mtk_foe_mac_info }
%struct.mtk_ipv4_tuple = type { i32, i32, %union.anon.172 }
%union.anon.172 = type { i32 }
%struct.mtk_foe_mac_info = type { i16, i16, i32, i16, i16, i32, i16, i16 }
%struct.flow_match_meta = type { ptr, ptr }
%struct.flow_match_control = type { ptr, ptr }
%struct.flow_match_basic = type { ptr, ptr }
%struct.flow_match_ports = type { ptr, ptr }
%struct.flow_match_ipv4_addrs = type { ptr, ptr }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.148, ptr }
%union.anon.148 = type { %struct.anon.153 }
%struct.anon.153 = type { i32, i64, i64, i64, i32 }
%struct.anon.150 = type { i32, i32, i32, i32 }
%struct.anon.149 = type { i16, i16, i8 }
%struct.anon.183 = type { i16, i16 }
%struct.flow_dissector_key_ipv4_addrs = type { i32, i32 }
%struct.mtk_flow_entry = type { %struct.rhash_head, i32, i16 }
%struct.rhash_head = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.callback_head = type { ptr, ptr }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.dsa_port = type { %union.anon.147, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.147 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.136 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.136 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.dsa_device_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8 }

@mtk_flow_ht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 4, i16 4, i16 0, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mtk_eth_setup_tc_block.block_cb_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @mtk_eth_setup_tc_block.block_cb_list, ptr @mtk_eth_setup_tc_block.block_cb_list }, [24 x i8] zeroinitializer }, align 32
@mtk_flow_offload_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mtk_flow_offload_mutex, i64 52), ptr getelementptr (i8, ptr @mtk_flow_offload_mutex, i64 52) }, ptr @mtk_flow_offload_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mtk_flow_offload_mutex.wait_lock\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtk_flow_offload_mutex\00", [41 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned.4 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.11 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.13 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.15 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.17 = internal global [8 x i64] [i64 6, i64 32, i64 4, i64 8, i64 9, i64 13, i64 15, i64 29]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 16]
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"mtk_flow_ht_params\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 44, i32 39 }
@___asan_gen_.25 = private unnamed_addr constant [14 x i8] c"block_cb_list\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 441, i32 9 }
@___asan_gen_.28 = private unnamed_addr constant [23 x i8] c"mtk_flow_offload_mutex\00", align 1
@___asan_gen_.35 = private constant [51 x i8] c"../drivers/net/ethernet/mediatek/mtk_ppe_offload.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 399, i32 8 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 594, i32 8 }
@___asan_gen_.44 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 755, i32 10 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 695, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 723, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @mtk_flow_ht_params, ptr @mtk_eth_setup_tc_block.block_cb_list, ptr @mtk_flow_offload_mutex, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_flow_ht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_eth_setup_tc_block.block_cb_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_flow_offload_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_eth_setup_tc(ptr noundef %dev, i32 noundef %type, ptr noundef %type_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %type)
  %cmp = icmp eq i32 %type, 14
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %entry
  %hw.i = getelementptr i8, ptr %dev, i32 2352
  %0 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw.i, align 4
  %foe_table.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %foe_table.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %foe_table.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.return_crit_edge, label %if.end.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i:                                         ; preds = %if.then
  %binder_type.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 1
  %4 = ptrtoint ptr %binder_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %binder_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 1
  br i1 %cmp.not.i, label %if.end2.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end2.i:                                        ; preds = %if.end.i
  %driver_block_list.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 7
  %6 = ptrtoint ptr %driver_block_list.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mtk_eth_setup_tc_block.block_cb_list, ptr %driver_block_list.i, align 4
  %7 = ptrtoint ptr %type_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type_data, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.end2.i.return_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb12.i
  ]

if.end2.i.return_crit_edge:                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb.i:                                          ; preds = %if.end2.i
  %block.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 5
  %10 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %block.i, align 4
  %call3.i = tail call ptr @flow_block_cb_lookup(ptr noundef %11, ptr noundef nonnull @mtk_eth_setup_tc_block_cb, ptr noundef %dev) #9
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @flow_block_cb_incref(ptr noundef nonnull %call3.i) #9
  br label %return

if.end6.i:                                        ; preds = %sw.bb.i
  %call7.i = tail call ptr @flow_block_cb_alloc(ptr noundef nonnull @mtk_eth_setup_tc_block_cb, ptr noundef %dev, ptr noundef %dev, ptr noundef null) #9
  %cmp.i.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then9.i, label %if.end11.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %call7.i to i32
  br label %return

if.end11.i:                                       ; preds = %if.end6.i
  %list.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call7.i, i32 0, i32 1
  %cb_list.i.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 6
  %prev.i.i.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %14, ptr noundef %cb_list.i.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end11.i.flow_block_cb_add.exit.i_crit_edge

if.end11.i.flow_block_cb_add.exit.i_crit_edge:    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %flow_block_cb_add.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list.i.i, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %cb_list.i.i, ptr %list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call7.i, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %list.i.i, ptr %14, align 4
  br label %flow_block_cb_add.exit.i

flow_block_cb_add.exit.i:                         ; preds = %if.end.i.i.i.i, %if.end11.i.flow_block_cb_add.exit.i_crit_edge
  %19 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @mtk_eth_setup_tc_block.block_cb_list, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call7.i, ptr noundef %19, ptr noundef nonnull @mtk_eth_setup_tc_block.block_cb_list) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %flow_block_cb_add.exit.i.return_crit_edge

flow_block_cb_add.exit.i.return_crit_edge:        ; preds = %flow_block_cb_add.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i.i.i:                                     ; preds = %flow_block_cb_add.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %call7.i, ptr getelementptr inbounds (%struct.list_head, ptr @mtk_eth_setup_tc_block.block_cb_list, i32 0, i32 1), align 4
  %20 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @mtk_eth_setup_tc_block.block_cb_list, ptr %call7.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %prev3.i.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %call7.i, ptr %19, align 4
  br label %return

sw.bb12.i:                                        ; preds = %if.end2.i
  %block13.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 5
  %23 = ptrtoint ptr %block13.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %block13.i, align 4
  %call14.i = tail call ptr @flow_block_cb_lookup(ptr noundef %24, ptr noundef nonnull @mtk_eth_setup_tc_block_cb, ptr noundef %dev) #9
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %sw.bb12.i.return_crit_edge, label %if.end17.i

sw.bb12.i.return_crit_edge:                       ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end17.i:                                       ; preds = %sw.bb12.i
  %call18.i = tail call i32 @flow_block_cb_decref(ptr noundef nonnull %call14.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end17.i.return_crit_edge, label %if.then20.i

if.end17.i.return_crit_edge:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then20.i:                                      ; preds = %if.end17.i
  %list.i47.i = getelementptr inbounds %struct.flow_block_cb, ptr %call14.i, i32 0, i32 1
  %cb_list.i48.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 6
  %call.i.i.i49.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i47.i) #9
  br i1 %call.i.i.i49.i, label %if.end.i.i.i50.i, label %if.then20.i.__list_del_entry.exit.i.i.i_crit_edge

if.then20.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i50.i:                                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call14.i, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i.i, align 4
  %27 = ptrtoint ptr %list.i47.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %list.i47.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i50.i, %if.then20.i.__list_del_entry.exit.i.i.i_crit_edge
  %31 = ptrtoint ptr %cb_list.i48.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cb_list.i48.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i47.i, ptr noundef %cb_list.i48.i, ptr noundef %32) #9
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.flow_block_cb_remove.exit.i_crit_edge

__list_del_entry.exit.i.i.i.flow_block_cb_remove.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %flow_block_cb_remove.exit.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %list.i47.i, ptr %prev1.i.i2.i.i.i, align 4
  %34 = ptrtoint ptr %list.i47.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %32, ptr %list.i47.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call14.i, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %cb_list.i48.i, ptr %prev3.i.i.i.i.i, align 4
  %36 = ptrtoint ptr %cb_list.i48.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %list.i47.i, ptr %cb_list.i48.i, align 4
  br label %flow_block_cb_remove.exit.i

flow_block_cb_remove.exit.i:                      ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.flow_block_cb_remove.exit.i_crit_edge
  %call.i.i51.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call14.i) #9
  br i1 %call.i.i51.i, label %if.end.i.i53.i, label %flow_block_cb_remove.exit.i.list_del.exit.i_crit_edge

flow_block_cb_remove.exit.i.list_del.exit.i_crit_edge: ; preds = %flow_block_cb_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i53.i:                                   ; preds = %flow_block_cb_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i52.i = getelementptr inbounds %struct.list_head, ptr %call14.i, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i52.i, align 4
  %39 = ptrtoint ptr %call14.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call14.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i53.i, %flow_block_cb_remove.exit.i.list_del.exit.i_crit_edge
  %43 = ptrtoint ptr %call14.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 256 to ptr), ptr %call14.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call14.i, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %return

return:                                           ; preds = %list_del.exit.i, %if.end17.i.return_crit_edge, %sw.bb12.i.return_crit_edge, %if.end.i.i.i, %flow_block_cb_add.exit.i.return_crit_edge, %if.then9.i, %if.then5.i, %if.end2.i.return_crit_edge, %if.end.i.return_crit_edge, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ 0, %if.then5.i ], [ %12, %if.then9.i ], [ -95, %if.then.return_crit_edge ], [ -95, %if.end.i.return_crit_edge ], [ -2, %sw.bb12.i.return_crit_edge ], [ 0, %list_del.exit.i ], [ 0, %if.end17.i.return_crit_edge ], [ -95, %if.end2.i.return_crit_edge ], [ 0, %flow_block_cb_add.exit.i.return_crit_edge ], [ 0, %if.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_eth_offload_init(ptr noundef %eth) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %foe_table = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 44, i32 3
  %0 = ptrtoint ptr %foe_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %foe_table, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flow_table = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 45
  %call = tail call i32 @rhashtable_init(ptr noundef %flow_table, ptr noundef nonnull @mtk_flow_ht_params) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_eth_setup_tc_block_cb(i32 noundef %type, ptr noundef %type_data, ptr nocapture noundef readonly %cb_priv) #0 align 64 {
entry:
  %data.i = alloca %struct.mtk_flow_data, align 4
  %foe.i = alloca %struct.mtk_foe_entry, align 4
  %match.i = alloca %struct.flow_match_meta, align 4
  %match8.i = alloca %struct.flow_match_control, align 4
  %match14.i = alloca %struct.flow_match_basic, align 4
  %ports.i = alloca %struct.flow_match_ports, align 4
  %addrs.i = alloca %struct.flow_match_ipv4_addrs, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %cb_priv, i32 2352
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %features.i = getelementptr inbounds %struct.net_device, ptr %cb_priv, i32 0, i32 23
  %2 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %features.i, align 16
  %and.i = and i64 %3, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i = icmp ne i64 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp.not = icmp eq i32 %type, 2
  %or.cond = and i1 %cmp.not, %tobool.i
  br i1 %or.cond, label %if.end3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @mtk_flow_offload_mutex, i32 noundef 0) #9
  %command = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 1
  %4 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %command, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %5, label %if.end3.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb7
  ]

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end3
  %rule.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 3
  %7 = ptrtoint ptr %rule.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rule.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %data.i) #9
  %9 = call ptr @memset(ptr %data.i, i32 0, i32 40)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %foe.i) #9
  %10 = call ptr @memset(ptr %foe.i, i32 255, i32 80)
  %flow_table.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 45
  %cookie.i = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 2
  %call2.i = tail call fastcc ptr @rhashtable_lookup(ptr noundef %flow_table.i, ptr noundef %cookie.i, [7 x i32] [i32 4, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0]) #9
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.mtk_flow_offload_replace.exit_crit_edge

sw.bb.mtk_flow_offload_replace.exit_crit_edge:    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_flow_offload_replace.exit

if.end.i:                                         ; preds = %sw.bb
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %and.i.i.i = and i32 %14, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %if.end.i.mtk_flow_offload_replace.exit_crit_edge, label %if.then4.i

if.end.i.mtk_flow_offload_replace.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_flow_offload_replace.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i) #9
  %15 = ptrtoint ptr %match.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i, align 4, !annotation !56
  %16 = getelementptr inbounds %struct.flow_match_meta, ptr %match.i, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %16, align 4, !annotation !56
  call void @flow_rule_match_meta(ptr noundef %8, ptr noundef nonnull %match.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i) #9
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %8, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %and.i.i266.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i266.i)
  %tobool.i.i267.not.i = icmp eq i32 %and.i.i266.i, 0
  br i1 %tobool.i.i267.not.i, label %if.then4.i.mtk_flow_offload_replace.exit_crit_edge, label %if.then7.i

if.then4.i.mtk_flow_offload_replace.exit_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_flow_offload_replace.exit

if.then7.i:                                       ; preds = %if.then4.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match8.i) #9
  %22 = ptrtoint ptr %match8.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -1 to ptr), ptr %match8.i, align 4, !annotation !56
  %23 = getelementptr inbounds %struct.flow_match_control, ptr %match8.i, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 -1 to ptr), ptr %23, align 4, !annotation !56
  call void @flow_rule_match_control(ptr noundef %8, ptr noundef nonnull %match8.i) #9
  %25 = ptrtoint ptr %match8.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %match8.i, align 4
  %addr_type9.i = getelementptr inbounds %struct.flow_dissector_key_control, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %addr_type9.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %addr_type9.i, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match8.i) #9
  %29 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %8, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %and.i.i268.i = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i268.i)
  %tobool.i.i269.not.i = icmp eq i32 %and.i.i268.i, 0
  br i1 %tobool.i.i269.not.i, label %if.then7.i.mtk_flow_offload_replace.exit_crit_edge, label %if.then13.i

if.then7.i.mtk_flow_offload_replace.exit_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_flow_offload_replace.exit

if.then13.i:                                      ; preds = %if.then7.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match14.i) #9
  %33 = ptrtoint ptr %match14.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 -1 to ptr), ptr %match14.i, align 4, !annotation !56
  %34 = getelementptr inbounds %struct.flow_match_basic, ptr %match14.i, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 -1 to ptr), ptr %34, align 4, !annotation !56
  call void @flow_rule_match_basic(ptr noundef %8, ptr noundef nonnull %match14.i) #9
  %36 = ptrtoint ptr %match14.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %match14.i, align 4
  %ip_proto.i = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %ip_proto.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ip_proto.i, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match14.i) #9
  %action.i = getelementptr inbounds %struct.flow_rule, ptr %8, i32 0, i32 1
  %entries.i = getelementptr inbounds %struct.flow_rule, ptr %8, i32 1
  %40 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %action.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp299.not.i = icmp eq i32 %41, 0
  br i1 %cmp299.not.i, label %if.then13.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then13.i.for.end.i_crit_edge:                  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then13.i
  %num40.i = getelementptr inbounds %struct.mtk_flow_data, ptr %data.i, i32 0, i32 5, i32 1
  %pppoe.i = getelementptr inbounds %struct.mtk_flow_data, ptr %data.i, i32 0, i32 5
  %vlan.i = getelementptr inbounds %struct.mtk_flow_data, ptr %data.i, i32 0, i32 4
  %num.i = getelementptr inbounds %struct.mtk_flow_data, ptr %data.i, i32 0, i32 4, i32 2
  %proto36.i = getelementptr inbounds %struct.mtk_flow_data, ptr %data.i, i32 0, i32 4, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0302.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc53.i, %for.inc.i.for.body.i_crit_edge ]
  %odev.0301.i = phi ptr [ null, %for.body.lr.ph.i ], [ %odev.1.i, %for.inc.i.for.body.i_crit_edge ]
  %act.0300.i = phi ptr [ %entries.i, %for.body.lr.ph.i ], [ %arrayidx54.i, %for.inc.i.for.body.i_crit_edge ]
  %42 = ptrtoint ptr %act.0300.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %act.0300.i, align 8
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %43, label %for.body.i.mtk_flow_offload_replace.exit_crit_edge [
    i32 13, label %sw.bb.i
    i32 4, label %sw.bb23.i
    i32 15, label %for.body.i.for.inc.i_crit_edge
    i32 8, label %sw.bb24.i
    i32 9, label %for.body.i.for.inc.i_crit_edge110
    i32 29, label %sw.bb39.i
  ]

for.body.i.for.inc.i_crit_edge110:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.body.i.mtk_flow_offload_replace.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_flow_offload_replace.exit

sw.bb.i:                                          ; preds = %for.body.i
  %45 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0300.i, i32 0, i32 5
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp19.i = icmp eq i32 %47, 1
  br i1 %cmp19.i, label %if.then20.i, label %sw.bb.i.for.inc.i_crit_edge

sw.bb.i.for.inc.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then20.i:                                      ; preds = %sw.bb.i
  %offset.i.i = getelementptr inbounds %struct.anon.150, ptr %45, i32 0, i32 1
  %48 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %49)
  %cmp.i.i = icmp ugt i32 %49, 8
  br i1 %cmp.i.i, label %if.then20.i.for.inc.i_crit_edge, label %if.end.i.i

if.then20.i.for.inc.i_crit_edge:                  ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i.i:                                       ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  %val.i.i = getelementptr inbounds %struct.anon.150, ptr %45, i32 0, i32 3
  %add.ptr.i.i = getelementptr i8, ptr %data.i, i32 %49
  %mask.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %act.0300.i, i32 0, i32 5, i32 0, i32 1
  %50 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mask.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %51)
  %cmp2.i.i = icmp eq i32 %51, 65535
  %dest.0.idx.i.i = select i1 %cmp2.i.i, i32 2, i32 0
  %dest.0.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %dest.0.idx.i.i
  %src.0.i.i = getelementptr i8, ptr %val.i.i, i32 %dest.0.idx.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i.i = icmp eq i32 %51, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 4, i32 2
  %52 = call ptr @memcpy(ptr %dest.0.i.i, ptr %src.0.i.i, i32 %cond.i.i)
  br label %for.inc.i

sw.bb23.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0300.i, i32 0, i32 5
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 8
  br label %for.inc.i

sw.bb24.i:                                        ; preds = %for.body.i
  %56 = ptrtoint ptr %num.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %57)
  %cmp25.i = icmp eq i8 %57, 1
  br i1 %cmp25.i, label %sw.bb24.i.mtk_flow_offload_replace.exit_crit_edge, label %lor.lhs.false.i

sw.bb24.i.mtk_flow_offload_replace.exit_crit_edge: ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_flow_offload_replace.exit

lor.lhs.false.i:                                  ; preds = %sw.bb24.i
  %58 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0300.i, i32 0, i32 5
  %proto.i = getelementptr inbounds %struct.anon.149, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %proto.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %proto.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %60)
  %cmp28.not.i = icmp eq i16 %60, -32512
  br i1 %cmp28.not.i, label %if.end31.i, label %lor.lhs.false.i.mtk_flow_offload_replace.exit_crit_edge

lor.lhs.false.i.mtk_flow_offload_replace.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_flow_offload_replace.exit

if.end31.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %58, align 8
  %63 = ptrtoint ptr %vlan.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %vlan.i, align 4
  %64 = ptrtoint ptr %proto.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %proto.i, align 2
  %66 = ptrtoint ptr %proto36.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %proto36.i, align 2
  %inc.i = add i8 %57, 1
  %67 = ptrtoint ptr %num.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %inc.i, ptr %num.i, align 4
  br label %for.inc.i

sw.bb39.i:                                        ; preds = %for.body.i
  %68 = ptrtoint ptr %num40.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %num40.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %69)
  %cmp42.i = icmp eq i8 %69, 1
  br i1 %cmp42.i, label %sw.bb39.i.mtk_flow_offload_replace.exit_crit_edge, label %if.end45.i

sw.bb39.i.mtk_flow_offload_replace.exit_crit_edge: ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_flow_offload_replace.exit

if.end45.i:                                       ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #11
  %70 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0300.i, i32 0, i32 5
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %70, align 8
  %73 = ptrtoint ptr %pppoe.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %pppoe.i, align 2
  %inc50.i = add i8 %69, 1
  %74 = ptrtoint ptr %num40.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %inc50.i, ptr %num40.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end45.i, %if.end31.i, %sw.bb23.i, %if.end.i.i, %if.then20.i.for.inc.i_crit_edge, %sw.bb.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge110
  %odev.1.i = phi ptr [ %odev.0301.i, %if.end45.i ], [ %odev.0301.i, %if.end31.i ], [ %odev.0301.i, %for.body.i.for.inc.i_crit_edge ], [ %odev.0301.i, %for.body.i.for.inc.i_crit_edge110 ], [ %55, %sw.bb23.i ], [ %odev.0301.i, %sw.bb.i.for.inc.i_crit_edge ], [ %odev.0301.i, %if.then20.i.for.inc.i_crit_edge ], [ %odev.0301.i, %if.end.i.i ]
  %inc53.i = add nuw i32 %i.0302.i, 1
  %arrayidx54.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i, i32 0, i32 %inc53.i
  %75 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %action.i, align 8
  %cmp.i = icmp ult i32 %inc53.i, %76
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then13.i.for.end.i_crit_edge
  %odev.0.lcssa.i = phi ptr [ null, %if.then13.i.for.end.i_crit_edge ], [ %odev.1.i, %for.inc.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %28)
  %cond.i = icmp eq i16 %28, 2
  br i1 %cond.i, label %sw.bb56.i, label %for.end.i.mtk_flow_offload_replace.exit_crit_edge

for.end.i.mtk_flow_offload_replace.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_flow_offload_replace.exit

sw.bb56.i:                                        ; preds = %for.end.i
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %data.i, i32 0, i32 1
  %77 = ptrtoint ptr %h_source.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %h_source.i, align 4
  %79 = and i32 %78, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.i.not.i.i = icmp eq i32 %79, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %sw.bb56.i.mtk_flow_offload_replace.exit_crit_edge

sw.bb56.i.mtk_flow_offload_replace.exit_crit_edge: ; preds = %sw.bb56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_flow_offload_replace.exit

is_valid_ether_addr.exit.i:                       ; preds = %sw.bb56.i
  %add.ptr.i.i.i = getelementptr inbounds %struct.ethhdr, ptr %data.i, i32 0, i32 1, i32 4
  %80 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %81 to i32
  %or.i.i.i = or i32 %78, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.mtk_flow_offload_replace.exit_crit_edge, label %lor.lhs.false61.i

is_valid_ether_addr.exit.i.mtk_flow_offload_replace.exit_crit_edge: ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_flow_offload_replace.exit

lor.lhs.false61.i:                                ; preds = %is_valid_ether_addr.exit.i
  %82 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %data.i, align 4
  %84 = and i32 %83, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.i.not.i270.i = icmp eq i32 %84, 0
  br i1 %tobool.i.not.i270.i, label %is_valid_ether_addr.exit276.i, label %lor.lhs.false61.i.mtk_flow_offload_replace.exit_crit_edge

lor.lhs.false61.i.mtk_flow_offload_replace.exit_crit_edge: ; preds = %lor.lhs.false61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_flow_offload_replace.exit

is_valid_ether_addr.exit276.i:                    ; preds = %lor.lhs.false61.i
  %add.ptr.i.i271.i = getelementptr inbounds i8, ptr %data.i, i32 4
  %85 = ptrtoint ptr %add.ptr.i.i271.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %add.ptr.i.i271.i, align 4
  %conv.i.i272.i = zext i16 %86 to i32
  %or.i.i273.i = or i32 %83, %conv.i.i272.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i273.i)
  %cmp.i.i274.not.i = icmp eq i32 %or.i.i273.i, 0
  br i1 %cmp.i.i274.not.i, label %is_valid_ether_addr.exit276.i.mtk_flow_offload_replace.exit_crit_edge, label %if.end66.i

is_valid_ether_addr.exit276.i.mtk_flow_offload_replace.exit_crit_edge: ; preds = %is_valid_ether_addr.exit276.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_flow_offload_replace.exit

if.end66.i:                                       ; preds = %is_valid_ether_addr.exit276.i
  %conv67.i = zext i8 %39 to i32
  %call74.i = call i32 @mtk_foe_entry_prepare(ptr noundef nonnull %foe.i, i32 noundef 0, i32 noundef %conv67.i, i8 noundef zeroext 0, ptr noundef %h_source.i, ptr noundef nonnull %data.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool75.not.i = icmp eq i32 %call74.i, 0
  br i1 %tobool75.not.i, label %if.end77.i, label %if.end66.i.mtk_flow_offload_replace.exit_crit_edge

if.end66.i.mtk_flow_offload_replace.exit_crit_edge: ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_flow_offload_replace.exit

if.end77.i:                                       ; preds = %if.end66.i
  %87 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %8, align 8
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 4
  %and.i.i277.i = and i32 %90, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i277.i)
  %tobool.i.i278.not.i = icmp eq i32 %and.i.i277.i, 0
  br i1 %tobool.i.i278.not.i, label %if.end77.i.mtk_flow_offload_replace.exit_crit_edge, label %if.then79.i

if.end77.i.mtk_flow_offload_replace.exit_crit_edge: ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_flow_offload_replace.exit

if.then79.i:                                      ; preds = %if.end77.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ports.i) #9
  %91 = ptrtoint ptr %ports.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr inttoptr (i32 -1 to ptr), ptr %ports.i, align 4, !annotation !56
  %92 = getelementptr inbounds %struct.flow_match_ports, ptr %ports.i, i32 0, i32 1
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr inttoptr (i32 -1 to ptr), ptr %92, align 4, !annotation !56
  call void @flow_rule_match_ports(ptr noundef %8, ptr noundef nonnull %ports.i) #9
  %94 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ports.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %95, align 4
  %src_port.i = getelementptr inbounds %struct.mtk_flow_data, ptr %data.i, i32 0, i32 2
  %98 = ptrtoint ptr %src_port.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %src_port.i, align 4
  %dst.i = getelementptr inbounds %struct.anon.183, ptr %95, i32 0, i32 1
  %99 = ptrtoint ptr %dst.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %dst.i, align 2
  %dst_port.i = getelementptr inbounds %struct.mtk_flow_data, ptr %data.i, i32 0, i32 3
  %101 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %dst_port.i, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ports.i) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addrs.i) #9
  %102 = ptrtoint ptr %addrs.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr inttoptr (i32 -1 to ptr), ptr %addrs.i, align 4, !annotation !56
  %103 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %addrs.i, i32 0, i32 1
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr inttoptr (i32 -1 to ptr), ptr %103, align 4, !annotation !56
  call void @flow_rule_match_ipv4_addrs(ptr noundef %8, ptr noundef nonnull %addrs.i) #9
  %105 = ptrtoint ptr %addrs.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %addrs.i, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %106, align 4
  %109 = getelementptr inbounds %struct.mtk_flow_data, ptr %data.i, i32 0, i32 1
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %108, ptr %109, align 4
  %dst91.i = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %106, i32 0, i32 1
  %111 = ptrtoint ptr %dst91.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %dst91.i, align 4
  %dst_addr.i = getelementptr inbounds %struct.mtk_flow_data, ptr %data.i, i32 0, i32 1, i32 0, i32 1
  %113 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %dst_addr.i, align 4
  %114 = ptrtoint ptr %src_port.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %src_port.i, align 4
  %116 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %dst_port.i, align 2
  %call.i.i = call i32 @mtk_foe_entry_set_ipv4_tuple(ptr noundef nonnull %foe.i, i1 noundef zeroext false, i32 noundef %108, i16 noundef zeroext %115, i32 noundef %112, i16 noundef zeroext %117) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addrs.i) #9
  %118 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %action.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp100303.not.i = icmp eq i32 %119, 0
  br i1 %cmp100303.not.i, label %if.then79.i.if.then127.i_crit_edge, label %if.then79.i.for.body102.i_crit_edge

if.then79.i.for.body102.i_crit_edge:              ; preds = %if.then79.i
  br label %for.body102.i

if.then79.i.if.then127.i_crit_edge:               ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then127.i

for.body102.i:                                    ; preds = %for.inc118.i.for.body102.i_crit_edge, %if.then79.i.for.body102.i_crit_edge
  %i.1305.i = phi i32 [ %inc121.i, %for.inc118.i.for.body102.i_crit_edge ], [ 0, %if.then79.i.for.body102.i_crit_edge ]
  %act.1304.i = phi ptr [ %arrayidx122.i, %for.inc118.i.for.body102.i_crit_edge ], [ %entries.i, %if.then79.i.for.body102.i_crit_edge ]
  %120 = ptrtoint ptr %act.1304.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %act.1304.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %121)
  %cmp104.not.i = icmp eq i32 %121, 13
  br i1 %cmp104.not.i, label %if.end107.i, label %for.body102.i.for.inc118.i_crit_edge

for.body102.i.for.inc118.i_crit_edge:             ; preds = %for.body102.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc118.i

if.end107.i:                                      ; preds = %for.body102.i
  %122 = getelementptr inbounds %struct.flow_action_entry, ptr %act.1304.i, i32 0, i32 5
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %122, align 8
  %125 = zext i32 %124 to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %124, label %if.end107.i.mtk_flow_offload_replace.exit_crit_edge [
    i32 4, label %if.end107.i.sw.bb109.i_crit_edge
    i32 5, label %if.end107.i.sw.bb109.i_crit_edge111
    i32 2, label %sw.bb111.i
    i32 1, label %if.end107.i.for.inc118.i_crit_edge
  ]

if.end107.i.for.inc118.i_crit_edge:               ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc118.i

if.end107.i.sw.bb109.i_crit_edge111:              ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb109.i

if.end107.i.sw.bb109.i_crit_edge:                 ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb109.i

if.end107.i.mtk_flow_offload_replace.exit_crit_edge: ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_flow_offload_replace.exit

sw.bb109.i:                                       ; preds = %if.end107.i.sw.bb109.i_crit_edge, %if.end107.i.sw.bb109.i_crit_edge111
  %val1.i.i = getelementptr inbounds %struct.anon.150, ptr %122, i32 0, i32 3
  %126 = ptrtoint ptr %val1.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %val1.i.i, align 4
  %offset.i279.i = getelementptr inbounds %struct.anon.150, ptr %122, i32 0, i32 1
  %128 = ptrtoint ptr %offset.i279.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %offset.i279.i, align 4
  %130 = zext i32 %129 to i64
  call void @__sanitizer_cov_trace_switch(i64 %130, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %129, label %sw.bb109.i.mtk_flow_offload_replace.exit_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 2, label %sw.bb3.i.i
  ]

sw.bb109.i.mtk_flow_offload_replace.exit_crit_edge: ; preds = %sw.bb109.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_flow_offload_replace.exit

sw.bb.i.i:                                        ; preds = %sw.bb109.i
  %mask.i280.i = getelementptr inbounds %struct.flow_action_entry, ptr %act.1304.i, i32 0, i32 5, i32 0, i32 1
  %131 = ptrtoint ptr %mask.i280.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %mask.i280.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %132)
  %cmp.i281.i = icmp eq i32 %132, -65536
  br i1 %cmp.i281.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = trunc i32 %127 to i16
  %133 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %conv.i.i, ptr %dst_port.i, align 2
  br label %for.inc118.i

if.else.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i = lshr i32 %127, 16
  %conv2.i.i = trunc i32 %shr.i.i to i16
  %134 = ptrtoint ptr %src_port.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %conv2.i.i, ptr %src_port.i, align 4
  br label %for.inc118.i

sw.bb3.i.i:                                       ; preds = %sw.bb109.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv4.i.i = trunc i32 %127 to i16
  %135 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %conv4.i.i, ptr %dst_port.i, align 2
  br label %for.inc118.i

sw.bb111.i:                                       ; preds = %if.end107.i
  %offset.i284.i = getelementptr inbounds %struct.anon.150, ptr %122, i32 0, i32 1
  %136 = ptrtoint ptr %offset.i284.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %offset.i284.i, align 4
  %138 = zext i32 %137 to i64
  call void @__sanitizer_cov_trace_switch(i64 %138, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %137, label %sw.bb111.i.mtk_flow_offload_replace.exit_crit_edge [
    i32 12, label %sw.bb111.i.sw.epilog.i.i_crit_edge
    i32 16, label %sw.bb1.i.i
  ]

sw.bb111.i.sw.epilog.i.i_crit_edge:               ; preds = %sw.bb111.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

sw.bb111.i.mtk_flow_offload_replace.exit_crit_edge: ; preds = %sw.bb111.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_flow_offload_replace.exit

sw.bb1.i.i:                                       ; preds = %sw.bb111.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb1.i.i, %sw.bb111.i.sw.epilog.i.i_crit_edge
  %dest.0.i287.i = phi ptr [ %dst_addr.i, %sw.bb1.i.i ], [ %109, %sw.bb111.i.sw.epilog.i.i_crit_edge ]
  %val.i288.i = getelementptr inbounds %struct.anon.150, ptr %122, i32 0, i32 3
  %139 = ptrtoint ptr %val.i288.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %val.i288.i, align 4
  %141 = ptrtoint ptr %dest.0.i287.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %dest.0.i287.i, align 4
  br label %for.inc118.i

for.inc118.i:                                     ; preds = %sw.epilog.i.i, %sw.bb3.i.i, %if.else.i.i, %if.then.i.i, %if.end107.i.for.inc118.i_crit_edge, %for.body102.i.for.inc118.i_crit_edge
  %inc121.i = add nuw i32 %i.1305.i, 1
  %arrayidx122.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i, i32 0, i32 %inc121.i
  %142 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %action.i, align 8
  %cmp100.i = icmp ult i32 %inc121.i, %143
  br i1 %cmp100.i, label %for.inc118.i.for.body102.i_crit_edge, label %for.inc118.i.if.then127.i_crit_edge

for.inc118.i.if.then127.i_crit_edge:              ; preds = %for.inc118.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then127.i

for.inc118.i.for.body102.i_crit_edge:             ; preds = %for.inc118.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body102.i

if.then127.i:                                     ; preds = %for.inc118.i.if.then127.i_crit_edge, %if.then79.i.if.then127.i_crit_edge
  %144 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %109, align 4
  %146 = ptrtoint ptr %src_port.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %src_port.i, align 4
  %148 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %dst_addr.i, align 4
  %150 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %dst_port.i, align 2
  %call.i293.i = call i32 @mtk_foe_entry_set_ipv4_tuple(ptr noundef nonnull %foe.i, i1 noundef zeroext true, i32 noundef %145, i16 noundef zeroext %147, i32 noundef %149, i16 noundef zeroext %151) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i293.i)
  %tobool129.not.i = icmp eq i32 %call.i293.i, 0
  br i1 %tobool129.not.i, label %if.end132.i, label %if.then127.i.mtk_flow_offload_replace.exit_crit_edge

if.then127.i.mtk_flow_offload_replace.exit_crit_edge: ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_flow_offload_replace.exit

if.end132.i:                                      ; preds = %if.then127.i
  %vlan133.i = getelementptr inbounds %struct.mtk_flow_data, ptr %data.i, i32 0, i32 4
  %num134.i = getelementptr inbounds %struct.mtk_flow_data, ptr %data.i, i32 0, i32 4, i32 2
  %152 = ptrtoint ptr %num134.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %num134.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %153)
  %cmp136.i = icmp eq i8 %153, 1
  br i1 %cmp136.i, label %if.then138.i, label %if.end132.i.if.end150.i_crit_edge

if.end132.i.if.end150.i_crit_edge:                ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end150.i

if.then138.i:                                     ; preds = %if.end132.i
  %proto140.i = getelementptr inbounds %struct.mtk_flow_data, ptr %data.i, i32 0, i32 4, i32 1
  %154 = ptrtoint ptr %proto140.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %proto140.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %155)
  %cmp142.not.i = icmp eq i16 %155, -32512
  br i1 %cmp142.not.i, label %if.end145.i, label %if.then138.i.mtk_flow_offload_replace.exit_crit_edge

if.then138.i.mtk_flow_offload_replace.exit_crit_edge: ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_flow_offload_replace.exit

if.end145.i:                                      ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #11
  %156 = ptrtoint ptr %vlan133.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %vlan133.i, align 4
  %conv148.i = zext i16 %157 to i32
  %call149.i = call i32 @mtk_foe_entry_set_vlan(ptr noundef nonnull %foe.i, i32 noundef %conv148.i) #9
  br label %if.end150.i

if.end150.i:                                      ; preds = %if.end145.i, %if.end132.i.if.end150.i_crit_edge
  %num152.i = getelementptr inbounds %struct.mtk_flow_data, ptr %data.i, i32 0, i32 5, i32 1
  %158 = ptrtoint ptr %num152.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %num152.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %159)
  %cmp154.i = icmp eq i8 %159, 1
  br i1 %cmp154.i, label %if.then156.i, label %if.end150.i.if.end161.i_crit_edge

if.end150.i.if.end161.i_crit_edge:                ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end161.i

if.then156.i:                                     ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #11
  %pppoe151.i = getelementptr inbounds %struct.mtk_flow_data, ptr %data.i, i32 0, i32 5
  %160 = ptrtoint ptr %pppoe151.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %pppoe151.i, align 2
  %conv159.i = zext i16 %161 to i32
  %call160.i = call i32 @mtk_foe_entry_set_pppoe(ptr noundef nonnull %foe.i, i32 noundef %conv159.i) #9
  br label %if.end161.i

if.end161.i:                                      ; preds = %if.then156.i, %if.end150.i.if.end161.i_crit_edge
  %call162.i = call fastcc i32 @mtk_flow_set_output_device(ptr noundef %1, ptr noundef nonnull %foe.i, ptr noundef %odev.0.lcssa.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162.i)
  %tobool163.not.i = icmp eq i32 %call162.i, 0
  br i1 %tobool163.not.i, label %if.end165.i, label %if.end161.i.mtk_flow_offload_replace.exit_crit_edge

if.end161.i.mtk_flow_offload_replace.exit_crit_edge: ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_flow_offload_replace.exit

if.end165.i:                                      ; preds = %if.end161.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %162 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %162, i32 noundef 3520, i32 noundef 12) #12
  %tobool167.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool167.not.i, label %if.end165.i.mtk_flow_offload_replace.exit_crit_edge, label %if.end169.i

if.end165.i.mtk_flow_offload_replace.exit_crit_edge: ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_flow_offload_replace.exit

if.end169.i:                                      ; preds = %if.end165.i
  %163 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %cookie.i, align 4
  %cookie171.i = getelementptr inbounds %struct.mtk_flow_entry, ptr %call7.i.i.i, i32 0, i32 1
  %165 = ptrtoint ptr %cookie171.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %cookie171.i, align 4
  %call.i294.i = call i32 @mtk_r32(ptr noundef %1, i32 noundef 16) #9
  %ppe.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 44
  %166 = trunc i32 %call.i294.i to i16
  %conv173.i = and i16 %166, 32767
  %call174.i = call i32 @mtk_foe_entry_commit(ptr noundef %ppe.i, ptr noundef nonnull %foe.i, i16 noundef zeroext %conv173.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174.i)
  %cmp175.i = icmp slt i32 %call174.i, 0
  br i1 %cmp175.i, label %if.end169.i.free.i_crit_edge, label %if.end178.i

if.end169.i.free.i_crit_edge:                     ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free.i

if.end178.i:                                      ; preds = %if.end169.i
  %conv179.i = trunc i32 %call174.i to i16
  %hash180.i = getelementptr inbounds %struct.mtk_flow_entry, ptr %call7.i.i.i, i32 0, i32 2
  %167 = ptrtoint ptr %hash180.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %conv179.i, ptr %hash180.i, align 8
  %call182.i = call fastcc i32 @rhashtable_insert_fast(ptr noundef %flow_table.i, ptr noundef nonnull %call7.i.i.i, [7 x i32] [i32 4, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0]) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182.i)
  %cmp183.i = icmp slt i32 %call182.i, 0
  br i1 %cmp183.i, label %clear_flow.i, label %if.end178.i.mtk_flow_offload_replace.exit_crit_edge

if.end178.i.mtk_flow_offload_replace.exit_crit_edge: ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_flow_offload_replace.exit

clear_flow.i:                                     ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #11
  %foe_table.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 44, i32 3
  %168 = ptrtoint ptr %foe_table.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %foe_table.i.i, align 4
  %idxprom.i.i = and i32 %call174.i, 65535
  %arrayidx.i.i = getelementptr %struct.mtk_foe_entry, ptr %169, i32 %idxprom.i.i
  %170 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 0, ptr %arrayidx.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  br label %free.i

free.i:                                           ; preds = %clear_flow.i, %if.end169.i.free.i_crit_edge
  %err.3.i = phi i32 [ %call182.i, %clear_flow.i ], [ %call174.i, %if.end169.i.free.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %mtk_flow_offload_replace.exit

mtk_flow_offload_replace.exit:                    ; preds = %free.i, %if.end178.i.mtk_flow_offload_replace.exit_crit_edge, %if.end165.i.mtk_flow_offload_replace.exit_crit_edge, %if.end161.i.mtk_flow_offload_replace.exit_crit_edge, %if.then138.i.mtk_flow_offload_replace.exit_crit_edge, %if.then127.i.mtk_flow_offload_replace.exit_crit_edge, %sw.bb111.i.mtk_flow_offload_replace.exit_crit_edge, %sw.bb109.i.mtk_flow_offload_replace.exit_crit_edge, %if.end107.i.mtk_flow_offload_replace.exit_crit_edge, %if.end77.i.mtk_flow_offload_replace.exit_crit_edge, %if.end66.i.mtk_flow_offload_replace.exit_crit_edge, %is_valid_ether_addr.exit276.i.mtk_flow_offload_replace.exit_crit_edge, %lor.lhs.false61.i.mtk_flow_offload_replace.exit_crit_edge, %is_valid_ether_addr.exit.i.mtk_flow_offload_replace.exit_crit_edge, %sw.bb56.i.mtk_flow_offload_replace.exit_crit_edge, %for.end.i.mtk_flow_offload_replace.exit_crit_edge, %sw.bb39.i.mtk_flow_offload_replace.exit_crit_edge, %lor.lhs.false.i.mtk_flow_offload_replace.exit_crit_edge, %sw.bb24.i.mtk_flow_offload_replace.exit_crit_edge, %for.body.i.mtk_flow_offload_replace.exit_crit_edge, %if.then7.i.mtk_flow_offload_replace.exit_crit_edge, %if.then4.i.mtk_flow_offload_replace.exit_crit_edge, %if.end.i.mtk_flow_offload_replace.exit_crit_edge, %sw.bb.mtk_flow_offload_replace.exit_crit_edge
  %retval.0.i = phi i32 [ %err.3.i, %free.i ], [ -17, %sw.bb.mtk_flow_offload_replace.exit_crit_edge ], [ -95, %if.end.i.mtk_flow_offload_replace.exit_crit_edge ], [ -95, %if.then4.i.mtk_flow_offload_replace.exit_crit_edge ], [ -95, %if.then7.i.mtk_flow_offload_replace.exit_crit_edge ], [ -95, %for.end.i.mtk_flow_offload_replace.exit_crit_edge ], [ -22, %is_valid_ether_addr.exit276.i.mtk_flow_offload_replace.exit_crit_edge ], [ -22, %is_valid_ether_addr.exit.i.mtk_flow_offload_replace.exit_crit_edge ], [ %call74.i, %if.end66.i.mtk_flow_offload_replace.exit_crit_edge ], [ -95, %if.end77.i.mtk_flow_offload_replace.exit_crit_edge ], [ %call.i293.i, %if.then127.i.mtk_flow_offload_replace.exit_crit_edge ], [ -95, %if.then138.i.mtk_flow_offload_replace.exit_crit_edge ], [ %call162.i, %if.end161.i.mtk_flow_offload_replace.exit_crit_edge ], [ -12, %if.end165.i.mtk_flow_offload_replace.exit_crit_edge ], [ 0, %if.end178.i.mtk_flow_offload_replace.exit_crit_edge ], [ -22, %sw.bb56.i.mtk_flow_offload_replace.exit_crit_edge ], [ -22, %lor.lhs.false61.i.mtk_flow_offload_replace.exit_crit_edge ], [ -95, %if.end107.i.mtk_flow_offload_replace.exit_crit_edge ], [ -22, %sw.bb109.i.mtk_flow_offload_replace.exit_crit_edge ], [ -22, %sw.bb111.i.mtk_flow_offload_replace.exit_crit_edge ], [ -95, %sw.bb39.i.mtk_flow_offload_replace.exit_crit_edge ], [ -95, %lor.lhs.false.i.mtk_flow_offload_replace.exit_crit_edge ], [ -95, %sw.bb24.i.mtk_flow_offload_replace.exit_crit_edge ], [ -95, %for.body.i.mtk_flow_offload_replace.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %foe.i) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %data.i) #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end3
  %flow_table.i19 = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 45
  %cookie.i20 = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 2
  %call.i = tail call fastcc ptr @rhashtable_lookup(ptr noundef %flow_table.i19, ptr noundef %cookie.i20, [7 x i32] [i32 4, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0]) #9
  %tobool.not.i21 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i21, label %sw.bb5.sw.epilog_crit_edge, label %if.end.i25

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i25:                                       ; preds = %sw.bb5
  %hash.i = getelementptr inbounds %struct.mtk_flow_entry, ptr %call.i, i32 0, i32 2
  %171 = ptrtoint ptr %hash.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %hash.i, align 4
  %foe_table.i.i22 = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 44, i32 3
  %173 = ptrtoint ptr %foe_table.i.i22 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %foe_table.i.i22, align 4
  %idxprom.i.i23 = zext i16 %172 to i32
  %arrayidx.i.i24 = getelementptr %struct.mtk_foe_entry, ptr %174, i32 %idxprom.i.i23
  %175 = ptrtoint ptr %arrayidx.i.i24 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %arrayidx.i.i24, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  %176 = tail call i32 @llvm.read_register.i32(metadata !46) #9
  %and.i.i.i.i.i.i.i.i = and i32 %176, -16384
  %177 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %179, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !58
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i.i.i, label %if.end.i25.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end.i25.rcu_read_lock.exit.i.i.i_crit_edge:    ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i25
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #9
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %if.end.i25.rcu_read_lock.exit.i.i.i_crit_edge
  %180 = ptrtoint ptr %flow_table.i19 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load volatile ptr, ptr %flow_table.i19, align 4
  %call.i.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %flow_table.i19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %rcu_read_lock.exit.i.i.i.do.end10.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.do.end10.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %rcu_read_lock.exit.i.i.i
  %call3.i.i.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i.do.end10.i.i.i_crit_edge

lor.lhs.false.i.i.i.do.end10.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10.i.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i.i
  %call5.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %land.lhs.true.i.i.i.do.end10.i.i.i_crit_edge, label %land.lhs.true7.i.i.i

land.lhs.true.i.i.i.do.end10.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10.i.i.i

land.lhs.true7.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b2.i.i.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i.i.i, label %land.lhs.true7.i.i.i.do.end10.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true7.i.i.i.do.end10.i.i.i_crit_edge:    ; preds = %land.lhs.true7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1076, ptr noundef nonnull @.str.3) #9
  br label %do.end10.i.i.i

do.end10.i.i.i:                                   ; preds = %if.then.i.i.i, %land.lhs.true7.i.i.i.do.end10.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end10.i.i.i_crit_edge, %lor.lhs.false.i.i.i.do.end10.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.do.end10.i.i.i_crit_edge
  %head_offset.i.i.i.i.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 45, i32 3, i32 3
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %call.i, i32 4
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %do.end33.i.i.i.while.cond.i.i.i_crit_edge, %do.end10.i.i.i
  %tbl.0.i.i.i = phi ptr [ %181, %do.end10.i.i.i ], [ %214, %do.end33.i.i.i.while.cond.i.i.i_crit_edge ]
  %182 = ptrtoint ptr %head_offset.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %head_offset.i.i.i.i.i.i, align 2
  %conv.i.i.i.i.i.i = zext i16 %183 to i32
  %idx.neg.i.i.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i.i, i32 %idx.neg.i.i.i.i.i.i
  %hash_rnd.i.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 2
  %184 = ptrtoint ptr %hash_rnd.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %hash_rnd.i.i.i.i.i.i, align 8
  %add1.i.i.i.i.i.i.i.i = add i32 %185, -559038733
  %186 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %add.ptr.i.i.i.i.i, align 4
  %add36.i.i.i.i.i.i.i.i = add i32 %187, %add1.i.i.i.i.i.i.i.i
  %or.i140.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i.i.i.i.i.i, i32 %add1.i.i.i.i.i.i.i.i, i32 14) #9
  %sub39.i.i.i.i.i.i.i.i = sub i32 0, %or.i140.i.i.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i.i.i = xor i32 %add36.i.i.i.i.i.i.i.i, %sub39.i.i.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i.i.i, i32 11) #9
  %sub42.i.i.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i.i.i, %add1.i.i.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i.i.i, i32 25) #9
  %sub45.i.i.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i.i.i, %sub39.i.i.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i.i.i, i32 16) #9
  %sub48.i.i.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i.i.i, %sub42.i.i.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i.i.i, i32 4) #9
  %sub51.i.i.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i.i.i, %sub45.i.i.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i.i.i, i32 14) #9
  %sub54.i.i.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i.i.i
  %xor55.i.i.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i.i.i, %sub48.i.i.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i.i.i, i32 24) #9
  %sub57.i.i.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i.i.i
  %188 = ptrtoint ptr %tbl.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %tbl.0.i.i.i, align 128
  %sub.i.i.i.i.i.i.i = add i32 %189, -1
  %and.i3.i.i.i.i.i.i = and i32 %sub57.i.i.i.i.i.i.i.i, %sub.i.i.i.i.i.i.i
  %nest.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 1
  %190 = ptrtoint ptr %nest.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %nest.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool.not.i3.i.i.i.i = icmp eq i32 %191, 0
  br i1 %tobool.not.i3.i.i.i.i, label %cond.false.i5.i.i.i.i, label %cond.true.i4.i.i.i.i, !prof !59

cond.true.i4.i.i.i.i:                             ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i.i.i, i32 noundef %and.i3.i.i.i.i.i.i) #9
  br label %rht_bucket_var.exit.i.i.i.i

cond.false.i5.i.i.i.i:                            ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 8, i32 %and.i3.i.i.i.i.i.i
  br label %rht_bucket_var.exit.i.i.i.i

rht_bucket_var.exit.i.i.i.i:                      ; preds = %cond.false.i5.i.i.i.i, %cond.true.i4.i.i.i.i
  %cond.i6.i.i.i.i = phi ptr [ %call.i.i.i.i.i, %cond.true.i4.i.i.i.i ], [ %arrayidx.i.i.i.i.i, %cond.false.i5.i.i.i.i ]
  %tobool.not.i3.i.i.i = icmp eq ptr %cond.i6.i.i.i.i, null
  br i1 %tobool.not.i3.i.i.i, label %rht_bucket_var.exit.i.i.i.i.land.rhs.i.i.i_crit_edge, label %if.end.i.i.i.i

rht_bucket_var.exit.i.i.i.i.land.rhs.i.i.i_crit_edge: ; preds = %rht_bucket_var.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i.i

if.end.i.i.i.i:                                   ; preds = %rht_bucket_var.exit.i.i.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i.i.i, ptr noundef nonnull %cond.i6.i.i.i.i) #9
  %call.i8.i.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i.i, i32 noundef %and.i3.i.i.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i.i.i)
  %tobool.not.i9.i.i.i.i = icmp eq i32 %call.i8.i.i.i.i, 0
  br i1 %tobool.not.i9.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %if.end.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge

if.end.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge:    ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rht_ptr.exit.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i
  %call1.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool2.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i.i

land.lhs.true.i.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rht_ptr.exit.i.i.i.i

land.lhs.true3.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %.b7.i.i.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i.i.i, label %land.lhs.true3.i.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true3.i.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rht_ptr.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 377, ptr noundef nonnull @.str.6) #9
  br label %rht_ptr.exit.i.i.i.i

rht_ptr.exit.i.i.i.i:                             ; preds = %if.then.i.i.i.i.i, %land.lhs.true3.i.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge, %if.end.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge
  %192 = ptrtoint ptr %cond.i6.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %cond.i6.i.i.i.i, align 4
  %194 = ptrtoint ptr %193 to i32
  %and.i.i.i.i.i.i = and i32 %194, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  %195 = ptrtoint ptr %cond.i6.i.i.i.i to i32
  %or.i.i.i.i.i.i = or i32 %195, 1
  %cond.i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 %or.i.i.i.i.i.i, i32 %and.i.i.i.i.i.i
  %and.i20.i.i.i.i = and i32 %cond.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i.i.i)
  %tobool.i.not21.i.i.i.i = icmp eq i32 %and.i20.i.i.i.i, 0
  br i1 %tobool.i.not21.i.i.i.i, label %for.body.preheader.i.i.i.i, label %rht_ptr.exit.i.i.i.i.unlocked.i.i.i.i_crit_edge

rht_ptr.exit.i.i.i.i.unlocked.i.i.i.i_crit_edge:  ; preds = %rht_ptr.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlocked.i.i.i.i

for.body.preheader.i.i.i.i:                       ; preds = %rht_ptr.exit.i.i.i.i
  %196 = inttoptr i32 %cond.i.i.i.i.i.i to ptr
  %cmp.not.i20.i.i.i = icmp eq ptr %call.i, %196
  br i1 %cmp.not.i20.i.i.i, label %for.body.preheader.i.i.i.i.do.body54.i.i.i.i_crit_edge, label %for.body.preheader.i.i.i.i.do.body145.i.i.i.i_crit_edge

for.body.preheader.i.i.i.i.do.body145.i.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i.i
  br label %do.body145.i.i.i.i

for.body.preheader.i.i.i.i.do.body54.i.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body54.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %do.end156.i.i.i.i
  %cmp.not.i.i.i.i = icmp eq ptr %201, %call.i
  br i1 %cmp.not.i.i.i.i, label %for.body.i.i.i.i.do.body54.i.i.i.i_crit_edge, label %for.body.i.i.i.i.do.body145.i.i.i.i_crit_edge

for.body.i.i.i.i.do.body145.i.i.i.i_crit_edge:    ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body145.i.i.i.i

for.body.i.i.i.i.do.body54.i.i.i.i_crit_edge:     ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body54.i.i.i.i

do.body54.i.i.i.i:                                ; preds = %for.body.i.i.i.i.do.body54.i.i.i.i_crit_edge, %for.body.preheader.i.i.i.i.do.body54.i.i.i.i_crit_edge
  %pprev.023.i.lcssa.i.i.i = phi ptr [ %he.022.i21.i.i.i, %for.body.i.i.i.i.do.body54.i.i.i.i_crit_edge ], [ null, %for.body.preheader.i.i.i.i.do.body54.i.i.i.i_crit_edge ]
  %call55.i.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i.i, i32 noundef %and.i3.i.i.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i.i.i)
  %tobool56.not.i.i.i.i = icmp eq i32 %call55.i.i.i.i, 0
  br i1 %tobool56.not.i.i.i.i, label %land.lhs.true57.i.i.i.i, label %do.body54.i.i.i.i.do.end65.i.i.i.i_crit_edge

do.body54.i.i.i.i.do.end65.i.i.i.i_crit_edge:     ; preds = %do.body54.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65.i.i.i.i

land.lhs.true57.i.i.i.i:                          ; preds = %do.body54.i.i.i.i
  %call58.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i.i.i)
  %tobool59.not.i.i.i.i = icmp eq i32 %call58.i.i.i.i, 0
  br i1 %tobool59.not.i.i.i.i, label %land.lhs.true57.i.i.i.i.do.end65.i.i.i.i_crit_edge, label %land.lhs.true60.i.i.i.i

land.lhs.true57.i.i.i.i.do.end65.i.i.i.i_crit_edge: ; preds = %land.lhs.true57.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65.i.i.i.i

land.lhs.true60.i.i.i.i:                          ; preds = %land.lhs.true57.i.i.i.i
  %.b2.i.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.13, align 1
  br i1 %.b2.i.i.i.i, label %land.lhs.true60.i.i.i.i.do.end65.i.i.i.i_crit_edge, label %if.then62.i.i.i.i

land.lhs.true60.i.i.i.i.do.end65.i.i.i.i_crit_edge: ; preds = %land.lhs.true60.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65.i.i.i.i

if.then62.i.i.i.i:                                ; preds = %land.lhs.true60.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.13, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1032, ptr noundef nonnull @.str.6) #9
  br label %do.end65.i.i.i.i

do.end65.i.i.i.i:                                 ; preds = %if.then62.i.i.i.i, %land.lhs.true60.i.i.i.i.do.end65.i.i.i.i_crit_edge, %land.lhs.true57.i.i.i.i.do.end65.i.i.i.i_crit_edge, %do.body54.i.i.i.i.do.end65.i.i.i.i_crit_edge
  %197 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %call.i, align 4
  %tobool103.not.i.i.i.i = icmp eq ptr %pprev.023.i.lcssa.i.i.i, null
  br i1 %tobool103.not.i.i.i.i, label %if.else142.i.i.i.i, label %do.body105.i.i.i.i

do.body105.i.i.i.i:                               ; preds = %do.end65.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  %199 = ptrtoint ptr %pprev.023.i.lcssa.i.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store volatile ptr %198, ptr %pprev.023.i.lcssa.i.i.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i.i, ptr noundef nonnull %cond.i6.i.i.i.i) #9
  br label %if.then160.i.i.i.i

if.else142.i.i.i.i:                               ; preds = %do.end65.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i.i.i, ptr noundef nonnull %cond.i6.i.i.i.i, ptr noundef %198) #9
  br label %if.then160.i.i.i.i

do.body145.i.i.i.i:                               ; preds = %for.body.i.i.i.i.do.body145.i.i.i.i_crit_edge, %for.body.preheader.i.i.i.i.do.body145.i.i.i.i_crit_edge
  %he.022.i21.i.i.i = phi ptr [ %201, %for.body.i.i.i.i.do.body145.i.i.i.i_crit_edge ], [ %196, %for.body.preheader.i.i.i.i.do.body145.i.i.i.i_crit_edge ]
  %call146.i.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i.i, i32 noundef %and.i3.i.i.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i.i.i)
  %tobool147.not.i.i.i.i = icmp eq i32 %call146.i.i.i.i, 0
  br i1 %tobool147.not.i.i.i.i, label %land.lhs.true148.i.i.i.i, label %do.body145.i.i.i.i.do.end156.i.i.i.i_crit_edge

do.body145.i.i.i.i.do.end156.i.i.i.i_crit_edge:   ; preds = %do.body145.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end156.i.i.i.i

land.lhs.true148.i.i.i.i:                         ; preds = %do.body145.i.i.i.i
  %call149.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i.i.i)
  %tobool150.not.i.i.i.i = icmp eq i32 %call149.i.i.i.i, 0
  br i1 %tobool150.not.i.i.i.i, label %land.lhs.true148.i.i.i.i.do.end156.i.i.i.i_crit_edge, label %land.lhs.true151.i.i.i.i

land.lhs.true148.i.i.i.i.do.end156.i.i.i.i_crit_edge: ; preds = %land.lhs.true148.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end156.i.i.i.i

land.lhs.true151.i.i.i.i:                         ; preds = %land.lhs.true148.i.i.i.i
  %.b2281.i.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.15, align 1
  br i1 %.b2281.i.i.i.i, label %land.lhs.true151.i.i.i.i.do.end156.i.i.i.i_crit_edge, label %if.then153.i.i.i.i

land.lhs.true151.i.i.i.i.do.end156.i.i.i.i_crit_edge: ; preds = %land.lhs.true151.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end156.i.i.i.i

if.then153.i.i.i.i:                               ; preds = %land.lhs.true151.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.15, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1004, ptr noundef nonnull @.str.6) #9
  br label %do.end156.i.i.i.i

do.end156.i.i.i.i:                                ; preds = %if.then153.i.i.i.i, %land.lhs.true151.i.i.i.i.do.end156.i.i.i.i_crit_edge, %land.lhs.true148.i.i.i.i.do.end156.i.i.i.i_crit_edge, %do.body145.i.i.i.i.do.end156.i.i.i.i_crit_edge
  %200 = ptrtoint ptr %he.022.i21.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %he.022.i21.i.i.i, align 4
  %202 = ptrtoint ptr %201 to i32
  %and.i.i.i.i.i = and i32 %202, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %for.body.i.i.i.i, label %do.end156.i.i.i.i.unlocked.i.i.i.i_crit_edge

do.end156.i.i.i.i.unlocked.i.i.i.i_crit_edge:     ; preds = %do.end156.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlocked.i.i.i.i

unlocked.i.i.i.i:                                 ; preds = %do.end156.i.i.i.i.unlocked.i.i.i.i_crit_edge, %rht_ptr.exit.i.i.i.i.unlocked.i.i.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i.i, ptr noundef nonnull %cond.i6.i.i.i.i) #9
  br label %land.rhs.i.i.i

if.then160.i.i.i.i:                               ; preds = %if.else142.i.i.i.i, %do.body105.i.i.i.i
  %nelems.i.i.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 45, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i.i.i, i32 1, i32 3, i32 1) #9
  %203 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i.i, ptr %nelems.i.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i.i) #9, !srcloc !61
  %automatic_shrinking.i.i.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 45, i32 3, i32 6
  %204 = ptrtoint ptr %automatic_shrinking.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %automatic_shrinking.i.i.i.i, align 2, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %tobool161.not.i.i.i.i = icmp eq i8 %205, 0
  br i1 %tobool161.not.i.i.i.i, label %if.then160.i.i.i.i.while.end.i.i.i_crit_edge, label %land.rhs162.i.i.i.i

if.then160.i.i.i.i.while.end.i.i.i_crit_edge:     ; preds = %if.then160.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i.i

land.rhs162.i.i.i.i:                              ; preds = %if.then160.i.i.i.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #9
  %206 = ptrtoint ptr %nelems.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load volatile i32, ptr %nelems.i.i.i.i, align 4
  %208 = ptrtoint ptr %tbl.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %tbl.0.i.i.i, align 128
  %mul.i.i.i.i.i = mul i32 %209, 3
  %div.i.i.i.i.i = udiv i32 %mul.i.i.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %207, i32 %div.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp ult i32 %207, %div.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i, label %rht_shrink_below_30.exit.i.i.i.i, label %land.rhs162.i.i.i.i.while.end.i.i.i_crit_edge

land.rhs162.i.i.i.i.while.end.i.i.i_crit_edge:    ; preds = %land.rhs162.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i.i

rht_shrink_below_30.exit.i.i.i.i:                 ; preds = %land.rhs162.i.i.i.i
  %min_size.i.i.i.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 45, i32 3, i32 5
  %210 = ptrtoint ptr %min_size.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %min_size.i.i.i.i.i, align 4
  %conv.i11.i.i.i.i = zext i16 %211 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %209, i32 %conv.i11.i.i.i.i)
  %cmp2.i.i.i.i.i = icmp ugt i32 %209, %conv.i11.i.i.i.i
  br i1 %cmp2.i.i.i.i.i, label %if.then168.i.i.i.i, label %rht_shrink_below_30.exit.i.i.i.i.while.end.i.i.i_crit_edge, !prof !63

rht_shrink_below_30.exit.i.i.i.i.while.end.i.i.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i.i

if.then168.i.i.i.i:                               ; preds = %rht_shrink_below_30.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %run_work.i.i.i.i = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 45, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %212 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %212, ptr noundef %run_work.i.i.i.i) #9
  br label %while.end.i.i.i

land.rhs.i.i.i:                                   ; preds = %unlocked.i.i.i.i, %rht_bucket_var.exit.i.i.i.i.land.rhs.i.i.i_crit_edge
  %future_tbl.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 5
  %213 = ptrtoint ptr %future_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load volatile ptr, ptr %future_tbl.i.i.i, align 4
  %call20.i.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %flow_table.i19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i.i)
  %tobool21.not.i.i.i = icmp eq i32 %call20.i.i.i, 0
  br i1 %tobool21.not.i.i.i, label %lor.lhs.false22.i.i.i, label %land.rhs.i.i.i.do.end33.i.i.i_crit_edge

land.rhs.i.i.i.do.end33.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33.i.i.i

lor.lhs.false22.i.i.i:                            ; preds = %land.rhs.i.i.i
  %call23.i.i.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %call23.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %land.lhs.true25.i.i.i, label %lor.lhs.false22.i.i.i.do.end33.i.i.i_crit_edge

lor.lhs.false22.i.i.i.do.end33.i.i.i_crit_edge:   ; preds = %lor.lhs.false22.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33.i.i.i

land.lhs.true25.i.i.i:                            ; preds = %lor.lhs.false22.i.i.i
  %call26.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i.i)
  %tobool27.not.i.i.i = icmp eq i32 %call26.i.i.i, 0
  br i1 %tobool27.not.i.i.i, label %land.lhs.true25.i.i.i.do.end33.i.i.i_crit_edge, label %land.lhs.true28.i.i.i

land.lhs.true25.i.i.i.do.end33.i.i.i_crit_edge:   ; preds = %land.lhs.true25.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33.i.i.i

land.lhs.true28.i.i.i:                            ; preds = %land.lhs.true25.i.i.i
  %.b401.i.i.i = load i1, ptr @__rhashtable_remove_fast.__warned.11, align 1
  br i1 %.b401.i.i.i, label %land.lhs.true28.i.i.i.do.end33.i.i.i_crit_edge, label %if.then30.i.i.i

land.lhs.true28.i.i.i.do.end33.i.i.i_crit_edge:   ; preds = %land.lhs.true28.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33.i.i.i

if.then30.i.i.i:                                  ; preds = %land.lhs.true28.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__rhashtable_remove_fast.__warned.11, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1085, ptr noundef nonnull @.str.3) #9
  br label %do.end33.i.i.i

do.end33.i.i.i:                                   ; preds = %if.then30.i.i.i, %land.lhs.true28.i.i.i.do.end33.i.i.i_crit_edge, %land.lhs.true25.i.i.i.do.end33.i.i.i_crit_edge, %lor.lhs.false22.i.i.i.do.end33.i.i.i_crit_edge, %land.rhs.i.i.i.do.end33.i.i.i_crit_edge
  %tobool35.not.i.i.i = icmp eq ptr %214, null
  br i1 %tobool35.not.i.i.i, label %do.end33.i.i.i.while.end.i.i.i_crit_edge, label %do.end33.i.i.i.while.cond.i.i.i_crit_edge

do.end33.i.i.i.while.cond.i.i.i_crit_edge:        ; preds = %do.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i

do.end33.i.i.i.while.end.i.i.i_crit_edge:         ; preds = %do.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %do.end33.i.i.i.while.end.i.i.i_crit_edge, %if.then168.i.i.i.i, %rht_shrink_below_30.exit.i.i.i.i.while.end.i.i.i_crit_edge, %land.rhs162.i.i.i.i.while.end.i.i.i_crit_edge, %if.then160.i.i.i.i.while.end.i.i.i_crit_edge
  %call.i4.i.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i4.i.i.i, label %while.end.i.i.i.rhashtable_remove_fast.exit.i_crit_edge, label %land.lhs.true.i7.i.i.i

while.end.i.i.i.rhashtable_remove_fast.exit.i_crit_edge: ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rhashtable_remove_fast.exit.i

land.lhs.true.i7.i.i.i:                           ; preds = %while.end.i.i.i
  %call1.i5.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i.i.i)
  %tobool.not.i6.i.i.i = icmp eq i32 %call1.i5.i.i.i, 0
  br i1 %tobool.not.i6.i.i.i, label %land.lhs.true.i7.i.i.i.rhashtable_remove_fast.exit.i_crit_edge, label %land.lhs.true2.i9.i.i.i

land.lhs.true.i7.i.i.i.rhashtable_remove_fast.exit.i_crit_edge: ; preds = %land.lhs.true.i7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rhashtable_remove_fast.exit.i

land.lhs.true2.i9.i.i.i:                          ; preds = %land.lhs.true.i7.i.i.i
  %.b4.i8.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i.i.i, label %land.lhs.true2.i9.i.i.i.rhashtable_remove_fast.exit.i_crit_edge, label %if.then.i10.i.i.i

land.lhs.true2.i9.i.i.i.rhashtable_remove_fast.exit.i_crit_edge: ; preds = %land.lhs.true2.i9.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rhashtable_remove_fast.exit.i

if.then.i10.i.i.i:                                ; preds = %land.lhs.true2.i9.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rhashtable_remove_fast.exit.i

rhashtable_remove_fast.exit.i:                    ; preds = %if.then.i10.i.i.i, %land.lhs.true2.i9.i.i.i.rhashtable_remove_fast.exit.i_crit_edge, %land.lhs.true.i7.i.i.i.rhashtable_remove_fast.exit.i_crit_edge, %while.end.i.i.i.rhashtable_remove_fast.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !64
  %215 = tail call i32 @llvm.read_register.i32(metadata !46) #9
  %and.i.i.i.i.i11.i.i.i = and i32 %215, -16384
  %216 = inttoptr i32 %and.i.i.i.i.i11.i.i.i to ptr
  %preempt_count.i.i.i.i12.i.i.i = getelementptr inbounds %struct.thread_info, ptr %216, i32 0, i32 1
  %217 = ptrtoint ptr %preempt_count.i.i.i.i12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load volatile i32, ptr %preempt_count.i.i.i.i12.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %218, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i12.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  tail call void @kfree(ptr noundef nonnull %call.i) #9
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end3
  %flow_table.i27 = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 45
  %cookie.i28 = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 2
  %call.i29 = tail call fastcc ptr @rhashtable_lookup(ptr noundef %flow_table.i27, ptr noundef %cookie.i28, [7 x i32] [i32 4, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0]) #9
  %tobool.not.i30 = icmp eq ptr %call.i29, null
  br i1 %tobool.not.i30, label %sw.bb7.sw.epilog_crit_edge, label %if.end.i35

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i35:                                       ; preds = %sw.bb7
  %hash.i31 = getelementptr inbounds %struct.mtk_flow_entry, ptr %call.i29, i32 0, i32 2
  %219 = ptrtoint ptr %hash.i31 to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %hash.i31, align 4
  %foe_table.i.i32 = getelementptr inbounds %struct.mtk_eth, ptr %1, i32 0, i32 44, i32 3
  %221 = ptrtoint ptr %foe_table.i.i32 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %foe_table.i.i32, align 4
  %idxprom.i.i33 = zext i16 %220 to i32
  %arrayidx.i.i34 = getelementptr %struct.mtk_foe_entry, ptr %222, i32 %idxprom.i.i33
  %223 = ptrtoint ptr %arrayidx.i.i34 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load volatile i32, ptr %arrayidx.i.i34, align 4
  %225 = and i32 %224, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %225)
  %cmp.not.i.i = icmp eq i32 %225, 536870912
  br i1 %cmp.not.i.i, label %if.end4.i, label %if.end.i35.sw.epilog_crit_edge

if.end.i35.sw.epilog_crit_edge:                   ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end4.i:                                        ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #11
  %and34.i.i = and i32 %224, 32767
  %call.i.i36 = tail call i32 @mtk_r32(ptr noundef %1, i32 noundef 16) #9
  %and.i.i = and i32 %call.i.i36, 32767
  %sub.i = sub nsw i32 %and.i.i, %and34.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %226 = load volatile i32, ptr @jiffies, align 128
  %mul.neg.i = mul nsw i32 %sub.i, -100
  %sub6.i = add i32 %mul.neg.i, %226
  %conv.i = zext i32 %sub6.i to i64
  %lastused.i = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 4, i32 3
  %227 = ptrtoint ptr %lastused.i to i32
  call void @__asan_store8_noabort(i32 %227)
  store i64 %conv.i, ptr %lastused.i, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end4.i, %if.end.i35.sw.epilog_crit_edge, %sw.bb7.sw.epilog_crit_edge, %rhashtable_remove_fast.exit.i, %sw.bb5.sw.epilog_crit_edge, %mtk_flow_offload_replace.exit, %if.end3.sw.epilog_crit_edge
  %err.0 = phi i32 [ %retval.0.i, %mtk_flow_offload_replace.exit ], [ -95, %if.end3.sw.epilog_crit_edge ], [ 0, %rhashtable_remove_fast.exit.i ], [ -2, %sw.bb5.sw.epilog_crit_edge ], [ 0, %if.end4.i ], [ -2, %sw.bb7.sw.epilog_crit_edge ], [ -110, %if.end.i35.sw.epilog_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @mtk_flow_offload_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %sw.epilog ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_block_cb_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_block_cb_incref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_block_cb_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flow_block_cb_decref(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rhashtable_lookup(ptr noundef %ht, ptr noundef %key, [7 x i32] %params.coerce) unnamed_addr #3 align 64 {
entry:
  %arg.i = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  %params.coerce.fca.6.extract.i = extractvalue [7 x i32] %params.coerce, 6
  %0 = inttoptr i32 %params.coerce.fca.6.extract.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i) #9
  %1 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg.i, i32 0, i32 1
  %2 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ht, ptr %arg.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %key, ptr %1, align 4
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.do.end12.i_crit_edge

entry.do.end12.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12.i

lor.lhs.false.i:                                  ; preds = %entry
  %call5.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end12.i_crit_edge

lor.lhs.false.i.do.end12.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call7.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.do.end12.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %.b92.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i, label %land.lhs.true9.i.do.end12.i_crit_edge, label %if.then.i

land.lhs.true9.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12.i

if.then.i:                                        ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 594, ptr noundef nonnull @.str.3) #9
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then.i, %land.lhs.true9.i.do.end12.i_crit_edge, %land.lhs.true.i.do.end12.i_crit_edge, %lor.lhs.false.i.do.end12.i_crit_edge, %entry.do.end12.i_crit_edge
  %hashfn.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.6.extract.i)
  %tobool19.not.i = icmp eq i32 %params.coerce.fca.6.extract.i, 0
  %head_offset.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %do.end60.i.if.then.i.i.i_crit_edge, %do.end12.i
  %tbl.0.i = phi ptr [ %5, %do.end12.i ], [ %36, %do.end60.i.if.then.i.i.i_crit_edge ]
  %hash_rnd.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %6 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hash_rnd.i.i, align 8
  %8 = ptrtoint ptr %hashfn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hashfn.i.i.i, align 4
  %10 = ptrtoint ptr %key_len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key_len1.i.i.i, align 4
  %call.i.i.i = call i32 %9(ptr noundef %key, i32 noundef %11, i32 noundef %7) #9
  %12 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tbl.0.i, align 128
  %sub.i.i.i = add i32 %13, -1
  %and.i3.i.i = and i32 %sub.i.i.i, %call.i.i.i
  %nest.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 1
  %14 = ptrtoint ptr %nest.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nest.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %cond.true.i.i, !prof !59

cond.true.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call ptr @rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i) #9
  br label %rht_bucket.exit.i

cond.false.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i3.i.i
  br label %rht_bucket.exit.i

rht_bucket.exit.i:                                ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi ptr [ %call.i.i, %cond.true.i.i ], [ %arrayidx.i.i, %cond.false.i.i ]
  %16 = ptrtoint ptr %cond.i.i to i32
  %or.i.i.i = or i32 %16, 1
  %17 = inttoptr i32 %or.i.i.i to ptr
  br label %do.body16.i

do.body16.i:                                      ; preds = %do.cond34.i.do.body16.i_crit_edge, %rht_bucket.exit.i
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !65
  %18 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %cond.i.i, align 4
  %call.i93.i = call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i)
  %tobool.not.i94.i = icmp eq i32 %call.i93.i, 0
  br i1 %tobool.not.i94.i, label %land.lhs.true.i.i, label %do.body16.i.rht_ptr_rcu.exit.i_crit_edge

do.body16.i.rht_ptr_rcu.exit.i_crit_edge:         ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rht_ptr_rcu.exit.i

land.lhs.true.i.i:                                ; preds = %do.body16.i
  %call2.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.rht_ptr_rcu.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.rht_ptr_rcu.exit.i_crit_edge:   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rht_ptr_rcu.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b11.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i, label %land.lhs.true4.i.i.rht_ptr_rcu.exit.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.rht_ptr_rcu.exit.i_crit_edge:  ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rht_ptr_rcu.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 369, ptr noundef nonnull @.str.3) #9
  br label %rht_ptr_rcu.exit.i

rht_ptr_rcu.exit.i:                               ; preds = %if.then.i.i, %land.lhs.true4.i.i.rht_ptr_rcu.exit.i_crit_edge, %land.lhs.true.i.i.rht_ptr_rcu.exit.i_crit_edge, %do.body16.i.rht_ptr_rcu.exit.i_crit_edge
  %20 = ptrtoint ptr %19 to i32
  %and.i.i95.i = and i32 %20, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i)
  %tobool.not.i.i96.i = icmp eq i32 %and.i.i95.i, 0
  %cond.i.i.i = select i1 %tobool.not.i.i96.i, i32 %or.i.i.i, i32 %and.i.i95.i
  %21 = inttoptr i32 %cond.i.i.i to ptr
  %and.i106.i = and i32 %cond.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i)
  %tobool.i.not107.i = icmp eq i32 %and.i106.i, 0
  br i1 %tobool.i.not107.i, label %rht_ptr_rcu.exit.i.for.body.i_crit_edge, label %rht_ptr_rcu.exit.i.do.cond34.i_crit_edge

rht_ptr_rcu.exit.i.do.cond34.i_crit_edge:         ; preds = %rht_ptr_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond34.i

rht_ptr_rcu.exit.i.for.body.i_crit_edge:          ; preds = %rht_ptr_rcu.exit.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %rht_ptr_rcu.exit.i.for.body.i_crit_edge
  %he.0108.i = phi ptr [ %33, %for.inc.i.for.body.i_crit_edge ], [ %21, %rht_ptr_rcu.exit.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %head_offset.i.i, align 2
  %conv.i98.i = zext i16 %23 to i32
  %idx.neg.i99.i = sub nsw i32 0, %conv.i98.i
  %add.ptr.i100.i = getelementptr i8, ptr %he.0108.i, i32 %idx.neg.i99.i
  br i1 %tobool19.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %for.body.i
  %call22.i = call i32 %0(ptr noundef nonnull %arg.i, ptr noundef %add.ptr.i100.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %cond.true.i.__rhashtable_lookup.exit_crit_edge, label %cond.true.i.for.inc.i_crit_edge

cond.true.i.for.inc.i_crit_edge:                  ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

cond.true.i.__rhashtable_lookup.exit_crit_edge:   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__rhashtable_lookup.exit

cond.false.i:                                     ; preds = %for.body.i
  %24 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arg.i, align 4
  %key_offset.i.i = getelementptr inbounds %struct.rhashtable, ptr %25, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %key_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %key_offset.i.i, align 4
  %conv.i101.i = zext i16 %27 to i32
  %add.ptr.i102.i = getelementptr i8, ptr %add.ptr.i100.i, i32 %conv.i101.i
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %key_len.i.i = getelementptr inbounds %struct.rhashtable, ptr %25, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %key_len.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %key_len.i.i, align 2
  %conv3.i.i = zext i16 %31 to i32
  %bcmp.i = call i32 @bcmp(ptr %add.ptr.i102.i, ptr %29, i32 %conv3.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool26.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool26.not.i, label %cond.false.i.__rhashtable_lookup.exit_crit_edge, label %cond.false.i.for.inc.i_crit_edge

cond.false.i.for.inc.i_crit_edge:                 ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

cond.false.i.__rhashtable_lookup.exit_crit_edge:  ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__rhashtable_lookup.exit

for.inc.i:                                        ; preds = %cond.false.i.for.inc.i_crit_edge, %cond.true.i.for.inc.i_crit_edge
  %32 = ptrtoint ptr %he.0108.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %he.0108.i, align 4
  %34 = ptrtoint ptr %33 to i32
  %and.i.i = and i32 %34, 1
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.cond34.i_crit_edge

for.inc.i.do.cond34.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond34.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

do.cond34.i:                                      ; preds = %for.inc.i.do.cond34.i_crit_edge, %rht_ptr_rcu.exit.i.do.cond34.i_crit_edge
  %he.0.lcssa.i = phi ptr [ %21, %rht_ptr_rcu.exit.i.do.cond34.i_crit_edge ], [ %33, %for.inc.i.do.cond34.i_crit_edge ]
  %cmp.not.i = icmp eq ptr %he.0.lcssa.i, %17
  br i1 %cmp.not.i, label %do.end39.i, label %do.cond34.i.do.body16.i_crit_edge

do.cond34.i.do.body16.i_crit_edge:                ; preds = %do.cond34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body16.i

do.end39.i:                                       ; preds = %do.cond34.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !66
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %35 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %future_tbl.i, align 4
  %call47.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %lor.lhs.false49.i, label %do.end39.i.do.end60.i_crit_edge

do.end39.i.do.end60.i_crit_edge:                  ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end60.i

lor.lhs.false49.i:                                ; preds = %do.end39.i
  %call50.i = call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %land.lhs.true52.i, label %lor.lhs.false49.i.do.end60.i_crit_edge

lor.lhs.false49.i.do.end60.i_crit_edge:           ; preds = %lor.lhs.false49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end60.i

land.lhs.true52.i:                                ; preds = %lor.lhs.false49.i
  %call53.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %land.lhs.true52.i.do.end60.i_crit_edge, label %land.lhs.true55.i

land.lhs.true52.i.do.end60.i_crit_edge:           ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end60.i

land.lhs.true55.i:                                ; preds = %land.lhs.true52.i
  %.b9091.i = load i1, ptr @__rhashtable_lookup.__warned.4, align 1
  br i1 %.b9091.i, label %land.lhs.true55.i.do.end60.i_crit_edge, label %if.then57.i

land.lhs.true55.i.do.end60.i_crit_edge:           ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end60.i

if.then57.i:                                      ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__rhashtable_lookup.__warned.4, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 614, ptr noundef nonnull @.str.3) #9
  br label %do.end60.i

do.end60.i:                                       ; preds = %if.then57.i, %land.lhs.true55.i.do.end60.i_crit_edge, %land.lhs.true52.i.do.end60.i_crit_edge, %lor.lhs.false49.i.do.end60.i_crit_edge, %do.end39.i.do.end60.i_crit_edge
  %tobool62.not.i = icmp eq ptr %36, null
  br i1 %tobool62.not.i, label %__rhashtable_lookup.exit.thread, label %do.end60.i.if.then.i.i.i_crit_edge, !prof !59

do.end60.i.if.then.i.i.i_crit_edge:               ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

__rhashtable_lookup.exit.thread:                  ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i) #9
  br label %cond.end

__rhashtable_lookup.exit:                         ; preds = %cond.false.i.__rhashtable_lookup.exit_crit_edge, %cond.true.i.__rhashtable_lookup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i) #9
  %tobool.not = icmp eq ptr %he.0108.i, null
  br i1 %tobool.not, label %__rhashtable_lookup.exit.cond.end_crit_edge, label %cond.true

__rhashtable_lookup.exit.cond.end_crit_edge:      ; preds = %__rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %__rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %head_offset.i.i, align 2
  %conv.i = zext i16 %38 to i32
  %idx.neg.i = sub nsw i32 0, %conv.i
  %add.ptr.i = getelementptr i8, ptr %he.0108.i, i32 %idx.neg.i
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %__rhashtable_lookup.exit.cond.end_crit_edge, %__rhashtable_lookup.exit.thread
  %cond = phi ptr [ %add.ptr.i, %cond.true ], [ null, %__rhashtable_lookup.exit.cond.end_crit_edge ], [ null, %__rhashtable_lookup.exit.thread ]
  ret ptr %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_meta(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_control(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_basic(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_foe_entry_prepare(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ports(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ipv4_addrs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_foe_entry_set_vlan(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_foe_entry_set_pppoe(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_flow_set_output_device(ptr nocapture noundef readonly %eth, ptr noundef %foe, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @dsa_port_from_netdev(ptr noundef %dev) #9
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %cpu_dp.i = getelementptr inbounds %struct.dsa_port, ptr %call.i, i32 0, i32 8
  %0 = ptrtoint ptr %cpu_dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpu_dp.i, align 4
  %tag_ops.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tag_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tag_ops.i, align 4
  %proto.i = getelementptr inbounds %struct.dsa_device_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %proto.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 9
  br i1 %cmp.not.i, label %mtk_flow_get_dsa_port.exit, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

mtk_flow_get_dsa_port.exit:                       ; preds = %if.end.i
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %index.i = getelementptr inbounds %struct.dsa_port, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp = icmp sgt i32 %9, -1
  br i1 %cmp, label %if.then, label %mtk_flow_get_dsa_port.exit.if.end_crit_edge

mtk_flow_get_dsa_port.exit.if.end_crit_edge:      ; preds = %mtk_flow_get_dsa_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %mtk_flow_get_dsa_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @mtk_foe_entry_set_dsa(ptr noundef %foe, i32 noundef %9) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %mtk_flow_get_dsa_port.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %dev.addr.020 = phi ptr [ %7, %if.then ], [ %7, %mtk_flow_get_dsa_port.exit.if.end_crit_edge ], [ %dev, %entry.if.end_crit_edge ], [ %dev, %if.end.i.if.end_crit_edge ]
  %netdev = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 7
  %10 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev, align 128
  %cmp2 = icmp eq ptr %dev.addr.020, %11
  br i1 %cmp2, label %if.end.if.end10_crit_edge, label %if.else

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.else:                                          ; preds = %if.end
  %arrayidx5 = getelementptr %struct.mtk_eth, ptr %eth, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx5, align 4
  %cmp6 = icmp eq ptr %dev.addr.020, %13
  br i1 %cmp6, label %if.else.if.end10_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end10:                                         ; preds = %if.else.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %pse_port.0 = phi i8 [ 1, %if.end.if.end10_crit_edge ], [ 2, %if.else.if.end10_crit_edge ]
  %call11 = tail call i32 @mtk_foe_entry_set_pse_port(ptr noundef %foe, i8 noundef zeroext %pse_port.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -95, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_foe_entry_commit(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rhashtable_insert_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !46) #9
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !58
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end12.i_crit_edge

rcu_read_lock.exit.i.do.end12.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call5.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end12.i_crit_edge

lor.lhs.false.i.do.end12.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call7.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.do.end12.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true9.i.do.end12.i_crit_edge, label %if.then.i

land.lhs.true9.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12.i

if.then.i:                                        ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 715, ptr noundef nonnull @.str.3) #9
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then.i, %land.lhs.true9.i.do.end12.i_crit_edge, %land.lhs.true.i.do.end12.i_crit_edge, %lor.lhs.false.i.do.end12.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i_crit_edge
  %params.coerce.fca.5.extract.i.i = extractvalue [7 x i32] %params.coerce, 5
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i to ptr
  %head_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %8 to i32
  %idx.neg.i.i.i = sub nsw i32 0, %conv.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i)
  %tobool.not.i3.i = icmp eq i32 %params.coerce.fca.5.extract.i.i, 0
  br i1 %tobool.not.i3.i, label %if.then.i.i.i.i, label %cond.true.i.i, !prof !63

cond.true.i.i:                                    ; preds = %do.end12.i
  %params.coerce.fca.0.extract.i.i = extractvalue [7 x i32] %params.coerce, 0
  %conv.i.i = and i32 %params.coerce.fca.0.extract.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool4.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool4.not.i.i, label %cond.false.i.i, label %cond.true.i.i.cond.end.i.i_crit_edge

cond.true.i.i.cond.end.i.i_crit_edge:             ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %key_len6.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %key_len6.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_len6.i.i, align 2
  %conv7.i.i = zext i16 %10 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv7.i.i, %cond.false.i.i ], [ %conv.i.i, %cond.true.i.i.cond.end.i.i_crit_edge ]
  %hash_rnd.i.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_rnd.i.i, align 8
  %call8.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i, i32 noundef %cond.i.i, i32 noundef %12) #9
  br label %rht_head_hashfn.exit.i

if.then.i.i.i.i:                                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i, align 8
  %params.coerce.fca.1.extract.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i = lshr i32 %params.coerce.fca.1.extract.i.i, 16
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i
  %hashfn.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %15 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %key_len1.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  %17 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i, i32 noundef %18, i32 noundef %14) #9
  br label %rht_head_hashfn.exit.i

rht_head_hashfn.exit.i:                           ; preds = %if.then.i.i.i.i, %cond.end.i.i
  %hash.2.i.i.sink.i.i = phi i32 [ %call8.i.i, %cond.end.i.i ], [ %call.i.i.i.i, %if.then.i.i.i.i ]
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %5, align 128
  %sub.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i = and i32 %sub.i.i.i.i, %hash.2.i.i.sink.i.i
  %nest.i.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i4.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i4.i, label %cond.false.i7.i, label %cond.true.i6.i, !prof !59

cond.true.i6.i:                                   ; preds = %rht_head_hashfn.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i5.i = tail call ptr @rht_bucket_nested_insert(ptr noundef %ht, ptr noundef %5, i32 noundef %and.i3.i.i.i) #9
  br label %rht_bucket_insert.exit.i

cond.false.i7.i:                                  ; preds = %rht_head_hashfn.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr %struct.bucket_table, ptr %5, i32 0, i32 8, i32 %and.i3.i.i.i
  br label %rht_bucket_insert.exit.i

rht_bucket_insert.exit.i:                         ; preds = %cond.false.i7.i, %cond.true.i6.i
  %cond.i8.i = phi ptr [ %call.i5.i, %cond.true.i6.i ], [ %arrayidx.i.i, %cond.false.i7.i ]
  %tobool17.not.i = icmp eq ptr %cond.i8.i, null
  br i1 %tobool17.not.i, label %rht_bucket_insert.exit.i.out.i_crit_edge, label %if.end19.i

rht_bucket_insert.exit.i.out.i_crit_edge:         ; preds = %rht_bucket_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end19.i:                                       ; preds = %rht_bucket_insert.exit.i
  tail call fastcc void @rht_lock(ptr noundef %5, ptr noundef nonnull %cond.i8.i) #9
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 5
  %23 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %future_tbl.i, align 4
  %tobool25.not.i = icmp eq ptr %24, null
  br i1 %tobool25.not.i, label %if.end30.i, label %if.end19.i.slow_path.i_crit_edge, !prof !59

if.end19.i.slow_path.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %slow_path.i

slow_path.i:                                      ; preds = %rht_grow_above_100.exit.i.slow_path.i_crit_edge, %for.end.i.slow_path.i_crit_edge, %if.end19.i.slow_path.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i) #9
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i10.i, label %slow_path.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i13.i

slow_path.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %slow_path.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true.i13.i:                              ; preds = %slow_path.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge, %slow_path.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !64
  %25 = tail call i32 @llvm.read_register.i32(metadata !46) #9
  %and.i.i.i.i.i17.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i19.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i19.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %call29.i = tail call ptr @rhashtable_insert_slow(ptr noundef %ht, ptr noundef null, ptr noundef %obj) #9
  br label %__rhashtable_insert_fast.exit

if.end30.i:                                       ; preds = %if.end19.i
  %call.i20.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %tobool.not.i21.i = icmp eq i32 %call.i20.i, 0
  br i1 %tobool.not.i21.i, label %land.lhs.true.i23.i, label %if.end30.i.rht_ptr.exit.i_crit_edge

if.end30.i.rht_ptr.exit.i_crit_edge:              ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rht_ptr.exit.i

land.lhs.true.i23.i:                              ; preds = %if.end30.i
  %call1.i22.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i22.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i23.i.rht_ptr.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i23.i.rht_ptr.exit.i_crit_edge:     ; preds = %land.lhs.true.i23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rht_ptr.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i23.i
  %.b7.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i, label %land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge, label %if.then.i24.i

land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge:      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rht_ptr.exit.i

if.then.i24.i:                                    ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 377, ptr noundef nonnull @.str.6) #9
  br label %rht_ptr.exit.i

rht_ptr.exit.i:                                   ; preds = %if.then.i24.i, %land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge, %land.lhs.true.i23.i.rht_ptr.exit.i_crit_edge, %if.end30.i.rht_ptr.exit.i_crit_edge
  %29 = ptrtoint ptr %cond.i8.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cond.i8.i, align 4
  %31 = ptrtoint ptr %30 to i32
  %and.i.i.i = and i32 %31, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %32 = ptrtoint ptr %cond.i8.i to i32
  %or.i.i.i = or i32 %32, 1
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 %or.i.i.i, i32 %and.i.i.i
  %and.i63.i = and i32 %cond.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63.i)
  %tobool.i.not64.i = icmp eq i32 %and.i63.i, 0
  br i1 %tobool.i.not64.i, label %for.body.preheader.i, label %rht_ptr.exit.i.if.end152.i_crit_edge

rht_ptr.exit.i.if.end152.i_crit_edge:             ; preds = %rht_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152.i

for.body.preheader.i:                             ; preds = %rht_ptr.exit.i
  %33 = inttoptr i32 %cond.i.i.i to ptr
  br label %for.body.i

for.body.i:                                       ; preds = %do.end147.i.for.body.i_crit_edge, %for.body.preheader.i
  %head.066.i = phi ptr [ %35, %do.end147.i.for.body.i_crit_edge ], [ %33, %for.body.preheader.i ]
  %elasticity.065.i = phi i32 [ %dec.i, %do.end147.i.for.body.i_crit_edge ], [ 16, %for.body.preheader.i ]
  %dec.i = add i32 %elasticity.065.i, -1
  %call137.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i)
  %tobool138.not.i = icmp eq i32 %call137.i, 0
  br i1 %tobool138.not.i, label %land.lhs.true139.i, label %for.body.i.do.end147.i_crit_edge

for.body.i.do.end147.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end147.i

land.lhs.true139.i:                               ; preds = %for.body.i
  %call140.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i)
  %tobool141.not.i = icmp eq i32 %call140.i, 0
  br i1 %tobool141.not.i, label %land.lhs.true139.i.do.end147.i_crit_edge, label %land.lhs.true142.i

land.lhs.true139.i.do.end147.i_crit_edge:         ; preds = %land.lhs.true139.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end147.i

land.lhs.true142.i:                               ; preds = %land.lhs.true139.i
  %.b2811.i = load i1, ptr @__rhashtable_insert_fast.__warned.7, align 1
  br i1 %.b2811.i, label %land.lhs.true142.i.do.end147.i_crit_edge, label %if.then144.i

land.lhs.true142.i.do.end147.i_crit_edge:         ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end147.i

if.then144.i:                                     ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__rhashtable_insert_fast.__warned.7, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 732, ptr noundef nonnull @.str.6) #9
  br label %do.end147.i

do.end147.i:                                      ; preds = %if.then144.i, %land.lhs.true142.i.do.end147.i_crit_edge, %land.lhs.true139.i.do.end147.i_crit_edge, %for.body.i.do.end147.i_crit_edge
  %34 = ptrtoint ptr %head.066.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.066.i, align 4
  %36 = ptrtoint ptr %35 to i32
  %and.i.i = and i32 %36, 1
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %do.end147.i.for.body.i_crit_edge, label %for.end.i

do.end147.i.for.body.i_crit_edge:                 ; preds = %do.end147.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %do.end147.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %phi.cmp.i = icmp slt i32 %dec.i, 1
  br i1 %phi.cmp.i, label %for.end.i.slow_path.i_crit_edge, label %for.end.i.if.end152.i_crit_edge

for.end.i.if.end152.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152.i

for.end.i.slow_path.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %slow_path.i

if.end152.i:                                      ; preds = %for.end.i.if.end152.i_crit_edge, %rht_ptr.exit.i.if.end152.i_crit_edge
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i25.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #9
  %37 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %nelems.i.i, align 4
  %max_elems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 2
  %39 = ptrtoint ptr %max_elems.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_elems.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp.i.not.i = icmp ult i32 %38, %40
  br i1 %cmp.i.not.i, label %if.end162.i, label %out_unlock.i, !prof !59

if.end162.i:                                      ; preds = %if.end152.i
  %call.i.i.i27.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #9
  %41 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %nelems.i.i, align 4
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %5, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp.i28.i = icmp ugt i32 %42, %44
  br i1 %cmp.i28.i, label %rht_grow_above_100.exit.i, label %if.end162.i.if.end171.i_crit_edge

if.end162.i.if.end171.i_crit_edge:                ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end171.i

rht_grow_above_100.exit.i:                        ; preds = %if.end162.i
  %max_size.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %45 = ptrtoint ptr %max_size.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i29.i = icmp eq i32 %46, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp4.i.i = icmp ult i32 %44, %46
  %spec.select.i.i = select i1 %tobool.not.i29.i, i1 true, i1 %cmp4.i.i
  br i1 %spec.select.i.i, label %rht_grow_above_100.exit.i.slow_path.i_crit_edge, label %rht_grow_above_100.exit.i.if.end171.i_crit_edge, !prof !63

rht_grow_above_100.exit.i.if.end171.i_crit_edge:  ; preds = %rht_grow_above_100.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end171.i

rht_grow_above_100.exit.i.slow_path.i_crit_edge:  ; preds = %rht_grow_above_100.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %slow_path.i

if.end171.i:                                      ; preds = %rht_grow_above_100.exit.i.if.end171.i_crit_edge, %if.end162.i.if.end171.i_crit_edge
  %call.i30.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %tobool.not.i31.i = icmp eq i32 %call.i30.i, 0
  br i1 %tobool.not.i31.i, label %land.lhs.true.i34.i, label %if.end171.i.rht_ptr.exit42.i_crit_edge

if.end171.i.rht_ptr.exit42.i_crit_edge:           ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rht_ptr.exit42.i

land.lhs.true.i34.i:                              ; preds = %if.end171.i
  %call1.i32.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32.i)
  %tobool2.not.i33.i = icmp eq i32 %call1.i32.i, 0
  br i1 %tobool2.not.i33.i, label %land.lhs.true.i34.i.rht_ptr.exit42.i_crit_edge, label %land.lhs.true3.i36.i

land.lhs.true.i34.i.rht_ptr.exit42.i_crit_edge:   ; preds = %land.lhs.true.i34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rht_ptr.exit42.i

land.lhs.true3.i36.i:                             ; preds = %land.lhs.true.i34.i
  %.b7.i35.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i35.i, label %land.lhs.true3.i36.i.rht_ptr.exit42.i_crit_edge, label %if.then.i37.i

land.lhs.true3.i36.i.rht_ptr.exit42.i_crit_edge:  ; preds = %land.lhs.true3.i36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rht_ptr.exit42.i

if.then.i37.i:                                    ; preds = %land.lhs.true3.i36.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 377, ptr noundef nonnull @.str.6) #9
  br label %rht_ptr.exit42.i

rht_ptr.exit42.i:                                 ; preds = %if.then.i37.i, %land.lhs.true3.i36.i.rht_ptr.exit42.i_crit_edge, %land.lhs.true.i34.i.rht_ptr.exit42.i_crit_edge, %if.end171.i.rht_ptr.exit42.i_crit_edge
  %47 = ptrtoint ptr %cond.i8.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cond.i8.i, align 4
  %49 = ptrtoint ptr %48 to i32
  %and.i.i38.i = and i32 %49, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i38.i)
  %tobool.not.i.i39.i = icmp eq i32 %and.i.i38.i, 0
  %cond.i.i41.i = select i1 %tobool.not.i.i39.i, i32 %or.i.i.i, i32 %and.i.i38.i
  %50 = inttoptr i32 %cond.i.i41.i to ptr
  %51 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %50, ptr %obj, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #9
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #9, !srcloc !67
  tail call fastcc void @rht_assign_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i, ptr noundef %obj) #9
  %call.i.i.i44.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #9
  %53 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %nelems.i.i, align 4
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %5, align 128
  %div8.i.i = lshr i32 %56, 2
  %mul.i.i = mul nuw i32 %div8.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %mul.i.i)
  %cmp.i45.i = icmp ugt i32 %54, %mul.i.i
  br i1 %cmp.i45.i, label %rht_grow_above_75.exit.i, label %rht_ptr.exit42.i.out.i_crit_edge

rht_ptr.exit42.i.out.i_crit_edge:                 ; preds = %rht_ptr.exit42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

rht_grow_above_75.exit.i:                         ; preds = %rht_ptr.exit42.i
  %max_size.i46.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %57 = ptrtoint ptr %max_size.i46.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_size.i46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i47.i = icmp eq i32 %58, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp4.i48.i = icmp ult i32 %56, %58
  %spec.select.i49.i = select i1 %tobool.not.i47.i, i1 true, i1 %cmp4.i48.i
  br i1 %spec.select.i49.i, label %if.then207.i, label %rht_grow_above_75.exit.i.out.i_crit_edge

rht_grow_above_75.exit.i.out.i_crit_edge:         ; preds = %rht_grow_above_75.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.then207.i:                                     ; preds = %rht_grow_above_75.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %run_work.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %59 = load ptr, ptr @system_wq, align 4
  %call.i.i51.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %59, ptr noundef %run_work.i) #9
  br label %out.i

out.i:                                            ; preds = %out_unlock.i, %if.then207.i, %rht_grow_above_75.exit.i.out.i_crit_edge, %rht_ptr.exit42.i.out.i_crit_edge, %rht_bucket_insert.exit.i.out.i_crit_edge
  %data.2.i = phi ptr [ inttoptr (i32 -7 to ptr), %out_unlock.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.out.i_crit_edge ], [ null, %if.then207.i ], [ null, %rht_grow_above_75.exit.i.out.i_crit_edge ], [ null, %rht_ptr.exit42.i.out.i_crit_edge ]
  %call.i52.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i52.i, label %out.i.rcu_read_unlock.exit62.i_crit_edge, label %land.lhs.true.i55.i

out.i.rcu_read_unlock.exit62.i_crit_edge:         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit62.i

land.lhs.true.i55.i:                              ; preds = %out.i
  %call1.i53.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53.i)
  %tobool.not.i54.i = icmp eq i32 %call1.i53.i, 0
  br i1 %tobool.not.i54.i, label %land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge, label %land.lhs.true2.i57.i

land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge: ; preds = %land.lhs.true.i55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit62.i

land.lhs.true2.i57.i:                             ; preds = %land.lhs.true.i55.i
  %.b4.i56.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56.i, label %land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge, label %if.then.i58.i

land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge: ; preds = %land.lhs.true2.i57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit62.i

if.then.i58.i:                                    ; preds = %land.lhs.true2.i57.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit62.i

rcu_read_unlock.exit62.i:                         ; preds = %if.then.i58.i, %land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge, %land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge, %out.i.rcu_read_unlock.exit62.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !64
  %60 = tail call i32 @llvm.read_register.i32(metadata !46) #9
  %and.i.i.i.i.i59.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i59.i to ptr
  %preempt_count.i.i.i.i60.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i60.i, align 4
  %sub.i.i.i61.i = add i32 %63, -1
  store volatile i32 %sub.i.i.i61.i, ptr %preempt_count.i.i.i.i60.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %__rhashtable_insert_fast.exit

out_unlock.i:                                     ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @rht_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i) #9
  br label %out.i

__rhashtable_insert_fast.exit:                    ; preds = %rcu_read_unlock.exit62.i, %rcu_read_unlock.exit.i
  %retval.0.i = phi ptr [ %call29.i, %rcu_read_unlock.exit.i ], [ %data.2.i, %rcu_read_unlock.exit62.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  %64 = ptrtoint ptr %retval.0.i to i32
  %cmp = icmp eq ptr %retval.0.i, null
  %cond = select i1 %cmp, i32 0, i32 -17
  %retval.0 = select i1 %cmp.i, i32 %64, i32 %cond
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_foe_entry_set_ipv4_tuple(ptr noundef, i1 noundef zeroext, i32 noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_foe_entry_set_dsa(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_foe_entry_set_pse_port(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dsa_port_from_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_r32(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !46) #9
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !68
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #9
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !69

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #9, !srcloc !70
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !59

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !72
  %7 = tail call i32 @llvm.read_register.i32(metadata !46) #9
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !74
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = tail call i32 @llvm.read_register.i32(metadata !46) #9
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #9
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !63

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #9, !srcloc !76
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #9, !srcloc !78
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !79
  %3 = tail call i32 @llvm.read_register.i32(metadata !46) #9
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
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !80
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !81
  %2 = tail call i32 @llvm.read_register.i32(metadata !46) #9
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !9, !10, !12, !14, !16, !18, !19, !21, !23, !24, !25, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44}
!llvm.named.register.sp = !{!46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @mtk_eth_setup_tc_block.block_cb_list, !1, !"block_cb_list", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe_offload.c", i32 441, i32 9}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe_offload.c", i32 399, i32 8}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mtk_flow_offload_mutex, !3, !"mtk_flow_offload_mutex", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!44 = !{ptr @mtk_flow_ht_params, !45, !"mtk_flow_ht_params", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe_offload.c", i32 44, i32 39}
!46 = !{!"sp"}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{!"auto-init"}
!57 = !{i64 2158475130}
!58 = !{i64 2149655144}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{i64 2154803983}
!61 = !{i64 2148360972, i64 2148360998, i64 2148361027, i64 2148361061, i64 2148361092, i64 2148361115}
!62 = !{i8 0, i8 2}
!63 = !{!"branch_weights", i32 1, i32 2000}
!64 = !{i64 2149655410}
!65 = !{i64 2154736607}
!66 = !{i64 2154740041}
!67 = !{i64 2148358507, i64 2148358533, i64 2148358562, i64 2148358596, i64 2148358627, i64 2148358650}
!68 = !{i64 2149820266}
!69 = !{!"branch_weights", i32 2146410443, i32 1073205}
!70 = !{i64 2148367365, i64 2148367397, i64 2148367426, i64 2148367460, i64 2148367491, i64 2148367514}
!71 = !{i64 2148456446}
!72 = !{i64 2149820426}
!73 = !{i64 2149820703}
!74 = !{i64 2149820545}
!75 = !{i64 2149820908}
!76 = !{i64 2149821971, i64 2149822463, i64 2149822008, i64 2149822064, i64 2149822098, i64 2149822122, i64 2149822163, i64 2149822184, i64 2149822212, i64 2149822246}
!77 = !{i64 2148455333}
!78 = !{i64 2148365752, i64 2148365784, i64 2148365813, i64 2148365847, i64 2148365878, i64 2148365901}
!79 = !{i64 2149823366}
!80 = !{i64 2154729680}
!81 = !{i64 2154731979}
