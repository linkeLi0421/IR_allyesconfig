; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ixgbevf/ipsec.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ixgbevf/ipsec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfrmdev_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ixgbevf_adapter = type { [128 x i32], [2 x ptr], i16, i16, i32, i32, i32, [8 x ptr], i32, [8 x ptr], i64, i32, i64, i32, [8 x ptr], i64, i64, i32, i64, i64, i64, i64, ptr, ptr, ptr, ptr, %struct.ixgbe_hw, i16, i32, %struct.ixgbevf_hw_stats, i32, i64, i32, i32, i32, ptr, i32, i8, %struct.timer_list, %struct.work_struct, %struct.spinlock, i32, ptr, [64 x i8], i32, ptr }
%struct.ixgbe_hw = type { ptr, ptr, %struct.ixgbe_mac_info, %struct.ixgbe_mbx_info, i16, i16, i16, i16, i8, i8, i32 }
%struct.ixgbe_mac_info = type { %struct.ixgbe_mac_operations, [6 x i8], [6 x i8], i32, i32, i8, i32, i32, i32 }
%struct.ixgbe_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_mbx_info = type { %struct.ixgbe_mbx_operations, %struct.ixgbe_mbx_stats, i32, i32, i32, i16 }
%struct.ixgbe_mbx_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_mbx_stats = type { i32, i32, i32, i32, i32 }
%struct.ixgbevf_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.145 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.ixgbevf_ipsec = type { i16, i16, ptr, ptr, [1024 x %struct.hlist_head] }
%struct.tx_sa = type { ptr, [4 x i32], i32, i32, i8, i8 }
%struct.rx_sa = type { %struct.hlist_node, ptr, [4 x i32], [4 x i32], i32, i32, i32, i8, i8 }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.52, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.53, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%union.anon.52 = type { %struct.hlist_node }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.53 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.xfrm_state_offload = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.sa_mbx_msg = type { i32, i8, i8, i16, [4 x i32], [5 x i32] }
%struct.xfrm_algo_aead = type { [64 x i8], i32, i32, [0 x i8] }
%struct.ixgbevf_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, %union.anon.146, i32, %struct.ixgbevf_stats, %struct.u64_stats_sync, %union.anon.150, %struct.xdp_rxq_info, i64, ptr, ptr, i16, i32, [104 x i8] }
%union.anon.146 = type { ptr }
%struct.ixgbevf_stats = type { i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.150 = type { %struct.ixgbevf_rx_queue_stats }
%struct.ixgbevf_rx_queue_stats = type { i64, i64, i64, i64 }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.ixgbevf_tx_buffer = type { ptr, i32, %union.anon.149, i32, i16, i16, i32, i32, i32 }
%union.anon.149 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.116, [48 x i8], %union.anon.117, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.119, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.116 = type { i64 }
%union.anon.117 = type { %struct.anon.118 }
%struct.anon.118 = type { i32, ptr }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.121, i32, i32, i32, i16, i16, %union.anon.123, i32, %union.anon.124, %union.anon.125, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.121 = type { i32 }
%union.anon.123 = type { i32 }
%union.anon.124 = type { i32 }
%union.anon.125 = type { i16 }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.157, i32, i32, i8, i8 }
%struct.anon.157 = type { i32, i32 }
%struct.ixgbevf_ipsec_tx_data = type { i32, i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ip_auth_hdr = type { i8, i8, i16, i32, i32, [0 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }

@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"reload rx_tbl[%d] failed = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"reload tx_tbl[%d] failed = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: no xfrm state len = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.ixgbevf_ipsec_tx = private unnamed_addr constant [17 x i8] c"ixgbevf_ipsec_tx\00", align 1
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: no xfrm_input_state() xs = %p\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: bad sa_idx=%d handle=%lu\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: unused sa_idx=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@ixgbevf_xfrmdev_ops = internal constant { %struct.xfrmdev_ops, [44 x i8] } { %struct.xfrmdev_ops { ptr @ixgbevf_ipsec_add_sa, ptr @ixgbevf_ipsec_del_sa, ptr null, ptr @ixgbevf_ipsec_offload_ok, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unable to allocate memory for SA tables\00", [56 x i8] zeroinitializer }, align 32
@ixgbevf_ipsec_find_rx_state.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/intel/ixgbevf/ipsec.c\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Unsupported protocol 0x%04x for IPsec offload\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unsupported mode for ipsec offload\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Compression offload not supported\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No space for SA in Rx table!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to get key data for Rx SA table\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No space for SA in Tx table\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to get key data for Tx SA table\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported IPsec algorithm\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"IPsec offload requires %d bit authentication\0A\00", [50 x i8] zeroinitializer }, align 32
@aes_gcm_name = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rfc4106(gcm(aes))\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Unsupported IPsec algorithm - please use %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"IPsec hw offload only supports keys up to 128 bits with a 32 bit salt\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Invalid Rx SA selected sa_idx=%d offload_handle=%lu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Invalid Tx SA selected sa_idx=%d offload_handle=%lu\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 119, i32 24 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 126, i32 24 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 470, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 477, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 484, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 491, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant [20 x i8] c"ixgbevf_xfrmdev_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 445, i32 33 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 668, i32 30 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 186, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 695, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 723, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 273, i32 19 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 279, i32 19 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 287, i32 20 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 294, i32 20 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 309, i32 20 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 348, i32 20 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 362, i32 20 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 220, i32 19 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 225, i32 19 }
@___asan_gen_.91 = private unnamed_addr constant [13 x i8] c"aes_gcm_name\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 9, i32 19 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 235, i32 19 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 249, i32 19 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 401, i32 20 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private constant [46 x i8] c"../drivers/net/ethernet/intel/ixgbevf/ipsec.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 414, i32 20 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ixgbevf_xfrmdev_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @aes_gcm_name, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbevf_xfrmdev_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aes_gcm_name to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbevf_ipsec_restore(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev2 = getelementptr inbounds %struct.ixgbevf_adapter, ptr %adapter, i32 0, i32 23
  %0 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev2, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %features, align 16
  %and = and i64 %3, 1125899906842624
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %ipsec1 = getelementptr inbounds %struct.ixgbevf_adapter, ptr %adapter, i32 0, i32 45
  %4 = ptrtoint ptr %ipsec1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipsec1, align 4
  %rx_tbl = getelementptr inbounds %struct.ixgbevf_ipsec, ptr %5, i32 0, i32 2
  %tx_tbl = getelementptr inbounds %struct.ixgbevf_ipsec, ptr %5, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end19.for.body_crit_edge, %for.cond.preheader
  %i.038 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end19.for.body_crit_edge ]
  %6 = ptrtoint ptr %rx_tbl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_tbl, align 4
  %8 = ptrtoint ptr %tx_tbl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_tbl, align 4
  %arrayidx4 = getelementptr %struct.tx_sa, ptr %9, i32 %i.038
  %used = getelementptr %struct.rx_sa, ptr %7, i32 %i.038, i32 7
  %10 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %used, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool5.not = icmp eq i8 %11, 0
  br i1 %tobool5.not, label %for.body.if.end10_crit_edge, label %if.then6

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then6:                                         ; preds = %for.body
  %xs = getelementptr %struct.rx_sa, ptr %7, i32 %i.038, i32 1
  %12 = ptrtoint ptr %xs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xs, align 4
  %call = tail call fastcc i32 @ixgbevf_ipsec_set_pf_sa(ptr noundef %adapter, ptr noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %if.then8, label %if.then6.if.end10_crit_edge

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %i.038, i32 noundef %call) #15
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then6.if.end10_crit_edge, %for.body.if.end10_crit_edge
  %used11 = getelementptr %struct.tx_sa, ptr %9, i32 %i.038, i32 5
  %14 = ptrtoint ptr %used11 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %used11, align 1, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool12.not = icmp eq i8 %15, 0
  br i1 %tobool12.not, label %if.end10.if.end19_crit_edge, label %if.then13

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then13:                                        ; preds = %if.end10
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx4, align 4
  %call15 = tail call fastcc i32 @ixgbevf_ipsec_set_pf_sa(ptr noundef %adapter, ptr noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.then13.if.end19_crit_edge

if.then13.if.end19_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %i.038, i32 noundef %call15) #15
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.then13.if.end19_crit_edge, %if.end10.if.end19_crit_edge
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %if.end19.cleanup_crit_edge, label %if.end19.for.body_crit_edge

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbevf_ipsec_set_pf_sa(ptr noundef %adapter, ptr nocapture noundef readonly %xs) unnamed_addr #0 align 64 {
entry:
  %msgbuf = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %msgbuf) #12
  %0 = getelementptr inbounds i8, ptr %msgbuf, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 52)
  %hw1 = getelementptr inbounds %struct.ixgbevf_adapter, ptr %adapter, i32 0, i32 26
  %arrayidx = getelementptr inbounds [16 x i32], ptr %msgbuf, i32 0, i32 1
  %flags = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 41, i32 5
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags, align 4
  %flags2 = getelementptr inbounds [16 x i32], ptr %msgbuf, i32 0, i32 2
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %flags2, align 4
  %id = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 7
  %spi = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %spi, align 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx, align 4
  %proto = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %proto, align 4
  %proto5 = getelementptr inbounds %struct.sa_mbx_msg, ptr %arrayidx, i32 0, i32 2
  %10 = ptrtoint ptr %proto5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %proto5, align 1
  %family = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 14, i32 7
  %11 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %family, align 2
  %family6 = getelementptr inbounds %struct.sa_mbx_msg, ptr %arrayidx, i32 0, i32 3
  %13 = ptrtoint ptr %family6 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %family6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %12)
  %cmp = icmp eq i16 %12, 10
  %addr = getelementptr inbounds [16 x i32], ptr %msgbuf, i32 0, i32 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %14 = call ptr @memcpy(ptr %addr, ptr %id, i32 16)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 4
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %key = getelementptr inbounds [16 x i32], ptr %msgbuf, i32 0, i32 7
  %aead = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 19
  %18 = ptrtoint ptr %aead to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %aead, align 4
  %alg_key = getelementptr inbounds %struct.xfrm_algo_aead, ptr %19, i32 0, i32 3
  %20 = call ptr @memcpy(ptr %key, ptr %alg_key, i32 20)
  %21 = ptrtoint ptr %msgbuf to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 13, ptr %msgbuf, align 4
  %mbx_lock = getelementptr inbounds %struct.ixgbevf_adapter, ptr %adapter, i32 0, i32 40
  tail call void @_raw_spin_lock_bh(ptr noundef %mbx_lock) #12
  %call = call i32 @ixgbevf_write_mbx(ptr noundef %hw1, ptr noundef nonnull %msgbuf, i16 noundef zeroext 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end20, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end20:                                         ; preds = %if.end
  %call22 = call i32 @ixgbevf_poll_mbx(ptr noundef %hw1, ptr noundef nonnull %msgbuf, i16 noundef zeroext 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.out_crit_edge

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %24 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msgbuf, align 4
  %and = and i32 %25, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  %26 = call i32 @llvm.smin.i32(i32 %23, i32 -1)
  %spec.select = select i1 %tobool28.not, i32 %23, i32 %26
  br label %out

out:                                              ; preds = %if.end25, %if.end20.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call, %if.end.out_crit_edge ], [ %call22, %if.end20.out_crit_edge ], [ %spec.select, %if.end25 ]
  call void @_raw_spin_unlock_bh(ptr noundef %mbx_lock) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %msgbuf) #12
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbevf_ipsec_tx(ptr nocapture noundef readonly %tx_ring, ptr nocapture noundef %first, ptr nocapture noundef %itd) local_unnamed_addr #0 align 64 {
entry:
  %padlen = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.ixgbevf_ring, ptr %tx_ring, i32 0, i32 2
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 8
  %ipsec1 = getelementptr i8, ptr %1, i32 3684
  %2 = ptrtoint ptr %ipsec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ipsec1, align 4
  %4 = getelementptr inbounds %struct.ixgbevf_tx_buffer, ptr %first, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %active_extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %active_extensions.i.i.i, align 1
  %9 = and i8 %8, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.i.not.i.i = icmp eq i8 %9, 0
  br i1 %tobool.i.not.i.i, label %skb_sec_path.exit, label %skb_sec_path.exit.thread

skb_sec_path.exit:                                ; preds = %entry
  call void @__asan_load4_noabort(i32 0)
  %10 = load i32, ptr null, align 2147483648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %skb_sec_path.exit.if.then_crit_edge, label %skb_sec_path.exit.xfrm_input_state.exit_crit_edge, !prof !68

skb_sec_path.exit.xfrm_input_state.exit_crit_edge: ; preds = %skb_sec_path.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfrm_input_state.exit

skb_sec_path.exit.if.then_crit_edge:              ; preds = %skb_sec_path.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

skb_sec_path.exit.thread:                         ; preds = %entry
  %extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 22
  %11 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %extensions.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.skb_ext, ptr %12, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %14 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %shl.i.i
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not120 = icmp eq i32 %16, 0
  br i1 %tobool.not120, label %skb_sec_path.exit.thread.if.then_crit_edge, label %if.then.i.i.i, !prof !68

skb_sec_path.exit.thread.if.then_crit_edge:       ; preds = %skb_sec_path.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %skb_sec_path.exit.thread.if.then_crit_edge, %skb_sec_path.exit.if.then_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ixgbevf_ipsec_tx, i32 noundef 0) #15
  br label %cleanup89

if.then.i.i.i:                                    ; preds = %skb_sec_path.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %extensions.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %18, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %20 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 %shl.i.i.i
  br label %xfrm_input_state.exit

xfrm_input_state.exit:                            ; preds = %if.then.i.i.i, %skb_sec_path.exit.xfrm_input_state.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %add.ptr.i.i.i, %if.then.i.i.i ], [ null, %skb_sec_path.exit.xfrm_input_state.exit_crit_edge ]
  %21 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %retval.0.i.i.i, align 4
  %sub.i = add i32 %22, -1
  %arrayidx.i = getelementptr %struct.sec_path, ptr %retval.0.i.i.i, i32 0, i32 2, i32 %sub.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %tobool9.not = icmp eq ptr %24, null
  br i1 %tobool9.not, label %if.then18, label %if.end20, !prof !68

if.then18:                                        ; preds = %xfrm_input_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.ixgbevf_ipsec_tx, ptr noundef null) #15
  br label %cleanup89

if.end20:                                         ; preds = %xfrm_input_state.exit
  %offload_handle = getelementptr inbounds %struct.xfrm_state, ptr %24, i32 0, i32 41, i32 3
  %25 = ptrtoint ptr %offload_handle to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offload_handle, align 4
  %conv = add i32 %26, 64512
  %conv21 = and i32 %conv, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %conv21)
  %cmp = icmp ugt i32 %conv21, 1023
  br i1 %cmp, label %if.then29, label %if.end34, !prof !68

if.then29:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ixgbevf_ipsec_tx, i32 noundef %conv21, i32 noundef %26) #15
  br label %cleanup89

if.end34:                                         ; preds = %if.end20
  %tx_tbl = getelementptr inbounds %struct.ixgbevf_ipsec, ptr %3, i32 0, i32 3
  %27 = ptrtoint ptr %tx_tbl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tx_tbl, align 4
  %used = getelementptr %struct.tx_sa, ptr %28, i32 %conv21, i32 5
  %29 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %used, align 1, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool35.not = icmp eq i8 %30, 0
  br i1 %tobool35.not, label %if.then44, label %if.end47, !prof !68

if.then44:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.ixgbevf_ipsec_tx, i32 noundef %conv21) #15
  br label %cleanup89

if.end47:                                         ; preds = %if.end34
  %pfsa = getelementptr %struct.tx_sa, ptr %28, i32 %conv21, i32 3
  %31 = ptrtoint ptr %pfsa to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pfsa, align 4
  %33 = trunc i32 %32 to i16
  %conv49 = add i16 %33, -1024
  %pfsa50 = getelementptr inbounds %struct.ixgbevf_ipsec_tx_data, ptr %itd, i32 0, i32 2
  %34 = ptrtoint ptr %pfsa50 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv49, ptr %pfsa50, align 2
  %tx_flags = getelementptr inbounds %struct.ixgbevf_tx_buffer, ptr %first, i32 0, i32 8
  %35 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_flags, align 4
  %or = or i32 %36, 17
  store i32 %or, ptr %tx_flags, align 4
  %proto = getelementptr inbounds %struct.xfrm_state, ptr %24, i32 0, i32 7, i32 2
  %37 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %proto, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %38)
  %cmp52 = icmp eq i8 %38, 50
  br i1 %cmp52, label %if.then54, label %if.end47.if.end83_crit_edge

if.end47.if.end83_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.then54:                                        ; preds = %if.end47
  %39 = ptrtoint ptr %itd to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %itd, align 4
  %or55 = or i32 %40, 10240
  store i32 %or55, ptr %itd, align 4
  %protocol = getelementptr inbounds %struct.ixgbevf_tx_buffer, ptr %first, i32 0, i32 5
  %41 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %protocol, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %42)
  %cmp57 = icmp eq i16 %42, 2048
  br i1 %cmp57, label %if.then59, label %if.then54.if.end62_crit_edge

if.then54.if.end62_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.then59:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  %or61 = or i32 %40, 11264
  %43 = ptrtoint ptr %itd to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or61, ptr %itd, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.then54.if.end62_crit_edge
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %4, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 17
  %46 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool.i.not = icmp eq i16 %49, 0
  br i1 %tobool.i.not, label %if.then64, label %if.end62.if.end83_crit_edge

if.end62.if.end83_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.then64:                                        ; preds = %if.end62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %padlen) #12
  %50 = ptrtoint ptr %padlen to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -1, ptr %padlen, align 1, !annotation !69
  %len65 = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 6
  %51 = ptrtoint ptr %len65 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len65, align 4
  %sub66 = add i32 %52, -18
  %call67 = call i32 @skb_copy_bits(ptr noundef %45, i32 noundef %sub66, ptr noundef nonnull %padlen, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end76, label %cleanup89.critedge, !prof !70

if.end76:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %padlen to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %padlen, align 1
  %conv77 = zext i8 %54 to i16
  %add = add nuw nsw i16 %conv77, 18
  %trailer_len = getelementptr inbounds %struct.ixgbevf_ipsec_tx_data, ptr %itd, i32 0, i32 1
  %55 = ptrtoint ptr %trailer_len to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %add, ptr %trailer_len, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %padlen) #12
  br label %if.end83

if.end83:                                         ; preds = %if.end76, %if.end62.if.end83_crit_edge, %if.end47.if.end83_crit_edge
  %encrypt = getelementptr %struct.tx_sa, ptr %28, i32 %conv21, i32 4
  %56 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %encrypt, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool84.not = icmp eq i8 %57, 0
  br i1 %tobool84.not, label %if.end83.cleanup89_crit_edge, label %if.then85

if.end83.cleanup89_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup89

if.then85:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  %58 = ptrtoint ptr %itd to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %itd, align 4
  %or87 = or i32 %59, 16384
  store i32 %or87, ptr %itd, align 4
  br label %cleanup89

cleanup89.critedge:                               ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %padlen) #12
  br label %cleanup89

cleanup89:                                        ; preds = %cleanup89.critedge, %if.then85, %if.end83.cleanup89_crit_edge, %if.then44, %if.then29, %if.then18, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ 0, %if.then18 ], [ 0, %if.then29 ], [ 0, %if.then44 ], [ 0, %cleanup89.critedge ], [ 1, %if.then85 ], [ 1, %if.end83.cleanup89_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbevf_ipsec_rx(ptr nocapture noundef readonly %rx_ring, ptr nocapture noundef readonly %rx_desc, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.ixgbevf_ring, ptr %rx_ring, i32 0, i32 2
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 8
  %2 = ptrtoint ptr %rx_desc to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rx_desc, align 8
  %ipsec2 = getelementptr i8, ptr %1, i32 3684
  %4 = ptrtoint ptr %ipsec2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipsec2, align 4
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 14
  %daddr3 = getelementptr i8, ptr %7, i32 30
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %add.ptr, align 4
  %bf.clear = shl i8 %bf.load, 2
  %9 = and i8 %bf.clear, 60
  %mul = zext i8 %9 to i32
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 %mul
  br label %if.end15

if.else:                                          ; preds = %entry
  %and7 = and i32 %conv, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else.cleanup_crit_edge, label %if.then9

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %data10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data10, align 4
  %daddr12 = getelementptr i8, ptr %11, i32 38
  %add.ptr13 = getelementptr i8, ptr %11, i32 54
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.then
  %ip4.0 = phi ptr [ %add.ptr, %if.then ], [ null, %if.then9 ]
  %daddr.0 = phi ptr [ %daddr3, %if.then ], [ %daddr12, %if.then9 ]
  %c_hdr.0 = phi ptr [ %add.ptr5, %if.then ], [ %add.ptr13, %if.then9 ]
  %and18 = and i32 %conv, 48
  %12 = zext i32 %and18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and18, label %if.end15.cleanup_crit_edge [
    i32 32, label %sw.bb
    i32 16, label %if.end15.sw.epilog_crit_edge
  ]

if.end15.sw.epilog_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %spi19 = getelementptr inbounds %struct.ip_auth_hdr, ptr %c_hdr.0, i32 0, i32 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end15.sw.epilog_crit_edge
  %spi.0.in = phi ptr [ %spi19, %sw.bb ], [ %c_hdr.0, %if.end15.sw.epilog_crit_edge ]
  %proto.0 = phi i8 [ 51, %sw.bb ], [ 50, %if.end15.sw.epilog_crit_edge ]
  %13 = ptrtoint ptr %spi.0.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %spi.0 = load i32, ptr %spi.0.in, align 4
  %tobool22.not = icmp eq ptr %ip4.0, null
  %14 = tail call i32 @llvm.read_register.i32(metadata !57) #12
  %and.i.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %17, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !71
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %sw.epilog.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

sw.epilog.rcu_read_lock.exit.i_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %sw.epilog
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %sw.epilog.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b67.i = load i1, ptr @ixgbevf_ipsec_find_rx_state.__warned, align 1
  br i1 %.b67.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ixgbevf_ipsec_find_rx_state.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 187, ptr noundef nonnull @.str.8) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %mul.i.i.i = mul i32 %spi.0, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 22
  %arrayidx.i = getelementptr %struct.ixgbevf_ipsec, ptr %5, i32 0, i32 4, i32 %shr.i.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %rsa.078.i = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool13.not79.i = icmp eq ptr %rsa.078.i, null
  br i1 %tobool13.not79.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %rsa.080.i = phi ptr [ %rsa.0.i, %for.inc.i.for.body.i_crit_edge ], [ %rsa.078.i, %do.end.i.for.body.i_crit_edge ]
  %xs.i = getelementptr inbounds %struct.rx_sa, ptr %rsa.080.i, i32 0, i32 1
  %19 = ptrtoint ptr %xs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xs.i, align 4
  %id.i = getelementptr inbounds %struct.xfrm_state, ptr %20, i32 0, i32 7
  %spi14.i = getelementptr inbounds %struct.xfrm_state, ptr %20, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %spi14.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %spi14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %spi.0)
  %cmp.i = icmp eq i32 %22, %spi.0
  br i1 %cmp.i, label %land.lhs.true15.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true15.i:                                ; preds = %for.body.i
  br i1 %tobool22.not, label %land.lhs.true23.critedge.i, label %land.lhs.true17.i

land.lhs.true17.i:                                ; preds = %land.lhs.true15.i
  %23 = ptrtoint ptr %daddr.0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %daddr.0, align 4
  %25 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp21.i = icmp eq i32 %24, %26
  br i1 %cmp21.i, label %land.lhs.true17.i.land.lhs.true29.i_crit_edge, label %land.lhs.true17.i.for.inc.i_crit_edge

land.lhs.true17.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true17.i.land.lhs.true29.i_crit_edge:    ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true29.i

land.lhs.true23.critedge.i:                       ; preds = %land.lhs.true15.i
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %daddr.0, ptr noundef dereferenceable(16) %id.i, i32 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool28.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool28.not.i, label %land.lhs.true23.critedge.i.land.lhs.true29.i_crit_edge, label %land.lhs.true23.critedge.i.for.inc.i_crit_edge

land.lhs.true23.critedge.i.for.inc.i_crit_edge:   ; preds = %land.lhs.true23.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true23.critedge.i.land.lhs.true29.i_crit_edge: ; preds = %land.lhs.true23.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true29.i

land.lhs.true29.i:                                ; preds = %land.lhs.true23.critedge.i.land.lhs.true29.i_crit_edge, %land.lhs.true17.i.land.lhs.true29.i_crit_edge
  %proto32.i = getelementptr inbounds %struct.xfrm_state, ptr %20, i32 0, i32 7, i32 2
  %27 = ptrtoint ptr %proto32.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %proto32.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %proto.0)
  %cmp34.i = icmp eq i8 %28, %proto.0
  br i1 %cmp34.i, label %if.then36.i, label %land.lhs.true29.i.for.inc.i_crit_edge

land.lhs.true29.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then36.i:                                      ; preds = %land.lhs.true29.i
  %refcnt.i.i = getelementptr inbounds %struct.xfrm_state, ptr %20, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #12
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #12, !srcloc !72
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then36.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !68

if.then36.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then36.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %30 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %.not.i.i.i.i.i = icmp sgt i32 %30, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.for.end.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !70

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.for.end.i_crit_edge:            ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then36.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then36.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %for.end.i

for.inc.i:                                        ; preds = %land.lhs.true29.i.for.inc.i_crit_edge, %land.lhs.true23.critedge.i.for.inc.i_crit_edge, %land.lhs.true17.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %31 = ptrtoint ptr %rsa.080.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %rsa.0.i = load volatile ptr, ptr %rsa.080.i, align 4
  %tobool13.not.i = icmp eq ptr %rsa.0.i, null
  br i1 %tobool13.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %ret.0.i = phi ptr [ %20, %if.else.i.i.i.i.i.for.end.i_crit_edge ], [ %20, %if.end15.sink.split.i.i.i.i.i ], [ null, %do.end.i.for.end.i_crit_edge ], [ null, %for.inc.i.for.end.i_crit_edge ]
  %call.i69.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i69.i, label %for.end.i.ixgbevf_ipsec_find_rx_state.exit_crit_edge, label %land.lhs.true.i72.i

for.end.i.ixgbevf_ipsec_find_rx_state.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbevf_ipsec_find_rx_state.exit

land.lhs.true.i72.i:                              ; preds = %for.end.i
  %call1.i70.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i70.i)
  %tobool.not.i71.i = icmp eq i32 %call1.i70.i, 0
  br i1 %tobool.not.i71.i, label %land.lhs.true.i72.i.ixgbevf_ipsec_find_rx_state.exit_crit_edge, label %land.lhs.true2.i74.i

land.lhs.true.i72.i.ixgbevf_ipsec_find_rx_state.exit_crit_edge: ; preds = %land.lhs.true.i72.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbevf_ipsec_find_rx_state.exit

land.lhs.true2.i74.i:                             ; preds = %land.lhs.true.i72.i
  %.b4.i73.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i73.i, label %land.lhs.true2.i74.i.ixgbevf_ipsec_find_rx_state.exit_crit_edge, label %if.then.i75.i

land.lhs.true2.i74.i.ixgbevf_ipsec_find_rx_state.exit_crit_edge: ; preds = %land.lhs.true2.i74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbevf_ipsec_find_rx_state.exit

if.then.i75.i:                                    ; preds = %land.lhs.true2.i74.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #12
  br label %ixgbevf_ipsec_find_rx_state.exit

ixgbevf_ipsec_find_rx_state.exit:                 ; preds = %if.then.i75.i, %land.lhs.true2.i74.i.ixgbevf_ipsec_find_rx_state.exit_crit_edge, %land.lhs.true.i72.i.ixgbevf_ipsec_find_rx_state.exit_crit_edge, %for.end.i.ixgbevf_ipsec_find_rx_state.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !73
  %32 = tail call i32 @llvm.read_register.i32(metadata !57) #12
  %and.i.i.i.i.i76.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i76.i to ptr
  %preempt_count.i.i.i.i77.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i77.i, align 4
  %sub.i.i.i.i = add i32 %35, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i77.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %tobool25.not = icmp eq ptr %ret.0.i, null
  br i1 %tobool25.not, label %ixgbevf_ipsec_find_rx_state.exit.cleanup_crit_edge, label %if.end31, !prof !68

ixgbevf_ipsec_find_rx_state.exit.cleanup_crit_edge: ; preds = %ixgbevf_ipsec_find_rx_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end31:                                         ; preds = %ixgbevf_ipsec_find_rx_state.exit
  %call32 = tail call ptr @secpath_set(ptr noundef %skb) #12
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.end31.cleanup_crit_edge, label %if.end43, !prof !68

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end43:                                         ; preds = %if.end31
  %36 = ptrtoint ptr %call32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call32, align 4
  %inc = add i32 %37, 1
  store i32 %inc, ptr %call32, align 4
  %arrayidx = getelementptr %struct.sec_path, ptr %call32, i32 0, i32 2, i32 %37
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %ret.0.i, ptr %arrayidx, align 4
  %olen = getelementptr inbounds %struct.sec_path, ptr %call32, i32 0, i32 1
  %39 = ptrtoint ptr %olen to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %olen, align 4
  %inc44 = add i32 %40, 1
  store i32 %inc44, ptr %olen, align 4
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %41 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %43 = and i8 %42, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.i.not.i.i.i = icmp eq i8 %43, 0
  br i1 %tobool.i.not.i.i.i, label %if.end43.xfrm_offload.exit_crit_edge, label %skb_sec_path.exit.i

if.end43.xfrm_offload.exit_crit_edge:             ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfrm_offload.exit

skb_sec_path.exit.i:                              ; preds = %if.end43
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %44 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %45, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %47 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %45, i32 %shl.i.i.i
  %tobool.not.i75 = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i75, label %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge, label %lor.lhs.false.i

skb_sec_path.exit.i.xfrm_offload.exit_crit_edge:  ; preds = %skb_sec_path.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfrm_offload.exit

lor.lhs.false.i:                                  ; preds = %skb_sec_path.exit.i
  %olen.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %olen.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %olen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool1.not.i = icmp eq i32 %49, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.xfrm_offload.exit_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.xfrm_offload.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfrm_offload.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %50 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %49)
  %cmp.not.i = icmp eq i32 %51, %49
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false2.i.xfrm_offload.exit_crit_edge

lor.lhs.false2.i.xfrm_offload.exit_crit_edge:     ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfrm_offload.exit

if.end.i:                                         ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = add i32 %49, -1
  %arrayidx.i76 = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 3, i32 %sub.i
  br label %xfrm_offload.exit

xfrm_offload.exit:                                ; preds = %if.end.i, %lor.lhs.false2.i.xfrm_offload.exit_crit_edge, %lor.lhs.false.i.xfrm_offload.exit_crit_edge, %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge, %if.end43.xfrm_offload.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i76, %if.end.i ], [ null, %lor.lhs.false2.i.xfrm_offload.exit_crit_edge ], [ null, %lor.lhs.false.i.xfrm_offload.exit_crit_edge ], [ null, %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge ], [ null, %if.end43.xfrm_offload.exit_crit_edge ]
  %flags = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i, i32 0, i32 1
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2, ptr %flags, align 4
  %status = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i, i32 0, i32 2
  %53 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %status, align 4
  %rx_ipsec = getelementptr i8, ptr %1, i32 3024
  %54 = ptrtoint ptr %rx_ipsec to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %rx_ipsec, align 8
  %inc46 = add i64 %55, 1
  store i64 %inc46, ptr %rx_ipsec, align 8
  br label %cleanup

cleanup:                                          ; preds = %xfrm_offload.exit, %if.end31.cleanup_crit_edge, %ixgbevf_ipsec_find_rx_state.exit.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.else.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @secpath_set(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbevf_init_ipsec_offload(ptr nocapture noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %api_version = getelementptr inbounds %struct.ixgbevf_adapter, ptr %adapter, i32 0, i32 26, i32 10
  %0 = ptrtoint ptr %api_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %api_version, align 8
  %.off = add i32 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.epilog, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4108) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %sw.epilog.err1_crit_edge, label %if.end

sw.epilog.err1_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %err1

if.end:                                           ; preds = %sw.epilog
  %rx_sa_list = getelementptr inbounds %struct.ixgbevf_ipsec, ptr %call7.i.i, i32 0, i32 4
  %3 = call ptr @memset(ptr %rx_sa_list, i32 0, i32 4096)
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 61440, i32 noundef 3520, i32 noundef 4) #18
  %rx_tbl = getelementptr inbounds %struct.ixgbevf_ipsec, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %rx_tbl to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1.i.i.i, ptr %rx_tbl, align 4
  %tobool3.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool3.not, label %if.end.err2_crit_edge, label %if.end5

if.end.err2_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err2

if.end5:                                          ; preds = %if.end
  %call1.i.i.i36 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 32768, i32 noundef 3520, i32 noundef 3) #18
  %tx_tbl = getelementptr inbounds %struct.ixgbevf_ipsec, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %tx_tbl to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1.i.i.i36, ptr %tx_tbl, align 8
  %tobool8.not = icmp eq ptr %call1.i.i.i36, null
  br i1 %tobool8.not, label %if.end5.err2_crit_edge, label %if.end10

if.end5.err2_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %err2

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %call7.i.i, align 8
  %num_tx_sa = getelementptr inbounds %struct.ixgbevf_ipsec, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %num_tx_sa to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %num_tx_sa, align 2
  %ipsec11 = getelementptr inbounds %struct.ixgbevf_adapter, ptr %adapter, i32 0, i32 45
  %8 = ptrtoint ptr %ipsec11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %ipsec11, align 4
  %netdev = getelementptr inbounds %struct.ixgbevf_adapter, ptr %adapter, i32 0, i32 23
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 4
  %xfrmdev_ops = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 47
  %11 = ptrtoint ptr %xfrmdev_ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ixgbevf_xfrmdev_ops, ptr %xfrmdev_ops, align 4
  %12 = load ptr, ptr %netdev, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 23
  %13 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %features, align 16
  %or = or i64 %14, 3377701868011520
  store i64 %or, ptr %features, align 16
  %15 = load ptr, ptr %netdev, align 4
  %hw_enc_features = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %hw_enc_features to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %hw_enc_features, align 16
  %or14 = or i64 %17, 3377701868011520
  store i64 %or14, ptr %hw_enc_features, align 16
  br label %cleanup

err2:                                             ; preds = %if.end5.err2_crit_edge, %if.end.err2_crit_edge
  %18 = ptrtoint ptr %rx_tbl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_tbl, align 4
  tail call void @kfree(ptr noundef %19) #12
  %tx_tbl16 = getelementptr inbounds %struct.ixgbevf_ipsec, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %tx_tbl16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_tbl16, align 8
  tail call void @kfree(ptr noundef %21) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %err1

err1:                                             ; preds = %err2, %sw.epilog.err1_crit_edge
  %netdev17 = getelementptr inbounds %struct.ixgbevf_adapter, ptr %adapter, i32 0, i32 23
  %22 = ptrtoint ptr %netdev17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev17, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %23, ptr noundef nonnull @.str.6) #15
  br label %cleanup

cleanup:                                          ; preds = %err1, %if.end10, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbevf_stop_ipsec_offload(ptr nocapture noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ipsec1 = getelementptr inbounds %struct.ixgbevf_adapter, ptr %adapter, i32 0, i32 45
  %0 = ptrtoint ptr %ipsec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipsec1, align 4
  store ptr null, ptr %ipsec1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rx_tbl = getelementptr inbounds %struct.ixgbevf_ipsec, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rx_tbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_tbl, align 4
  tail call void @kfree(ptr noundef %3) #12
  %tx_tbl = getelementptr inbounds %struct.ixgbevf_ipsec, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %tx_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_tbl, align 4
  tail call void @kfree(ptr noundef %5) #12
  tail call void @kfree(ptr noundef nonnull %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbevf_write_mbx(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbevf_poll_mbx(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbevf_ipsec_add_sa(ptr noundef %xs) #0 align 64 {
entry:
  %rsa = alloca %struct.rx_sa, align 4
  %tsa = alloca %struct.tx_sa, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 41, i32 2
  %0 = ptrtoint ptr %real_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %ipsec1 = getelementptr i8, ptr %1, i32 3684
  %2 = ptrtoint ptr %ipsec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ipsec1, align 4
  %id = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 7
  %proto = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %proto, align 4
  %6 = and i8 %5, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %6)
  %switch = icmp eq i8 %6, 50
  br i1 %switch, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %conv) #15
  br label %cleanup142

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 14, i32 1
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp12.not = icmp eq i8 %8, 0
  br i1 %cmp12.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.13) #15
  br label %cleanup142

if.end15:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 41, i32 5
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flags, align 4
  %11 = and i8 %10, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.else95, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %rsa) #12
  %calg = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 18
  %12 = ptrtoint ptr %calg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %calg, align 8
  %tobool19.not = icmp eq ptr %13, null
  br i1 %tobool19.not, label %if.end21, label %if.then18.cleanup.thread.sink.split_crit_edge

if.then18.cleanup.thread.sink.split_crit_edge:    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.sink.split

if.end21:                                         ; preds = %if.then18
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %15)
  %cmp.i = icmp eq i16 %15, 1024
  br i1 %cmp.i, label %if.end21.cleanup.thread.sink.split_crit_edge, label %for.cond.preheader.i

if.end21.cleanup.thread.sink.split_crit_edge:     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.sink.split

for.cond.preheader.i:                             ; preds = %if.end21
  %rx_tbl.i = getelementptr inbounds %struct.ixgbevf_ipsec, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %rx_tbl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_tbl.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.039.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %used.i = getelementptr %struct.rx_sa, ptr %17, i32 %i.039.i, i32 7
  %18 = ptrtoint ptr %used.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %used.i, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool5.not.i = icmp eq i8 %19, 0
  br i1 %tobool5.not.i, label %if.end26, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.039.i, 1
  %exitcond42.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond42.not.i, label %for.inc.i.cleanup.thread.sink.split_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.cleanup.thread.sink.split_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.sink.split

if.end26:                                         ; preds = %for.body.i
  %20 = call ptr @memset(ptr %rsa, i32 0, i32 60)
  %used = getelementptr inbounds %struct.rx_sa, ptr %rsa, i32 0, i32 7
  %21 = ptrtoint ptr %used to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %used, align 4
  %xs28 = getelementptr inbounds %struct.rx_sa, ptr %rsa, i32 0, i32 1
  %22 = ptrtoint ptr %xs28 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %xs, ptr %xs28, align 4
  %23 = and i8 %5, 50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool34.not = icmp eq i8 %23, 0
  br i1 %tobool34.not, label %if.end26.if.end38_crit_edge, label %if.then35

if.end26.if.end38_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then35:                                        ; preds = %if.end26
  %ealg = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 17
  %24 = ptrtoint ptr %ealg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ealg, align 4
  %tobool36.not = icmp eq ptr %25, null
  br i1 %tobool36.not, label %lor.rhs, label %if.then35.lor.end_crit_edge

if.then35.lor.end_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end

lor.rhs:                                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  %aead = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 19
  %26 = ptrtoint ptr %aead to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %aead, align 4
  %tobool37 = icmp ne ptr %27, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then35.lor.end_crit_edge
  %28 = phi i1 [ true, %if.then35.lor.end_crit_edge ], [ %tobool37, %lor.rhs ]
  %decrypt = getelementptr inbounds %struct.rx_sa, ptr %rsa, i32 0, i32 8
  %frombool = zext i1 %28 to i8
  %29 = ptrtoint ptr %decrypt to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %frombool, ptr %decrypt, align 1
  br label %if.end38

if.end38:                                         ; preds = %lor.end, %if.end26.if.end38_crit_edge
  %key = getelementptr inbounds %struct.rx_sa, ptr %rsa, i32 0, i32 3
  %salt = getelementptr inbounds %struct.rx_sa, ptr %rsa, i32 0, i32 4
  %call39 = call fastcc i32 @ixgbevf_ipsec_parse_proto_keys(ptr noundef %xs, ptr noundef %key, ptr noundef %salt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.cleanup.thread.sink.split_crit_edge

if.end38.cleanup.thread.sink.split_crit_edge:     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.sink.split

if.end42:                                         ; preds = %if.end38
  %family = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 14, i32 7
  %30 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %family, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %31)
  %cmp45 = icmp eq i16 %31, 10
  br i1 %cmp45, label %if.then47, label %if.else

if.then47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %ipaddr = getelementptr inbounds %struct.rx_sa, ptr %rsa, i32 0, i32 2
  %32 = call ptr @memcpy(ptr %ipaddr, ptr %id, i32 16)
  br label %if.end53

if.else:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr inbounds %struct.rx_sa, ptr %rsa, i32 0, i32 2, i32 3
  %33 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id, align 4
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.else, %if.then47
  %mode54 = getelementptr inbounds %struct.rx_sa, ptr %rsa, i32 0, i32 5
  %36 = ptrtoint ptr %xs28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %xs28, align 4
  %proto57 = getelementptr inbounds %struct.xfrm_state, ptr %37, i32 0, i32 7, i32 2
  %38 = ptrtoint ptr %proto57 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %proto57, align 4
  %40 = and i8 %39, 50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool60.not = icmp eq i8 %40, 0
  %spec.store.select = select i1 %tobool60.not, i32 1, i32 5
  %41 = ptrtoint ptr %mode54 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %spec.store.select, ptr %mode54, align 4
  %decrypt64 = getelementptr inbounds %struct.rx_sa, ptr %rsa, i32 0, i32 8
  %42 = ptrtoint ptr %decrypt64 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %decrypt64, align 1, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool65.not = icmp eq i8 %43, 0
  br i1 %tobool65.not, label %if.end53.if.end69_crit_edge, label %if.then66

if.end53.if.end69_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then66:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  %or68 = or i32 %spec.store.select, 8
  %44 = ptrtoint ptr %mode54 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or68, ptr %mode54, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %if.end53.if.end69_crit_edge
  %family72 = getelementptr inbounds %struct.xfrm_state, ptr %37, i32 0, i32 14, i32 7
  %45 = ptrtoint ptr %family72 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %family72, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %46)
  %cmp74 = icmp eq i16 %46, 10
  br i1 %cmp74, label %if.then76, label %if.end69.if.end79_crit_edge

if.end69.if.end79_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79

if.then76:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %mode54 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mode54, align 4
  %or78 = or i32 %48, 16
  store i32 %or78, ptr %mode54, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.end69.if.end79_crit_edge
  %call80 = tail call fastcc i32 @ixgbevf_ipsec_set_pf_sa(ptr noundef %add.ptr.i, ptr noundef %xs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.end79.cleanup.thread_crit_edge, label %if.end84

if.end79.cleanup.thread_crit_edge:                ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end84:                                         ; preds = %if.end79
  %pfsa = getelementptr inbounds %struct.rx_sa, ptr %rsa, i32 0, i32 6
  %49 = ptrtoint ptr %pfsa to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call80, ptr %pfsa, align 4
  %50 = ptrtoint ptr %rx_tbl.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rx_tbl.i, align 4
  %idxprom = and i32 %i.039.i, 65535
  %arrayidx85 = getelementptr %struct.rx_sa, ptr %51, i32 %idxprom
  %52 = call ptr @memcpy(ptr %arrayidx85, ptr %rsa, i32 60)
  %offload_handle = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 41, i32 3
  %53 = ptrtoint ptr %offload_handle to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %idxprom, ptr %offload_handle, align 4
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %3, align 4
  %inc = add i16 %55, 1
  store i16 %inc, ptr %3, align 4
  %56 = load ptr, ptr %rx_tbl.i, align 4
  %arrayidx90 = getelementptr %struct.rx_sa, ptr %56, i32 %idxprom
  %spi = getelementptr inbounds %struct.xfrm_state, ptr %37, i32 0, i32 7, i32 1
  %57 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %spi, align 4
  %mul.i.i = mul i32 %58, 1640531527
  %shr.i = lshr i32 %mul.i.i, 22
  %arrayidx94 = getelementptr %struct.ixgbevf_ipsec, ptr %3, i32 0, i32 4, i32 %shr.i
  %59 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx94, align 4
  %61 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %arrayidx90, align 4
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %arrayidx90, i32 0, i32 1
  %62 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %arrayidx94, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !74
  %63 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %arrayidx90, ptr %arrayidx94, align 4
  %tobool.not.i = icmp eq ptr %60, null
  br i1 %tobool.not.i, label %if.end84.cleanup_crit_edge, label %do.body49.i

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body49.i:                                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %60, i32 0, i32 1
  %64 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %arrayidx90, ptr %pprev51.i, align 4
  br label %cleanup

cleanup.thread.sink.split:                        ; preds = %if.end38.cleanup.thread.sink.split_crit_edge, %for.inc.i.cleanup.thread.sink.split_crit_edge, %if.end21.cleanup.thread.sink.split_crit_edge, %if.then18.cleanup.thread.sink.split_crit_edge
  %.str.14.sink = phi ptr [ @.str.14, %if.then18.cleanup.thread.sink.split_crit_edge ], [ @.str.15, %if.end21.cleanup.thread.sink.split_crit_edge ], [ @.str.16, %if.end38.cleanup.thread.sink.split_crit_edge ], [ @.str.15, %for.inc.i.cleanup.thread.sink.split_crit_edge ]
  %retval.0.ph.ph = phi i32 [ -22, %if.then18.cleanup.thread.sink.split_crit_edge ], [ -28, %if.end21.cleanup.thread.sink.split_crit_edge ], [ %call39, %if.end38.cleanup.thread.sink.split_crit_edge ], [ -28, %for.inc.i.cleanup.thread.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull %.str.14.sink) #15
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.thread.sink.split, %if.end79.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ %call80, %if.end79.cleanup.thread_crit_edge ], [ %retval.0.ph.ph, %cleanup.thread.sink.split ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %rsa) #12
  br label %cleanup142

cleanup:                                          ; preds = %do.body49.i, %if.end84.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %rsa) #12
  br label %cleanup142

if.else95:                                        ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tsa) #12
  %num_tx_sa.i = getelementptr inbounds %struct.ixgbevf_ipsec, ptr %3, i32 0, i32 1
  %65 = ptrtoint ptr %num_tx_sa.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %num_tx_sa.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %66)
  %cmp9.i = icmp eq i16 %66, 1024
  br i1 %cmp9.i, label %if.else95.cleanup138.thread.sink.split_crit_edge, label %for.cond13.preheader.i

if.else95.cleanup138.thread.sink.split_crit_edge: ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup138.thread.sink.split

for.cond13.preheader.i:                           ; preds = %if.else95
  %tx_tbl.i = getelementptr inbounds %struct.ixgbevf_ipsec, ptr %3, i32 0, i32 3
  %67 = ptrtoint ptr %tx_tbl.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tx_tbl.i, align 4
  br label %for.body16.i

for.body16.i:                                     ; preds = %for.inc22.i.for.body16.i_crit_edge, %for.cond13.preheader.i
  %i.138.i = phi i32 [ 0, %for.cond13.preheader.i ], [ %inc23.i, %for.inc22.i.for.body16.i_crit_edge ]
  %used18.i = getelementptr %struct.tx_sa, ptr %68, i32 %i.138.i, i32 5
  %69 = ptrtoint ptr %used18.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %used18.i, align 1, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool19.not.i = icmp eq i8 %70, 0
  br i1 %tobool19.not.i, label %if.end100, label %for.inc22.i

for.inc22.i:                                      ; preds = %for.body16.i
  %inc23.i = add nuw nsw i32 %i.138.i, 1
  %exitcond.not.i = icmp eq i32 %inc23.i, 1024
  br i1 %exitcond.not.i, label %for.inc22.i.cleanup138.thread.sink.split_crit_edge, label %for.inc22.i.for.body16.i_crit_edge

for.inc22.i.for.body16.i_crit_edge:               ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body16.i

for.inc22.i.cleanup138.thread.sink.split_crit_edge: ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup138.thread.sink.split

if.end100:                                        ; preds = %for.body16.i
  %71 = getelementptr inbounds i8, ptr %tsa, i32 4
  %72 = call ptr @memset(ptr %71, i32 0, i32 28)
  %used102 = getelementptr inbounds %struct.tx_sa, ptr %tsa, i32 0, i32 5
  %73 = ptrtoint ptr %used102 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %used102, align 1
  %74 = ptrtoint ptr %tsa to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %xs, ptr %tsa, align 4
  %75 = and i8 %5, 50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool108.not = icmp eq i8 %75, 0
  br i1 %tobool108.not, label %if.end100.if.end117_crit_edge, label %if.then109

if.end100.if.end117_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end117

if.then109:                                       ; preds = %if.end100
  %ealg110 = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 17
  %76 = ptrtoint ptr %ealg110 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ealg110, align 4
  %tobool111.not = icmp eq ptr %77, null
  br i1 %tobool111.not, label %lor.rhs112, label %if.then109.lor.end115_crit_edge

if.then109.lor.end115_crit_edge:                  ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end115

lor.rhs112:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #14
  %aead113 = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 19
  %78 = ptrtoint ptr %aead113 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %aead113, align 4
  %tobool114 = icmp ne ptr %79, null
  br label %lor.end115

lor.end115:                                       ; preds = %lor.rhs112, %if.then109.lor.end115_crit_edge
  %80 = phi i1 [ true, %if.then109.lor.end115_crit_edge ], [ %tobool114, %lor.rhs112 ]
  %encrypt = getelementptr inbounds %struct.tx_sa, ptr %tsa, i32 0, i32 4
  %frombool116 = zext i1 %80 to i8
  %81 = ptrtoint ptr %encrypt to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %frombool116, ptr %encrypt, align 4
  br label %if.end117

if.end117:                                        ; preds = %lor.end115, %if.end100.if.end117_crit_edge
  %key118 = getelementptr inbounds %struct.tx_sa, ptr %tsa, i32 0, i32 1
  %salt120 = getelementptr inbounds %struct.tx_sa, ptr %tsa, i32 0, i32 2
  %call121 = call fastcc i32 @ixgbevf_ipsec_parse_proto_keys(ptr noundef %xs, ptr noundef %key118, ptr noundef %salt120)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end124, label %if.end117.cleanup138.thread.sink.split_crit_edge

if.end117.cleanup138.thread.sink.split_crit_edge: ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup138.thread.sink.split

if.end124:                                        ; preds = %if.end117
  %call125 = tail call fastcc i32 @ixgbevf_ipsec_set_pf_sa(ptr noundef %add.ptr.i, ptr noundef %xs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %cmp126 = icmp slt i32 %call125, 0
  br i1 %cmp126, label %if.end124.cleanup138.thread_crit_edge, label %cleanup138

if.end124.cleanup138.thread_crit_edge:            ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup138.thread

cleanup138.thread.sink.split:                     ; preds = %if.end117.cleanup138.thread.sink.split_crit_edge, %for.inc22.i.cleanup138.thread.sink.split_crit_edge, %if.else95.cleanup138.thread.sink.split_crit_edge
  %.str.17.sink = phi ptr [ @.str.17, %if.else95.cleanup138.thread.sink.split_crit_edge ], [ @.str.18, %if.end117.cleanup138.thread.sink.split_crit_edge ], [ @.str.17, %for.inc22.i.cleanup138.thread.sink.split_crit_edge ]
  %retval.1.ph.ph = phi i32 [ -28, %if.else95.cleanup138.thread.sink.split_crit_edge ], [ %call121, %if.end117.cleanup138.thread.sink.split_crit_edge ], [ -28, %for.inc22.i.cleanup138.thread.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull %.str.17.sink) #15
  br label %cleanup138.thread

cleanup138.thread:                                ; preds = %cleanup138.thread.sink.split, %if.end124.cleanup138.thread_crit_edge
  %retval.1.ph = phi i32 [ %call125, %if.end124.cleanup138.thread_crit_edge ], [ %retval.1.ph.ph, %cleanup138.thread.sink.split ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tsa) #12
  br label %cleanup142

cleanup138:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  %pfsa130 = getelementptr inbounds %struct.tx_sa, ptr %tsa, i32 0, i32 3
  %82 = ptrtoint ptr %pfsa130 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call125, ptr %pfsa130, align 4
  %83 = ptrtoint ptr %tx_tbl.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tx_tbl.i, align 4
  %idxprom131 = and i32 %i.138.i, 65535
  %arrayidx132 = getelementptr %struct.tx_sa, ptr %84, i32 %idxprom131
  %85 = call ptr @memcpy(ptr %arrayidx132, ptr %tsa, i32 32)
  %add134 = add nuw nsw i32 %idxprom131, 1024
  %offload_handle136 = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 41, i32 3
  %86 = ptrtoint ptr %offload_handle136 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %add134, ptr %offload_handle136, align 4
  %87 = ptrtoint ptr %num_tx_sa.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %num_tx_sa.i, align 2
  %inc137 = add i16 %88, 1
  store i16 %inc137, ptr %num_tx_sa.i, align 2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tsa) #12
  br label %cleanup142

cleanup142:                                       ; preds = %cleanup138, %cleanup138.thread, %cleanup, %cleanup.thread, %if.then14, %if.then
  %retval.2 = phi i32 [ -22, %if.then ], [ -22, %if.then14 ], [ %retval.0.ph, %cleanup.thread ], [ %retval.1.ph, %cleanup138.thread ], [ 0, %cleanup138 ], [ 0, %cleanup ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbevf_ipsec_del_sa(ptr nocapture noundef readonly %xs) #0 align 64 {
entry:
  %msgbuf.i71 = alloca [2 x i32], align 8
  %msgbuf.i = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 41, i32 2
  %0 = ptrtoint ptr %real_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev, align 8
  %ipsec1 = getelementptr i8, ptr %1, i32 3684
  %2 = ptrtoint ptr %ipsec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ipsec1, align 4
  %flags = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 41, i32 5
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags, align 4
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %offload_handle21 = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 41, i32 3
  %7 = ptrtoint ptr %offload_handle21 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offload_handle21, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %rx_tbl = getelementptr inbounds %struct.ixgbevf_ipsec, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %rx_tbl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_tbl, align 4
  %idxprom = and i32 %8, 65535
  %used = getelementptr %struct.rx_sa, ptr %10, i32 %idxprom, i32 7
  %11 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %used, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool5.not = icmp eq i8 %12, 0
  br i1 %tobool5.not, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %idxprom, i32 noundef %8) #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  %pfsa = getelementptr %struct.rx_sa, ptr %10, i32 %idxprom, i32 6
  %13 = ptrtoint ptr %pfsa to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pfsa, align 4
  %hw1.i = getelementptr i8, ptr %1, i32 3048
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msgbuf.i) #12
  %15 = getelementptr inbounds [2 x i32], ptr %msgbuf.i, i32 0, i32 1
  %16 = ptrtoint ptr %msgbuf.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 60129542144, ptr %msgbuf.i, align 8
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %15, align 4
  %mbx_lock.i = getelementptr i8, ptr %1, i32 3564
  tail call void @_raw_spin_lock_bh(ptr noundef %mbx_lock.i) #12
  %call.i = call i32 @ixgbevf_write_mbx(ptr noundef %hw1.i, ptr noundef nonnull %msgbuf.i, i16 noundef zeroext 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.ixgbevf_ipsec_del_pf_sa.exit_crit_edge

if.end.ixgbevf_ipsec_del_pf_sa.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbevf_ipsec_del_pf_sa.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call5.i = call i32 @ixgbevf_poll_mbx(ptr noundef %hw1.i, ptr noundef nonnull %msgbuf.i, i16 noundef zeroext 2) #12
  br label %ixgbevf_ipsec_del_pf_sa.exit

ixgbevf_ipsec_del_pf_sa.exit:                     ; preds = %if.end.i, %if.end.ixgbevf_ipsec_del_pf_sa.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %mbx_lock.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msgbuf.i) #12
  %18 = ptrtoint ptr %rx_tbl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_tbl, align 4
  %arrayidx16 = getelementptr %struct.rx_sa, ptr %19, i32 %idxprom
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %arrayidx16, i32 0, i32 1
  %20 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.not.i.i, label %ixgbevf_ipsec_del_pf_sa.exit.hash_del_rcu.exit_crit_edge, label %if.then.i.i

ixgbevf_ipsec_del_pf_sa.exit.hash_del_rcu.exit_crit_edge: ; preds = %ixgbevf_ipsec_del_pf_sa.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %hash_del_rcu.exit

if.then.i.i:                                      ; preds = %ixgbevf_ipsec_del_pf_sa.exit
  %22 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx16, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %23, ptr %21, align 4
  %tobool.not.i7.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i7.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %23, i32 0, i32 1
  %25 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %21, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %26 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del_rcu.exit

hash_del_rcu.exit:                                ; preds = %__hlist_del.exit.i.i, %ixgbevf_ipsec_del_pf_sa.exit.hash_del_rcu.exit_crit_edge
  %27 = ptrtoint ptr %rx_tbl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_tbl, align 4
  %arrayidx19 = getelementptr %struct.rx_sa, ptr %28, i32 %idxprom
  %29 = call ptr @memset(ptr %arrayidx19, i32 0, i32 60)
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %3, align 4
  %dec = add i16 %31, -1
  store i16 %dec, ptr %3, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %conv23 = add i32 %8, 64512
  %tx_tbl = getelementptr inbounds %struct.ixgbevf_ipsec, ptr %3, i32 0, i32 3
  %32 = ptrtoint ptr %tx_tbl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_tbl, align 4
  %idxprom24 = and i32 %conv23, 65535
  %used26 = getelementptr %struct.tx_sa, ptr %33, i32 %idxprom24, i32 5
  %34 = ptrtoint ptr %used26 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %used26, align 1, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool27.not = icmp eq i8 %35, 0
  br i1 %tobool27.not, label %if.then28, label %if.end32

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef %idxprom24, i32 noundef %8) #15
  br label %cleanup

if.end32:                                         ; preds = %if.else
  %pfsa36 = getelementptr %struct.tx_sa, ptr %33, i32 %idxprom24, i32 3
  %36 = ptrtoint ptr %pfsa36 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pfsa36, align 4
  %hw1.i72 = getelementptr i8, ptr %1, i32 3048
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msgbuf.i71) #12
  %38 = getelementptr inbounds [2 x i32], ptr %msgbuf.i71, i32 0, i32 1
  %39 = ptrtoint ptr %msgbuf.i71 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 60129542144, ptr %msgbuf.i71, align 8
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %37, ptr %38, align 4
  %mbx_lock.i73 = getelementptr i8, ptr %1, i32 3564
  tail call void @_raw_spin_lock_bh(ptr noundef %mbx_lock.i73) #12
  %call.i74 = call i32 @ixgbevf_write_mbx(ptr noundef %hw1.i72, ptr noundef nonnull %msgbuf.i71, i16 noundef zeroext 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool.not.i75 = icmp eq i32 %call.i74, 0
  br i1 %tobool.not.i75, label %if.end.i77, label %if.end32.ixgbevf_ipsec_del_pf_sa.exit78_crit_edge

if.end32.ixgbevf_ipsec_del_pf_sa.exit78_crit_edge: ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %ixgbevf_ipsec_del_pf_sa.exit78

if.end.i77:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %call5.i76 = call i32 @ixgbevf_poll_mbx(ptr noundef %hw1.i72, ptr noundef nonnull %msgbuf.i71, i16 noundef zeroext 2) #12
  br label %ixgbevf_ipsec_del_pf_sa.exit78

ixgbevf_ipsec_del_pf_sa.exit78:                   ; preds = %if.end.i77, %if.end32.ixgbevf_ipsec_del_pf_sa.exit78_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %mbx_lock.i73) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msgbuf.i71) #12
  %41 = ptrtoint ptr %tx_tbl to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tx_tbl, align 4
  %arrayidx40 = getelementptr %struct.tx_sa, ptr %42, i32 %idxprom24
  %43 = call ptr @memset(ptr %arrayidx40, i32 0, i32 32)
  %num_tx_sa = getelementptr inbounds %struct.ixgbevf_ipsec, ptr %3, i32 0, i32 1
  %44 = ptrtoint ptr %num_tx_sa to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %num_tx_sa, align 2
  %dec41 = add i16 %45, -1
  store i16 %dec41, ptr %num_tx_sa, align 2
  br label %cleanup

cleanup:                                          ; preds = %ixgbevf_ipsec_del_pf_sa.exit78, %if.then28, %hash_del_rcu.exit, %if.then6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ixgbevf_ipsec_offload_ok(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %xs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 14, i32 7
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %family, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp = icmp eq i16 %1, 2
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear = and i8 %bf.load, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %bf.clear)
  %cmp3.not = icmp eq i8 %bf.clear, 5
  br i1 %cmp3.not, label %if.then.if.end10_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.else:                                          ; preds = %entry
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %nexthdr, align 2
  %call7 = tail call zeroext i1 @ipv6_ext_hdr(i8 noundef zeroext %8) #12
  br i1 %call7, label %if.else.return_crit_edge, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end10:                                         ; preds = %if.else.if.end10_crit_edge, %if.then.if.end10_crit_edge
  br label %return

return:                                           ; preds = %if.end10, %if.else.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i1 [ true, %if.end10 ], [ false, %if.then.return_crit_edge ], [ false, %if.else.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbevf_ipsec_parse_proto_keys(ptr nocapture noundef readonly %xs, ptr nocapture noundef writeonly %mykey, ptr nocapture noundef writeonly %mysalt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 41, i32 2
  %0 = ptrtoint ptr %real_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev, align 8
  %aead = getelementptr inbounds %struct.xfrm_state, ptr %xs, i32 0, i32 19
  %2 = ptrtoint ptr %aead to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aead, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.19) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %alg_icv_len = getelementptr inbounds %struct.xfrm_algo_aead, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %alg_icv_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %alg_icv_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %5)
  %cmp.not = icmp eq i32 %5, 128
  br i1 %cmp.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef 128) #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %alg_key = getelementptr inbounds %struct.xfrm_algo_aead, ptr %3, i32 0, i32 3
  %alg_key_len = getelementptr inbounds %struct.xfrm_algo_aead, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %alg_key_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %alg_key_len, align 4
  %call = tail call i32 @strcmp(ptr noundef nonnull %3, ptr noundef nonnull dereferenceable(18) @aes_gcm_name) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.21, ptr noundef nonnull @aes_gcm_name) #15
  br label %cleanup

if.end10:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %7)
  %cmp11 = icmp sgt i32 %7, 160
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx13 = getelementptr %struct.xfrm_algo_aead, ptr %3, i32 1, i32 0, i32 16
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx13, align 4
  br label %if.end18

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %7)
  %cmp14 = icmp eq i32 %7, 160
  br i1 %cmp14, label %if.else.if.end18_crit_edge, label %if.else16

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.else16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.22) #15
  br label %cleanup

if.end18:                                         ; preds = %if.else.if.end18_crit_edge, %if.then12
  %storemerge = phi i32 [ %9, %if.then12 ], [ 0, %if.else.if.end18_crit_edge ]
  %10 = ptrtoint ptr %mysalt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %storemerge, ptr %mysalt, align 4
  %11 = call ptr @memcpy(ptr %mykey, ptr %alg_key, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.else16, %if.then9, %if.then2, %if.then
  %retval.0 = phi i32 [ -22, %if.then2 ], [ -22, %if.then9 ], [ 0, %if.end18 ], [ -22, %if.else16 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_ext_hdr(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !22, !23, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55}
!llvm.named.register.sp = !{!57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ixgbevf/ipsec.c", i32 119, i32 24}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/ixgbevf/ipsec.c", i32 126, i32 24}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/ixgbevf/ipsec.c", i32 470, i32 31}
!6 = !{ptr @__func__.ixgbevf_ipsec_tx, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/ixgbevf/ipsec.c", i32 471, i32 7}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/ixgbevf/ipsec.c", i32 477, i32 31}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/ixgbevf/ipsec.c", i32 484, i32 31}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/ixgbevf/ipsec.c", i32 491, i32 31}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/ixgbevf/ipsec.c", i32 668, i32 30}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/ixgbevf/ipsec.c", i32 186, i32 2}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ixgbevf_xfrmdev_ops, !28, !"ixgbevf_xfrmdev_ops", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/intel/ixgbevf/ipsec.c", i32 445, i32 33}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/intel/ixgbevf/ipsec.c", i32 273, i32 19}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/intel/ixgbevf/ipsec.c", i32 279, i32 19}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/intel/ixgbevf/ipsec.c", i32 287, i32 20}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/intel/ixgbevf/ipsec.c", i32 294, i32 20}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/intel/ixgbevf/ipsec.c", i32 309, i32 20}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/intel/ixgbevf/ipsec.c", i32 348, i32 20}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/intel/ixgbevf/ipsec.c", i32 362, i32 20}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/intel/ixgbevf/ipsec.c", i32 220, i32 19}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/intel/ixgbevf/ipsec.c", i32 225, i32 19}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/intel/ixgbevf/ipsec.c", i32 235, i32 19}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/intel/ixgbevf/ipsec.c", i32 249, i32 19}
!51 = !{ptr @aes_gcm_name, !52, !"aes_gcm_name", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/intel/ixgbevf/ipsec.c", i32 9, i32 19}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/intel/ixgbevf/ipsec.c", i32 401, i32 20}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/intel/ixgbevf/ipsec.c", i32 414, i32 20}
!57 = !{!"sp"}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i8 0, i8 2}
!68 = !{!"branch_weights", i32 1, i32 2000}
!69 = !{!"auto-init"}
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{i64 2149428488}
!72 = !{i64 2148194867, i64 2148194899, i64 2148194928, i64 2148194962, i64 2148194993, i64 2148195016}
!73 = !{i64 2149428754}
!74 = !{i64 2149831541}
