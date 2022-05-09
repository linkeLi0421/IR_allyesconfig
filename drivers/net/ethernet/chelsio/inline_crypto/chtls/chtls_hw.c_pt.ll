; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_hw.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.159, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.160, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.161, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.155, [0 x i32], %union.anon.156, i16, i16, %union.anon.157, %struct.refcount_struct, [0 x i32], %union.anon.158 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.155 = type { i32 }
%union.anon.156 = type { %struct.hlist_node }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.159 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.160 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.161 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.chtls_sock = type { ptr, ptr, ptr, ptr, %struct.sk_buff_head, ptr, ptr, ptr, ptr, %struct.kref, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, ptr, %struct.chtls_hws, %struct.synq, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.chtls_hws = type { %struct.sk_buff_head, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, %struct.tls_scmd, %union.anon.205 }
%struct.tls_scmd = type { i32, i32 }
%union.anon.205 = type { %struct.tls12_crypto_info_aes_gcm_256 }
%struct.tls12_crypto_info_aes_gcm_256 = type { %struct.tls_crypto_info, [8 x i8], [32 x i8], [4 x i8], [8 x i8] }
%struct.tls_crypto_info = type { i16, i16 }
%struct.synq = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.45, %union.anon.48, %union.anon.49, [48 x i8], %union.anon.50, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.52, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, ptr, %union.anon.47 }
%union.anon.47 = type { ptr }
%union.anon.48 = type { ptr }
%union.anon.49 = type { i64 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { i32, ptr }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.54, i32, i32, i32, i16, i16, %union.anon.56, i32, %union.anon.57, %union.anon.58, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.54 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i32 }
%union.anon.58 = type { i16 }
%struct.work_request_hdr = type { i32, i32, i64 }
%struct.cpl_set_tcb_field = type { %struct.work_request_hdr, %union.opcode_tid, i16, i16, i64, i64 }
%union.opcode_tid = type { i32 }
%struct.cxgb4_lld_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i16, i16, i32, i16, [4 x i16], ptr, ptr, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, ptr, i32, i8, i8, i8 }
%struct.cxgb4_virt_res = type { %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, i32, %struct.cxgb4_range }
%struct.cxgb4_range = type { i32, i32 }
%struct.chtls_dev = type { %struct.tls_toe_device, %struct.list_head, ptr, ptr, [32 x ptr], %struct.spinlock, ptr, ptr, i32, ptr, %struct.idr, %struct.idr, %struct.spinlock, [8 x ptr], [32 x ptr], ptr, %struct.sk_buff_head, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, %struct.key_map, i32, [104 x i8] }
%struct.tls_toe_device = type { [32 x i8], %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.key_map = type { ptr, i32, i32, i32, %struct.spinlock }
%struct.adapter = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i16, i16, %struct.adapter_params, %struct.cxgb4_virt_res, i32, ptr, %struct.msix_bmap, %struct.doorbell_stats, [36 x i8], %struct.sge, [4 x ptr], [4 x i8], ptr, i8, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, ptr, [8 x ptr], i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, [64 x i8], %struct.tid_info, ptr, %struct.spinlock, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i8, %struct.spinlock, %struct.mbox_list, ptr, %struct.mutex, ptr, i8, i8, ptr, %struct.ptp_clock_info, ptr, %struct.spinlock, %struct.spinlock, [48 x i8], %struct.spinlock, ptr, %struct.chcr_ktls, %struct.chcr_stats_debug, %struct.ch_ktls_stats_debug, %struct.ch_ipsec_stats_debug, i8, %struct.rhashtable, %struct.rhashtable_params, %struct.timer_list, %struct.work_struct, %struct.ethtool_dump, %struct.hma_data, ptr, %struct.vmcoredd_data, %struct.ch_thermal, ptr, ptr, ptr, [88 x i8] }
%struct.adapter_params = type { %struct.sge_params, %struct.tp_params, %struct.vpd_params, %struct.pf_resources, %struct.pci_params, %struct.devlog_params, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i8], [16 x i16], [32 x i16], [32 x i16], i8, i8, i32, %struct.arch_specific_params, i8, i8, i8, i8, i8, i32, i8, i32, i32, i32, i8, i8, i8, i8, [4 x i8], i8, i8 }
%struct.sge_params = type { i32, i32, i32 }
%struct.tp_params = type { i32, i32, i16, i32, [4 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.vpd_params = type { i32, [25 x i8], [17 x i8], [17 x i8], [13 x i8] }
%struct.pf_resources = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_params = type { i8, i8 }
%struct.devlog_params = type { i32, i32, i32 }
%struct.arch_specific_params = type { i8, i8, i8, i16, i16, i32, i16 }
%struct.msix_bmap = type { ptr, i32, %struct.spinlock }
%struct.doorbell_stats = type { i32, i32, i32 }
%struct.sge = type { [32 x %struct.sge_eth_txq], %struct.sge_eth_txq, [4 x %struct.sge_ctrl_txq], [32 x %struct.sge_eth_rxq], %struct.sge_rspq, ptr, ptr, [16 x i8], %struct.sge_rspq, %struct.spinlock, ptr, ptr, [4 x ptr], i16, i16, i16, i16, i16, i16, i16, [6 x i16], [4 x i8], i16, [8 x i16], i32, i32, i32, i32, i32, %struct.sge_idma_monitor_state, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, %struct.timer_list, i32, i32, [96 x i8] }
%struct.sge_eth_txq = type { %struct.sge_txq, ptr, i8, i8, i32, i32, i32, i32, i32, i32, [116 x i8] }
%struct.sge_txq = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, %struct.spinlock, i32, i16, i16, ptr, i32 }
%struct.sge_ctrl_txq = type { %struct.sge_txq, ptr, %struct.sk_buff_head, %struct.tasklet_struct, i8, [63 x i8] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.206, i32 }
%union.anon.206 = type { ptr }
%struct.sge_eth_rxq = type { %struct.sge_rspq, %struct.sge_fl, %struct.sge_eth_stats, ptr, [56 x i8] }
%struct.sge_fl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32 }
%struct.sge_eth_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sge_rspq = type { %struct.napi_struct, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.t4_lro_mgr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.t4_lro_mgr = type { i8, i32, i32, %struct.sk_buff_head }
%struct.sge_idma_monitor_state = type { i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.tid_info = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, i32, i32, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i32, [68 x i8] }
%struct.mbox_list = type { %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.chcr_ktls = type { %struct.refcount_struct }
%struct.chcr_stats_debug = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.ch_ktls_stats_debug = type { [4 x %struct.ch_ktls_port_stats_debug], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.ch_ktls_port_stats_debug = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.ch_ipsec_stats_debug = type { %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.ethtool_dump = type { i32, i32, i32, i32, [0 x i8] }
%struct.hma_data = type { i8, ptr, ptr }
%struct.vmcoredd_data = type { [44 x i8], i32, ptr }
%struct.ch_thermal = type { ptr, i32, i32 }
%struct.crypto_aes_ctx = type { [60 x i32], [60 x i32], i32 }
%struct.tls_key_wr = type { i32, i32, i32, i8, i8, i16 }
%struct.tls_key_req = type { %struct.tls_key_wr, %struct.ulp_mem_rw, %struct.ulptx_idata }
%struct.ulp_mem_rw = type { i32, i32, i32, i32 }
%struct.ulptx_idata = type { i32, i32 }

@chtls_set_quiesce_ctrl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_hw.c\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@chtls_init_kmap.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&cdev->kmap.lock\00", [47 x i8] zeroinitializer }, align 32
@free_tls_keyid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__set_tcb_field.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@send_or_defer.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls.h\00", [39 x i8] zeroinitializer }, align 32
@chtls_set_tcb_field.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@chtls_key_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013GCM: Invalid key length %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"chtls_key_info\00", [17 x i8] zeroinitializer }, align 32
@chtls_key_info._entry_ptr = internal global ptr @chtls_key_info._entry, section ".printk_index", align 4
@csk_flag.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 51, i64 52]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 148, i32 8 }
@___asan_gen_.12 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 174, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [60 x i8] c"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 547, i32 27 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [63 x i8] c"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_hw.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 296, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @chtls_key_info._entry, ptr @chtls_key_info._entry_ptr, ptr @.str, ptr @.str.1, ptr @chtls_init_kmap.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chtls_init_kmap.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chtls_key_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @chtls_set_tcb_field_rpl_skb(ptr noundef %sk, i16 noundef zeroext %word, i64 noundef %mask, i64 noundef %val, i8 noundef zeroext %cookie, i32 noundef %through_l2t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__alloc_skb(i32 noundef 48, i32 noundef 36032, i32 noundef 0, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @__set_tcb_field(ptr noundef %sk, ptr noundef nonnull %call.i, i16 noundef zeroext %word, i64 noundef %mask, i64 noundef %val, i8 noundef zeroext %cookie, i32 noundef 0)
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data.i, align 4
  %call.i10 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %tobool.not.i = icmp eq i32 %call.i10, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.do.end7.i_crit_edge

if.end.do.end7.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %if.end
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @send_or_defer.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @send_or_defer.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 547, ptr noundef nonnull @.str.1) #8
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %if.end.do.end7.i_crit_edge
  %2 = ptrtoint ptr %1 to i32
  %and.i = and i32 %2, -4
  %3 = inttoptr i32 %and.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %through_l2t)
  %tobool10.not.i = icmp eq i32 %through_l2t, 0
  %egress_dev13.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %egress_dev13.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %egress_dev13.i, align 4
  br i1 %tobool10.not.i, label %if.else.i, label %if.then11.i

if.then11.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %l2t_entry.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %l2t_entry.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %l2t_entry.i, align 8
  %call12.i = tail call i32 @cxgb4_l2t_send(ptr noundef %5, ptr noundef nonnull %call.i, ptr noundef %7) #8
  br label %cleanup

if.else.i:                                        ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %call14.i = tail call i32 @cxgb4_ofld_send(ptr noundef %5, ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then11.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__set_tcb_field(ptr noundef %sk, ptr nocapture noundef %skb, i16 noundef zeroext %word, i64 noundef %mask, i64 noundef %val, i8 noundef zeroext %cookie, i32 noundef %no_reply) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b16 = load i1, ptr @__set_tcb_field.__warned, align 1
  br i1 %.b16, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__set_tcb_field.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 50, ptr noundef nonnull @.str.1) #8
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %entry.do.end8_crit_edge
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i, label %__skb_put.exit, label %do.body3.i, !prof !32

do.body3.i:                                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #8, !srcloc !33
  unreachable

__skb_put.exit:                                   ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %1 to i32
  %and = and i32 %4, -4
  %5 = inttoptr i32 %and to ptr
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 48
  store ptr %add.ptr.i, ptr %tail.i.i, align 8
  %len9.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len9.i, align 4
  %add.i = add i32 %9, 48
  store i32 %add.i, ptr %len9.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 83886104, ptr %7, align 8
  %tid.i = getelementptr inbounds %struct.chtls_sock, ptr %5, i32 0, i32 19
  %11 = ptrtoint ptr %tid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tid.i, align 8
  %shl.i = shl i32 %12, 8
  %or.i = or i32 %shl.i, 3
  %wr_mid.i = getelementptr inbounds %struct.work_request_hdr, ptr %7, i32 0, i32 1
  %13 = ptrtoint ptr %wr_mid.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.i, ptr %wr_mid.i, align 4
  %wr_lo.i = getelementptr inbounds %struct.work_request_hdr, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %wr_lo.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %wr_lo.i, align 8
  %15 = load i32, ptr %tid.i, align 8
  %or5.i = or i32 %15, 83886080
  %ot.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %7, i32 0, i32 1
  %16 = ptrtoint ptr %ot.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or5.i, ptr %ot.i, align 8
  %17 = load i32, ptr %tid.i, align 8
  %shl9.i = shl i32 %17, 8
  %or12.i = or i32 %shl9.i, %or.i
  store i32 %or12.i, ptr %wr_mid.i, align 4
  %shl13.i = shl i32 %no_reply, 15
  %rss_qid.i = getelementptr inbounds %struct.chtls_sock, ptr %5, i32 0, i32 18
  %18 = ptrtoint ptr %rss_qid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rss_qid.i, align 4
  %or15.i = or i32 %19, %shl13.i
  %conv.i = trunc i32 %or15.i to i16
  %reply_ctrl.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %7, i32 0, i32 2
  %20 = ptrtoint ptr %reply_ctrl.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %reply_ctrl.i, align 4
  %conv18.i = zext i8 %cookie to i16
  %shl19.i = shl nuw nsw i16 %conv18.i, 5
  %or20.i = or i16 %shl19.i, %word
  %word_cookie.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %7, i32 0, i32 3
  %21 = ptrtoint ptr %word_cookie.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %or20.i, ptr %word_cookie.i, align 2
  %mask22.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %7, i32 0, i32 4
  %22 = ptrtoint ptr %mask22.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %mask, ptr %mask22.i, align 8
  %val23.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %7, i32 0, i32 5
  %23 = ptrtoint ptr %val23.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %val, ptr %val23.i, align 8
  %add.ptr.i17 = getelementptr %struct.cpl_set_tcb_field, ptr %7, i32 1
  %24 = ptrtoint ptr %add.ptr.i17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -2147483648, ptr %add.ptr.i17, align 4
  %len.i = getelementptr %struct.cpl_set_tcb_field, ptr %7, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %len.i, align 4
  %port_id = getelementptr inbounds %struct.chtls_sock, ptr %5, i32 0, i32 29
  %26 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %port_id, align 8
  %conv = zext i8 %27 to i16
  %shl.i18 = shl nuw nsw i16 %conv, 1
  %or.i19 = or i16 %shl.i18, 1
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %28 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %or.i19, ptr %queue_mapping1.i.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @chtls_set_tcb_tflag(ptr noundef %sk, i32 noundef %bit_pos, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sh_prom = zext i32 %bit_pos to i64
  %shl = shl nuw i64 1, %sh_prom
  %conv = sext i32 %val to i64
  %shl2 = shl i64 %conv, %sh_prom
  %call = tail call fastcc i32 @chtls_set_tcb_field(ptr noundef %sk, i16 noundef zeroext 1, i64 noundef %shl, i64 noundef %shl2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @chtls_set_tcb_field(ptr noundef %sk, i16 noundef zeroext %word, i64 noundef %mask, i64 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__alloc_skb(i32 noundef 48, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data, align 4
  %call6 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true, label %if.end.do.end15_crit_edge

if.end.do.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

land.lhs.true:                                    ; preds = %if.end
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end15_crit_edge, label %land.lhs.true10

land.lhs.true.do.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b48 = load i1, ptr @chtls_set_tcb_field.__warned, align 1
  br i1 %.b48, label %land.lhs.true10.do.end15_crit_edge, label %if.then12

land.lhs.true10.do.end15_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @chtls_set_tcb_field.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 78, ptr noundef nonnull @.str.1) #8
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %land.lhs.true10.do.end15_crit_edge, %land.lhs.true.do.end15_crit_edge, %if.end.do.end15_crit_edge
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, -4
  %3 = inttoptr i32 %and to ptr
  tail call fastcc void @__set_tcb_field(ptr noundef %sk, ptr noundef nonnull %call.i, i16 noundef zeroext %word, i64 noundef %mask, i64 noundef %val, i8 noundef zeroext 0, i32 noundef 1)
  %txq_idx = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %txq_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %txq_idx, align 8
  %.tr = trunc i32 %5 to i16
  %conv = shl i16 %.tr, 1
  %queue_mapping1.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 10
  %6 = ptrtoint ptr %queue_mapping1.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %queue_mapping1.i, align 8
  %wr_credits = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 12
  %7 = ptrtoint ptr %wr_credits to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wr_credits, align 4
  %sub18 = add i32 %8, -3
  store i32 %sub18, ptr %wr_credits, align 4
  %wr_unacked = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 13
  %9 = ptrtoint ptr %wr_unacked to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wr_unacked, align 8
  %add19 = add i32 %10, 3
  store i32 %add19, ptr %wr_unacked, align 8
  %next_wr.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %next_wr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %next_wr.i, align 8
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 21
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %users.i.i, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i, ptr %users.i.i, i32 1, ptr elementtype(i32) %users.i.i) #8, !srcloc !34
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.end15.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !35

do.end15.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.end15
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.skb_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !32

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.skb_get.exit.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.end15.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.end15.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %skb_get.exit.i

skb_get.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.skb_get.exit.i_crit_edge
  %wr_skb_head.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %wr_skb_head.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wr_skb_head.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %skb_get.exit.i.enqueue_wr.exit_crit_edge, label %if.else.i

skb_get.exit.i.enqueue_wr.exit_crit_edge:         ; preds = %skb_get.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enqueue_wr.exit

if.else.i:                                        ; preds = %skb_get.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %wr_skb_tail.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %wr_skb_tail.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wr_skb_tail.i, align 4
  %next_wr4.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3, i32 8
  br label %enqueue_wr.exit

enqueue_wr.exit:                                  ; preds = %if.else.i, %skb_get.exit.i.enqueue_wr.exit_crit_edge
  %next_wr4.sink.i = phi ptr [ %next_wr4.i, %if.else.i ], [ %wr_skb_head.i, %skb_get.exit.i.enqueue_wr.exit_crit_edge ]
  %18 = ptrtoint ptr %next_wr4.sink.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %next_wr4.sink.i, align 8
  %wr_skb_tail5.i = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 6
  %19 = ptrtoint ptr %wr_skb_tail5.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %wr_skb_tail5.i, align 4
  %egress_dev = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %egress_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %egress_dev, align 4
  %call20 = tail call i32 @cxgb4_ofld_send(ptr noundef %21, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %if.then22, label %enqueue_wr.exit.if.end23_crit_edge

enqueue_wr.exit.if.end23_crit_edge:               ; preds = %enqueue_wr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then22:                                        ; preds = %enqueue_wr.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %enqueue_wr.exit.if.end23_crit_edge
  %22 = tail call i32 @llvm.smin.i32(i32 %call20, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %22, %if.end23 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @chtls_set_quiesce_ctrl(ptr noundef %sk, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__alloc_skb(i32 noundef 48, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.end.do.end12_crit_edge

if.end.do.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

land.lhs.true:                                    ; preds = %if.end
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true7

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b31 = load i1, ptr @chtls_set_quiesce_ctrl.__warned, align 1
  br i1 %.b31, label %land.lhs.true7.do.end12_crit_edge, label %if.then9

land.lhs.true7.do.end12_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @chtls_set_quiesce_ctrl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 148, ptr noundef nonnull @.str.1) #8
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %land.lhs.true7.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %if.end.do.end12_crit_edge
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, -4
  %3 = inttoptr i32 %and to ptr
  tail call fastcc void @__set_tcb_field(ptr noundef %sk, ptr noundef nonnull %call.i, i16 noundef zeroext 1, i64 noundef 32768, i64 noundef 0, i8 noundef zeroext 0, i32 noundef 1)
  %port_id = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_id, align 8
  %conv = zext i8 %5 to i16
  %shl.i = shl nuw nsw i16 %conv, 1
  %or.i = or i16 %shl.i, 1
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 10
  %6 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %or.i, ptr %queue_mapping1.i.i, align 8
  %egress_dev = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %egress_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %egress_dev, align 4
  %call15 = tail call i32 @cxgb4_ofld_send(ptr noundef %8, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %if.then17, label %do.end12.cleanup_crit_edge

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %do.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_ofld_send(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @chtls_init_kmap(ptr noundef %cdev, ptr nocapture noundef readonly %lldi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vr = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lldi, i32 0, i32 4
  %0 = ptrtoint ptr %vr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vr, align 4
  %size = getelementptr inbounds %struct.cxgb4_virt_res, ptr %1, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %div23 = lshr i32 %3, 6
  %sub = add nuw nsw i32 %div23, 31
  %div124 = lshr i32 %sub, 5
  %kmap = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 24
  %size2 = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 24, i32 3
  %4 = ptrtoint ptr %size2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div23, ptr %size2, align 4
  %available = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 24, i32 2
  %5 = ptrtoint ptr %available to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div124, ptr %available, align 8
  %mul = shl nuw nsw i32 %div124, 2
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %mul, i32 noundef 3520, i32 noundef -1) #11
  %6 = ptrtoint ptr %kmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i, ptr %kmap, align 8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %vr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vr, align 4
  %key8 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %key8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %key8, align 4
  %start10 = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 24, i32 1
  %11 = ptrtoint ptr %start10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %start10, align 4
  %lock = getelementptr inbounds %struct.chtls_dev, ptr %cdev, i32 0, i32 24, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @chtls_init_kmap.__key, i16 noundef signext 3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_tls_keyid(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b50 = load i1, ptr @free_tls_keyid.__warned, align 1
  br i1 %.b50, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @free_tls_keyid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 207, ptr noundef nonnull @.str.1) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, -4
  %3 = inttoptr i32 %and to ptr
  %cdev10 = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cdev10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdev10, align 4
  %kmap = getelementptr inbounds %struct.chtls_dev, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %kmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kmap, align 8
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %do.end7.cleanup_crit_edge, label %if.end13

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %do.end7
  %egress_dev = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %egress_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %egress_dev, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 2304
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i.i.i, align 8
  %lock = getelementptr inbounds %struct.chtls_dev, ptr %5, i32 0, i32 24, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %rxkey = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 37, i32 17
  %12 = ptrtoint ptr %rxkey to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rxkey, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp = icmp sgt i32 %13, -1
  br i1 %cmp, label %if.then16, label %if.end13.if.end21_crit_edge

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %kmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %kmap, align 8
  %rem.i = and i32 %13, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %13, 5
  %add.ptr.i = getelementptr i32, ptr %15, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %17, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  %tls_key = getelementptr inbounds %struct.adapter, ptr %11, i32 0, i32 73, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tls_key, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %tls_key, i32 1, i32 3, i32 1) #8
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tls_key, ptr %tls_key, i32 1, ptr elementtype(i32) %tls_key) #8, !srcloc !36
  %19 = ptrtoint ptr %rxkey to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %rxkey, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end13.if.end21_crit_edge
  %txkey = getelementptr inbounds %struct.chtls_sock, ptr %3, i32 0, i32 37, i32 16
  %20 = ptrtoint ptr %txkey to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %txkey, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp22 = icmp sgt i32 %21, -1
  br i1 %cmp22, label %if.then23, label %if.end21.if.end30_crit_edge

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %kmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %kmap, align 8
  %rem.i51 = and i32 %21, 31
  %shl.i52 = shl nuw i32 1, %rem.i51
  %div2.i53 = lshr i32 %21, 5
  %add.ptr.i54 = getelementptr i32, ptr %23, i32 %div2.i53
  %neg.i55 = xor i32 %shl.i52, -1
  %24 = ptrtoint ptr %add.ptr.i54 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i54, align 4
  %and.i56 = and i32 %25, %neg.i55
  store i32 %and.i56, ptr %add.ptr.i54, align 4
  %tls_key28 = getelementptr inbounds %struct.adapter, ptr %11, i32 0, i32 73, i32 8
  %call.i.i57 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tls_key28, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %tls_key28, i32 1, i32 3, i32 1) #8
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tls_key28, ptr %tls_key28, i32 1, ptr elementtype(i32) %tls_key28) #8, !srcloc !36
  %27 = ptrtoint ptr %txkey to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %txkey, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then23, %if.end21.if.end30_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end7.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @keyid_to_addr(i32 noundef %start_addr, i32 noundef %keyid) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %keyid, 6
  %add = add i32 %mul, %start_addr
  %shr = ashr i32 %add, 5
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @chtls_setkey(ptr noundef %csk, i32 noundef %keylen, i32 noundef %optname, i32 noundef %cipher_type) local_unnamed_addr #0 align 64 {
entry:
  %key.i = alloca [32 x i8], align 1
  %ghash_h.i = alloca [16 x i8], align 1
  %aes.i = alloca %struct.crypto_aes_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev1 = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 1
  %0 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev1, align 4
  %2 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csk, align 8
  %add4 = add i32 %keylen, 63
  %div168 = and i32 %add4, -32
  %add11 = add i32 %div168, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %optname)
  %cmp = icmp eq i32 %optname, 1
  br i1 %cmp, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then:                                          ; preds = %entry
  tail call void @lock_sock_nested(ptr noundef %3, i32 noundef 0) #8
  %qlen.i = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then12

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 @chtls_push_frames(ptr noundef %csk, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then.if.end_crit_edge
  tail call void @release_sock(ptr noundef %3) #8
  br label %if.end14

if.end14:                                         ; preds = %if.end, %entry.if.end14_crit_edge
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add11, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool16.not = icmp eq ptr %call.i, null
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %egress_dev.i = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 3
  %6 = ptrtoint ptr %egress_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %egress_dev.i, align 4
  %8 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cdev1, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 2304
  %10 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i.i.i.i, align 8
  %kmap.i = getelementptr inbounds %struct.chtls_dev, ptr %9, i32 0, i32 24
  %lock.i = getelementptr inbounds %struct.chtls_dev, ptr %9, i32 0, i32 24, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #8
  %12 = ptrtoint ptr %kmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %kmap.i, align 8
  %size.i = getelementptr inbounds %struct.chtls_dev, ptr %9, i32 0, i32 24, i32 3
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 4
  %call4.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %13, i32 noundef %15) #8
  %16 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.i, i32 %17)
  %cmp.i = icmp ult i32 %call4.i, %17
  br i1 %cmp.i, label %if.then.i, label %get_new_keyid.exit.thread

get_new_keyid.exit.thread:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #8
  br label %out_nokey

if.then.i:                                        ; preds = %if.end18
  %18 = ptrtoint ptr %kmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %kmap.i, align 8
  %rem.i.i = and i32 %call4.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %call4.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %19, i32 %div2.i.i
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %21, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %optname)
  %cmp9.i = icmp eq i32 %optname, 2
  br i1 %cmp9.i, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %rxkey.i = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 37, i32 17
  %22 = ptrtoint ptr %rxkey.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call4.i, ptr %rxkey.i, align 4
  br label %get_new_keyid.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %txkey.i = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 37, i32 16
  %23 = ptrtoint ptr %txkey.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call4.i, ptr %txkey.i, align 8
  br label %get_new_keyid.exit

get_new_keyid.exit:                               ; preds = %if.else.i, %if.then10.i
  %tls_key.i = getelementptr inbounds %struct.adapter, ptr %11, i32 0, i32 73, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tls_key.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %tls_key.i, i32 1, i32 3, i32 1) #8
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tls_key.i, ptr %tls_key.i, i32 1, ptr elementtype(i32) %tls_key.i) #8, !srcloc !37
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp20 = icmp slt i32 %call4.i, 0
  br i1 %cmp20, label %get_new_keyid.exit.out_nokey_crit_edge, label %if.end22

get_new_keyid.exit.out_nokey_crit_edge:           ; preds = %get_new_keyid.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_nokey

if.end22:                                         ; preds = %get_new_keyid.exit
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %25 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool.i.not.i.i, label %__skb_put_zero.exit, label %do.body3.i.i, !prof !32

do.body3.i.i:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #8, !srcloc !33
  unreachable

__skb_put_zero.exit:                              ; preds = %if.end22
  %mul.i = shl i32 %call4.i, 6
  %start = getelementptr inbounds %struct.chtls_dev, ptr %1, i32 0, i32 24, i32 1
  %27 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %start, align 4
  %add.i = add i32 %28, %mul.i
  %shr.i = ashr i32 %add.i, 5
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %29 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i170 = getelementptr i8, ptr %30, i32 %add11
  store ptr %add.ptr.i.i170, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %31 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %32, %add11
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %33 = call ptr @memset(ptr %30, i32 0, i32 %add11)
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 77594624, ptr %30, align 4
  %sub26 = add i32 %div168, 63
  %div27 = sdiv i32 %sub26, 16
  %tid = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 19
  %35 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tid, align 8
  %shl = shl i32 %36, 8
  %or = or i32 %shl, %div27
  %flowid_len16 = getelementptr inbounds %struct.tls_key_wr, ptr %30, i32 0, i32 1
  %37 = ptrtoint ptr %flowid_len16 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or, ptr %flowid_len16, align 4
  %protocol = getelementptr inbounds %struct.tls_key_wr, ptr %30, i32 0, i32 4
  %38 = ptrtoint ptr %protocol to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %protocol, align 1
  %mfs = getelementptr inbounds %struct.tls_key_wr, ptr %30, i32 0, i32 5
  %39 = ptrtoint ptr %mfs to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 16384, ptr %mfs, align 2
  %conv = trunc i32 %optname to i8
  %reneg_to_write_rx = getelementptr inbounds %struct.tls_key_wr, ptr %30, i32 0, i32 3
  %40 = ptrtoint ptr %reneg_to_write_rx to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv, ptr %reneg_to_write_rx, align 4
  %req = getelementptr inbounds %struct.tls_key_req, ptr %30, i32 0, i32 1
  %41 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 62914560, ptr %req, align 4
  %42 = load i32, ptr %tid, align 8
  %shl34 = shl i32 %42, 8
  %sub37 = add i32 %div168, 47
  %div38169 = lshr i32 %sub37, 4
  %or39 = or i32 %shl34, %div38169
  %len16 = getelementptr inbounds %struct.tls_key_req, ptr %30, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %len16 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or39, ptr %len16, align 4
  %shr = ashr i32 %add4, 5
  %dlen = getelementptr inbounds %struct.tls_key_req, ptr %30, i32 0, i32 1, i32 2
  %44 = ptrtoint ptr %dlen to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %shr, ptr %dlen, align 4
  %lock_addr = getelementptr inbounds %struct.tls_key_req, ptr %30, i32 0, i32 1, i32 3
  %45 = ptrtoint ptr %lock_addr to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %shr.i, ptr %lock_addr, align 4
  %sc_imm = getelementptr inbounds %struct.tls_key_req, ptr %30, i32 0, i32 2
  %46 = ptrtoint ptr %sc_imm to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -2130706432, ptr %sc_imm, align 4
  %len46 = getelementptr inbounds %struct.tls_key_req, ptr %30, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %len46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %div168, ptr %len46, align 4
  tail call void @lock_sock_nested(ptr noundef %3, i32 noundef 0) #8
  %add.ptr = getelementptr %struct.tls_key_req, ptr %30, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key.i) #8
  %48 = call ptr @memset(ptr %key.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ghash_h.i) #8
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %aes.i) #8
  %49 = call ptr @memset(ptr %aes.i, i32 255, i32 484)
  %50 = add i32 %keylen, 47
  %51 = zext i32 %cipher_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cipher_type, label %do.end.i [
    i32 51, label %sw.bb.i
    i32 52, label %sw.bb9.i
  ]

sw.bb.i:                                          ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #10
  %key3.i = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 37, i32 22, i32 0, i32 2
  %52 = call ptr @memcpy(ptr %key.i, ptr %key3.i, i32 %keylen)
  %salt7.i = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 37, i32 22, i32 0, i32 2, i32 16
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #10
  %key13.i = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 37, i32 22, i32 0, i32 2
  %53 = call ptr @memcpy(ptr %key.i, ptr %key13.i, i32 %keylen)
  %salt17.i = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 37, i32 22, i32 0, i32 3
  br label %sw.epilog.i

do.end.i:                                         ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i171 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %keylen) #12
  br label %chtls_key_info.exit.thread

sw.epilog.i:                                      ; preds = %sw.bb9.i, %sw.bb.i
  %kctx_mackey_size.0.i = phi i32 [ 3, %sw.bb9.i ], [ 0, %sw.bb.i ]
  %ck_size.0.i = phi i32 [ 2, %sw.bb9.i ], [ 0, %sw.bb.i ]
  %salt.0.i = phi ptr [ %salt17.i, %sw.bb9.i ], [ %salt7.i, %sw.bb.i ]
  %key_p.0.i = phi ptr [ %key13.i, %sw.bb9.i ], [ %key3.i, %sw.bb.i ]
  %call21.i = call i32 @aes_expandkey(ptr noundef nonnull %aes.i, ptr noundef nonnull %key.i, i32 noundef %keylen) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool.not.i, label %if.end.i173, label %sw.epilog.i.chtls_key_info.exit.thread_crit_edge

sw.epilog.i.chtls_key_info.exit.thread_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %chtls_key_info.exit.thread

if.end.i173:                                      ; preds = %sw.epilog.i
  %54 = call ptr @memset(ptr %ghash_h.i, i32 0, i32 16)
  call void @aes_encrypt(ptr noundef nonnull %aes.i, ptr noundef nonnull %ghash_h.i, ptr noundef nonnull %ghash_h.i) #8
  %55 = call ptr @memset(ptr %aes.i, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %aes.i) #8, !srcloc !38
  %56 = trunc i32 %50 to i16
  %conv.i = and i16 %56, -16
  %keylen26.i = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 37, i32 10
  %57 = ptrtoint ptr %keylen26.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv.i, ptr %keylen26.i, align 8
  br i1 %cmp9.i, label %if.then28.i, label %if.else.i174

if.then28.i:                                      ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_pc() #10
  %shl30.i = shl nuw nsw i32 %ck_size.0.i, 3
  %or.i = or i32 %shl30.i, %kctx_mackey_size.0.i
  %58 = shl i32 %50, 23
  %shl35.i = and i32 %58, -134217728
  %or34.i = or i32 %or.i, %shl35.i
  %or36.i = or i32 %or34.i, 149248
  %59 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or36.i, ptr %add.ptr, align 8
  %iv_to_auth.i.i = getelementptr %struct.tls_key_req, ptr %30, i32 1, i32 0, i32 2
  %60 = ptrtoint ptr %iv_to_auth.i.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 216316283413825552, ptr %iv_to_auth.i.i, align 8
  br label %if.end50

if.else.i174:                                     ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_pc() #10
  %shl37.i = shl nuw nsw i32 %ck_size.0.i, 6
  %shl39.i = shl nuw nsw i32 %kctx_mackey_size.0.i, 2
  %or38.i = or i32 %shl37.i, %shl39.i
  %61 = shl i32 %50, 20
  %shl45.i = and i32 %61, -16777216
  %or43.i = or i32 %or38.i, %shl45.i
  %or46.i = or i32 %or43.i, 1025
  %62 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or46.i, ptr %add.ptr, align 8
  br label %if.end50

chtls_key_info.exit.thread:                       ; preds = %sw.epilog.i.chtls_key_info.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ %call21.i, %sw.epilog.i.chtls_key_info.exit.thread_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %aes.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ghash_h.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key.i) #8
  br label %out_notcb

if.end50:                                         ; preds = %if.else.i174, %if.then28.i
  %salt49.i = getelementptr %struct.tls_key_req, ptr %30, i32 1, i32 0, i32 1
  %63 = ptrtoint ptr %salt.0.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %salt.0.i, align 1
  %65 = ptrtoint ptr %salt49.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %salt49.i, align 4
  %key51.i = getelementptr %struct.tls_key_req, ptr %30, i32 1, i32 1
  %66 = call ptr @memcpy(ptr %key51.i, ptr %key_p.0.i, i32 %keylen)
  %add.ptr.i = getelementptr i8, ptr %key51.i, i32 %keylen
  %67 = call ptr @memcpy(ptr %add.ptr.i, ptr %ghash_h.i, i32 16)
  %68 = call ptr @memset(ptr %key_p.0.i, i32 0, i32 %keylen)
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %aes.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ghash_h.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key.i) #8
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 72
  %69 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %sk_user_data.i, align 4
  %call.i175 = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175)
  %tobool.not.i176 = icmp eq i32 %call.i175, 0
  br i1 %tobool.not.i176, label %land.lhs.true.i, label %if.end50.do.end7.i_crit_edge

if.end50.do.end7.i_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %if.end50
  %call2.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @csk_flag.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i177

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

if.then.i177:                                     ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @csk_flag.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 483, ptr noundef nonnull @.str.1) #8
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i177, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %if.end50.do.end7.i_crit_edge
  %71 = ptrtoint ptr %70 to i32
  %and.i = and i32 %71, -4
  %72 = inttoptr i32 %and.i to ptr
  %flags.i.i = getelementptr inbounds %struct.chtls_sock, ptr %72, i32 0, i32 10
  %73 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %flags.i.i, align 4
  %75 = and i32 %74, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.i.not.i = icmp eq i32 %75, 0
  br i1 %tobool.i.not.i, label %do.end7.i.if.end56_crit_edge, label %csk_flag.exit

do.end7.i.if.end56_crit_edge:                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

csk_flag.exit:                                    ; preds = %do.end7.i
  %76 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %flags.i.i, align 4
  %78 = and i32 %77, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool52.not = icmp eq i32 %78, 0
  br i1 %tobool52.not, label %csk_flag.exit.if.end56_crit_edge, label %csk_flag.exit.out_notcb_crit_edge, !prof !32

csk_flag.exit.out_notcb_crit_edge:                ; preds = %csk_flag.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_notcb

csk_flag.exit.if.end56_crit_edge:                 ; preds = %csk_flag.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.end56:                                         ; preds = %csk_flag.exit.if.end56_crit_edge, %do.end7.i.if.end56_crit_edge
  %txqid = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 37, i32 1
  %79 = ptrtoint ptr %txqid to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %txqid, align 8
  %conv57 = zext i8 %80 to i16
  %shl.i = shl nuw nsw i16 %conv57, 1
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 10
  %81 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %shl.i, ptr %queue_mapping1.i.i, align 8
  %wr_credits = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 12
  %82 = ptrtoint ptr %wr_credits to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %wr_credits, align 4
  %sub61 = sub i32 %83, %div27
  store i32 %sub61, ptr %wr_credits, align 4
  %wr_unacked = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 13
  %84 = ptrtoint ptr %wr_unacked to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %wr_unacked, align 8
  %add65 = add i32 %85, %div27
  store i32 %add65, ptr %wr_unacked, align 8
  %next_wr.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 8
  %86 = ptrtoint ptr %next_wr.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %next_wr.i, align 8
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 21
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %users.i.i, i32 1, i32 3, i32 1) #8
  %87 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i, ptr %users.i.i, i32 1, ptr elementtype(i32) %users.i.i) #8, !srcloc !34
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %87, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end56.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !35

if.end56.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end56
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %88 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %88)
  %.not.i.i.i.i.i = icmp sgt i32 %88, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.skb_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !32

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.skb_get.exit.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end56.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end56.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %users.i.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %skb_get.exit.i

skb_get.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.skb_get.exit.i_crit_edge
  %wr_skb_head.i = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 5
  %89 = ptrtoint ptr %wr_skb_head.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %wr_skb_head.i, align 8
  %tobool.not.i180 = icmp eq ptr %90, null
  br i1 %tobool.not.i180, label %skb_get.exit.i.enqueue_wr.exit_crit_edge, label %if.else.i181

skb_get.exit.i.enqueue_wr.exit_crit_edge:         ; preds = %skb_get.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enqueue_wr.exit

if.else.i181:                                     ; preds = %skb_get.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %wr_skb_tail.i = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 6
  %91 = ptrtoint ptr %wr_skb_tail.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %wr_skb_tail.i, align 4
  %next_wr4.i = getelementptr inbounds %struct.sk_buff, ptr %92, i32 0, i32 3, i32 8
  br label %enqueue_wr.exit

enqueue_wr.exit:                                  ; preds = %if.else.i181, %skb_get.exit.i.enqueue_wr.exit_crit_edge
  %next_wr4.sink.i = phi ptr [ %next_wr4.i, %if.else.i181 ], [ %wr_skb_head.i, %skb_get.exit.i.enqueue_wr.exit_crit_edge ]
  %93 = ptrtoint ptr %next_wr4.sink.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call.i, ptr %next_wr4.sink.i, align 8
  %wr_skb_tail5.i = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 6
  %94 = ptrtoint ptr %wr_skb_tail5.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call.i, ptr %wr_skb_tail5.i, align 4
  %95 = ptrtoint ptr %egress_dev.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %egress_dev.i, align 4
  %call66 = call i32 @cxgb4_ofld_send(ptr noundef %96, ptr noundef nonnull %call.i) #8
  %scmd.i = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 37, i32 21
  %97 = ptrtoint ptr %scmd.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1615397377, ptr %scmd.i, align 8
  %ivgen_hdrlen.i = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 37, i32 21, i32 1
  %98 = ptrtoint ptr %ivgen_hdrlen.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1073807360, ptr %ivgen_hdrlen.i, align 4
  br i1 %cmp9.i, label %if.then69, label %if.else

if.then69:                                        ; preds = %enqueue_wr.exit
  %conv.i183193 = zext i32 %call4.i to i64
  %call.i184 = call fastcc i32 @chtls_set_tcb_field(ptr noundef %3, i16 noundef zeroext 31, i64 noundef 4294967295, i64 noundef %conv.i183193) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i184)
  %tobool71.not = icmp eq i32 %call.i184, 0
  br i1 %tobool71.not, label %if.end73, label %if.then69.out_notcb_crit_edge

if.then69.out_notcb_crit_edge:                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_notcb

if.end73:                                         ; preds = %if.then69
  %call74 = call fastcc i32 @chtls_set_tcb_field(ptr noundef %3, i16 noundef zeroext 0, i64 noundef 4080, i64 noundef 2160)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end73.out_notcb_crit_edge

if.end73.out_notcb_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_notcb

if.end77:                                         ; preds = %if.end73
  %call.i185 = call fastcc i32 @chtls_set_tcb_field(ptr noundef %3, i16 noundef zeroext 28, i64 noundef -1, i64 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %tobool79.not = icmp eq i32 %call.i185, 0
  br i1 %tobool79.not, label %if.end81, label %if.end77.out_notcb_crit_edge

if.end77.out_notcb_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_notcb

if.end81:                                         ; preds = %if.end77
  %call.i186 = call fastcc i32 @chtls_set_tcb_field(ptr noundef %3, i16 noundef zeroext 1, i64 noundef 32768, i64 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i186)
  %tobool83.not = icmp eq i32 %call.i186, 0
  br i1 %tobool83.not, label %if.end85, label %if.end81.out_notcb_crit_edge

if.end81.out_notcb_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_notcb

if.end85:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %rxkey = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 37, i32 17
  %99 = ptrtoint ptr %rxkey to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %call4.i, ptr %rxkey, align 4
  br label %if.end89

if.else:                                          ; preds = %enqueue_wr.exit
  call void @__sanitizer_cov_trace_pc() #10
  %tx_seq_no = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 37, i32 20
  %100 = ptrtoint ptr %tx_seq_no to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 0, ptr %tx_seq_no, align 8
  %txkey = getelementptr inbounds %struct.chtls_sock, ptr %csk, i32 0, i32 37, i32 16
  %101 = ptrtoint ptr %txkey to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %call4.i, ptr %txkey, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.else, %if.end85
  call void @release_sock(ptr noundef %3) #8
  br label %cleanup

out_notcb:                                        ; preds = %if.end81.out_notcb_crit_edge, %if.end77.out_notcb_crit_edge, %if.end73.out_notcb_crit_edge, %if.then69.out_notcb_crit_edge, %csk_flag.exit.out_notcb_crit_edge, %chtls_key_info.exit.thread
  %skb.0 = phi ptr [ %call.i, %csk_flag.exit.out_notcb_crit_edge ], [ null, %if.then69.out_notcb_crit_edge ], [ null, %if.end73.out_notcb_crit_edge ], [ null, %if.end77.out_notcb_crit_edge ], [ null, %if.end81.out_notcb_crit_edge ], [ %call.i, %chtls_key_info.exit.thread ]
  %ret.1 = phi i32 [ 0, %csk_flag.exit.out_notcb_crit_edge ], [ %call.i184, %if.then69.out_notcb_crit_edge ], [ %call74, %if.end73.out_notcb_crit_edge ], [ %call.i185, %if.end77.out_notcb_crit_edge ], [ %call.i186, %if.end81.out_notcb_crit_edge ], [ %retval.0.i.ph, %chtls_key_info.exit.thread ]
  call void @release_sock(ptr noundef %3) #8
  call void @free_tls_keyid(ptr noundef %3)
  br label %out_nokey

out_nokey:                                        ; preds = %out_notcb, %get_new_keyid.exit.out_nokey_crit_edge, %get_new_keyid.exit.thread
  %skb.1 = phi ptr [ %skb.0, %out_notcb ], [ %call.i, %get_new_keyid.exit.out_nokey_crit_edge ], [ %call.i, %get_new_keyid.exit.thread ]
  %ret.2 = phi i32 [ %ret.1, %out_notcb ], [ -28, %get_new_keyid.exit.out_nokey_crit_edge ], [ -28, %get_new_keyid.exit.thread ]
  call void @kfree_skb_reason(ptr noundef %skb.1, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %out_nokey, %if.end89, %if.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out_nokey ], [ 0, %if.end89 ], [ -12, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @chtls_push_frames(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_l2t_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aes_expandkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aes_encrypt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !13, !14, !16, !18, !19, !20, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_hw.c", i32 148, i32 8}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @chtls_init_kmap.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_hw.c", i32 174, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__warned", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_hw.c", i32 207, i32 27}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_hw.c", i32 50, i32 8}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls.h", i32 547, i32 27}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_hw.c", i32 78, i32 8}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls_hw.c", i32 296, i32 3}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @chtls_key_info._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @chtls_key_info._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/chelsio/inline_crypto/chtls/chtls.h", i32 483, i32 27}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{i64 2154571582, i64 2154572070, i64 2154571619, i64 2154571675, i64 2154571709, i64 2154571733, i64 2154571774, i64 2154571795, i64 2154571823, i64 2154571857}
!34 = !{i64 2148351675, i64 2148351707, i64 2148351736, i64 2148351770, i64 2148351801, i64 2148351824}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{i64 2148352610, i64 2148352636, i64 2148352665, i64 2148352699, i64 2148352730, i64 2148352753}
!37 = !{i64 2148350145, i64 2148350171, i64 2148350200, i64 2148350234, i64 2148350265, i64 2148350288}
!38 = !{i64 2149020658}
