; ModuleID = '/llk/IR_all_yes/net/batman-adv/network-coding.c_pt.bc'
source_filename = "../net/batman-adv/network-coding.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.5 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.batadv_coded_packet = type <{ i8, i8, i8, i8, [6 x i8], [6 x i8], i32, i8, i8, [6 x i8], [6 x i8], [6 x i8], i32, i16 }>
%struct.batadv_hard_iface = type { %struct.list_head, i8, i8, i32, ptr, %struct.kref, %struct.packet_type, ptr, %struct.callback_head, %struct.atomic_t, %struct.batadv_hard_iface_bat_iv, %struct.batadv_hard_iface_bat_v, %struct.hlist_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.batadv_hard_iface_bat_iv = type { ptr, i32, %struct.atomic_t, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.batadv_hard_iface_bat_v = type { %struct.atomic_t, %struct.atomic_t, ptr, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, i32, %struct.atomic_t, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.sk_buff = type { %union.anon, %union.anon.97, %union.anon.98, [48 x i8], %union.anon.99, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.101, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.97 = type { ptr }
%union.anon.98 = type { i64 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, ptr }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.103, i32, i32, i32, i16, i16, %union.anon.105, i32, %union.anon.106, %union.anon.107, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.103 = type { i32 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.batadv_hashtable = type { ptr, ptr, i32, %struct.atomic_t }
%struct.batadv_nc_path = type { %struct.hlist_node, %struct.callback_head, %struct.kref, %struct.list_head, %struct.spinlock, [6 x i8], [6 x i8], i32 }
%struct.batadv_nc_packet = type { %struct.list_head, i32, i32, ptr, ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.batadv_unicast_packet = type { i8, i8, i8, i8, [6 x i8] }
%struct.batadv_priv = type { %struct.atomic_t, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.atomic_t, %struct.delayed_work, ptr, ptr, %struct.hlist_head, %struct.spinlock, %struct.batadv_priv_bla, ptr, %struct.batadv_priv_gw, %struct.batadv_priv_tt, %struct.batadv_priv_tvlv, %struct.batadv_priv_dat, %struct.batadv_priv_mcast, %struct.atomic_t, %struct.batadv_priv_nc, %struct.batadv_priv_bat_v }
%struct.batadv_priv_bla = type { %struct.atomic_t, ptr, ptr, [6 x i8], i32, %struct.atomic_t, [16 x %struct.batadv_bcast_duplist_entry], i32, %struct.spinlock, %struct.batadv_bla_claim_dst, %struct.delayed_work }
%struct.batadv_bcast_duplist_entry = type { [6 x i8], i32, i32 }
%struct.batadv_bla_claim_dst = type { [3 x i8], i8, i16 }
%struct.batadv_priv_gw = type { %struct.hlist_head, %struct.spinlock, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.batadv_priv_tt = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.list_head, ptr, ptr, %struct.hlist_head, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, i16, %struct.spinlock, %struct.spinlock, %struct.delayed_work }
%struct.batadv_priv_tvlv = type { %struct.hlist_head, %struct.hlist_head, %struct.spinlock, %struct.spinlock }
%struct.batadv_priv_dat = type { i16, ptr, %struct.delayed_work }
%struct.batadv_priv_mcast = type { %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.batadv_mcast_mla_flags, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.delayed_work }
%struct.batadv_mcast_mla_flags = type { %struct.batadv_mcast_querier_state, %struct.batadv_mcast_querier_state, i8, i8 }
%struct.batadv_mcast_querier_state = type { i8 }
%struct.batadv_priv_nc = type { %struct.delayed_work, i8, i32, i32, i32, i32, ptr, ptr }
%struct.batadv_priv_bat_v = type { ptr, i32, %struct.atomic_t, %struct.mutex, %struct.delayed_work }
%struct.batadv_orig_node = type { [6 x i8], %struct.hlist_head, ptr, i16, i32, i32, %struct.spinlock, i8, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, i32, i32, %struct.atomic_t, ptr, i16, %struct.spinlock, %struct.spinlock, [2 x i32], i32, %struct.hlist_head, %struct.spinlock, %struct.hlist_node, ptr, %struct.spinlock, %struct.kref, %struct.callback_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, [8 x %struct.batadv_frag_table_entry], %struct.hlist_head, %struct.spinlock, %struct.batadv_orig_bat_iv }
%struct.batadv_frag_table_entry = type { %struct.hlist_head, %struct.spinlock, i32, i16, i16, i16 }
%struct.batadv_orig_bat_iv = type { %struct.spinlock }
%struct.batadv_nc_node = type { %struct.list_head, [6 x i8], %struct.kref, %struct.callback_head, ptr, i32 }
%struct.batadv_orig_ifinfo = type { %struct.hlist_node, ptr, ptr, i32, i8, i32, i32, %struct.batadv_orig_ifinfo_bat_iv, %struct.kref, %struct.callback_head }
%struct.batadv_orig_ifinfo_bat_iv = type { [2 x i32], i8 }
%struct.batadv_ogm_packet = type { i8, i8, i8, i8, i32, [6 x i8], [6 x i8], i8, i8, i16 }
%struct.batadv_neigh_node = type { %struct.hlist_node, ptr, [6 x i8], %struct.hlist_head, %struct.spinlock, ptr, i32, ptr, %struct.kref, %struct.callback_head }
%struct.batadv_neigh_ifinfo = type { %struct.hlist_node, ptr, %struct.batadv_neigh_ifinfo_bat_iv, %struct.batadv_neigh_ifinfo_bat_v, i8, %struct.kref, %struct.callback_head }
%struct.batadv_neigh_ifinfo_bat_iv = type { [5 x i8], i8, i8, [2 x i32], i8 }
%struct.batadv_neigh_ifinfo_bat_v = type { i32, i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@batadv_nc_coding_hash_lock_class_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@batadv_nc_decoding_hash_lock_class_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@batadv_nc_mesh_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&bat_priv->nc.work)->work)\00", [49 x i8] zeroinitializer }, align 32
@batadv_nc_mesh_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&bat_priv->nc.work)->timer\00", [35 x i8] zeroinitializer }, align 32
@batadv_nc_init_orig.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&orig_node->in_coding_list_lock\00", [32 x i8] zeroinitializer }, align 32
@batadv_nc_init_orig.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&orig_node->out_coding_list_lock\00", [63 x i8] zeroinitializer }, align 32
@batadv_event_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Removing nc_node %pM -> %pM\0A\00", [35 x i8] zeroinitializer }, align 32
@batadv_nc_purge_orig_hash.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/batman-adv/network-coding.c\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@batadv_nc_process_nc_paths.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Adding nc_node %pM -> %pM\0A\00", [37 x i8] zeroinitializer }, align 32
@batadv_nc_find_nc_node.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@batadv_nc_skb_dst_search.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_nc_skb_src_search.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_nc_path_search.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_nc_get_path.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&nc_path->packet_list_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Adding nc_path %pM -> %pM\0A\00", [37 x i8] zeroinitializer }, align 32
@batadv_nc_hash_find.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@batadv_nc_find_decoding_packet.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"No decoding packet found for %u\0A\00", [63 x i8] zeroinitializer }, align 32
@batadv_nc_purge_paths._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.7, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014Skipping free of non-empty nc_path (%pM -> %pM)!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"batadv_nc_purge_paths\00", [42 x i8] zeroinitializer }, align 32
@batadv_nc_purge_paths._entry_ptr = internal global ptr @batadv_nc_purge_paths._entry, section ".printk_index", align 4
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Remove nc_path %pM -> %pM\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.20 = private unnamed_addr constant [37 x i8] c"batadv_nc_coding_hash_lock_class_key\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 47, i32 30 }
@___asan_gen_.23 = private unnamed_addr constant [39 x i8] c"batadv_nc_decoding_hash_lock_class_key\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 48, i32 30 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 159, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 192, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 193, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 354, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 409, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 695, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 723, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 875, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 978, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 984, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 1778, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 456, i32 5 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [35 x i8] c"../net/batman-adv/network-coding.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 465, i32 4 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @batadv_nc_purge_paths._entry, ptr @batadv_nc_purge_paths._entry_ptr, ptr @batadv_nc_coding_hash_lock_class_key, ptr @batadv_nc_decoding_hash_lock_class_key, ptr @batadv_nc_mesh_init.__key, ptr @.str, ptr @batadv_nc_mesh_init.__key.1, ptr @.str.2, ptr @batadv_nc_init_orig.__key, ptr @.str.3, ptr @batadv_nc_init_orig.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @batadv_nc_get_path.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_nc_coding_hash_lock_class_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_nc_decoding_hash_lock_class_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_nc_mesh_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_nc_mesh_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_nc_init_orig.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_nc_init_orig.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_nc_get_path.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_nc_purge_paths._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_nc_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @batadv_recv_handler_register(i8 noundef zeroext 2, ptr noundef nonnull @batadv_nc_recv_coded_packet) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_recv_handler_register(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_nc_recv_coded_packet(ptr noundef %skb, ptr noundef %recv_if) #2 align 64 {
entry:
  %coded_packet_tmp.i = alloca %struct.batadv_coded_packet, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %recv_if, i32 0, i32 7
  %0 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_iface, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %network_coding = getelementptr i8, ptr %1, i32 4020
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %network_coding, i32 noundef 4) #10
  %2 = ptrtoint ptr %network_coding to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %network_coding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.free_skb_crit_edge, label %if.end

entry.free_skb_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_skb

if.end:                                           ; preds = %entry
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 46
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end7_crit_edge, !prof !68

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %5)
  %cmp3.i = icmp ult i32 %5, 46
  br i1 %cmp3.i, label %if.end.i.free_skb_crit_edge, label %pskb_may_pull.exit, !prof !68

if.end.i.free_skb_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_skb

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 46, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #10
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.free_skb_crit_edge, label %pskb_may_pull.exit.if.end7_crit_edge, !prof !68

pskb_may_pull.exit.if.end7_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

pskb_may_pull.exit.free_skb_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_skb

if.end7:                                          ; preds = %pskb_may_pull.exit.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %12 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %13 to i32
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %conv.i.i
  %call9 = tail call zeroext i1 @batadv_is_my_mac(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i.i) #10
  br i1 %call9, label %if.end7.if.end13_crit_edge, label %land.lhs.true

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end7
  %second_dest = getelementptr inbounds %struct.batadv_coded_packet, ptr %9, i32 0, i32 9
  %call11 = tail call zeroext i1 @batadv_is_my_mac(ptr noundef %add.ptr.i, ptr noundef %second_dest) #10
  br i1 %call11, label %land.lhs.true.if.end13_crit_edge, label %land.lhs.true.free_skb_crit_edge

land.lhs.true.free_skb_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_skb

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.end7.if.end13_crit_edge
  %second_dest14 = getelementptr inbounds %struct.batadv_coded_packet, ptr %9, i32 0, i32 9
  %call16 = tail call zeroext i1 @batadv_is_my_mac(ptr noundef %add.ptr.i, ptr noundef %second_dest14) #10
  br i1 %call16, label %if.then17, label %if.end13.if.end18_crit_edge

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then17:                                        ; preds = %if.end13
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !69
  %bat_counters.i = getelementptr i8, ptr %1, i32 2312
  %15 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bat_counters.i, align 4
  %arrayidx.i = getelementptr i64, ptr %16, i32 36
  %17 = ptrtoint ptr %arrayidx.i to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx14.i, align 4
  %add.i = add i32 %23, %17
  %24 = inttoptr i32 %add.i to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %24, align 8
  %add15.i = add i64 %26, 1
  store i64 %add15.i, ptr %24, align 8
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !70
  %and.i.i.i = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then17.batadv_add_counter.exit_crit_edge, !prof !68

if.then17.batadv_add_counter.exit_crit_edge:      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_add_counter.exit

if.then.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %batadv_add_counter.exit

batadv_add_counter.exit:                          ; preds = %if.then.i, %if.then17.batadv_add_counter.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #10, !srcloc !71
  br label %if.end18

if.end18:                                         ; preds = %batadv_add_counter.exit, %if.end13.if.end18_crit_edge
  %decoding_hash.i = getelementptr i8, ptr %1, i32 4148
  %28 = ptrtoint ptr %decoding_hash.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %decoding_hash.i, align 4
  %tobool.not.i66 = icmp eq ptr %29, null
  br i1 %tobool.not.i66, label %if.end18.if.then21_crit_edge, label %if.end.i68

if.end18.if.then21_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

if.end.i68:                                       ; preds = %if.end18
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %call.i = tail call zeroext i1 @batadv_is_my_mac(ptr noundef %add.ptr.i, ptr noundef %second_dest14) #10
  %first_source.i = getelementptr inbounds %struct.batadv_coded_packet, ptr %9, i32 0, i32 4
  %first_crc.i = getelementptr inbounds %struct.batadv_coded_packet, ptr %9, i32 0, i32 6
  %second_source.i = getelementptr inbounds %struct.batadv_coded_packet, ptr %9, i32 0, i32 10
  %second_crc.i = getelementptr inbounds %struct.batadv_coded_packet, ptr %9, i32 0, i32 12
  %packet_id.0.in.i = select i1 %call.i, ptr %first_crc.i, ptr %second_crc.i
  %source.0.i = select i1 %call.i, ptr %first_source.i, ptr %second_source.i
  %30 = ptrtoint ptr %packet_id.0.in.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %packet_id.0.i = load i32, ptr %packet_id.0.in.i, align 2
  %31 = ptrtoint ptr %source.0.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %nc_path_key.sroa.10.78.copyload.i = load i8, ptr %source.0.i, align 1
  %nc_path_key.sroa.12.78.source.0.sroa_idx.i = getelementptr inbounds i8, ptr %source.0.i, i32 1
  %32 = ptrtoint ptr %nc_path_key.sroa.12.78.source.0.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %nc_path_key.sroa.12.78.copyload.i = load i8, ptr %nc_path_key.sroa.12.78.source.0.sroa_idx.i, align 1
  %nc_path_key.sroa.13.78.source.0.sroa_idx.i = getelementptr inbounds i8, ptr %source.0.i, i32 2
  %33 = ptrtoint ptr %nc_path_key.sroa.13.78.source.0.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %nc_path_key.sroa.13.78.copyload.i = load i8, ptr %nc_path_key.sroa.13.78.source.0.sroa_idx.i, align 1
  %nc_path_key.sroa.14.78.source.0.sroa_idx.i = getelementptr inbounds i8, ptr %source.0.i, i32 3
  %34 = ptrtoint ptr %nc_path_key.sroa.14.78.source.0.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %nc_path_key.sroa.14.78.copyload.i = load i8, ptr %nc_path_key.sroa.14.78.source.0.sroa_idx.i, align 1
  %nc_path_key.sroa.15.78.source.0.sroa_idx.i = getelementptr inbounds i8, ptr %source.0.i, i32 4
  %35 = ptrtoint ptr %nc_path_key.sroa.15.78.source.0.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %nc_path_key.sroa.15.78.copyload.i = load i8, ptr %nc_path_key.sroa.15.78.source.0.sroa_idx.i, align 1
  %nc_path_key.sroa.16.78.source.0.sroa_idx.i = getelementptr inbounds i8, ptr %source.0.i, i32 5
  %36 = ptrtoint ptr %nc_path_key.sroa.16.78.source.0.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %nc_path_key.sroa.16.78.copyload.i = load i8, ptr %nc_path_key.sroa.16.78.source.0.sroa_idx.i, align 1
  %37 = ptrtoint ptr %h_source.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %nc_path_key.sroa.3.72.copyload.i = load i8, ptr %h_source.i, align 1
  %nc_path_key.sroa.5.72.h_source.sroa_idx.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %nc_path_key.sroa.5.72.h_source.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %nc_path_key.sroa.5.72.copyload.i = load i8, ptr %nc_path_key.sroa.5.72.h_source.sroa_idx.i, align 1
  %nc_path_key.sroa.6.72.h_source.sroa_idx.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1, i32 2
  %39 = ptrtoint ptr %nc_path_key.sroa.6.72.h_source.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %nc_path_key.sroa.6.72.copyload.i = load i8, ptr %nc_path_key.sroa.6.72.h_source.sroa_idx.i, align 1
  %nc_path_key.sroa.7.72.h_source.sroa_idx.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1, i32 3
  %40 = ptrtoint ptr %nc_path_key.sroa.7.72.h_source.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %nc_path_key.sroa.7.72.copyload.i = load i8, ptr %nc_path_key.sroa.7.72.h_source.sroa_idx.i, align 1
  %nc_path_key.sroa.8.72.h_source.sroa_idx.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1, i32 4
  %41 = ptrtoint ptr %nc_path_key.sroa.8.72.h_source.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %nc_path_key.sroa.8.72.copyload.i = load i8, ptr %nc_path_key.sroa.8.72.h_source.sroa_idx.i, align 1
  %nc_path_key.sroa.9.72.h_source.sroa_idx.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1, i32 5
  %42 = ptrtoint ptr %nc_path_key.sroa.9.72.h_source.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %nc_path_key.sroa.9.72.copyload.i = load i8, ptr %nc_path_key.sroa.9.72.h_source.sroa_idx.i, align 1
  %size.i = getelementptr inbounds %struct.batadv_hashtable, ptr %29, i32 0, i32 2
  %43 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size.i, align 4
  %conv59.i.i.i = zext i8 %nc_path_key.sroa.16.78.copyload.i to i32
  %shl60.i.i.i = shl nuw nsw i32 %conv59.i.i.i, 8
  %conv64.i.i.i = zext i8 %nc_path_key.sroa.15.78.copyload.i to i32
  %add61.i.i.i = add nuw nsw i32 %conv64.i.i.i, -559038731
  %add65.i.i.i = add nuw nsw i32 %add61.i.i.i, %shl60.i.i.i
  %conv68.i.i.i = zext i8 %nc_path_key.sroa.14.78.copyload.i to i32
  %shl69.i.i.i = shl nuw i32 %conv68.i.i.i, 24
  %conv73.i.i.i = zext i8 %nc_path_key.sroa.13.78.copyload.i to i32
  %shl74.i.i.i = shl nuw nsw i32 %conv73.i.i.i, 16
  %conv78.i.i.i = zext i8 %nc_path_key.sroa.12.78.copyload.i to i32
  %shl79.i.i.i = shl nuw nsw i32 %conv78.i.i.i, 8
  %conv83.i.i.i = zext i8 %nc_path_key.sroa.10.78.copyload.i to i32
  %add70.i.i.i = add nuw nsw i32 %conv83.i.i.i, -559038731
  %add75.i.i.i = add nuw nsw i32 %add70.i.i.i, %shl79.i.i.i
  %add80.i.i.i = add nuw nsw i32 %add75.i.i.i, %shl74.i.i.i
  %add84.i.i.i = add i32 %add80.i.i.i, %shl69.i.i.i
  %xor85.i.i.i = xor i32 %add65.i.i.i, -559038731
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add65.i.i.i, i32 -559153152, i32 14) #10
  %sub87.i.i.i = sub i32 %xor85.i.i.i, %or.i.i.i.i
  %xor88.i.i.i = xor i32 %sub87.i.i.i, %add84.i.i.i
  %or.i1.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i.i.i, i32 %sub87.i.i.i, i32 11) #10
  %sub90.i.i.i = sub i32 %xor88.i.i.i, %or.i1.i.i.i
  %xor91.i.i.i = xor i32 %sub90.i.i.i, %add65.i.i.i
  %or.i2.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i.i.i, i32 %sub90.i.i.i, i32 25) #10
  %sub93.i.i.i = sub i32 %xor91.i.i.i, %or.i2.i.i.i
  %xor94.i.i.i = xor i32 %sub93.i.i.i, %sub87.i.i.i
  %or.i3.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i.i.i, i32 %sub93.i.i.i, i32 16) #10
  %sub96.i.i.i = sub i32 %xor94.i.i.i, %or.i3.i.i.i
  %xor97.i.i.i = xor i32 %sub96.i.i.i, %sub90.i.i.i
  %or.i4.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i.i.i, i32 %sub96.i.i.i, i32 4) #10
  %sub99.i.i.i = sub i32 %xor97.i.i.i, %or.i4.i.i.i
  %xor100.i.i.i = xor i32 %sub99.i.i.i, %sub93.i.i.i
  %or.i5.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i.i.i, i32 %sub99.i.i.i, i32 14) #10
  %sub102.i.i.i = sub i32 %xor100.i.i.i, %or.i5.i.i.i
  %or.i6.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i.i.i, i32 %sub102.i.i.i, i32 24) #10
  %xor103.i.i.i = xor i32 %sub102.i.i.i, %sub96.i.i.i
  %sub105.i.i.i = sub i32 %xor103.i.i.i, %or.i6.i.i.i
  %add1.i.i.i = add i32 %sub105.i.i.i, -559038731
  %conv59.i6.i.i = zext i8 %nc_path_key.sroa.9.72.copyload.i to i32
  %shl60.i7.i.i = shl nuw nsw i32 %conv59.i6.i.i, 8
  %conv64.i10.i.i = zext i8 %nc_path_key.sroa.8.72.copyload.i to i32
  %add61.i8.i.i = or i32 %shl60.i7.i.i, %conv64.i10.i.i
  %add65.i11.i.i = add i32 %add1.i.i.i, %add61.i8.i.i
  %conv68.i13.i.i = zext i8 %nc_path_key.sroa.7.72.copyload.i to i32
  %shl69.i14.i.i = shl nuw i32 %conv68.i13.i.i, 24
  %conv73.i17.i.i = zext i8 %nc_path_key.sroa.6.72.copyload.i to i32
  %shl74.i18.i.i = shl nuw nsw i32 %conv73.i17.i.i, 16
  %conv78.i21.i.i = zext i8 %nc_path_key.sroa.5.72.copyload.i to i32
  %shl79.i22.i.i = shl nuw nsw i32 %conv78.i21.i.i, 8
  %conv83.i24.i.i = zext i8 %nc_path_key.sroa.3.72.copyload.i to i32
  %add70.i15.i.i = or i32 %shl79.i22.i.i, %conv83.i24.i.i
  %add75.i19.i.i = or i32 %add70.i15.i.i, %shl74.i18.i.i
  %add80.i23.i.i = or i32 %add75.i19.i.i, %shl69.i14.i.i
  %add84.i25.i.i = add i32 %add1.i.i.i, %add80.i23.i.i
  %xor85.i26.i.i = xor i32 %add65.i11.i.i, %add1.i.i.i
  %or.i.i27.i.i = tail call i32 @llvm.fshl.i32(i32 %add65.i11.i.i, i32 %add65.i11.i.i, i32 14) #10
  %sub87.i28.i.i = sub i32 %xor85.i26.i.i, %or.i.i27.i.i
  %xor88.i29.i.i = xor i32 %sub87.i28.i.i, %add84.i25.i.i
  %or.i1.i30.i.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i28.i.i, i32 %sub87.i28.i.i, i32 11) #10
  %sub90.i31.i.i = sub i32 %xor88.i29.i.i, %or.i1.i30.i.i
  %xor91.i32.i.i = xor i32 %sub90.i31.i.i, %add65.i11.i.i
  %or.i2.i33.i.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i31.i.i, i32 %sub90.i31.i.i, i32 25) #10
  %sub93.i34.i.i = sub i32 %xor91.i32.i.i, %or.i2.i33.i.i
  %xor94.i35.i.i = xor i32 %sub93.i34.i.i, %sub87.i28.i.i
  %or.i3.i36.i.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i34.i.i, i32 %sub93.i34.i.i, i32 16) #10
  %sub96.i37.i.i = sub i32 %xor94.i35.i.i, %or.i3.i36.i.i
  %xor97.i38.i.i = xor i32 %sub96.i37.i.i, %sub90.i31.i.i
  %or.i4.i39.i.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i37.i.i, i32 %sub96.i37.i.i, i32 4) #10
  %sub99.i40.i.i = sub i32 %xor97.i38.i.i, %or.i4.i39.i.i
  %xor100.i41.i.i = xor i32 %sub99.i40.i.i, %sub93.i34.i.i
  %or.i5.i42.i.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i40.i.i, i32 %sub99.i40.i.i, i32 14) #10
  %sub102.i43.i.i = sub i32 %xor100.i41.i.i, %or.i5.i42.i.i
  %or.i6.i44.i.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i43.i.i, i32 %sub102.i43.i.i, i32 24) #10
  %xor103.i45.i.i = xor i32 %sub102.i43.i.i, %sub96.i37.i.i
  %sub105.i46.i.i = sub i32 %xor103.i45.i.i, %or.i6.i44.i.i
  %rem.i.i = urem i32 %sub105.i46.i.i, %44
  %45 = tail call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %48, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !72
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i67 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i67, label %if.end.i68.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i68.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i68
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i68.rcu_read_lock.exit.i_crit_edge
  %call7.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call9.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true11.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %.b105.i = load i1, ptr @batadv_nc_find_decoding_packet.__warned, align 1
  br i1 %.b105.i, label %land.lhs.true11.i.do.end.i_crit_edge, label %if.then13.i

land.lhs.true11.i.do.end.i_crit_edge:             ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then13.i:                                      ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_nc_find_decoding_packet.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1758, ptr noundef nonnull @.str.8) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then13.i, %land.lhs.true11.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %49 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %29, align 4
  %arrayidx.i69 = getelementptr %struct.hlist_head, ptr %50, i32 %rem.i.i
  %51 = ptrtoint ptr %arrayidx.i69 to i32
  call void @__asan_load4_noabort(i32 %51)
  %nc_path.0122.i = load volatile ptr, ptr %arrayidx.i69, align 4
  %tobool22.not123.i = icmp eq ptr %nc_path.0122.i, null
  br i1 %tobool22.not123.i, label %do.end.i.for.end60.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end60.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end60.i

for.body.i:                                       ; preds = %for.inc43.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %nc_path.0124.i = phi ptr [ %nc_path.0.i, %for.inc43.i.for.body.i_crit_edge ], [ %nc_path.0122.i, %do.end.i.for.body.i_crit_edge ]
  %packet_list_lock.i = getelementptr inbounds %struct.batadv_nc_path, ptr %nc_path.0124.i, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %packet_list_lock.i) #10
  %packet_list.i = getelementptr inbounds %struct.batadv_nc_path, ptr %nc_path.0124.i, i32 0, i32 3
  br label %for.cond26.i

for.cond26.i:                                     ; preds = %for.body28.i.for.cond26.i_crit_edge, %for.body.i
  %tmp_nc_packet.0.in.i = phi ptr [ %packet_list.i, %for.body.i ], [ %tmp_nc_packet.0.i, %for.body28.i.for.cond26.i_crit_edge ]
  %52 = ptrtoint ptr %tmp_nc_packet.0.in.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %tmp_nc_packet.0.i = load ptr, ptr %tmp_nc_packet.0.in.i, align 4
  %cmp.not.i70 = icmp eq ptr %tmp_nc_packet.0.i, %packet_list.i
  br i1 %cmp.not.i70, label %for.end.thread.i, label %for.body28.i

for.end.thread.i:                                 ; preds = %for.cond26.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %packet_list_lock.i) #10
  br label %for.inc43.i

for.body28.i:                                     ; preds = %for.cond26.i
  %packet_id29.i = getelementptr inbounds %struct.batadv_nc_packet, ptr %tmp_nc_packet.0.i, i32 0, i32 1
  %53 = ptrtoint ptr %packet_id29.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %packet_id29.i, align 4
  %cmp30.i = icmp eq i32 %packet_id.0.i, %54
  br i1 %cmp30.i, label %if.then31.i, label %for.body28.i.for.cond26.i_crit_edge

for.body28.i.for.cond26.i_crit_edge:              ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond26.i

if.then31.i:                                      ; preds = %for.body28.i
  %call.i.i109.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tmp_nc_packet.0.i) #10
  br i1 %call.i.i109.i, label %if.end.i.i.i, label %if.then31.i.for.end.i_crit_edge

if.then31.i.for.end.i_crit_edge:                  ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end.i.i.i:                                     ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %tmp_nc_packet.0.i, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i.i.i, align 4
  %57 = ptrtoint ptr %tmp_nc_packet.0.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tmp_nc_packet.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev1.i.i.i.i, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %58, ptr %56, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.i.i.i, %if.then31.i.for.end.i_crit_edge
  %61 = ptrtoint ptr %tmp_nc_packet.0.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 256 to ptr), ptr %tmp_nc_packet.0.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tmp_nc_packet.0.i, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %packet_list_lock.i) #10
  %tobool40.not.i = icmp eq ptr %tmp_nc_packet.0.i, null
  br i1 %tobool40.not.i, label %for.end.i.for.inc43.i_crit_edge, label %for.end.i.for.end60.i_crit_edge

for.end.i.for.end60.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end60.i

for.end.i.for.inc43.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc43.i

for.inc43.i:                                      ; preds = %for.end.i.for.inc43.i_crit_edge, %for.end.thread.i
  %63 = ptrtoint ptr %nc_path.0124.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %nc_path.0.i = load volatile ptr, ptr %nc_path.0124.i, align 4
  %tobool22.not.i = icmp eq ptr %nc_path.0.i, null
  br i1 %tobool22.not.i, label %for.inc43.i.for.end60.i_crit_edge, label %for.inc43.i.for.body.i_crit_edge

for.inc43.i.for.body.i_crit_edge:                 ; preds = %for.inc43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc43.i.for.end60.i_crit_edge:                ; preds = %for.inc43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end60.i

for.end60.i:                                      ; preds = %for.inc43.i.for.end60.i_crit_edge, %for.end.i.for.end60.i_crit_edge, %do.end.i.for.end60.i_crit_edge
  %nc_packet.2.i = phi ptr [ null, %do.end.i.for.end60.i_crit_edge ], [ null, %for.inc43.i.for.end60.i_crit_edge ], [ %tmp_nc_packet.0.i, %for.end.i.for.end60.i_crit_edge ]
  %call.i110.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i110.i, label %for.end60.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i113.i

for.end60.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %for.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true.i113.i:                             ; preds = %for.end60.i
  %call1.i111.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i111.i)
  %tobool.not.i112.i = icmp eq i32 %call1.i111.i, 0
  br i1 %tobool.not.i112.i, label %land.lhs.true.i113.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i115.i

land.lhs.true.i113.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i113.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i115.i:                            ; preds = %land.lhs.true.i113.i
  %.b4.i114.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i114.i, label %land.lhs.true2.i115.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i116.i

land.lhs.true2.i115.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i115.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

if.then.i116.i:                                   ; preds = %land.lhs.true2.i115.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #10
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i116.i, %land.lhs.true2.i115.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i113.i.rcu_read_unlock.exit.i_crit_edge, %for.end60.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  %64 = tail call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i.i.i.i117.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i117.i to ptr
  %preempt_count.i.i.i.i118.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i.i.i118.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i.i.i118.i, align 4
  %sub.i.i.i.i = add i32 %67, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i118.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %tobool61.not.i = icmp eq ptr %nc_packet.2.i, null
  br i1 %tobool61.not.i, label %do.body63.i, label %if.end22

do.body63.i:                                      ; preds = %rcu_read_unlock.exit.i
  %log_level.i = getelementptr i8, ptr %1, i32 2360
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #10
  %68 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %log_level.i, align 4
  %and.i = and i32 %69, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool65.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool65.not.i, label %do.body63.i.if.then21_crit_edge, label %if.then66.i

do.body63.i.if.then21_crit_edge:                  ; preds = %do.body63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

if.then66.i:                                      ; preds = %do.body63.i
  call void @__sanitizer_cov_trace_pc() #12
  %call67.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.15, i32 noundef %packet_id.0.i) #10
  br label %if.then21

if.then21:                                        ; preds = %if.then66.i, %do.body63.i.if.then21_crit_edge, %if.end18.if.then21_crit_edge
  %70 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !69
  %bat_counters.i72 = getelementptr i8, ptr %1, i32 2312
  %71 = ptrtoint ptr %bat_counters.i72 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bat_counters.i72, align 4
  %arrayidx.i73 = getelementptr i64, ptr %72, i32 35
  %73 = ptrtoint ptr %arrayidx.i73 to i32
  %74 = tail call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i74 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i74 to ptr
  %cpu.i75 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %cpu.i75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cpu.i75, align 4
  %arrayidx14.i76 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %77
  %78 = ptrtoint ptr %arrayidx14.i76 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx14.i76, align 4
  %add.i77 = add i32 %79, %73
  %80 = inttoptr i32 %add.i77 to ptr
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %80, align 8
  %add15.i78 = add i64 %82, 1
  store i64 %add15.i78, ptr %80, align 8
  %83 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !70
  %and.i.i.i79 = and i32 %83, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i79)
  %tobool.not.i80 = icmp eq i32 %and.i.i.i79, 0
  br i1 %tobool.not.i80, label %if.then.i81, label %if.then21.batadv_add_counter.exit82_crit_edge, !prof !68

if.then21.batadv_add_counter.exit82_crit_edge:    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_add_counter.exit82

if.then.i81:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %batadv_add_counter.exit82

batadv_add_counter.exit82:                        ; preds = %if.then.i81, %if.then21.batadv_add_counter.exit82_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %70) #10, !srcloc !71
  br label %free_skb

if.end22:                                         ; preds = %rcu_read_unlock.exit.i
  %84 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.i.not.i = icmp eq i32 %85, 0
  br i1 %tobool.i.not.i, label %if.end22.if.end25_crit_edge, label %cond.true.i

if.end22.if.end25_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

cond.true.i:                                      ; preds = %if.end22
  %call.i.i84 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %85) #10
  %tobool.not.i.i85 = icmp eq ptr %call.i.i84, null
  br i1 %tobool.not.i.i85, label %cond.true.i.free_nc_packet_crit_edge, label %cond.true.i.if.end25_crit_edge

cond.true.i.if.end25_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

cond.true.i.free_nc_packet_crit_edge:             ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_nc_packet

if.end25:                                         ; preds = %cond.true.i.if.end25_crit_edge, %if.end22.if.end25_crit_edge
  %skb26 = getelementptr inbounds %struct.batadv_nc_packet, ptr %nc_packet.2.i, i32 0, i32 4
  %86 = ptrtoint ptr %skb26 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %skb26, align 4
  %data_len.i.i86 = getelementptr inbounds %struct.sk_buff, ptr %87, i32 0, i32 7
  %88 = ptrtoint ptr %data_len.i.i86 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %data_len.i.i86, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.i.not.i87 = icmp eq i32 %89, 0
  br i1 %tobool.i.not.i87, label %if.end25.if.end30_crit_edge, label %cond.true.i91

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

cond.true.i91:                                    ; preds = %if.end25
  %call.i.i88 = tail call ptr @__pskb_pull_tail(ptr noundef %87, i32 noundef %89) #10
  %tobool.not.i.i89 = icmp eq ptr %call.i.i88, null
  br i1 %tobool.not.i.i89, label %cond.true.i91.free_nc_packet_crit_edge, label %cond.true.i91.if.end30_crit_edge

cond.true.i91.if.end30_crit_edge:                 ; preds = %cond.true.i91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

cond.true.i91.free_nc_packet_crit_edge:           ; preds = %cond.true.i91
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_nc_packet

if.end30:                                         ; preds = %cond.true.i91.if.end30_crit_edge, %if.end25.if.end30_crit_edge
  call void @llvm.lifetime.start.p0(i64 46, ptr nonnull %coded_packet_tmp.i) #10
  %90 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data, align 4
  %92 = call ptr @memcpy(ptr %coded_packet_tmp.i, ptr %91, i32 46)
  %93 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %head.i.i, align 8
  %95 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i96 = zext i16 %96 to i32
  %add.ptr.i.i97 = getelementptr i8, ptr %94, i32 %conv.i.i96
  %97 = ptrtoint ptr %add.ptr.i.i97 to i32
  call void @__asan_load1_noabort(i32 %97)
  %ethhdr_tmp.sroa.0.0.copyload.i = load i8, ptr %add.ptr.i.i97, align 1
  %ethhdr_tmp.sroa.5.0.call.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i97, i32 1
  %98 = ptrtoint ptr %ethhdr_tmp.sroa.5.0.call.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %ethhdr_tmp.sroa.5.0.copyload.i = load i8, ptr %ethhdr_tmp.sroa.5.0.call.sroa_idx.i, align 1
  %ethhdr_tmp.sroa.6.0.call.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i97, i32 2
  %99 = ptrtoint ptr %ethhdr_tmp.sroa.6.0.call.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %ethhdr_tmp.sroa.6.0.copyload.i = load i8, ptr %ethhdr_tmp.sroa.6.0.call.sroa_idx.i, align 1
  %ethhdr_tmp.sroa.7.0.call.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i97, i32 3
  %100 = ptrtoint ptr %ethhdr_tmp.sroa.7.0.call.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %ethhdr_tmp.sroa.7.0.copyload.i = load i8, ptr %ethhdr_tmp.sroa.7.0.call.sroa_idx.i, align 1
  %ethhdr_tmp.sroa.8.0.call.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i97, i32 4
  %101 = ptrtoint ptr %ethhdr_tmp.sroa.8.0.call.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %ethhdr_tmp.sroa.8.0.copyload.i = load i8, ptr %ethhdr_tmp.sroa.8.0.call.sroa_idx.i, align 1
  %ethhdr_tmp.sroa.9.0.call.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i97, i32 5
  %102 = ptrtoint ptr %ethhdr_tmp.sroa.9.0.call.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %ethhdr_tmp.sroa.9.0.copyload.i = load i8, ptr %ethhdr_tmp.sroa.9.0.call.sroa_idx.i, align 1
  %ethhdr_tmp.sroa.10.0.call.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i97, i32 6
  %103 = ptrtoint ptr %ethhdr_tmp.sroa.10.0.call.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %ethhdr_tmp.sroa.10.0.copyload.i = load i8, ptr %ethhdr_tmp.sroa.10.0.call.sroa_idx.i, align 1
  %ethhdr_tmp.sroa.11.0.call.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i97, i32 7
  %104 = ptrtoint ptr %ethhdr_tmp.sroa.11.0.call.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %ethhdr_tmp.sroa.11.0.copyload.i = load i8, ptr %ethhdr_tmp.sroa.11.0.call.sroa_idx.i, align 1
  %ethhdr_tmp.sroa.12.0.call.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i97, i32 8
  %105 = ptrtoint ptr %ethhdr_tmp.sroa.12.0.call.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %ethhdr_tmp.sroa.12.0.copyload.i = load i8, ptr %ethhdr_tmp.sroa.12.0.call.sroa_idx.i, align 1
  %ethhdr_tmp.sroa.13.0.call.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i97, i32 9
  %106 = ptrtoint ptr %ethhdr_tmp.sroa.13.0.call.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %ethhdr_tmp.sroa.13.0.copyload.i = load i8, ptr %ethhdr_tmp.sroa.13.0.call.sroa_idx.i, align 1
  %ethhdr_tmp.sroa.14.0.call.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i97, i32 10
  %107 = ptrtoint ptr %ethhdr_tmp.sroa.14.0.call.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %ethhdr_tmp.sroa.14.0.copyload.i = load i8, ptr %ethhdr_tmp.sroa.14.0.call.sroa_idx.i, align 1
  %ethhdr_tmp.sroa.15.0.call.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i97, i32 11
  %108 = ptrtoint ptr %ethhdr_tmp.sroa.15.0.call.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %ethhdr_tmp.sroa.15.0.copyload.i = load i8, ptr %ethhdr_tmp.sroa.15.0.call.sroa_idx.i, align 1
  %ethhdr_tmp.sroa.16.0.call.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i97, i32 12
  %109 = ptrtoint ptr %ethhdr_tmp.sroa.16.0.call.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %109, i32 2)
  %ethhdr_tmp.sroa.16.0.copyload.i = load i16, ptr %ethhdr_tmp.sroa.16.0.call.sroa_idx.i, align 1
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %110 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.end30.if.end.i100_crit_edge, label %skb_cloned.exit.i.i

if.end30.if.end.i100_crit_edge:                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i100

skb_cloned.exit.i.i:                              ; preds = %if.end30
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %111 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %end.i.i.i.i, align 4
  %dataref.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %112, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i.i, i32 noundef 4) #10
  %113 = ptrtoint ptr %dataref.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %dataref.i.i.i, align 4
  %and.i.i.i98 = and i32 %114, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.i98)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i98, 1
  br i1 %cmp.i.not.i.i, label %skb_cloned.exit.i.i.if.end.i100_crit_edge, label %skb_cow.exit.i

skb_cloned.exit.i.i.if.end.i100_crit_edge:        ; preds = %skb_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i100

skb_cow.exit.i:                                   ; preds = %skb_cloned.exit.i.i
  %call4.i.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %cmp.i = icmp slt i32 %call4.i.i.i, 0
  br i1 %cmp.i, label %skb_cow.exit.i.batadv_nc_skb_decode_packet.exit.thread_crit_edge, label %skb_cow.exit.i.if.end.i100_crit_edge

skb_cow.exit.i.if.end.i100_crit_edge:             ; preds = %skb_cow.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i100

skb_cow.exit.i.batadv_nc_skb_decode_packet.exit.thread_crit_edge: ; preds = %skb_cow.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_skb_decode_packet.exit.thread

if.end.i100:                                      ; preds = %skb_cow.exit.i.if.end.i100_crit_edge, %skb_cloned.exit.i.i.if.end.i100_crit_edge, %if.end30.if.end.i100_crit_edge
  %call2.i = tail call ptr @skb_pull_rcsum(ptr noundef %skb, i32 noundef 36) #10
  %tobool.not.i99 = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i99, label %if.end.i100.batadv_nc_skb_decode_packet.exit.thread_crit_edge, label %if.end7.i, !prof !68

if.end.i100.batadv_nc_skb_decode_packet.exit.thread_crit_edge: ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_skb_decode_packet.exit.thread

if.end7.i:                                        ; preds = %if.end.i100
  %115 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %data, align 4
  %117 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %116 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %118 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %add.i.i = add i16 %conv.i.i.i, -14
  %119 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %add.i.i, ptr %mac_header.i.i, align 2
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %120 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %conv.i.i.i, ptr %network_header.i.i, align 4
  %conv.i.i90.i = zext i16 %add.i.i to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %118, i32 %conv.i.i90.i
  %121 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %ethhdr_tmp.sroa.0.0.copyload.i, ptr %add.ptr.i.i.i, align 1
  %ethhdr_tmp.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i.i, i32 1
  %122 = ptrtoint ptr %ethhdr_tmp.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %ethhdr_tmp.sroa.5.0.copyload.i, ptr %ethhdr_tmp.sroa.5.0..sroa_idx.i, align 1
  %ethhdr_tmp.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i.i, i32 2
  %123 = ptrtoint ptr %ethhdr_tmp.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %ethhdr_tmp.sroa.6.0.copyload.i, ptr %ethhdr_tmp.sroa.6.0..sroa_idx.i, align 1
  %ethhdr_tmp.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i.i, i32 3
  %124 = ptrtoint ptr %ethhdr_tmp.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %ethhdr_tmp.sroa.7.0.copyload.i, ptr %ethhdr_tmp.sroa.7.0..sroa_idx.i, align 1
  %ethhdr_tmp.sroa.8.0..sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i.i, i32 4
  %125 = ptrtoint ptr %ethhdr_tmp.sroa.8.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %ethhdr_tmp.sroa.8.0.copyload.i, ptr %ethhdr_tmp.sroa.8.0..sroa_idx.i, align 1
  %ethhdr_tmp.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i.i, i32 5
  %126 = ptrtoint ptr %ethhdr_tmp.sroa.9.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %ethhdr_tmp.sroa.9.0.copyload.i, ptr %ethhdr_tmp.sroa.9.0..sroa_idx.i, align 1
  %ethhdr_tmp.sroa.10.0..sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i.i, i32 6
  %127 = ptrtoint ptr %ethhdr_tmp.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %ethhdr_tmp.sroa.10.0.copyload.i, ptr %ethhdr_tmp.sroa.10.0..sroa_idx.i, align 1
  %ethhdr_tmp.sroa.11.0..sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i.i, i32 7
  %128 = ptrtoint ptr %ethhdr_tmp.sroa.11.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %ethhdr_tmp.sroa.11.0.copyload.i, ptr %ethhdr_tmp.sroa.11.0..sroa_idx.i, align 1
  %ethhdr_tmp.sroa.12.0..sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i.i, i32 8
  %129 = ptrtoint ptr %ethhdr_tmp.sroa.12.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %ethhdr_tmp.sroa.12.0.copyload.i, ptr %ethhdr_tmp.sroa.12.0..sroa_idx.i, align 1
  %ethhdr_tmp.sroa.13.0..sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i.i, i32 9
  %130 = ptrtoint ptr %ethhdr_tmp.sroa.13.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %ethhdr_tmp.sroa.13.0.copyload.i, ptr %ethhdr_tmp.sroa.13.0..sroa_idx.i, align 1
  %ethhdr_tmp.sroa.14.0..sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i.i, i32 10
  %131 = ptrtoint ptr %ethhdr_tmp.sroa.14.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %ethhdr_tmp.sroa.14.0.copyload.i, ptr %ethhdr_tmp.sroa.14.0..sroa_idx.i, align 1
  %ethhdr_tmp.sroa.15.0..sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i.i, i32 11
  %132 = ptrtoint ptr %ethhdr_tmp.sroa.15.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %ethhdr_tmp.sroa.15.0.copyload.i, ptr %ethhdr_tmp.sroa.15.0..sroa_idx.i, align 1
  %ethhdr_tmp.sroa.16.0..sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i.i, i32 12
  %133 = ptrtoint ptr %ethhdr_tmp.sroa.16.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %133, i32 2)
  store i16 %ethhdr_tmp.sroa.16.0.copyload.i, ptr %ethhdr_tmp.sroa.16.0..sroa_idx.i, align 1
  %second_dest.i101 = getelementptr inbounds %struct.batadv_coded_packet, ptr %coded_packet_tmp.i, i32 0, i32 9
  %call9.i102 = call zeroext i1 @batadv_is_my_mac(ptr noundef %add.ptr.i, ptr noundef %second_dest.i101) #10
  br i1 %call9.i102, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %134 = ptrtoint ptr %second_dest.i101 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %second_dest.i101, align 4
  %136 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %add.ptr.i.i.i, align 4
  %add.ptr.i91.i = getelementptr inbounds %struct.batadv_coded_packet, ptr %coded_packet_tmp.i, i32 0, i32 9, i32 4
  %137 = ptrtoint ptr %add.ptr.i91.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %add.ptr.i91.i, align 2
  %139 = ptrtoint ptr %ethhdr_tmp.sroa.8.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %138, ptr %ethhdr_tmp.sroa.8.0..sroa_idx.i, align 2
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %140 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  store i16 %bf.clear.i, ptr %pkt_type.i, align 8
  %second_orig_dest.i = getelementptr inbounds %struct.batadv_coded_packet, ptr %coded_packet_tmp.i, i32 0, i32 11
  %second_ttl.i = getelementptr inbounds %struct.batadv_coded_packet, ptr %coded_packet_tmp.i, i32 0, i32 7
  %141 = ptrtoint ptr %second_ttl.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %second_ttl.i, align 2
  %second_ttvn.i = getelementptr inbounds %struct.batadv_coded_packet, ptr %coded_packet_tmp.i, i32 0, i32 8
  br label %if.end17.i

if.else.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %first_orig_dest.i = getelementptr inbounds %struct.batadv_coded_packet, ptr %coded_packet_tmp.i, i32 0, i32 5
  %ttl16.i = getelementptr inbounds %struct.batadv_coded_packet, ptr %coded_packet_tmp.i, i32 0, i32 2
  %143 = ptrtoint ptr %ttl16.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %ttl16.i, align 2
  %first_ttvn.i = getelementptr inbounds %struct.batadv_coded_packet, ptr %coded_packet_tmp.i, i32 0, i32 3
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else.i, %if.then10.i
  %first_ttvn.sink.i = phi ptr [ %first_ttvn.i, %if.else.i ], [ %second_ttvn.i, %if.then10.i ]
  %orig_dest.0.i = phi ptr [ %first_orig_dest.i, %if.else.i ], [ %second_orig_dest.i, %if.then10.i ]
  %ttl.0.i = phi i8 [ %144, %if.else.i ], [ %142, %if.then10.i ]
  %145 = ptrtoint ptr %first_ttvn.sink.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %first_ttvn.sink.i, align 1
  %coded_len.i = getelementptr inbounds %struct.batadv_coded_packet, ptr %coded_packet_tmp.i, i32 0, i32 13
  %147 = ptrtoint ptr %coded_len.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %coded_len.i, align 2
  %conv.i = zext i16 %148 to i32
  %149 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %150, i32 %conv.i)
  %cmp18.i = icmp ult i32 %150, %conv.i
  br i1 %cmp18.i, label %if.end17.i.batadv_nc_skb_decode_packet.exit.thread_crit_edge, label %if.end21.i

if.end17.i.batadv_nc_skb_decode_packet.exit.thread_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_skb_decode_packet.exit.thread

if.end21.i:                                       ; preds = %if.end17.i
  %151 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %data, align 4
  %add.ptr.i103 = getelementptr i8, ptr %152, i32 10
  %153 = ptrtoint ptr %skb26 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %skb26, align 4
  %data24.i = getelementptr inbounds %struct.sk_buff, ptr %154, i32 0, i32 19
  %155 = ptrtoint ptr %data24.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %data24.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %156, i32 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %148)
  %cmp8.not.i.i = icmp eq i16 %148, 0
  br i1 %cmp8.not.i.i, label %if.end21.i.batadv_nc_memxor.exit.i_crit_edge, label %if.end21.i.for.body.i.i_crit_edge

if.end21.i.for.body.i.i_crit_edge:                ; preds = %if.end21.i
  br label %for.body.i.i

if.end21.i.batadv_nc_memxor.exit.i_crit_edge:     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_memxor.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end21.i.for.body.i.i_crit_edge
  %i.09.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end21.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %add.ptr25.i, i32 %i.09.i.i
  %157 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx1.i.i = getelementptr i8, ptr %add.ptr.i103, i32 %i.09.i.i
  %159 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx1.i.i, align 1
  %xor7.i.i = xor i8 %160, %158
  store i8 %xor7.i.i, ptr %arrayidx1.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.batadv_nc_memxor.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.batadv_nc_memxor.exit.i_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_memxor.exit.i

batadv_nc_memxor.exit.i:                          ; preds = %for.body.i.i.batadv_nc_memxor.exit.i_crit_edge, %if.end21.i.batadv_nc_memxor.exit.i_crit_edge
  %161 = ptrtoint ptr %skb26 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %skb26, align 4
  %len27.i = getelementptr inbounds %struct.sk_buff, ptr %162, i32 0, i32 6
  %163 = ptrtoint ptr %len27.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %len27.i, align 4
  %add.i104 = add nuw nsw i32 %conv.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %164, i32 %add.i104)
  %cmp28.i = icmp ugt i32 %164, %add.i104
  br i1 %cmp28.i, label %if.then30.i, label %batadv_nc_memxor.exit.i.batadv_nc_skb_decode_packet.exit_crit_edge

batadv_nc_memxor.exit.i.batadv_nc_skb_decode_packet.exit_crit_edge: ; preds = %batadv_nc_memxor.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_skb_decode_packet.exit

if.then30.i:                                      ; preds = %batadv_nc_memxor.exit.i
  %165 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %166, i32 %add.i104)
  %cmp.not.i.i = icmp ugt i32 %166, %add.i104
  br i1 %cmp.not.i.i, label %pskb_trim_rcsum.exit.i, label %if.then30.i.batadv_nc_skb_decode_packet.exit_crit_edge, !prof !68

if.then30.i.batadv_nc_skb_decode_packet.exit_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_skb_decode_packet.exit

pskb_trim_rcsum.exit.i:                           ; preds = %if.then30.i
  %call.i.i105 = call i32 @pskb_trim_rcsum_slow(ptr noundef %skb, i32 noundef %add.i104) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i105)
  %tobool33.not.i = icmp eq i32 %call.i.i105, 0
  br i1 %tobool33.not.i, label %pskb_trim_rcsum.exit.i.batadv_nc_skb_decode_packet.exit_crit_edge, label %pskb_trim_rcsum.exit.i.batadv_nc_skb_decode_packet.exit.thread_crit_edge

pskb_trim_rcsum.exit.i.batadv_nc_skb_decode_packet.exit.thread_crit_edge: ; preds = %pskb_trim_rcsum.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_skb_decode_packet.exit.thread

pskb_trim_rcsum.exit.i.batadv_nc_skb_decode_packet.exit_crit_edge: ; preds = %pskb_trim_rcsum.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_skb_decode_packet.exit

batadv_nc_skb_decode_packet.exit.thread:          ; preds = %pskb_trim_rcsum.exit.i.batadv_nc_skb_decode_packet.exit.thread_crit_edge, %if.end17.i.batadv_nc_skb_decode_packet.exit.thread_crit_edge, %if.end.i100.batadv_nc_skb_decode_packet.exit.thread_crit_edge, %skb_cow.exit.i.batadv_nc_skb_decode_packet.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 46, ptr nonnull %coded_packet_tmp.i) #10
  br label %if.then33

batadv_nc_skb_decode_packet.exit:                 ; preds = %pskb_trim_rcsum.exit.i.batadv_nc_skb_decode_packet.exit_crit_edge, %if.then30.i.batadv_nc_skb_decode_packet.exit_crit_edge, %batadv_nc_memxor.exit.i.batadv_nc_skb_decode_packet.exit_crit_edge
  %167 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %data, align 4
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 64, ptr %168, align 1
  %version.i = getelementptr inbounds %struct.batadv_unicast_packet, ptr %168, i32 0, i32 1
  %170 = ptrtoint ptr %version.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 15, ptr %version.i, align 1
  %ttl38.i = getelementptr inbounds %struct.batadv_unicast_packet, ptr %168, i32 0, i32 2
  %171 = ptrtoint ptr %ttl38.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %ttl.0.i, ptr %ttl38.i, align 1
  %dest.i = getelementptr inbounds %struct.batadv_unicast_packet, ptr %168, i32 0, i32 4
  %172 = ptrtoint ptr %orig_dest.0.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %orig_dest.0.i, align 4
  %174 = ptrtoint ptr %dest.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %dest.i, align 4
  %add.ptr.i92.i = getelementptr i8, ptr %orig_dest.0.i, i32 4
  %175 = ptrtoint ptr %add.ptr.i92.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %add.ptr.i92.i, align 2
  %add.ptr1.i93.i = getelementptr %struct.batadv_unicast_packet, ptr %168, i32 0, i32 4, i32 4
  %177 = ptrtoint ptr %add.ptr1.i93.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %176, ptr %add.ptr1.i93.i, align 2
  %ttvn40.i = getelementptr inbounds %struct.batadv_unicast_packet, ptr %168, i32 0, i32 3
  %178 = ptrtoint ptr %ttvn40.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %146, ptr %ttvn40.i, align 1
  call fastcc void @batadv_nc_packet_free(ptr noundef nonnull %nc_packet.2.i, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 46, ptr nonnull %coded_packet_tmp.i) #10
  %tobool32.not = icmp eq ptr %168, null
  br i1 %tobool32.not, label %batadv_nc_skb_decode_packet.exit.if.then33_crit_edge, label %if.end34

batadv_nc_skb_decode_packet.exit.if.then33_crit_edge: ; preds = %batadv_nc_skb_decode_packet.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33

if.then33:                                        ; preds = %batadv_nc_skb_decode_packet.exit.if.then33_crit_edge, %batadv_nc_skb_decode_packet.exit.thread
  %179 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !69
  %bat_counters.i107 = getelementptr i8, ptr %1, i32 2312
  %180 = ptrtoint ptr %bat_counters.i107 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %bat_counters.i107, align 4
  %arrayidx.i108 = getelementptr i64, ptr %181, i32 35
  %182 = ptrtoint ptr %arrayidx.i108 to i32
  %183 = call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i109 = and i32 %183, -16384
  %184 = inttoptr i32 %and.i.i109 to ptr
  %cpu.i110 = getelementptr inbounds %struct.thread_info, ptr %184, i32 0, i32 3
  %185 = ptrtoint ptr %cpu.i110 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %cpu.i110, align 4
  %arrayidx14.i111 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %186
  %187 = ptrtoint ptr %arrayidx14.i111 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx14.i111, align 4
  %add.i112 = add i32 %188, %182
  %189 = inttoptr i32 %add.i112 to ptr
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load8_noabort(i32 %190)
  %191 = load i64, ptr %189, align 8
  %add15.i113 = add i64 %191, 1
  store i64 %add15.i113, ptr %189, align 8
  %192 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !70
  %and.i.i.i114 = and i32 %192, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i114)
  %tobool.not.i115 = icmp eq i32 %and.i.i.i114, 0
  br i1 %tobool.not.i115, label %if.then.i116, label %if.then33.batadv_add_counter.exit117_crit_edge, !prof !68

if.then33.batadv_add_counter.exit117_crit_edge:   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_add_counter.exit117

if.then.i116:                                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  call void @warn_bogus_irq_restore() #10
  br label %batadv_add_counter.exit117

batadv_add_counter.exit117:                       ; preds = %if.then.i116, %if.then33.batadv_add_counter.exit117_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %179) #10, !srcloc !71
  br label %free_nc_packet

if.end34:                                         ; preds = %batadv_nc_skb_decode_packet.exit
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %193 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %193)
  %bf.load = load i8, ptr %cb, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %cb, align 8
  %194 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !69
  %bat_counters.i118 = getelementptr i8, ptr %1, i32 2312
  %195 = ptrtoint ptr %bat_counters.i118 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %bat_counters.i118, align 4
  %arrayidx.i119 = getelementptr i64, ptr %196, i32 33
  %197 = ptrtoint ptr %arrayidx.i119 to i32
  %198 = call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i120 = and i32 %198, -16384
  %199 = inttoptr i32 %and.i.i120 to ptr
  %cpu.i121 = getelementptr inbounds %struct.thread_info, ptr %199, i32 0, i32 3
  %200 = ptrtoint ptr %cpu.i121 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %cpu.i121, align 4
  %arrayidx14.i122 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %201
  %202 = ptrtoint ptr %arrayidx14.i122 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %arrayidx14.i122, align 4
  %add.i123 = add i32 %203, %197
  %204 = inttoptr i32 %add.i123 to ptr
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %204, align 8
  %add15.i124 = add i64 %206, 1
  store i64 %add15.i124, ptr %204, align 8
  %207 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !70
  %and.i.i.i125 = and i32 %207, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i125)
  %tobool.not.i126 = icmp eq i32 %and.i.i.i125, 0
  br i1 %tobool.not.i126, label %if.then.i127, label %if.end34.batadv_add_counter.exit128_crit_edge, !prof !68

if.end34.batadv_add_counter.exit128_crit_edge:    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_add_counter.exit128

if.then.i127:                                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  call void @warn_bogus_irq_restore() #10
  br label %batadv_add_counter.exit128

batadv_add_counter.exit128:                       ; preds = %if.then.i127, %if.end34.batadv_add_counter.exit128_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %194) #10, !srcloc !71
  %208 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %len.i.i, align 4
  %add = add i32 %209, 14
  %210 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !69
  %conv6.i = zext i32 %add to i64
  %211 = ptrtoint ptr %bat_counters.i118 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %bat_counters.i118, align 4
  %arrayidx.i130 = getelementptr i64, ptr %212, i32 34
  %213 = ptrtoint ptr %arrayidx.i130 to i32
  %214 = call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i131 = and i32 %214, -16384
  %215 = inttoptr i32 %and.i.i131 to ptr
  %cpu.i132 = getelementptr inbounds %struct.thread_info, ptr %215, i32 0, i32 3
  %216 = ptrtoint ptr %cpu.i132 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %cpu.i132, align 4
  %arrayidx14.i133 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %217
  %218 = ptrtoint ptr %arrayidx14.i133 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx14.i133, align 4
  %add.i134 = add i32 %219, %213
  %220 = inttoptr i32 %add.i134 to ptr
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_load8_noabort(i32 %221)
  %222 = load i64, ptr %220, align 8
  %add15.i135 = add i64 %222, %conv6.i
  store i64 %add15.i135, ptr %220, align 8
  %223 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !70
  %and.i.i.i136 = and i32 %223, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i136)
  %tobool.not.i137 = icmp eq i32 %and.i.i.i136, 0
  br i1 %tobool.not.i137, label %if.then.i138, label %batadv_add_counter.exit128.batadv_add_counter.exit139_crit_edge, !prof !68

batadv_add_counter.exit128.batadv_add_counter.exit139_crit_edge: ; preds = %batadv_add_counter.exit128
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_add_counter.exit139

if.then.i138:                                     ; preds = %batadv_add_counter.exit128
  call void @__sanitizer_cov_trace_pc() #12
  call void @warn_bogus_irq_restore() #10
  br label %batadv_add_counter.exit139

batadv_add_counter.exit139:                       ; preds = %if.then.i138, %batadv_add_counter.exit128.batadv_add_counter.exit139_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %210) #10, !srcloc !71
  %call35 = call i32 @batadv_recv_unicast_packet(ptr noundef %skb, ptr noundef %recv_if) #10
  br label %cleanup

free_nc_packet:                                   ; preds = %batadv_add_counter.exit117, %cond.true.i91.free_nc_packet_crit_edge, %cond.true.i.free_nc_packet_crit_edge
  call fastcc void @batadv_nc_packet_free(ptr noundef nonnull %nc_packet.2.i, i1 noundef zeroext true)
  br label %free_skb

free_skb:                                         ; preds = %free_nc_packet, %batadv_add_counter.exit82, %land.lhs.true.free_skb_crit_edge, %pskb_may_pull.exit.free_skb_crit_edge, %if.end.i.free_skb_crit_edge, %entry.free_skb_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %free_skb, %batadv_add_counter.exit139
  %retval.0 = phi i32 [ 1, %free_skb ], [ %call35, %batadv_add_counter.exit139 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_nc_status_update(ptr noundef %net_dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %network_coding.i = getelementptr i8, ptr %net_dev, i32 4020
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %network_coding.i, i32 noundef 4) #10
  %0 = ptrtoint ptr %network_coding.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %network_coding.i, align 4
  %trunc.i = trunc i32 %1 to i8
  %2 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i, label %entry.batadv_nc_tvlv_container_update.exit_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb2.i
  ]

entry.batadv_nc_tvlv_container_update.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_tvlv_container_update.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @batadv_tvlv_container_unregister(ptr noundef %add.ptr.i, i8 noundef zeroext 3, i8 noundef zeroext 1) #10
  br label %batadv_nc_tvlv_container_update.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @batadv_tvlv_container_register(ptr noundef %add.ptr.i, i8 noundef zeroext 3, i8 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0) #10
  br label %batadv_nc_tvlv_container_update.exit

batadv_nc_tvlv_container_update.exit:             ; preds = %sw.bb2.i, %sw.bb.i, %entry.batadv_nc_tvlv_container_update.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_nc_mesh_init(ptr noundef %bat_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %nc = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 41
  %timestamp_fwd_flush = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 41, i32 4
  %1 = ptrtoint ptr %timestamp_fwd_flush to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %timestamp_fwd_flush, align 4
  %2 = load volatile i32, ptr @jiffies, align 128
  %timestamp_sniffed_purge = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 41, i32 5
  %3 = ptrtoint ptr %timestamp_sniffed_purge to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %timestamp_sniffed_purge, align 4
  %coding_hash = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 41, i32 6
  %4 = ptrtoint ptr %coding_hash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %coding_hash, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %decoding_hash = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 41, i32 7
  %6 = ptrtoint ptr %decoding_hash to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %decoding_hash, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call ptr @batadv_hash_new(i32 noundef 128) #10
  %8 = ptrtoint ptr %coding_hash to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %coding_hash, align 4
  %tobool9.not = icmp eq ptr %call, null
  br i1 %tobool9.not, label %if.end.return_crit_edge, label %if.end11

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end11:                                         ; preds = %if.end
  tail call void @batadv_hash_set_lock_class(ptr noundef nonnull %call, ptr noundef nonnull @batadv_nc_coding_hash_lock_class_key) #10
  %call14 = tail call ptr @batadv_hash_new(i32 noundef 128) #10
  %9 = ptrtoint ptr %decoding_hash to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call14, ptr %decoding_hash, align 4
  %tobool19.not = icmp eq ptr %call14, null
  br i1 %tobool19.not, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %coding_hash to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %coding_hash, align 4
  tail call void @batadv_hash_destroy(ptr noundef %11) #10
  br label %return

if.end23:                                         ; preds = %if.end11
  tail call void @batadv_hash_set_lock_class(ptr noundef nonnull %call14, ptr noundef nonnull @batadv_nc_decoding_hash_lock_class_key) #10
  tail call void @__init_work(ptr noundef %nc, i32 noundef 0) #10
  %12 = ptrtoint ptr %nc to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %nc, align 4
  %lockdep_map = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 41, i32 0, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @batadv_nc_mesh_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry38 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 41, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %entry38 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry38, ptr %entry38, align 4
  %prev.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 41, i32 0, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry38, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 41, i32 0, i32 0, i32 2
  %15 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @batadv_nc_worker, ptr %func, align 4
  %timer = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 41, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @batadv_nc_mesh_init.__key.1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_event_workqueue to i32))
  %16 = load ptr, ptr @batadv_event_workqueue, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %nc, i32 noundef 1) #10
  tail call void @batadv_tvlv_handler_register(ptr noundef %bat_priv, ptr noundef nonnull @batadv_nc_tvlv_ogm_handler_v1, ptr noundef null, i8 noundef zeroext 3, i8 noundef zeroext 1, i8 noundef zeroext 2) #10
  %network_coding.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 40
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %network_coding.i, i32 noundef 4) #10
  %17 = ptrtoint ptr %network_coding.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %network_coding.i, align 4
  %trunc.i = trunc i32 %18 to i8
  %19 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %trunc.i, label %if.end23.return_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb2.i
  ]

if.end23.return_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb.i:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @batadv_tvlv_container_unregister(ptr noundef %bat_priv, i8 noundef zeroext 3, i8 noundef zeroext 1) #10
  br label %return

sw.bb2.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @batadv_tvlv_container_register(ptr noundef %bat_priv, i8 noundef zeroext 3, i8 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0) #10
  br label %return

return:                                           ; preds = %sw.bb2.i, %sw.bb.i, %if.end23.return_crit_edge, %if.then20, %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ -12, %if.end.return_crit_edge ], [ -12, %if.then20 ], [ 0, %if.end23.return_crit_edge ], [ 0, %sw.bb.i ], [ 0, %sw.bb2.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_hash_new(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_hash_set_lock_class(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_hash_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_nc_worker(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -1720
  %orig_hash.i = getelementptr i8, ptr %work, i32 -1628
  %0 = ptrtoint ptr %orig_hash.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %orig_hash.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.batadv_nc_purge_orig_hash.exit_crit_edge, label %for.cond.preheader.i

entry.batadv_nc_purge_orig_hash.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_purge_orig_hash.exit

for.cond.preheader.i:                             ; preds = %entry
  %size.i = getelementptr inbounds %struct.batadv_hashtable, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp64.not.i = icmp eq i32 %3, 0
  br i1 %cmp64.not.i, label %for.cond.preheader.i.batadv_nc_purge_orig_hash.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.batadv_nc_purge_orig_hash.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_purge_orig_hash.exit

for.body.i:                                       ; preds = %rcu_read_unlock.exit.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.065.i = phi i32 [ %inc.i, %rcu_read_unlock.exit.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %5, i32 %i.065.i
  %6 = tail call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !72
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %for.body.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

for.body.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %for.body.i.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b49.i = load i1, ptr @batadv_nc_purge_orig_hash.__warned, align 1
  br i1 %.b49.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then6.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then6.i:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_nc_purge_orig_hash.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 409, ptr noundef nonnull @.str.8) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool13.not.i = icmp eq ptr %11, null
  %add.ptr.i = getelementptr i8, ptr %11, i32 -284
  %tobool16.not6266.i = icmp eq ptr %add.ptr.i, null
  %tobool16.not62.i = or i1 %tobool13.not.i, %tobool16.not6266.i
  br i1 %tobool16.not62.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body17.i_crit_edge

do.end.i.for.body17.i_crit_edge:                  ; preds = %do.end.i
  br label %for.body17.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body17.i:                                     ; preds = %for.body17.i.for.body17.i_crit_edge, %do.end.i.for.body17.i_crit_edge
  %orig_node.063.i = phi ptr [ %add.ptr29.i, %for.body17.i.for.body17.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body17.i_crit_edge ]
  %in_coding_list.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.063.i, i32 0, i32 29
  %in_coding_list_lock.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.063.i, i32 0, i32 31
  tail call fastcc void @batadv_nc_purge_orig_nc_nodes(ptr noundef %add.ptr3, ptr noundef %in_coding_list.i.i, ptr noundef %in_coding_list_lock.i.i, ptr noundef nonnull @batadv_nc_to_purge_nc_node) #10
  %out_coding_list.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.063.i, i32 0, i32 30
  %out_coding_list_lock.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.063.i, i32 0, i32 32
  tail call fastcc void @batadv_nc_purge_orig_nc_nodes(ptr noundef %add.ptr3, ptr noundef %out_coding_list.i.i, ptr noundef %out_coding_list_lock.i.i, ptr noundef nonnull @batadv_nc_to_purge_nc_node) #10
  %hash_entry.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node.063.i, i32 0, i32 24
  %12 = ptrtoint ptr %hash_entry.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %hash_entry.i, align 4
  %tobool25.not.i = icmp eq ptr %13, null
  %add.ptr29.i = getelementptr i8, ptr %13, i32 -284
  %tobool16.not67.i = icmp eq ptr %add.ptr29.i, null
  %tobool16.not.i = or i1 %tobool25.not.i, %tobool16.not67.i
  br i1 %tobool16.not.i, label %for.body17.i.for.end.i_crit_edge, label %for.body17.i.for.body17.i_crit_edge

for.body17.i.for.body17.i_crit_edge:              ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body17.i

for.body17.i.for.end.i_crit_edge:                 ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.body17.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %call.i51.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i51.i, label %for.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i54.i

for.end.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true.i54.i:                              ; preds = %for.end.i
  %call1.i52.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52.i)
  %tobool.not.i53.i = icmp eq i32 %call1.i52.i, 0
  br i1 %tobool.not.i53.i, label %land.lhs.true.i54.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i56.i

land.lhs.true.i54.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i56.i:                             ; preds = %land.lhs.true.i54.i
  %.b4.i55.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i55.i, label %land.lhs.true2.i56.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i57.i

land.lhs.true2.i56.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

if.then.i57.i:                                    ; preds = %land.lhs.true2.i56.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #10
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i57.i, %land.lhs.true2.i56.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i54.i.rcu_read_unlock.exit.i_crit_edge, %for.end.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  %14 = tail call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i.i.i.i58.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i58.i to ptr
  %preempt_count.i.i.i.i59.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i59.i, align 4
  %sub.i.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i59.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %inc.i = add nuw i32 %i.065.i, 1
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %19
  br i1 %cmp.i, label %rcu_read_unlock.exit.i.for.body.i_crit_edge, label %rcu_read_unlock.exit.i.batadv_nc_purge_orig_hash.exit_crit_edge

rcu_read_unlock.exit.i.batadv_nc_purge_orig_hash.exit_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_purge_orig_hash.exit

rcu_read_unlock.exit.i.for.body.i_crit_edge:      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

batadv_nc_purge_orig_hash.exit:                   ; preds = %rcu_read_unlock.exit.i.batadv_nc_purge_orig_hash.exit_crit_edge, %for.cond.preheader.i.batadv_nc_purge_orig_hash.exit_crit_edge, %entry.batadv_nc_purge_orig_hash.exit_crit_edge
  %coding_hash = getelementptr inbounds %struct.batadv_priv_nc, ptr %work, i32 0, i32 6
  %20 = ptrtoint ptr %coding_hash to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %coding_hash, align 4
  tail call fastcc void @batadv_nc_purge_paths(ptr noundef %add.ptr3, ptr noundef %21, ptr noundef nonnull @batadv_nc_to_purge_nc_path_coding)
  %decoding_hash = getelementptr inbounds %struct.batadv_priv_nc, ptr %work, i32 0, i32 7
  %22 = ptrtoint ptr %decoding_hash to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %decoding_hash, align 4
  tail call fastcc void @batadv_nc_purge_paths(ptr noundef %add.ptr3, ptr noundef %23, ptr noundef nonnull @batadv_nc_to_purge_nc_path_decoding)
  %timestamp_fwd_flush = getelementptr inbounds %struct.batadv_priv_nc, ptr %work, i32 0, i32 4
  %24 = ptrtoint ptr %timestamp_fwd_flush to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %timestamp_fwd_flush, align 4
  %max_fwd_delay = getelementptr inbounds %struct.batadv_priv_nc, ptr %work, i32 0, i32 2
  %26 = ptrtoint ptr %max_fwd_delay to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_fwd_delay, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %27) #10
  %add.i = add i32 %call2.i.i, %25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i37 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i37, label %if.then, label %batadv_nc_purge_orig_hash.exit.if.end_crit_edge

batadv_nc_purge_orig_hash.exit.if.end_crit_edge:  ; preds = %batadv_nc_purge_orig_hash.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %batadv_nc_purge_orig_hash.exit
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %coding_hash to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %coding_hash, align 4
  tail call fastcc void @batadv_nc_process_nc_paths(ptr noundef %add.ptr3, ptr noundef %30, ptr noundef nonnull @batadv_nc_fwd_flush)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %32 = ptrtoint ptr %timestamp_fwd_flush to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %timestamp_fwd_flush, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %batadv_nc_purge_orig_hash.exit.if.end_crit_edge
  %timestamp_sniffed_purge = getelementptr inbounds %struct.batadv_priv_nc, ptr %work, i32 0, i32 5
  %33 = ptrtoint ptr %timestamp_sniffed_purge to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %timestamp_sniffed_purge, align 4
  %max_buffer_time = getelementptr inbounds %struct.batadv_priv_nc, ptr %work, i32 0, i32 3
  %35 = ptrtoint ptr %max_buffer_time to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_buffer_time, align 4
  %call2.i.i43 = tail call i32 @__msecs_to_jiffies(i32 noundef %36) #10
  %add.i46 = add i32 %call2.i.i43, %34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %sub.i47 = sub i32 %add.i46, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i47)
  %cmp.i48 = icmp slt i32 %sub.i47, 0
  br i1 %cmp.i48, label %if.then15, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %decoding_hash to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %decoding_hash, align 4
  tail call fastcc void @batadv_nc_process_nc_paths(ptr noundef %add.ptr3, ptr noundef %39, ptr noundef nonnull @batadv_nc_sniffed_purge)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %41 = ptrtoint ptr %timestamp_sniffed_purge to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %timestamp_sniffed_purge, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.end.if.end20_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_event_workqueue to i32))
  %42 = load ptr, ptr @batadv_event_workqueue, align 4
  %call.i.i50 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %42, ptr noundef %work, i32 noundef 1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tvlv_handler_register(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_nc_tvlv_ogm_handler_v1(ptr nocapture noundef readnone %bat_priv, ptr noundef %orig, i8 noundef zeroext %flags, ptr nocapture noundef readnone %tvlv_value, i16 noundef zeroext %tvlv_value_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %capabilities1 = getelementptr inbounds %struct.batadv_orig_node, ptr %orig, i32 0, i32 13
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %capabilities1) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 1, ptr noundef %capabilities1) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_nc_init_bat_priv(ptr noundef %bat_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %network_coding = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 40
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %network_coding, i32 noundef 4) #10
  %0 = ptrtoint ptr %network_coding to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %network_coding, align 4
  %min_tq = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 41, i32 1
  %1 = ptrtoint ptr %min_tq to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -56, ptr %min_tq, align 4
  %max_fwd_delay = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 41, i32 2
  %2 = ptrtoint ptr %max_fwd_delay to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 10, ptr %max_fwd_delay, align 4
  %max_buffer_time = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 41, i32 3
  %3 = ptrtoint ptr %max_buffer_time to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 200, ptr %max_buffer_time, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_nc_init_orig(ptr noundef %orig_node) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %in_coding_list = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 29
  %0 = ptrtoint ptr %in_coding_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %in_coding_list, ptr %in_coding_list, align 4
  %prev.i = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 29, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %in_coding_list, ptr %prev.i, align 4
  %out_coding_list = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 30
  %2 = ptrtoint ptr %out_coding_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %out_coding_list, ptr %out_coding_list, align 4
  %prev.i7 = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 30, i32 1
  %3 = ptrtoint ptr %prev.i7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %out_coding_list, ptr %prev.i7, align 4
  %in_coding_list_lock = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 31
  tail call void @__raw_spin_lock_init(ptr noundef %in_coding_list_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @batadv_nc_init_orig.__key, i16 noundef signext 3) #10
  %out_coding_list_lock = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 32
  tail call void @__raw_spin_lock_init(ptr noundef %out_coding_list_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @batadv_nc_init_orig.__key.4, i16 noundef signext 3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_nc_purge_orig(ptr noundef %bat_priv, ptr noundef %orig_node, ptr noundef %to_purge) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %in_coding_list = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 29
  %in_coding_list_lock = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 31
  tail call fastcc void @batadv_nc_purge_orig_nc_nodes(ptr noundef %bat_priv, ptr noundef %in_coding_list, ptr noundef %in_coding_list_lock, ptr noundef %to_purge)
  %out_coding_list = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 30
  %out_coding_list_lock = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 32
  tail call fastcc void @batadv_nc_purge_orig_nc_nodes(ptr noundef %bat_priv, ptr noundef %out_coding_list, ptr noundef %out_coding_list_lock, ptr noundef %to_purge)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_nc_purge_orig_nc_nodes(ptr noundef %bat_priv, ptr noundef readonly %list, ptr noundef %lock, ptr noundef readonly %to_purge) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %cmp.not33 = icmp eq ptr %1, %list
  br i1 %cmp.not33, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %to_purge, null
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %nc_node.034 = phi ptr [ %1, %for.body.lr.ph ], [ %nc_node_tmp.036, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %nc_node.034 to i32
  call void @__asan_load4_noabort(i32 %2)
  %nc_node_tmp.036 = load ptr, ptr %nc_node.034, align 4
  br i1 %tobool.not, label %for.body.do.body_crit_edge, label %land.lhs.true

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true:                                    ; preds = %for.body
  %call = tail call zeroext i1 %to_purge(ptr noundef %bat_priv, ptr noundef %nc_node.034) #10
  br i1 %call, label %land.lhs.true.do.body_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %for.body.do.body_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #10
  %3 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.body.if.end12_crit_edge, label %if.then9

do.body.if.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %addr = getelementptr inbounds %struct.batadv_nc_node, ptr %nc_node.034, i32 0, i32 1
  %orig_node = getelementptr inbounds %struct.batadv_nc_node, ptr %nc_node.034, i32 0, i32 4
  %5 = ptrtoint ptr %orig_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %orig_node, align 4
  %call11 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.6, ptr noundef %addr, ptr noundef %6) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %do.body.if.end12_crit_edge
  %call.i.i31 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %nc_node.034) #10
  br i1 %call.i.i31, label %if.end.i.i, label %if.end12.list_del_rcu.exit_crit_edge

if.end12.list_del_rcu.exit_crit_edge:             ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %nc_node.034, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %nc_node.034 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nc_node.034, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end12.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %nc_node.034, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call fastcc void @batadv_nc_node_put(ptr noundef %nc_node.034)
  br label %for.inc

for.inc:                                          ; preds = %list_del_rcu.exit, %land.lhs.true.for.inc_crit_edge
  %cmp.not = icmp eq ptr %nc_node_tmp.036, %list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_nc_update_nc_node(ptr noundef %bat_priv, ptr noundef %orig_node, ptr noundef %orig_neigh_node, ptr nocapture noundef readonly %ogm_packet, i32 noundef %is_single_hop_neigh) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %network_coding = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 40
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %network_coding, i32 noundef 4) #10
  %0 = ptrtoint ptr %network_coding to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %network_coding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %capabilities = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 13
  %2 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %capabilities, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end4:                                          ; preds = %if.end
  %call.i = tail call ptr @batadv_orig_ifinfo_get(ptr noundef %orig_node, ptr noundef null) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end4.batadv_can_nc_with_orig.exit_crit_edge, label %if.end.i.i

if.end4.batadv_can_nc_with_orig.exit_crit_edge:   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_can_nc_with_orig.exit

if.end.i.i:                                       ; preds = %if.end4
  %last_ttl1.i = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %last_ttl1.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %last_ttl1.i, align 4
  %last_real_seqno2.i = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %last_real_seqno2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %last_real_seqno2.i, align 4
  %refcount.i.i = getelementptr inbounds %struct.batadv_orig_ifinfo, ptr %call.i, i32 0, i32 8
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #10
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #10, !srcloc !75
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.batadv_orig_ifinfo_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !76

if.end5.i.i.i.i.i.i.batadv_orig_ifinfo_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_orig_ifinfo_put.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #10
  br label %batadv_orig_ifinfo_put.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !77
  tail call void @batadv_orig_ifinfo_release(ptr noundef %refcount.i.i) #10
  br label %batadv_orig_ifinfo_put.exit.i

batadv_orig_ifinfo_put.exit.i:                    ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.batadv_orig_ifinfo_put.exit.i_crit_edge
  %seqno.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %ogm_packet, i32 0, i32 4
  %10 = ptrtoint ptr %seqno.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %seqno.i, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %11)
  %cmp.not.i = icmp eq i32 %8, %11
  br i1 %cmp.not.i, label %if.end4.i, label %batadv_orig_ifinfo_put.exit.i.batadv_can_nc_with_orig.exit_crit_edge

batadv_orig_ifinfo_put.exit.i.batadv_can_nc_with_orig.exit_crit_edge: ; preds = %batadv_orig_ifinfo_put.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_can_nc_with_orig.exit

if.end4.i:                                        ; preds = %batadv_orig_ifinfo_put.exit.i
  %conv.i = zext i8 %6 to i32
  %ttl.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %ogm_packet, i32 0, i32 2
  %12 = ptrtoint ptr %ttl.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ttl.i, align 2
  %conv5.i = zext i8 %13 to i32
  %add.i = add nuw nsw i32 %conv5.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp6.not.i = icmp eq i32 %add.i, %conv.i
  br i1 %cmp6.not.i, label %if.end9.i, label %if.end4.i.batadv_can_nc_with_orig.exit_crit_edge

if.end4.i.batadv_can_nc_with_orig.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_can_nc_with_orig.exit

if.end9.i:                                        ; preds = %if.end4.i
  %orig.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %ogm_packet, i32 0, i32 5
  %prev_sender.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %ogm_packet, i32 0, i32 6
  %14 = ptrtoint ptr %orig.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %orig.i, align 4
  %16 = ptrtoint ptr %prev_sender.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %prev_sender.i, align 4
  %xor.i.i.i.i = xor i32 %17, %15
  %add.ptr.i.i.i.i = getelementptr %struct.batadv_ogm_packet, ptr %ogm_packet, i32 0, i32 5, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %add.ptr1.i.i.i.i = getelementptr %struct.batadv_ogm_packet, ptr %ogm_packet, i32 0, i32 6, i32 4
  %20 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr1.i.i.i.i, align 2
  %xor37.i.i.i.i = xor i16 %21, %19
  %xor3.i.i.i.i = zext i16 %xor37.i.i.i.i to i32
  %or.i.i.i.i = or i32 %xor.i.i.i.i, %xor3.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %or.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end13.i, label %if.end9.i.batadv_can_nc_with_orig.exit_crit_edge

if.end9.i.batadv_can_nc_with_orig.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_can_nc_with_orig.exit

if.end13.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %tq.i = getelementptr inbounds %struct.batadv_ogm_packet, ptr %ogm_packet, i32 0, i32 8
  %22 = ptrtoint ptr %tq.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tq.i, align 1
  %min_tq.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 41, i32 1
  %24 = ptrtoint ptr %min_tq.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %min_tq.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %25)
  %cmp16.i = icmp ult i8 %23, %25
  br label %batadv_can_nc_with_orig.exit

batadv_can_nc_with_orig.exit:                     ; preds = %if.end13.i, %if.end9.i.batadv_can_nc_with_orig.exit_crit_edge, %if.end4.i.batadv_can_nc_with_orig.exit_crit_edge, %batadv_orig_ifinfo_put.exit.i.batadv_can_nc_with_orig.exit_crit_edge, %if.end4.batadv_can_nc_with_orig.exit_crit_edge
  %retval.0.i = phi i1 [ true, %if.end4.batadv_can_nc_with_orig.exit_crit_edge ], [ true, %batadv_orig_ifinfo_put.exit.i.batadv_can_nc_with_orig.exit_crit_edge ], [ true, %if.end4.i.batadv_can_nc_with_orig.exit_crit_edge ], [ true, %if.end9.i.batadv_can_nc_with_orig.exit_crit_edge ], [ %cmp16.i, %if.end13.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_single_hop_neigh)
  %tobool6.not = icmp eq i32 %is_single_hop_neigh, 0
  %or.cond = and i1 %tobool6.not, %retval.0.i
  br i1 %or.cond, label %batadv_can_nc_with_orig.exit.out_crit_edge, label %if.end8

batadv_can_nc_with_orig.exit.out_crit_edge:       ; preds = %batadv_can_nc_with_orig.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end8:                                          ; preds = %batadv_can_nc_with_orig.exit
  %call9 = tail call fastcc ptr @batadv_nc_get_nc_node(ptr noundef %bat_priv, ptr noundef %orig_node, ptr noundef %orig_neigh_node, i1 noundef zeroext true)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.out_crit_edge, label %if.end12

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end12:                                         ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %last_seen = getelementptr inbounds %struct.batadv_nc_node, ptr %call9, i32 0, i32 5
  %27 = ptrtoint ptr %last_seen to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %last_seen, align 4
  %call13 = tail call fastcc ptr @batadv_nc_get_nc_node(ptr noundef %bat_priv, ptr noundef %orig_neigh_node, ptr noundef %orig_node, i1 noundef zeroext false)
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end12.out_crit_edge, label %if.end16

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %last_seen17 = getelementptr inbounds %struct.batadv_nc_node, ptr %call13, i32 0, i32 5
  %29 = ptrtoint ptr %last_seen17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %last_seen17, align 4
  br label %out

out:                                              ; preds = %if.end16, %if.end12.out_crit_edge, %if.end8.out_crit_edge, %batadv_can_nc_with_orig.exit.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %in_nc_node.0 = phi ptr [ %call9, %if.end16 ], [ %call9, %if.end12.out_crit_edge ], [ null, %if.end8.out_crit_edge ], [ null, %if.end.out_crit_edge ], [ null, %entry.out_crit_edge ], [ null, %batadv_can_nc_with_orig.exit.out_crit_edge ]
  %out_nc_node.0 = phi ptr [ %call13, %if.end16 ], [ null, %if.end12.out_crit_edge ], [ null, %if.end8.out_crit_edge ], [ null, %if.end.out_crit_edge ], [ null, %entry.out_crit_edge ], [ null, %batadv_can_nc_with_orig.exit.out_crit_edge ]
  tail call fastcc void @batadv_nc_node_put(ptr noundef %in_nc_node.0)
  tail call fastcc void @batadv_nc_node_put(ptr noundef %out_nc_node.0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_nc_get_nc_node(ptr noundef %bat_priv, ptr nocapture noundef readonly %orig_node, ptr noundef %orig_neigh_node, i1 noundef zeroext %in_coding) unnamed_addr #2 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %in_coding_list_lock = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_neigh_node, i32 0, i32 31
  %in_coding_list = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_neigh_node, i32 0, i32 29
  %out_coding_list_lock = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_neigh_node, i32 0, i32 32
  %out_coding_list = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_neigh_node, i32 0, i32 30
  %lock.0 = select i1 %in_coding, ptr %in_coding_list_lock, ptr %out_coding_list_lock
  %list.0 = select i1 %in_coding, ptr %in_coding_list, ptr %out_coding_list
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.0) #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !72
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i45 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i45, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b36.i = load i1, ptr @batadv_nc_find_nc_node.__warned, align 1
  br i1 %.b36.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then6.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then6.i:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_nc_find_nc_node.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 809, ptr noundef nonnull @.str.8) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %4 = ptrtoint ptr %list.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %nc_node.046.i = load volatile ptr, ptr %list.0, align 4
  %cmp.not47.i = icmp eq ptr %nc_node.046.i, %list.0
  br i1 %cmp.not47.i, label %do.end.i.for.end.i_crit_edge, label %for.body.lr.ph.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %do.end.i
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %orig_node, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %nc_node.048.i = phi ptr [ %nc_node.046.i, %for.body.lr.ph.i ], [ %nc_node.0.i, %for.inc.i.for.body.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.batadv_nc_node, ptr %nc_node.048.i, i32 0, i32 1
  %5 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr.i, align 4
  %7 = ptrtoint ptr %orig_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %orig_node, align 4
  %xor.i.i.i.i = xor i32 %8, %6
  %add.ptr.i.i.i.i = getelementptr %struct.batadv_nc_node, ptr %nc_node.048.i, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %11 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr1.i.i.i.i, align 2
  %xor37.i.i.i.i = xor i16 %12, %10
  %xor3.i.i.i.i = zext i16 %xor37.i.i.i.i to i32
  %or.i.i.i.i = or i32 %xor.i.i.i.i, %xor3.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %or.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end16.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end16.i:                                       ; preds = %for.body.i
  %refcount.i = getelementptr inbounds %struct.batadv_nc_node, ptr %nc_node.048.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #10
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #10
  %13 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %refcount.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.end16.i
  %15 = phi i32 [ %14, %if.end16.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %16 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %15, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #10
  %17 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %19 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 %18, i32 %add.i.i.i.i.i, ptr elementtype(i32) %refcount.i) #10, !srcloc !78
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %18
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !76

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %20 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %21, 1
  %22 = or i32 %add5.i.i.i.i.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %.not.i.i.i.i.i = icmp sgt i32 %22, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !76

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 0) #10
  %23 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %24 = phi i32 [ %21, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %24, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #10
  br i1 %tobool12.i.i.i.i.not.i, label %kref_get_unless_zero.exit.i.for.inc.i_crit_edge, label %kref_get_unless_zero.exit.i.for.end.i_crit_edge

kref_get_unless_zero.exit.i.for.end.i_crit_edge:  ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

kref_get_unless_zero.exit.i.for.inc.i_crit_edge:  ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %kref_get_unless_zero.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %25 = ptrtoint ptr %nc_node.048.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %nc_node.0.i = load volatile ptr, ptr %nc_node.048.i, align 4
  %cmp.not.i = icmp eq ptr %nc_node.0.i, %list.0
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %kref_get_unless_zero.exit.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %nc_node_out.0.i = phi ptr [ null, %do.end.i.for.end.i_crit_edge ], [ null, %for.inc.i.for.end.i_crit_edge ], [ %nc_node.048.i, %kref_get_unless_zero.exit.i.for.end.i_crit_edge ]
  %call.i37.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i37.i, label %for.end.i.batadv_nc_find_nc_node.exit_crit_edge, label %land.lhs.true.i40.i

for.end.i.batadv_nc_find_nc_node.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_find_nc_node.exit

land.lhs.true.i40.i:                              ; preds = %for.end.i
  %call1.i38.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i38.i)
  %tobool.not.i39.i = icmp eq i32 %call1.i38.i, 0
  br i1 %tobool.not.i39.i, label %land.lhs.true.i40.i.batadv_nc_find_nc_node.exit_crit_edge, label %land.lhs.true2.i42.i

land.lhs.true.i40.i.batadv_nc_find_nc_node.exit_crit_edge: ; preds = %land.lhs.true.i40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_find_nc_node.exit

land.lhs.true2.i42.i:                             ; preds = %land.lhs.true.i40.i
  %.b4.i41.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i41.i, label %land.lhs.true2.i42.i.batadv_nc_find_nc_node.exit_crit_edge, label %if.then.i43.i

land.lhs.true2.i42.i.batadv_nc_find_nc_node.exit_crit_edge: ; preds = %land.lhs.true2.i42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_find_nc_node.exit

if.then.i43.i:                                    ; preds = %land.lhs.true2.i42.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #10
  br label %batadv_nc_find_nc_node.exit

batadv_nc_find_nc_node.exit:                      ; preds = %if.then.i43.i, %land.lhs.true2.i42.i.batadv_nc_find_nc_node.exit_crit_edge, %land.lhs.true.i40.i.batadv_nc_find_nc_node.exit_crit_edge, %for.end.i.batadv_nc_find_nc_node.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  %26 = call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i.i.i.i44.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i44.i to ptr
  %preempt_count.i.i.i.i45.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i45.i, align 4
  %sub.i.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i45.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %tobool2.not = icmp eq ptr %nc_node_out.0.i, null
  br i1 %tobool2.not, label %if.end4, label %batadv_nc_find_nc_node.exit.unlock_crit_edge

batadv_nc_find_nc_node.exit.unlock_crit_edge:     ; preds = %batadv_nc_find_nc_node.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end4:                                          ; preds = %batadv_nc_find_nc_node.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 2848, i32 noundef 36) #13
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end4.unlock_crit_edge, label %if.end8

if.end4.unlock_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end8:                                          ; preds = %if.end4
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %refcount = getelementptr inbounds %struct.batadv_nc_node, ptr %call7.i.i, i32 0, i32 2
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  %33 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 1, ptr %refcount, align 8
  %addr = getelementptr inbounds %struct.batadv_nc_node, ptr %call7.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %orig_node to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %orig_node, align 4
  %36 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %addr, align 8
  %add.ptr.i = getelementptr i8, ptr %orig_node, i32 4
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.batadv_nc_node, ptr %call7.i.i, i32 0, i32 1, i32 4
  %39 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %add.ptr1.i, align 4
  %refcount11 = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_neigh_node, i32 0, i32 27
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount11, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %refcount11, i32 1, i32 3, i32 1) #10
  %40 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount11, ptr %refcount11, i32 1, ptr elementtype(i32) %refcount11) #10, !srcloc !79
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end8.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !68

if.end8.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end8
  %add.i.i.i.i46 = add i32 %asmresult.i.i.i.i.i.i, 1
  %41 = or i32 %add.i.i.i.i46, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %.not.i.i.i.i = icmp sgt i32 %41, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !76

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end8.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end8.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount11, i32 noundef %.sink.i.i.i.i) #10
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %orig_node12 = getelementptr inbounds %struct.batadv_nc_node, ptr %call7.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %orig_node12 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %orig_neigh_node, ptr %orig_node12, align 4
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #10
  %43 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %44, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %kref_get.exit.if.end22_crit_edge, label %if.then15

kref_get.exit.if.end22_crit_edge:                 ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then15:                                        ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %orig_node12 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %orig_node12, align 4
  %call21 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.12, ptr noundef %addr, ptr noundef %46) #10
  br label %if.end22

if.end22:                                         ; preds = %if.then15, %kref_get.exit.if.end22_crit_edge
  %call.i.i.i.i.i.i47 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %47 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !79
  %asmresult.i.i.i.i.i.i48 = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i48)
  %tobool1.not.i.i.i.i49 = icmp eq i32 %asmresult.i.i.i.i.i.i48, 0
  br i1 %tobool1.not.i.i.i.i49, label %if.end22.if.end15.sink.split.i.i.i.i54_crit_edge, label %if.else.i.i.i.i52, !prof !68

if.end22.if.end15.sink.split.i.i.i.i54_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i54

if.else.i.i.i.i52:                                ; preds = %if.end22
  %add.i.i.i.i50 = add i32 %asmresult.i.i.i.i.i.i48, 1
  %48 = or i32 %add.i.i.i.i50, %asmresult.i.i.i.i.i.i48
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %.not.i.i.i.i51 = icmp sgt i32 %48, -1
  br i1 %.not.i.i.i.i51, label %if.else.i.i.i.i52.kref_get.exit55_crit_edge, label %if.else.i.i.i.i52.if.end15.sink.split.i.i.i.i54_crit_edge, !prof !76

if.else.i.i.i.i52.if.end15.sink.split.i.i.i.i54_crit_edge: ; preds = %if.else.i.i.i.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i54

if.else.i.i.i.i52.kref_get.exit55_crit_edge:      ; preds = %if.else.i.i.i.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit55

if.end15.sink.split.i.i.i.i54:                    ; preds = %if.else.i.i.i.i52.if.end15.sink.split.i.i.i.i54_crit_edge, %if.end22.if.end15.sink.split.i.i.i.i54_crit_edge
  %.sink.i.i.i.i53 = phi i32 [ 2, %if.end22.if.end15.sink.split.i.i.i.i54_crit_edge ], [ 1, %if.else.i.i.i.i52.if.end15.sink.split.i.i.i.i54_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i53) #10
  br label %kref_get.exit55

kref_get.exit55:                                  ; preds = %if.end15.sink.split.i.i.i.i54, %if.else.i.i.i.i52.kref_get.exit55_crit_edge
  %prev.i56 = getelementptr inbounds %struct.list_head, ptr %list.0, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i56 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i56, align 4
  %call.i.i57 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %50, ptr noundef %list.0) #10
  br i1 %call.i.i57, label %if.end.i.i, label %kref_get.exit55.unlock_crit_edge

kref_get.exit55.unlock_crit_edge:                 ; preds = %kref_get.exit55
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end.i.i:                                       ; preds = %kref_get.exit55
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %list.0, ptr %call7.i.i, align 8
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %50, ptr %prev.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !80
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %call7.i.i, ptr %50, align 4
  %54 = ptrtoint ptr %prev.i56 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7.i.i, ptr %prev.i56, align 4
  br label %unlock

unlock:                                           ; preds = %if.end.i.i, %kref_get.exit55.unlock_crit_edge, %if.end4.unlock_crit_edge, %batadv_nc_find_nc_node.exit.unlock_crit_edge
  %nc_node.0 = phi ptr [ %nc_node_out.0.i, %batadv_nc_find_nc_node.exit.unlock_crit_edge ], [ null, %if.end4.unlock_crit_edge ], [ %call7.i.i, %kref_get.exit55.unlock_crit_edge ], [ %call7.i.i, %if.end.i.i ]
  call void @_raw_spin_unlock_bh(ptr noundef %lock.0) #10
  ret ptr %nc_node.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_nc_node_put(ptr noundef %nc_node) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %nc_node, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.batadv_nc_node, ptr %nc_node, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !75
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !76

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #10
  br label %return

if.then.i:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !77
  %orig_node.i = getelementptr %struct.batadv_nc_node, ptr %nc_node, i32 0, i32 4
  %1 = ptrtoint ptr %orig_node.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %orig_node.i, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.then.i.do.end.i_crit_edge, label %if.end.i.i

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.then.i
  %refcount.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %2, i32 0, i32 27
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #10, !srcloc !75
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.do.end.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !76

if.end5.i.i.i.i.i.i.do.end.i_crit_edge:           ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #10
  br label %do.end.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !77
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i.i) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.do.end.i_crit_edge, %if.then.i.do.end.i_crit_edge
  %rcu.i = getelementptr %struct.batadv_nc_node, ptr %nc_node, i32 0, i32 3
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 20 to ptr)) #10
  br label %return

return:                                           ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @batadv_nc_skb_forward(ptr noundef %skb, ptr noundef %neigh_node) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %if_incoming = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node, i32 0, i32 5
  %0 = ptrtoint ptr %if_incoming to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %if_incoming, align 4
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soft_iface, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2304
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %6 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %conv.i.i
  %network_coding = getelementptr i8, ptr %3, i32 4020
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %network_coding, i32 noundef 4) #10
  %8 = ptrtoint ptr %network_coding to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %network_coding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %13 to i32
  %add.ptr.i38 = getelementptr i8, ptr %11, i32 %conv.i
  %14 = ptrtoint ptr %add.ptr.i38 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr.i38, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %15)
  %cmp.not = icmp eq i8 %15, 64
  br i1 %cmp.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %16 = ptrtoint ptr %if_incoming to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %if_incoming, align 4
  %soft_iface.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %soft_iface.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %soft_iface.i, align 4
  %add.ptr.i.i39 = getelementptr i8, ptr %19, i32 2304
  %orig_node1.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node, i32 0, i32 1
  %20 = ptrtoint ptr %orig_node1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %orig_node1.i, align 4
  %22 = tail call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %25, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !72
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i40 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i40, label %if.end6.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end6.rcu_read_lock.exit.i_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end6
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end6.rcu_read_lock.exit.i_crit_edge
  %call2.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b60.i = load i1, ptr @batadv_nc_skb_dst_search.__warned, align 1
  br i1 %.b60.i, label %land.lhs.true5.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_nc_skb_dst_search.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1418, ptr noundef nonnull @.str.8) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true5.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %in_coding_list.i = getelementptr inbounds %struct.batadv_orig_node, ptr %21, i32 0, i32 29
  %addr.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node, i32 0, i32 2
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %add.ptr1.i.i.i.i.i.i = getelementptr %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1, i32 4
  %coding_hash.i.i.i = getelementptr i8, ptr %19, i32 4144
  %add.ptr.i.i.i.i.i.i.i = getelementptr %struct.batadv_neigh_node, ptr %neigh_node, i32 0, i32 2, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %batadv_nc_skb_src_search.exit.i.for.cond.i_crit_edge, %do.end.i
  %nc_node.0.in.i = phi ptr [ %in_coding_list.i, %do.end.i ], [ %nc_node.0.i, %batadv_nc_skb_src_search.exit.i.for.cond.i_crit_edge ]
  %26 = ptrtoint ptr %nc_node.0.in.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %nc_node.0.i = load volatile ptr, ptr %nc_node.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %nc_node.0.i, %in_coding_list.i
  br i1 %cmp.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %call.i61.i = tail call ptr @batadv_orig_hash_find(ptr noundef %add.ptr.i.i39, ptr noundef %h_source.i) #10
  %tobool.not.i62.i = icmp eq ptr %call.i61.i, null
  br i1 %tobool.not.i62.i, label %for.body.i.batadv_nc_skb_src_search.exit.i_crit_edge, label %if.end.i.i

for.body.i.batadv_nc_skb_src_search.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_skb_src_search.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %27 = tail call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i.i.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %30, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !72
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i.i, label %if.end.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.rcu_read_lock.exit.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end.i.i.rcu_read_lock.exit.i.i_crit_edge
  %call1.i63.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i63.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i64.i, label %rcu_read_lock.exit.i.i.do.end.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end.i.i_crit_edge:      ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

land.lhs.true.i64.i:                              ; preds = %rcu_read_lock.exit.i.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i64.i.do.end.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i64.i.do.end.i.i_crit_edge:         ; preds = %land.lhs.true.i64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i64.i
  %.b42.i.i = load i1, ptr @batadv_nc_skb_src_search.__warned, align 1
  br i1 %.b42.i.i, label %land.lhs.true5.i.i.do.end.i.i_crit_edge, label %if.then7.i.i

land.lhs.true5.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

if.then7.i.i:                                     ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_nc_skb_src_search.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1341, ptr noundef nonnull @.str.8) #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then7.i.i, %land.lhs.true5.i.i.do.end.i.i_crit_edge, %land.lhs.true.i64.i.do.end.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end.i.i_crit_edge
  %out_coding_list.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call.i61.i, i32 0, i32 30
  %31 = ptrtoint ptr %out_coding_list.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %out_nc_node.073.i.i = load volatile ptr, ptr %out_coding_list.i.i, align 4
  %cmp.not74.i.i = icmp eq ptr %out_nc_node.073.i.i, %out_coding_list.i.i
  br i1 %cmp.not74.i.i, label %do.end.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

do.end.i.i.for.end.i.i_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %do.end.i.i
  %addr.i.i.i = getelementptr inbounds %struct.batadv_nc_node, ptr %nc_node.0.i, i32 0, i32 1
  %nc_path_key.sroa.12.78.addr.sroa_idx.i.i.i = getelementptr inbounds %struct.batadv_nc_node, ptr %nc_node.0.i, i32 0, i32 1, i32 1
  %nc_path_key.sroa.13.78.addr.sroa_idx.i.i.i = getelementptr inbounds %struct.batadv_nc_node, ptr %nc_node.0.i, i32 0, i32 1, i32 2
  %nc_path_key.sroa.14.78.addr.sroa_idx.i.i.i = getelementptr inbounds %struct.batadv_nc_node, ptr %nc_node.0.i, i32 0, i32 1, i32 3
  %nc_path_key.sroa.15.78.addr.sroa_idx.i.i.i = getelementptr inbounds %struct.batadv_nc_node, ptr %nc_node.0.i, i32 0, i32 1, i32 4
  %nc_path_key.sroa.16.78.addr.sroa_idx.i.i.i = getelementptr inbounds %struct.batadv_nc_node, ptr %nc_node.0.i, i32 0, i32 1, i32 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %out_nc_node.075.i.i = phi ptr [ %out_nc_node.073.i.i, %for.body.lr.ph.i.i ], [ %out_nc_node.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %addr.i.i = getelementptr inbounds %struct.batadv_nc_node, ptr %out_nc_node.075.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i.i.i = load i8, ptr %cb.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i43.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i43.i.i, label %for.body.i.i.if.end16.i.i_crit_edge, label %land.lhs.true.i44.i.i

for.body.i.i.if.end16.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i.i

land.lhs.true.i44.i.i:                            ; preds = %for.body.i.i
  %33 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr.i.i, align 4
  %35 = ptrtoint ptr %h_source.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %h_source.i, align 4
  %xor.i.i.i.i.i.i = xor i32 %36, %34
  %add.ptr.i.i.i.i.i.i = getelementptr %struct.batadv_nc_node, ptr %out_nc_node.075.i.i, i32 0, i32 1, i32 4
  %37 = ptrtoint ptr %add.ptr.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr.i.i.i.i.i.i, align 2
  %39 = ptrtoint ptr %add.ptr1.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %add.ptr1.i.i.i.i.i.i, align 2
  %xor37.i.i.i.i.i.i = xor i16 %40, %38
  %xor3.i.i.i.i.i.i = zext i16 %xor37.i.i.i.i.i.i to i32
  %or.i.i.i.i.i.i = or i32 %xor.i.i.i.i.i.i, %xor3.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %or.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i.i, label %land.lhs.true.i44.i.i.if.end16.i.i_crit_edge, label %land.lhs.true.i44.i.i.for.inc.i.i_crit_edge

land.lhs.true.i44.i.i.for.inc.i.i_crit_edge:      ; preds = %land.lhs.true.i44.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i44.i.i.if.end16.i.i_crit_edge:     ; preds = %land.lhs.true.i44.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %land.lhs.true.i44.i.i.if.end16.i.i_crit_edge, %for.body.i.i.if.end16.i.i_crit_edge
  %41 = ptrtoint ptr %coding_hash.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %coding_hash.i.i.i, align 4
  %tobool.not.i45.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i45.i.i, label %if.end16.i.i.for.inc.i.i_crit_edge, label %if.end.i47.i.i

if.end16.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end.i47.i.i:                                   ; preds = %if.end16.i.i
  %43 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %nc_path_key.sroa.10.78.copyload.i.i.i = load i8, ptr %addr.i.i.i, align 1
  %44 = ptrtoint ptr %nc_path_key.sroa.12.78.addr.sroa_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %nc_path_key.sroa.12.78.copyload.i.i.i = load i8, ptr %nc_path_key.sroa.12.78.addr.sroa_idx.i.i.i, align 1
  %45 = ptrtoint ptr %nc_path_key.sroa.13.78.addr.sroa_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %nc_path_key.sroa.13.78.copyload.i.i.i = load i8, ptr %nc_path_key.sroa.13.78.addr.sroa_idx.i.i.i, align 1
  %46 = ptrtoint ptr %nc_path_key.sroa.14.78.addr.sroa_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %nc_path_key.sroa.14.78.copyload.i.i.i = load i8, ptr %nc_path_key.sroa.14.78.addr.sroa_idx.i.i.i, align 1
  %47 = ptrtoint ptr %nc_path_key.sroa.15.78.addr.sroa_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %nc_path_key.sroa.15.78.copyload.i.i.i = load i8, ptr %nc_path_key.sroa.15.78.addr.sroa_idx.i.i.i, align 1
  %48 = ptrtoint ptr %nc_path_key.sroa.16.78.addr.sroa_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %nc_path_key.sroa.16.78.copyload.i.i.i = load i8, ptr %nc_path_key.sroa.16.78.addr.sroa_idx.i.i.i, align 1
  %49 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %nc_path_key.sroa.3.72.copyload.i.i.i = load i8, ptr %addr.i.i, align 1
  %nc_path_key.sroa.5.72.addr1.sroa_idx.i.i.i = getelementptr inbounds %struct.batadv_nc_node, ptr %out_nc_node.075.i.i, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %nc_path_key.sroa.5.72.addr1.sroa_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %nc_path_key.sroa.5.72.copyload.i.i.i = load i8, ptr %nc_path_key.sroa.5.72.addr1.sroa_idx.i.i.i, align 1
  %nc_path_key.sroa.6.72.addr1.sroa_idx.i.i.i = getelementptr inbounds %struct.batadv_nc_node, ptr %out_nc_node.075.i.i, i32 0, i32 1, i32 2
  %51 = ptrtoint ptr %nc_path_key.sroa.6.72.addr1.sroa_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %nc_path_key.sroa.6.72.copyload.i.i.i = load i8, ptr %nc_path_key.sroa.6.72.addr1.sroa_idx.i.i.i, align 1
  %nc_path_key.sroa.7.72.addr1.sroa_idx.i.i.i = getelementptr inbounds %struct.batadv_nc_node, ptr %out_nc_node.075.i.i, i32 0, i32 1, i32 3
  %52 = ptrtoint ptr %nc_path_key.sroa.7.72.addr1.sroa_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %nc_path_key.sroa.7.72.copyload.i.i.i = load i8, ptr %nc_path_key.sroa.7.72.addr1.sroa_idx.i.i.i, align 1
  %nc_path_key.sroa.8.72.addr1.sroa_idx.i.i.i = getelementptr inbounds %struct.batadv_nc_node, ptr %out_nc_node.075.i.i, i32 0, i32 1, i32 4
  %53 = ptrtoint ptr %nc_path_key.sroa.8.72.addr1.sroa_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %nc_path_key.sroa.8.72.copyload.i.i.i = load i8, ptr %nc_path_key.sroa.8.72.addr1.sroa_idx.i.i.i, align 1
  %nc_path_key.sroa.9.72.addr1.sroa_idx.i.i.i = getelementptr inbounds %struct.batadv_nc_node, ptr %out_nc_node.075.i.i, i32 0, i32 1, i32 5
  %54 = ptrtoint ptr %nc_path_key.sroa.9.72.addr1.sroa_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %nc_path_key.sroa.9.72.copyload.i.i.i = load i8, ptr %nc_path_key.sroa.9.72.addr1.sroa_idx.i.i.i, align 1
  %size.i.i.i = getelementptr inbounds %struct.batadv_hashtable, ptr %42, i32 0, i32 2
  %55 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %size.i.i.i, align 4
  %conv59.i.i.i.i.i = zext i8 %nc_path_key.sroa.16.78.copyload.i.i.i to i32
  %shl60.i.i.i.i.i = shl nuw nsw i32 %conv59.i.i.i.i.i, 8
  %conv64.i.i.i.i.i = zext i8 %nc_path_key.sroa.15.78.copyload.i.i.i to i32
  %add61.i.i.i.i.i = add nuw nsw i32 %conv64.i.i.i.i.i, -559038731
  %add65.i.i.i.i.i = add nuw nsw i32 %add61.i.i.i.i.i, %shl60.i.i.i.i.i
  %conv68.i.i.i.i.i = zext i8 %nc_path_key.sroa.14.78.copyload.i.i.i to i32
  %shl69.i.i.i.i.i = shl nuw i32 %conv68.i.i.i.i.i, 24
  %conv73.i.i.i.i.i = zext i8 %nc_path_key.sroa.13.78.copyload.i.i.i to i32
  %shl74.i.i.i.i.i = shl nuw nsw i32 %conv73.i.i.i.i.i, 16
  %conv78.i.i.i.i.i = zext i8 %nc_path_key.sroa.12.78.copyload.i.i.i to i32
  %shl79.i.i.i.i.i = shl nuw nsw i32 %conv78.i.i.i.i.i, 8
  %conv83.i.i.i.i.i = zext i8 %nc_path_key.sroa.10.78.copyload.i.i.i to i32
  %add70.i.i.i.i.i = add nuw nsw i32 %conv83.i.i.i.i.i, -559038731
  %add75.i.i.i.i.i = add nuw nsw i32 %add70.i.i.i.i.i, %shl79.i.i.i.i.i
  %add80.i.i.i.i.i = add nuw nsw i32 %add75.i.i.i.i.i, %shl74.i.i.i.i.i
  %add84.i.i.i.i.i = add i32 %add80.i.i.i.i.i, %shl69.i.i.i.i.i
  %xor85.i.i.i.i.i = xor i32 %add65.i.i.i.i.i, -559038731
  %or.i.i.i.i46.i.i = tail call i32 @llvm.fshl.i32(i32 %add65.i.i.i.i.i, i32 -559153152, i32 14) #10
  %sub87.i.i.i.i.i = sub i32 %xor85.i.i.i.i.i, %or.i.i.i.i46.i.i
  %xor88.i.i.i.i.i = xor i32 %sub87.i.i.i.i.i, %add84.i.i.i.i.i
  %or.i1.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i.i.i.i.i, i32 %sub87.i.i.i.i.i, i32 11) #10
  %sub90.i.i.i.i.i = sub i32 %xor88.i.i.i.i.i, %or.i1.i.i.i.i.i
  %xor91.i.i.i.i.i = xor i32 %sub90.i.i.i.i.i, %add65.i.i.i.i.i
  %or.i2.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i.i.i.i.i, i32 %sub90.i.i.i.i.i, i32 25) #10
  %sub93.i.i.i.i.i = sub i32 %xor91.i.i.i.i.i, %or.i2.i.i.i.i.i
  %xor94.i.i.i.i.i = xor i32 %sub93.i.i.i.i.i, %sub87.i.i.i.i.i
  %or.i3.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i.i.i.i.i, i32 %sub93.i.i.i.i.i, i32 16) #10
  %sub96.i.i.i.i.i = sub i32 %xor94.i.i.i.i.i, %or.i3.i.i.i.i.i
  %xor97.i.i.i.i.i = xor i32 %sub96.i.i.i.i.i, %sub90.i.i.i.i.i
  %or.i4.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i.i.i.i.i, i32 %sub96.i.i.i.i.i, i32 4) #10
  %sub99.i.i.i.i.i = sub i32 %xor97.i.i.i.i.i, %or.i4.i.i.i.i.i
  %xor100.i.i.i.i.i = xor i32 %sub99.i.i.i.i.i, %sub93.i.i.i.i.i
  %or.i5.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i.i.i.i.i, i32 %sub99.i.i.i.i.i, i32 14) #10
  %sub102.i.i.i.i.i = sub i32 %xor100.i.i.i.i.i, %or.i5.i.i.i.i.i
  %or.i6.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i.i.i.i.i, i32 %sub102.i.i.i.i.i, i32 24) #10
  %xor103.i.i.i.i.i = xor i32 %sub102.i.i.i.i.i, %sub96.i.i.i.i.i
  %sub105.i.i.i.i.i = sub i32 %xor103.i.i.i.i.i, %or.i6.i.i.i.i.i
  %add1.i.i.i.i.i = add i32 %sub105.i.i.i.i.i, -559038731
  %conv59.i6.i.i.i.i = zext i8 %nc_path_key.sroa.9.72.copyload.i.i.i to i32
  %shl60.i7.i.i.i.i = shl nuw nsw i32 %conv59.i6.i.i.i.i, 8
  %conv64.i10.i.i.i.i = zext i8 %nc_path_key.sroa.8.72.copyload.i.i.i to i32
  %add61.i8.i.i.i.i = or i32 %shl60.i7.i.i.i.i, %conv64.i10.i.i.i.i
  %add65.i11.i.i.i.i = add i32 %add1.i.i.i.i.i, %add61.i8.i.i.i.i
  %conv68.i13.i.i.i.i = zext i8 %nc_path_key.sroa.7.72.copyload.i.i.i to i32
  %shl69.i14.i.i.i.i = shl nuw i32 %conv68.i13.i.i.i.i, 24
  %conv73.i17.i.i.i.i = zext i8 %nc_path_key.sroa.6.72.copyload.i.i.i to i32
  %shl74.i18.i.i.i.i = shl nuw nsw i32 %conv73.i17.i.i.i.i, 16
  %conv78.i21.i.i.i.i = zext i8 %nc_path_key.sroa.5.72.copyload.i.i.i to i32
  %shl79.i22.i.i.i.i = shl nuw nsw i32 %conv78.i21.i.i.i.i, 8
  %conv83.i24.i.i.i.i = zext i8 %nc_path_key.sroa.3.72.copyload.i.i.i to i32
  %add70.i15.i.i.i.i = or i32 %shl79.i22.i.i.i.i, %conv83.i24.i.i.i.i
  %add75.i19.i.i.i.i = or i32 %add70.i15.i.i.i.i, %shl74.i18.i.i.i.i
  %add80.i23.i.i.i.i = or i32 %add75.i19.i.i.i.i, %shl69.i14.i.i.i.i
  %add84.i25.i.i.i.i = add i32 %add1.i.i.i.i.i, %add80.i23.i.i.i.i
  %xor85.i26.i.i.i.i = xor i32 %add65.i11.i.i.i.i, %add1.i.i.i.i.i
  %or.i.i27.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add65.i11.i.i.i.i, i32 %add65.i11.i.i.i.i, i32 14) #10
  %sub87.i28.i.i.i.i = sub i32 %xor85.i26.i.i.i.i, %or.i.i27.i.i.i.i
  %xor88.i29.i.i.i.i = xor i32 %sub87.i28.i.i.i.i, %add84.i25.i.i.i.i
  %or.i1.i30.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i28.i.i.i.i, i32 %sub87.i28.i.i.i.i, i32 11) #10
  %sub90.i31.i.i.i.i = sub i32 %xor88.i29.i.i.i.i, %or.i1.i30.i.i.i.i
  %xor91.i32.i.i.i.i = xor i32 %sub90.i31.i.i.i.i, %add65.i11.i.i.i.i
  %or.i2.i33.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i31.i.i.i.i, i32 %sub90.i31.i.i.i.i, i32 25) #10
  %sub93.i34.i.i.i.i = sub i32 %xor91.i32.i.i.i.i, %or.i2.i33.i.i.i.i
  %xor94.i35.i.i.i.i = xor i32 %sub93.i34.i.i.i.i, %sub87.i28.i.i.i.i
  %or.i3.i36.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i34.i.i.i.i, i32 %sub93.i34.i.i.i.i, i32 16) #10
  %sub96.i37.i.i.i.i = sub i32 %xor94.i35.i.i.i.i, %or.i3.i36.i.i.i.i
  %xor97.i38.i.i.i.i = xor i32 %sub96.i37.i.i.i.i, %sub90.i31.i.i.i.i
  %or.i4.i39.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i37.i.i.i.i, i32 %sub96.i37.i.i.i.i, i32 4) #10
  %sub99.i40.i.i.i.i = sub i32 %xor97.i38.i.i.i.i, %or.i4.i39.i.i.i.i
  %xor100.i41.i.i.i.i = xor i32 %sub99.i40.i.i.i.i, %sub93.i34.i.i.i.i
  %or.i5.i42.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i40.i.i.i.i, i32 %sub99.i40.i.i.i.i, i32 14) #10
  %sub102.i43.i.i.i.i = sub i32 %xor100.i41.i.i.i.i, %or.i5.i42.i.i.i.i
  %or.i6.i44.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i43.i.i.i.i, i32 %sub102.i43.i.i.i.i, i32 24) #10
  %xor103.i45.i.i.i.i = xor i32 %sub102.i43.i.i.i.i, %sub96.i37.i.i.i.i
  %sub105.i46.i.i.i.i = sub i32 %xor103.i45.i.i.i.i, %or.i6.i44.i.i.i.i
  %rem.i.i.i.i = urem i32 %sub105.i46.i.i.i.i, %56
  %57 = tail call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i.i.i.i.i.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %60, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !72
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i.i.i, label %if.end.i47.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end.i47.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %if.end.i47.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i47.i.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %if.end.i47.i.i.rcu_read_lock.exit.i.i.i_crit_edge
  %call3.i.i.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i48.i.i, label %rcu_read_lock.exit.i.i.i.do.end.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.do.end.i.i.i_crit_edge:  ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i

land.lhs.true.i48.i.i:                            ; preds = %rcu_read_lock.exit.i.i.i
  %call5.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %land.lhs.true.i48.i.i.do.end.i.i.i_crit_edge, label %land.lhs.true7.i.i.i

land.lhs.true.i48.i.i.do.end.i.i.i_crit_edge:     ; preds = %land.lhs.true.i48.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i

land.lhs.true7.i.i.i:                             ; preds = %land.lhs.true.i48.i.i
  %.b1.i.i.i = load i1, ptr @batadv_nc_path_search.__warned, align 1
  br i1 %.b1.i.i.i, label %land.lhs.true7.i.i.i.do.end.i.i.i_crit_edge, label %if.then9.i.i.i

land.lhs.true7.i.i.i.do.end.i.i.i_crit_edge:      ; preds = %land.lhs.true7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i

if.then9.i.i.i:                                   ; preds = %land.lhs.true7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_nc_path_search.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1279, ptr noundef nonnull @.str.8) #10
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then9.i.i.i, %land.lhs.true7.i.i.i.do.end.i.i.i_crit_edge, %land.lhs.true.i48.i.i.do.end.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.do.end.i.i.i_crit_edge
  %61 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %42, align 4
  %arrayidx.i.i.i = getelementptr %struct.hlist_head, ptr %62, i32 %rem.i.i.i.i
  %63 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %nc_path.027.i.i.i = load volatile ptr, ptr %arrayidx.i.i.i, align 4
  %tobool18.not28.i.i.i = icmp eq ptr %nc_path.027.i.i.i, null
  br i1 %tobool18.not28.i.i.i, label %do.end.i.i.i.for.end78.i.i.i_crit_edge, label %do.end.i.i.i.for.body.i.i.i_crit_edge

do.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %do.end.i.i.i
  br label %for.body.i.i.i

do.end.i.i.i.for.end78.i.i.i_crit_edge:           ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end78.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc61.i.i.i.for.body.i.i.i_crit_edge, %do.end.i.i.i.for.body.i.i.i_crit_edge
  %nc_path.029.i.i.i = phi ptr [ %nc_path.0.i.i.i, %for.inc61.i.i.i.for.body.i.i.i_crit_edge ], [ %nc_path.027.i.i.i, %do.end.i.i.i.for.body.i.i.i_crit_edge ]
  %prev_hop.i.i.i = getelementptr inbounds %struct.batadv_nc_path, ptr %nc_path.029.i.i.i, i32 0, i32 6
  %64 = ptrtoint ptr %prev_hop.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %prev_hop.i.i.i, align 4
  %66 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %addr.i.i.i, align 4
  %xor.i.i.i.i49.i.i = xor i32 %67, %65
  %add.ptr.i.i.i.i50.i.i = getelementptr %struct.batadv_nc_path, ptr %nc_path.029.i.i.i, i32 0, i32 6, i32 4
  %68 = ptrtoint ptr %add.ptr.i.i.i.i50.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %add.ptr.i.i.i.i50.i.i, align 2
  %70 = ptrtoint ptr %nc_path_key.sroa.15.78.addr.sroa_idx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %nc_path_key.sroa.15.78.addr.sroa_idx.i.i.i, align 2
  %xor37.i.i.i.i51.i.i = xor i16 %71, %69
  %xor3.i.i.i.i52.i.i = zext i16 %xor37.i.i.i.i51.i.i to i32
  %or.i.i.i5.i.i.i = or i32 %xor.i.i.i.i49.i.i, %xor3.i.i.i.i52.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i5.i.i.i)
  %cmp.i.i.i.i53.i.i = icmp eq i32 %or.i.i.i5.i.i.i, 0
  br i1 %cmp.i.i.i.i53.i.i, label %if.end24.i.i.i, label %for.body.i.i.i.for.inc61.i.i.i_crit_edge

for.body.i.i.i.for.inc61.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc61.i.i.i

if.end24.i.i.i:                                   ; preds = %for.body.i.i.i
  %next_hop.i.i.i = getelementptr inbounds %struct.batadv_nc_path, ptr %nc_path.029.i.i.i, i32 0, i32 5
  %72 = ptrtoint ptr %next_hop.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %next_hop.i.i.i, align 4
  %74 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %addr.i.i, align 4
  %xor.i.i.i6.i.i.i = xor i32 %75, %73
  %add.ptr.i.i.i7.i.i.i = getelementptr %struct.batadv_nc_path, ptr %nc_path.029.i.i.i, i32 0, i32 5, i32 4
  %76 = ptrtoint ptr %add.ptr.i.i.i7.i.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %add.ptr.i.i.i7.i.i.i, align 2
  %78 = ptrtoint ptr %nc_path_key.sroa.8.72.addr1.sroa_idx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %nc_path_key.sroa.8.72.addr1.sroa_idx.i.i.i, align 2
  %xor37.i.i.i9.i.i.i = xor i16 %79, %77
  %xor3.i.i.i10.i.i.i = zext i16 %xor37.i.i.i9.i.i.i to i32
  %or.i.i.i11.i.i.i = or i32 %xor.i.i.i6.i.i.i, %xor3.i.i.i10.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i11.i.i.i)
  %cmp.i.i.i12.i.i.i = icmp eq i32 %or.i.i.i11.i.i.i, 0
  br i1 %cmp.i.i.i12.i.i.i, label %if.end30.i.i.i, label %if.end24.i.i.i.for.inc61.i.i.i_crit_edge

if.end24.i.i.i.for.inc61.i.i.i_crit_edge:         ; preds = %if.end24.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc61.i.i.i

if.end30.i.i.i:                                   ; preds = %if.end24.i.i.i
  %packet_list_lock.i.i.i = getelementptr inbounds %struct.batadv_nc_path, ptr %nc_path.029.i.i.i, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %packet_list_lock.i.i.i) #10
  %packet_list.i.i.i = getelementptr inbounds %struct.batadv_nc_path, ptr %nc_path.029.i.i.i, i32 0, i32 3
  %80 = ptrtoint ptr %packet_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile ptr, ptr %packet_list.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %81, %packet_list.i.i.i
  br i1 %cmp.i.not.i.i.i, label %if.then33.i.i.i, label %if.end30.i.i.i.for.cond44.i.i.i_crit_edge

if.end30.i.i.i.for.cond44.i.i.i_crit_edge:        ; preds = %if.end30.i.i.i
  br label %for.cond44.i.i.i

if.then33.i.i.i:                                  ; preds = %if.end30.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %packet_list_lock.i.i.i) #10
  br label %for.inc61.i.i.i

for.cond44.i.i.i:                                 ; preds = %land.lhs.true.i14.i.i.i.for.cond44.i.i.i_crit_edge, %if.end30.i.i.i.for.cond44.i.i.i_crit_edge
  %nc_packet.0.i.i.i = phi ptr [ %nc_packet_tmp.0.i.i.i, %land.lhs.true.i14.i.i.i.for.cond44.i.i.i_crit_edge ], [ %81, %if.end30.i.i.i.for.cond44.i.i.i_crit_edge ]
  %82 = ptrtoint ptr %nc_packet.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %nc_packet_tmp.0.i.i.i = load ptr, ptr %nc_packet.0.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %nc_packet.0.i.i.i, %packet_list.i.i.i
  br i1 %cmp.not.i.i.i, label %for.cond44.i.i.i.for.end.i.i.i_crit_edge, label %for.body47.i.i.i

for.cond44.i.i.i.for.end.i.i.i_crit_edge:         ; preds = %for.cond44.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i.i

for.body47.i.i.i:                                 ; preds = %for.cond44.i.i.i
  %skb48.i.i.i = getelementptr inbounds %struct.batadv_nc_packet, ptr %nc_packet.0.i.i.i, i32 0, i32 4
  %83 = ptrtoint ptr %skb48.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %skb48.i.i.i, align 4
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load.i.i.i.i = load i8, ptr %cb.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i.i)
  %tobool.not.i13.i.i.i = icmp sgt i8 %bf.load.i.i.i.i, -1
  br i1 %tobool.not.i13.i.i.i, label %for.body47.i.i.i.if.end53.i.i.i_crit_edge, label %land.lhs.true.i14.i.i.i

for.body47.i.i.i.if.end53.i.i.i_crit_edge:        ; preds = %for.body47.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.i.i.i

land.lhs.true.i14.i.i.i:                          ; preds = %for.body47.i.i.i
  %86 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %addr.i, align 4
  %88 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %addr.i.i.i, align 4
  %xor.i.i.i.i.i.i.i = xor i32 %89, %87
  %90 = ptrtoint ptr %add.ptr.i.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %add.ptr.i.i.i.i.i.i.i, align 2
  %92 = ptrtoint ptr %nc_path_key.sroa.15.78.addr.sroa_idx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %nc_path_key.sroa.15.78.addr.sroa_idx.i.i.i, align 2
  %xor37.i.i.i.i.i.i.i = xor i16 %93, %91
  %xor3.i.i.i.i.i.i.i = zext i16 %xor37.i.i.i.i.i.i.i to i32
  %or.i.i.i.i.i.i.i = or i32 %xor.i.i.i.i.i.i.i, %xor3.i.i.i.i.i.i.i
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %or.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i.i.i, label %land.lhs.true.i14.i.i.i.if.end53.i.i.i_crit_edge, label %land.lhs.true.i14.i.i.i.for.cond44.i.i.i_crit_edge

land.lhs.true.i14.i.i.i.for.cond44.i.i.i_crit_edge: ; preds = %land.lhs.true.i14.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond44.i.i.i

land.lhs.true.i14.i.i.i.if.end53.i.i.i_crit_edge: ; preds = %land.lhs.true.i14.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.i.i.i

if.end53.i.i.i:                                   ; preds = %land.lhs.true.i14.i.i.i.if.end53.i.i.i_crit_edge, %for.body47.i.i.i.if.end53.i.i.i_crit_edge
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %nc_packet.0.i.i.i) #10
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end53.i.i.i.list_del.exit.i.i.i_crit_edge

if.end53.i.i.i.list_del.exit.i.i.i_crit_edge:     ; preds = %if.end53.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end53.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %nc_packet.0.i.i.i, i32 0, i32 1
  %94 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %96 = ptrtoint ptr %nc_packet.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %nc_packet.0.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %95, ptr %prev1.i.i.i.i.i.i, align 4
  %99 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %97, ptr %95, align 4
  br label %list_del.exit.i.i.i

list_del.exit.i.i.i:                              ; preds = %if.end.i.i.i.i.i, %if.end53.i.i.i.list_del.exit.i.i.i_crit_edge
  %100 = ptrtoint ptr %nc_packet.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr inttoptr (i32 256 to ptr), ptr %nc_packet.0.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %nc_packet.0.i.i.i, i32 0, i32 1
  %101 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %list_del.exit.i.i.i, %for.cond44.i.i.i.for.end.i.i.i_crit_edge
  %nc_packet_out.0.i.i.i = phi ptr [ %nc_packet.0.i.i.i, %list_del.exit.i.i.i ], [ null, %for.cond44.i.i.i.for.end.i.i.i_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %packet_list_lock.i.i.i) #10
  br label %for.end78.i.i.i

for.inc61.i.i.i:                                  ; preds = %if.then33.i.i.i, %if.end24.i.i.i.for.inc61.i.i.i_crit_edge, %for.body.i.i.i.for.inc61.i.i.i_crit_edge
  %102 = ptrtoint ptr %nc_path.029.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %nc_path.0.i.i.i = load volatile ptr, ptr %nc_path.029.i.i.i, align 4
  %tobool18.not.i.i.i = icmp eq ptr %nc_path.0.i.i.i, null
  br i1 %tobool18.not.i.i.i, label %for.inc61.i.i.i.for.end78.i.i.i_crit_edge, label %for.inc61.i.i.i.for.body.i.i.i_crit_edge

for.inc61.i.i.i.for.body.i.i.i_crit_edge:         ; preds = %for.inc61.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.inc61.i.i.i.for.end78.i.i.i_crit_edge:        ; preds = %for.inc61.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end78.i.i.i

for.end78.i.i.i:                                  ; preds = %for.inc61.i.i.i.for.end78.i.i.i_crit_edge, %for.end.i.i.i, %do.end.i.i.i.for.end78.i.i.i_crit_edge
  %nc_packet_out.1.i.i.i = phi ptr [ %nc_packet_out.0.i.i.i, %for.end.i.i.i ], [ null, %do.end.i.i.i.for.end78.i.i.i_crit_edge ], [ null, %for.inc61.i.i.i.for.end78.i.i.i_crit_edge ]
  %call.i15.i.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i15.i.i.i, label %for.end78.i.i.i.batadv_nc_path_search.exit.i.i_crit_edge, label %land.lhs.true.i18.i.i.i

for.end78.i.i.i.batadv_nc_path_search.exit.i.i_crit_edge: ; preds = %for.end78.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_path_search.exit.i.i

land.lhs.true.i18.i.i.i:                          ; preds = %for.end78.i.i.i
  %call1.i16.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16.i.i.i)
  %tobool.not.i17.i.i.i = icmp eq i32 %call1.i16.i.i.i, 0
  br i1 %tobool.not.i17.i.i.i, label %land.lhs.true.i18.i.i.i.batadv_nc_path_search.exit.i.i_crit_edge, label %land.lhs.true2.i20.i.i.i

land.lhs.true.i18.i.i.i.batadv_nc_path_search.exit.i.i_crit_edge: ; preds = %land.lhs.true.i18.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_path_search.exit.i.i

land.lhs.true2.i20.i.i.i:                         ; preds = %land.lhs.true.i18.i.i.i
  %.b4.i19.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i19.i.i.i, label %land.lhs.true2.i20.i.i.i.batadv_nc_path_search.exit.i.i_crit_edge, label %if.then.i21.i.i.i

land.lhs.true2.i20.i.i.i.batadv_nc_path_search.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_path_search.exit.i.i

if.then.i21.i.i.i:                                ; preds = %land.lhs.true2.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #10
  br label %batadv_nc_path_search.exit.i.i

batadv_nc_path_search.exit.i.i:                   ; preds = %if.then.i21.i.i.i, %land.lhs.true2.i20.i.i.i.batadv_nc_path_search.exit.i.i_crit_edge, %land.lhs.true.i18.i.i.i.batadv_nc_path_search.exit.i.i_crit_edge, %for.end78.i.i.i.batadv_nc_path_search.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  %103 = tail call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i.i.i.i22.i.i.i = and i32 %103, -16384
  %104 = inttoptr i32 %and.i.i.i.i.i22.i.i.i to ptr
  %preempt_count.i.i.i.i23.i.i.i = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %preempt_count.i.i.i.i23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %preempt_count.i.i.i.i23.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %106, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i23.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %tobool18.not.i.i = icmp eq ptr %nc_packet_out.1.i.i.i, null
  br i1 %tobool18.not.i.i, label %batadv_nc_path_search.exit.i.i.for.inc.i.i_crit_edge, label %batadv_nc_path_search.exit.i.i.for.end.i.i_crit_edge

batadv_nc_path_search.exit.i.i.for.end.i.i_crit_edge: ; preds = %batadv_nc_path_search.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

batadv_nc_path_search.exit.i.i.for.inc.i.i_crit_edge: ; preds = %batadv_nc_path_search.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %batadv_nc_path_search.exit.i.i.for.inc.i.i_crit_edge, %if.end16.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i44.i.i.for.inc.i.i_crit_edge
  %107 = ptrtoint ptr %out_nc_node.075.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %out_nc_node.0.i.i = load volatile ptr, ptr %out_nc_node.075.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %out_nc_node.0.i.i, %out_coding_list.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %batadv_nc_path_search.exit.i.i.for.end.i.i_crit_edge, %do.end.i.i.for.end.i.i_crit_edge
  %nc_packet.2.i.i = phi ptr [ null, %do.end.i.i.for.end.i.i_crit_edge ], [ %nc_packet_out.1.i.i.i, %batadv_nc_path_search.exit.i.i.for.end.i.i_crit_edge ], [ null, %for.inc.i.i.for.end.i.i_crit_edge ]
  %call.i55.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i55.i.i, label %for.end.i.i.if.end.i67.i.i_crit_edge, label %land.lhs.true.i58.i.i

for.end.i.i.if.end.i67.i.i_crit_edge:             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i67.i.i

land.lhs.true.i58.i.i:                            ; preds = %for.end.i.i
  %call1.i56.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i56.i.i)
  %tobool.not.i57.i.i = icmp eq i32 %call1.i56.i.i, 0
  br i1 %tobool.not.i57.i.i, label %land.lhs.true.i58.i.i.if.end.i67.i.i_crit_edge, label %land.lhs.true2.i60.i.i

land.lhs.true.i58.i.i.if.end.i67.i.i_crit_edge:   ; preds = %land.lhs.true.i58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i67.i.i

land.lhs.true2.i60.i.i:                           ; preds = %land.lhs.true.i58.i.i
  %.b4.i59.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i59.i.i, label %land.lhs.true2.i60.i.i.if.end.i67.i.i_crit_edge, label %if.then.i61.i.i

land.lhs.true2.i60.i.i.if.end.i67.i.i_crit_edge:  ; preds = %land.lhs.true2.i60.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i67.i.i

if.then.i61.i.i:                                  ; preds = %land.lhs.true2.i60.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #10
  br label %if.end.i67.i.i

if.end.i67.i.i:                                   ; preds = %if.then.i61.i.i, %land.lhs.true2.i60.i.i.if.end.i67.i.i_crit_edge, %land.lhs.true.i58.i.i.if.end.i67.i.i_crit_edge, %for.end.i.i.if.end.i67.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  %108 = tail call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i.i.i.i62.i.i = and i32 %108, -16384
  %109 = inttoptr i32 %and.i.i.i.i.i62.i.i to ptr
  %preempt_count.i.i.i.i63.i.i = getelementptr inbounds %struct.thread_info, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %preempt_count.i.i.i.i63.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %preempt_count.i.i.i.i63.i.i, align 4
  %sub.i.i.i.i.i = add i32 %111, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i63.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %refcount.i.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call.i61.i, i32 0, i32 27
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i.i, i32 1, i32 3, i32 1) #10
  %112 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i, ptr %refcount.i.i.i, i32 1, ptr elementtype(i32) %refcount.i.i.i) #10, !srcloc !75
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %112, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i66.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i66.i.i, label %if.then.i.i68.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.end.i67.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.batadv_nc_skb_src_search.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !76

if.end5.i.i.i.i.i.i.i.batadv_nc_skb_src_search.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_skb_src_search.exit.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i, i32 noundef 3) #10
  br label %batadv_nc_skb_src_search.exit.i

if.then.i.i68.i.i:                                ; preds = %if.end.i67.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !77
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i.i.i) #10
  br label %batadv_nc_skb_src_search.exit.i

batadv_nc_skb_src_search.exit.i:                  ; preds = %if.then.i.i68.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.batadv_nc_skb_src_search.exit.i_crit_edge, %for.body.i.batadv_nc_skb_src_search.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ null, %for.body.i.batadv_nc_skb_src_search.exit.i_crit_edge ], [ %nc_packet.2.i.i, %if.end5.i.i.i.i.i.i.i.batadv_nc_skb_src_search.exit.i_crit_edge ], [ %nc_packet.2.i.i, %if.then10.i.i.i.i.i.i.i ], [ %nc_packet.2.i.i, %if.then.i.i68.i.i ]
  %tobool14.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool14.not.i, label %batadv_nc_skb_src_search.exit.i.for.cond.i_crit_edge, label %batadv_nc_skb_src_search.exit.i.for.end.i_crit_edge

batadv_nc_skb_src_search.exit.i.for.end.i_crit_edge: ; preds = %batadv_nc_skb_src_search.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

batadv_nc_skb_src_search.exit.i.for.cond.i_crit_edge: ; preds = %batadv_nc_skb_src_search.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

for.end.i:                                        ; preds = %batadv_nc_skb_src_search.exit.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %nc_packet.1.i = phi ptr [ %retval.0.i.i, %batadv_nc_skb_src_search.exit.i.for.end.i_crit_edge ], [ null, %for.cond.i.for.end.i_crit_edge ]
  %call.i65.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i65.i, label %for.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i68.i

for.end.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true.i68.i:                              ; preds = %for.end.i
  %call1.i66.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i66.i)
  %tobool.not.i67.i = icmp eq i32 %call1.i66.i, 0
  br i1 %tobool.not.i67.i, label %land.lhs.true.i68.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i70.i

land.lhs.true.i68.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i70.i:                             ; preds = %land.lhs.true.i68.i
  %.b4.i69.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i69.i, label %land.lhs.true2.i70.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i71.i

land.lhs.true2.i70.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

if.then.i71.i:                                    ; preds = %land.lhs.true2.i70.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #10
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i71.i, %land.lhs.true2.i70.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i68.i.rcu_read_unlock.exit.i_crit_edge, %for.end.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  %113 = tail call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i.i.i.i72.i = and i32 %113, -16384
  %114 = inttoptr i32 %and.i.i.i.i.i72.i to ptr
  %preempt_count.i.i.i.i73.i = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %preempt_count.i.i.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %preempt_count.i.i.i.i73.i, align 4
  %sub.i.i.i.i = add i32 %116, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i73.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %tobool26.not.i = icmp eq ptr %nc_packet.1.i, null
  br i1 %tobool26.not.i, label %rcu_read_unlock.exit.i.if.end9_crit_edge, label %if.end28.i

rcu_read_unlock.exit.i.if.end9_crit_edge:         ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end28.i:                                       ; preds = %rcu_read_unlock.exit.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %117 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %data.i.i.i.i, align 4
  %119 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %118 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %120 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %call1.i.i75.i = tail call ptr @__pskb_copy_fclone(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i.i, i32 noundef 2592, i1 noundef zeroext true) #10
  %tobool.not.i76.i = icmp eq ptr %call1.i.i75.i, null
  br i1 %tobool.not.i76.i, label %if.end28.i.batadv_nc_skb_store_before_coding.exit.i_crit_edge, label %if.end.i77.i

if.end28.i.batadv_nc_skb_store_before_coding.exit.i_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_skb_store_before_coding.exit.i

if.end.i77.i:                                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  %head.i.i13.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1.i.i75.i, i32 0, i32 18
  %121 = ptrtoint ptr %head.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %head.i.i13.i.i, align 8
  %mac_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1.i.i75.i, i32 0, i32 15, i32 0, i32 21
  %123 = ptrtoint ptr %mac_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %mac_header.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %124 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %122, i32 %conv.i.i.i.i
  %h_source.i.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i.i, i32 0, i32 1
  %125 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %127 = ptrtoint ptr %h_source.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %h_source.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 4
  %128 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %h_source.i.i, i32 4
  %130 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %129, ptr %add.ptr1.i.i.i, align 2
  %131 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %addr.i, align 4
  store i32 %132, ptr %add.ptr.i.i.i.i, align 4
  %133 = ptrtoint ptr %add.ptr.i.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %add.ptr.i.i.i.i.i.i.i, align 2
  store i16 %134, ptr %add.ptr.i.i.i, align 2
  %call5.i.i = tail call ptr @skb_push(ptr noundef nonnull %call1.i.i75.i, i32 noundef 14) #10
  tail call void @batadv_nc_skb_store_for_decoding(ptr noundef %add.ptr.i.i39, ptr noundef nonnull %call1.i.i75.i) #10
  tail call void @consume_skb(ptr noundef nonnull %call1.i.i75.i) #10
  br label %batadv_nc_skb_store_before_coding.exit.i

batadv_nc_skb_store_before_coding.exit.i:         ; preds = %if.end.i77.i, %if.end28.i.batadv_nc_skb_store_before_coding.exit.i_crit_edge
  %skb31.i = getelementptr inbounds %struct.batadv_nc_packet, ptr %nc_packet.1.i, i32 0, i32 4
  %135 = ptrtoint ptr %skb31.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %skb31.i, align 4
  %neigh_node32.i = getelementptr inbounds %struct.batadv_nc_packet, ptr %nc_packet.1.i, i32 0, i32 3
  %137 = ptrtoint ptr %neigh_node32.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %neigh_node32.i, align 4
  %data.i.i.i78.i = getelementptr inbounds %struct.sk_buff, ptr %136, i32 0, i32 19
  %139 = ptrtoint ptr %data.i.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %data.i.i.i78.i, align 4
  %head.i.i.i79.i = getelementptr inbounds %struct.sk_buff, ptr %136, i32 0, i32 18
  %141 = ptrtoint ptr %head.i.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %head.i.i.i79.i, align 8
  %sub.ptr.lhs.cast.i.i.i80.i = ptrtoint ptr %140 to i32
  %sub.ptr.rhs.cast.i.i.i81.i = ptrtoint ptr %142 to i32
  %sub.ptr.sub.i.i.i82.i = sub i32 %sub.ptr.lhs.cast.i.i.i80.i, %sub.ptr.rhs.cast.i.i.i81.i
  %call1.i.i83.i = tail call ptr @__pskb_copy_fclone(ptr noundef %136, i32 noundef %sub.ptr.sub.i.i.i82.i, i32 noundef 2592, i1 noundef zeroext true) #10
  %tobool.not.i84.i = icmp eq ptr %call1.i.i83.i, null
  br i1 %tobool.not.i84.i, label %batadv_nc_skb_store_before_coding.exit.i.batadv_nc_skb_store_before_coding.exit95.i_crit_edge, label %if.end.i94.i

batadv_nc_skb_store_before_coding.exit.i.batadv_nc_skb_store_before_coding.exit95.i_crit_edge: ; preds = %batadv_nc_skb_store_before_coding.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_skb_store_before_coding.exit95.i

if.end.i94.i:                                     ; preds = %batadv_nc_skb_store_before_coding.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %addr33.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %138, i32 0, i32 2
  %head.i.i13.i85.i = getelementptr inbounds %struct.sk_buff, ptr %call1.i.i83.i, i32 0, i32 18
  %143 = ptrtoint ptr %head.i.i13.i85.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %head.i.i13.i85.i, align 8
  %mac_header.i.i.i86.i = getelementptr inbounds %struct.sk_buff, ptr %call1.i.i83.i, i32 0, i32 15, i32 0, i32 21
  %145 = ptrtoint ptr %mac_header.i.i.i86.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %mac_header.i.i.i86.i, align 2
  %conv.i.i.i87.i = zext i16 %146 to i32
  %add.ptr.i.i.i88.i = getelementptr i8, ptr %144, i32 %conv.i.i.i87.i
  %h_source.i89.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i88.i, i32 0, i32 1
  %147 = ptrtoint ptr %add.ptr.i.i.i88.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %add.ptr.i.i.i88.i, align 4
  %149 = ptrtoint ptr %h_source.i89.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %h_source.i89.i, align 4
  %add.ptr.i.i90.i = getelementptr i8, ptr %add.ptr.i.i.i88.i, i32 4
  %150 = ptrtoint ptr %add.ptr.i.i90.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %add.ptr.i.i90.i, align 2
  %add.ptr1.i.i91.i = getelementptr i8, ptr %h_source.i89.i, i32 4
  %152 = ptrtoint ptr %add.ptr1.i.i91.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %151, ptr %add.ptr1.i.i91.i, align 2
  %153 = ptrtoint ptr %addr33.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %addr33.i, align 4
  store i32 %154, ptr %add.ptr.i.i.i88.i, align 4
  %add.ptr.i14.i92.i = getelementptr %struct.batadv_neigh_node, ptr %138, i32 0, i32 2, i32 4
  %155 = ptrtoint ptr %add.ptr.i14.i92.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %add.ptr.i14.i92.i, align 2
  store i16 %156, ptr %add.ptr.i.i90.i, align 2
  %call5.i93.i = tail call ptr @skb_push(ptr noundef nonnull %call1.i.i83.i, i32 noundef 14) #10
  tail call void @batadv_nc_skb_store_for_decoding(ptr noundef %add.ptr.i.i39, ptr noundef nonnull %call1.i.i83.i) #10
  tail call void @consume_skb(ptr noundef nonnull %call1.i.i83.i) #10
  br label %batadv_nc_skb_store_before_coding.exit95.i

batadv_nc_skb_store_before_coding.exit95.i:       ; preds = %if.end.i94.i, %batadv_nc_skb_store_before_coding.exit.i.batadv_nc_skb_store_before_coding.exit95.i_crit_edge
  %157 = ptrtoint ptr %orig_node1.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %orig_node1.i, align 4
  %call.i96.i = tail call ptr @batadv_orig_router_get(ptr noundef %158, ptr noundef null) #10
  %tobool.not.i97.i = icmp eq ptr %call.i96.i, null
  br i1 %tobool.not.i97.i, label %batadv_nc_skb_store_before_coding.exit95.i.if.end37.i_crit_edge, label %if.end.i100.i

batadv_nc_skb_store_before_coding.exit95.i.if.end37.i_crit_edge: ; preds = %batadv_nc_skb_store_before_coding.exit95.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

if.end.i100.i:                                    ; preds = %batadv_nc_skb_store_before_coding.exit95.i
  %call1.i98.i = tail call ptr @batadv_neigh_ifinfo_get(ptr noundef nonnull %call.i96.i, ptr noundef null) #10
  %tobool2.not.i99.i = icmp eq ptr %call1.i98.i, null
  br i1 %tobool2.not.i99.i, label %if.end.i100.i.if.end.i.i.i_crit_edge, label %if.end4.i.i

if.end.i100.i.if.end.i.i.i_crit_edge:             ; preds = %if.end.i100.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.end4.i.i:                                      ; preds = %if.end.i100.i
  %159 = ptrtoint ptr %neigh_node32.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %neigh_node32.i, align 4
  %orig_node6.i.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %orig_node6.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %orig_node6.i.i, align 4
  %call7.i.i = tail call ptr @batadv_orig_router_get(ptr noundef %162, ptr noundef null) #10
  %tobool8.not.i.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not.i.i, label %if.end4.i.i.if.end.i.i.i_crit_edge, label %if.end10.i.i

if.end4.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.end10.i.i:                                     ; preds = %if.end4.i.i
  %call11.i.i = tail call ptr @batadv_neigh_ifinfo_get(ptr noundef nonnull %call7.i.i, ptr noundef null) #10
  %tobool12.not.i.i = icmp eq ptr %call11.i.i, null
  br i1 %tobool12.not.i.i, label %if.end10.i.i.if.end.i.i.i_crit_edge, label %if.end14.i.i

if.end10.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.end14.i.i:                                     ; preds = %if.end10.i.i
  %tq_avg.i.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call1.i98.i, i32 0, i32 2, i32 2
  %163 = ptrtoint ptr %tq_avg.i.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %tq_avg.i.i, align 2
  %conv.i.i.i = zext i8 %164 to i32
  %sub.i.i.i = sub nuw nsw i32 256, %conv.i.i.i
  %call.i.i.i101.i = tail call i32 @prandom_u32() #10
  %conv.i.i.i102.i = zext i32 %call.i.i.i101.i to i64
  %conv1.i.i.i.i = zext i32 %sub.i.i.i to i64
  %mul.i.i.i.i = mul nuw nsw i64 %conv1.i.i.i.i, %conv.i.i.i102.i
  %shr.i.i.i.i = lshr i64 %mul.i.i.i.i, 32
  %165 = trunc i64 %shr.i.i.i.i to i8
  %tq_avg17.i.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call11.i.i, i32 0, i32 2, i32 2
  %166 = ptrtoint ptr %tq_avg17.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %tq_avg17.i.i, align 2
  %conv.i249.i.i = zext i8 %167 to i32
  %sub.i250.i.i = sub nuw nsw i32 256, %conv.i249.i.i
  %call.i.i251.i.i = tail call i32 @prandom_u32() #10
  %conv.i.i252.i.i = zext i32 %call.i.i251.i.i to i64
  %conv1.i.i253.i.i = zext i32 %sub.i250.i.i to i64
  %mul.i.i254.i.i = mul nuw nsw i64 %conv1.i.i253.i.i, %conv.i.i252.i.i
  %shr.i.i255.i.i = lshr i64 %mul.i.i254.i.i, 32
  %168 = trunc i64 %shr.i.i255.i.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %168, i8 %165)
  %cmp.not.i103.i = icmp ult i8 %168, %165
  %169 = ptrtoint ptr %neigh_node32.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %neigh_node32.i, align 4
  %nc_path31.i.i = getelementptr inbounds %struct.batadv_nc_packet, ptr %nc_packet.1.i, i32 0, i32 5
  %171 = ptrtoint ptr %nc_path31.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %nc_path31.i.i, align 4
  %prev_hop32.i.i = getelementptr inbounds %struct.batadv_nc_path, ptr %172, i32 0, i32 6
  br i1 %cmp.not.i103.i, label %if.else.i.i, label %if.then21.i.i

if.then21.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %173 = ptrtoint ptr %skb31.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %skb31.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %174, i32 0, i32 19
  %175 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %data.i.i, align 4
  %177 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %data.i.i.i.i, align 4
  %packet_id.i.i = getelementptr inbounds %struct.batadv_nc_packet, ptr %nc_packet.1.i, i32 0, i32 1
  %179 = ptrtoint ptr %packet_id.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %packet_id.i.i, align 4
  %add.ptr.i105.i = getelementptr i8, ptr %178, i32 10
  %call27.i.i = tail call i32 @batadv_skb_crc32(ptr noundef %skb, ptr noundef %add.ptr.i105.i) #10
  br label %if.end41.i.i

if.else.i.i:                                      ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %181 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %data.i.i.i.i, align 4
  %183 = ptrtoint ptr %skb31.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %skb31.i, align 4
  %data36.i.i = getelementptr inbounds %struct.sk_buff, ptr %184, i32 0, i32 19
  %185 = ptrtoint ptr %data36.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %data36.i.i, align 4
  %add.ptr38.i.i = getelementptr i8, ptr %182, i32 10
  %call39.i.i = tail call i32 @batadv_skb_crc32(ptr noundef %skb, ptr noundef %add.ptr38.i.i) #10
  %packet_id40.i.i = getelementptr inbounds %struct.batadv_nc_packet, ptr %nc_packet.1.i, i32 0, i32 1
  %187 = ptrtoint ptr %packet_id40.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %packet_id40.i.i, align 4
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.else.i.i, %if.then21.i.i
  %packet1.0.i.i = phi ptr [ %176, %if.then21.i.i ], [ %182, %if.else.i.i ]
  %packet2.0.i.i = phi ptr [ %178, %if.then21.i.i ], [ %186, %if.else.i.i ]
  %first_dest.0.i.i = phi ptr [ %170, %if.then21.i.i ], [ %neigh_node, %if.else.i.i ]
  %second_dest.0.i.i = phi ptr [ %neigh_node, %if.then21.i.i ], [ %170, %if.else.i.i ]
  %first_source.0.i.i = phi ptr [ %prev_hop32.i.i, %if.then21.i.i ], [ %h_source.i, %if.else.i.i ]
  %second_source.0.i.i = phi ptr [ %h_source.i, %if.then21.i.i ], [ %prev_hop32.i.i, %if.else.i.i ]
  %packet_id1.0.i.i = phi i32 [ %180, %if.then21.i.i ], [ %call39.i.i, %if.else.i.i ]
  %packet_id2.0.i.i = phi i32 [ %call27.i.i, %if.then21.i.i ], [ %188, %if.else.i.i ]
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %189 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %len.i.i, align 4
  %191 = ptrtoint ptr %skb31.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %skb31.i, align 4
  %len43.i.i = getelementptr inbounds %struct.sk_buff, ptr %192, i32 0, i32 6
  %193 = ptrtoint ptr %len43.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %len43.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %190, i32 %194)
  %cmp44.not.i.i = icmp ugt i32 %190, %194
  %skb..i.i = select i1 %cmp44.not.i.i, ptr %skb, ptr %192
  %.skb.i.i = select i1 %cmp44.not.i.i, ptr %192, ptr %skb
  %len51.i.i = getelementptr inbounds %struct.sk_buff, ptr %.skb.i.i, i32 0, i32 6
  %195 = ptrtoint ptr %len51.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %len51.i.i, align 4
  %sub52.i.i = add i32 %196, -10
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb..i.i, i32 0, i32 7
  %197 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool.i.not.i.i.i = icmp eq i32 %198, 0
  br i1 %tobool.i.not.i.i.i, label %if.end41.i.i.lor.lhs.false.i.i_crit_edge, label %cond.true.i.i.i

if.end41.i.i.lor.lhs.false.i.i_crit_edge:         ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i.i

cond.true.i.i.i:                                  ; preds = %if.end41.i.i
  %call.i.i257.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb..i.i, i32 noundef %198) #10
  %tobool.not.i.i.i106.i = icmp eq ptr %call.i.i257.i.i, null
  br i1 %tobool.not.i.i.i106.i, label %cond.true.i.i.i.if.end.i.i.i_crit_edge, label %cond.true.i.i.i.lor.lhs.false.i.i_crit_edge

cond.true.i.i.i.lor.lhs.false.i.i_crit_edge:      ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i.i

cond.true.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

lor.lhs.false.i.i:                                ; preds = %cond.true.i.i.i.lor.lhs.false.i.i_crit_edge, %if.end41.i.i.lor.lhs.false.i.i_crit_edge
  %data_len.i.i258.i.i = getelementptr inbounds %struct.sk_buff, ptr %.skb.i.i, i32 0, i32 7
  %199 = ptrtoint ptr %data_len.i.i258.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %data_len.i.i258.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool.i.not.i259.i.i = icmp eq i32 %200, 0
  br i1 %tobool.i.not.i259.i.i, label %lor.lhs.false.i.i.if.end60.i.i_crit_edge, label %cond.true.i263.i.i

lor.lhs.false.i.i.if.end60.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.i.i

cond.true.i263.i.i:                               ; preds = %lor.lhs.false.i.i
  %call.i.i260.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %.skb.i.i, i32 noundef %200) #10
  %tobool.not.i.i261.i.i = icmp eq ptr %call.i.i260.i.i, null
  br i1 %tobool.not.i.i261.i.i, label %cond.true.i263.i.i.if.end.i.i.i_crit_edge, label %cond.true.i263.i.i.if.end60.i.i_crit_edge

cond.true.i263.i.i.if.end60.i.i_crit_edge:        ; preds = %cond.true.i263.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.i.i

cond.true.i263.i.i.if.end.i.i.i_crit_edge:        ; preds = %cond.true.i263.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.end60.i.i:                                     ; preds = %cond.true.i263.i.i.if.end60.i.i_crit_edge, %lor.lhs.false.i.i.if.end60.i.i_crit_edge
  %call61.i.i = tail call ptr @skb_push(ptr noundef %skb..i.i, i32 noundef 36) #10
  %data62.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb..i.i, i32 0, i32 19
  %201 = ptrtoint ptr %data62.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %data62.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb..i.i, i32 0, i32 18
  %203 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %202 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %204 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i266.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb..i.i, i32 0, i32 15, i32 0, i32 21
  %205 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 %conv.i266.i.i, ptr %mac_header.i.i.i, align 2
  %206 = ptrtoint ptr %202 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 2, ptr %202, align 2
  %version.i.i = getelementptr inbounds %struct.batadv_coded_packet, ptr %202, i32 0, i32 1
  %207 = ptrtoint ptr %version.i.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 15, ptr %version.i.i, align 1
  %ttl.i.i = getelementptr inbounds %struct.batadv_unicast_packet, ptr %packet1.0.i.i, i32 0, i32 2
  %208 = ptrtoint ptr %ttl.i.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %ttl.i.i, align 1
  %ttl63.i.i = getelementptr inbounds %struct.batadv_coded_packet, ptr %202, i32 0, i32 2
  %210 = ptrtoint ptr %ttl63.i.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %209, ptr %ttl63.i.i, align 2
  %first_source64.i.i = getelementptr inbounds %struct.batadv_coded_packet, ptr %202, i32 0, i32 4
  %211 = ptrtoint ptr %first_source.0.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %first_source.0.i.i, align 4
  %213 = ptrtoint ptr %first_source64.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %212, ptr %first_source64.i.i, align 4
  %add.ptr.i.i107.i = getelementptr i8, ptr %first_source.0.i.i, i32 4
  %214 = ptrtoint ptr %add.ptr.i.i107.i to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %add.ptr.i.i107.i, align 2
  %add.ptr1.i.i108.i = getelementptr %struct.batadv_coded_packet, ptr %202, i32 0, i32 4, i32 4
  %216 = ptrtoint ptr %add.ptr1.i.i108.i to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 %215, ptr %add.ptr1.i.i108.i, align 2
  %first_orig_dest.i.i = getelementptr inbounds %struct.batadv_coded_packet, ptr %202, i32 0, i32 5
  %dest.i.i = getelementptr inbounds %struct.batadv_unicast_packet, ptr %packet1.0.i.i, i32 0, i32 4
  %217 = ptrtoint ptr %dest.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %dest.i.i, align 4
  %219 = ptrtoint ptr %first_orig_dest.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %218, ptr %first_orig_dest.i.i, align 4
  %add.ptr.i267.i.i = getelementptr %struct.batadv_unicast_packet, ptr %packet1.0.i.i, i32 0, i32 4, i32 4
  %220 = ptrtoint ptr %add.ptr.i267.i.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %add.ptr.i267.i.i, align 2
  %add.ptr1.i268.i.i = getelementptr %struct.batadv_coded_packet, ptr %202, i32 0, i32 5, i32 4
  %222 = ptrtoint ptr %add.ptr1.i268.i.i to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 %221, ptr %add.ptr1.i268.i.i, align 2
  %first_crc.i.i = getelementptr inbounds %struct.batadv_coded_packet, ptr %202, i32 0, i32 6
  %223 = ptrtoint ptr %first_crc.i.i to i32
  call void @__asan_storeN_noabort(i32 %223, i32 4)
  store i32 %packet_id1.0.i.i, ptr %first_crc.i.i, align 2
  %ttvn.i.i = getelementptr inbounds %struct.batadv_unicast_packet, ptr %packet1.0.i.i, i32 0, i32 3
  %224 = ptrtoint ptr %ttvn.i.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %ttvn.i.i, align 1
  %first_ttvn.i.i = getelementptr inbounds %struct.batadv_coded_packet, ptr %202, i32 0, i32 3
  %226 = ptrtoint ptr %first_ttvn.i.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %225, ptr %first_ttvn.i.i, align 1
  %second_dest68.i.i = getelementptr inbounds %struct.batadv_coded_packet, ptr %202, i32 0, i32 9
  %addr.i109.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %second_dest.0.i.i, i32 0, i32 2
  %227 = ptrtoint ptr %addr.i109.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %addr.i109.i, align 4
  %229 = ptrtoint ptr %second_dest68.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %228, ptr %second_dest68.i.i, align 4
  %add.ptr.i269.i.i = getelementptr %struct.batadv_neigh_node, ptr %second_dest.0.i.i, i32 0, i32 2, i32 4
  %230 = ptrtoint ptr %add.ptr.i269.i.i to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %add.ptr.i269.i.i, align 2
  %add.ptr1.i270.i.i = getelementptr %struct.batadv_coded_packet, ptr %202, i32 0, i32 9, i32 4
  %232 = ptrtoint ptr %add.ptr1.i270.i.i to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 %231, ptr %add.ptr1.i270.i.i, align 2
  %second_source71.i.i = getelementptr inbounds %struct.batadv_coded_packet, ptr %202, i32 0, i32 10
  %233 = ptrtoint ptr %second_source.0.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %second_source.0.i.i, align 4
  %235 = ptrtoint ptr %second_source71.i.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %234, ptr %second_source71.i.i, align 4
  %add.ptr.i271.i.i = getelementptr i8, ptr %second_source.0.i.i, i32 4
  %236 = ptrtoint ptr %add.ptr.i271.i.i to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %add.ptr.i271.i.i, align 2
  %add.ptr1.i272.i.i = getelementptr %struct.batadv_coded_packet, ptr %202, i32 0, i32 10, i32 4
  %238 = ptrtoint ptr %add.ptr1.i272.i.i to i32
  call void @__asan_store2_noabort(i32 %238)
  store i16 %237, ptr %add.ptr1.i272.i.i, align 2
  %second_orig_dest.i.i = getelementptr inbounds %struct.batadv_coded_packet, ptr %202, i32 0, i32 11
  %dest74.i.i = getelementptr inbounds %struct.batadv_unicast_packet, ptr %packet2.0.i.i, i32 0, i32 4
  %239 = ptrtoint ptr %dest74.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %dest74.i.i, align 4
  %241 = ptrtoint ptr %second_orig_dest.i.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %240, ptr %second_orig_dest.i.i, align 4
  %add.ptr.i273.i.i = getelementptr %struct.batadv_unicast_packet, ptr %packet2.0.i.i, i32 0, i32 4, i32 4
  %242 = ptrtoint ptr %add.ptr.i273.i.i to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %add.ptr.i273.i.i, align 2
  %add.ptr1.i274.i.i = getelementptr %struct.batadv_coded_packet, ptr %202, i32 0, i32 11, i32 4
  %244 = ptrtoint ptr %add.ptr1.i274.i.i to i32
  call void @__asan_store2_noabort(i32 %244)
  store i16 %243, ptr %add.ptr1.i274.i.i, align 2
  %second_crc.i.i = getelementptr inbounds %struct.batadv_coded_packet, ptr %202, i32 0, i32 12
  %245 = ptrtoint ptr %second_crc.i.i to i32
  call void @__asan_storeN_noabort(i32 %245, i32 4)
  store i32 %packet_id2.0.i.i, ptr %second_crc.i.i, align 2
  %ttl76.i.i = getelementptr inbounds %struct.batadv_unicast_packet, ptr %packet2.0.i.i, i32 0, i32 2
  %246 = ptrtoint ptr %ttl76.i.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %ttl76.i.i, align 1
  %second_ttl.i.i = getelementptr inbounds %struct.batadv_coded_packet, ptr %202, i32 0, i32 7
  %248 = ptrtoint ptr %second_ttl.i.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 %247, ptr %second_ttl.i.i, align 2
  %ttvn77.i.i = getelementptr inbounds %struct.batadv_unicast_packet, ptr %packet2.0.i.i, i32 0, i32 3
  %249 = ptrtoint ptr %ttvn77.i.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %ttvn77.i.i, align 1
  %second_ttvn.i.i = getelementptr inbounds %struct.batadv_coded_packet, ptr %202, i32 0, i32 8
  %251 = ptrtoint ptr %second_ttvn.i.i to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 %250, ptr %second_ttvn.i.i, align 1
  %conv78.i.i = trunc i32 %sub52.i.i to i16
  %coded_len.i.i = getelementptr inbounds %struct.batadv_coded_packet, ptr %202, i32 0, i32 13
  %252 = ptrtoint ptr %coded_len.i.i to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 %conv78.i.i, ptr %coded_len.i.i, align 2
  %253 = load ptr, ptr %data62.i.i, align 4
  %add.ptr80.i.i = getelementptr i8, ptr %253, i32 46
  %data81.i.i = getelementptr inbounds %struct.sk_buff, ptr %.skb.i.i, i32 0, i32 19
  %254 = ptrtoint ptr %data81.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %data81.i.i, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %255, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub52.i.i)
  %cmp8.not.i.i.i = icmp eq i32 %sub52.i.i, 0
  br i1 %cmp8.not.i.i.i, label %if.end60.i.i.batadv_nc_memxor.exit.i.i_crit_edge, label %if.end60.i.i.for.body.i.i111.i_crit_edge

if.end60.i.i.for.body.i.i111.i_crit_edge:         ; preds = %if.end60.i.i
  br label %for.body.i.i111.i

if.end60.i.i.batadv_nc_memxor.exit.i.i_crit_edge: ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_memxor.exit.i.i

for.body.i.i111.i:                                ; preds = %for.body.i.i111.i.for.body.i.i111.i_crit_edge, %if.end60.i.i.for.body.i.i111.i_crit_edge
  %i.09.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i111.i.for.body.i.i111.i_crit_edge ], [ 0, %if.end60.i.i.for.body.i.i111.i_crit_edge ]
  %arrayidx.i.i110.i = getelementptr i8, ptr %add.ptr82.i.i, i32 %i.09.i.i.i
  %256 = ptrtoint ptr %arrayidx.i.i110.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %arrayidx.i.i110.i, align 1
  %arrayidx1.i.i.i = getelementptr i8, ptr %add.ptr80.i.i, i32 %i.09.i.i.i
  %258 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %arrayidx1.i.i.i, align 1
  %xor7.i.i.i = xor i8 %259, %257
  store i8 %xor7.i.i.i, ptr %arrayidx1.i.i.i, align 1
  %inc.i.i.i = add nuw i32 %i.09.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %sub52.i.i
  br i1 %exitcond.not.i.i.i, label %for.body.i.i111.i.batadv_nc_memxor.exit.i.i_crit_edge, label %for.body.i.i111.i.for.body.i.i111.i_crit_edge

for.body.i.i111.i.for.body.i.i111.i_crit_edge:    ; preds = %for.body.i.i111.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i111.i

for.body.i.i111.i.batadv_nc_memxor.exit.i.i_crit_edge: ; preds = %for.body.i.i111.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_memxor.exit.i.i

batadv_nc_memxor.exit.i.i:                        ; preds = %for.body.i.i111.i.batadv_nc_memxor.exit.i.i_crit_edge, %if.end60.i.i.batadv_nc_memxor.exit.i.i_crit_edge
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %.skb.i.i, i32 0, i32 3
  %260 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load1_noabort(i32 %260)
  %bf.load.i.i = load i8, ptr %cb.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool84.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  %cb103.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb..i.i, i32 0, i32 3
  %261 = ptrtoint ptr %cb103.i.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %bf.load105.i.i = load i8, ptr %cb103.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load105.i.i)
  %tobool107.not.i.i = icmp sgt i8 %bf.load105.i.i, -1
  br i1 %tobool84.not.i.i, label %land.lhs.true102.i.i, label %land.lhs.true.i112.i

land.lhs.true.i112.i:                             ; preds = %batadv_nc_memxor.exit.i.i
  br i1 %tobool107.not.i.i, label %if.then127.i.i, label %if.then91.i.i

if.then91.i.i:                                    ; preds = %land.lhs.true.i112.i
  call void @__sanitizer_cov_trace_pc() #12
  %262 = ptrtoint ptr %len51.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %len51.i.i, align 4
  %len93.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb..i.i, i32 0, i32 6
  %264 = ptrtoint ptr %len93.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %len93.i.i, align 4
  %add94.i.i = add i32 %263, 28
  %add95.i.i = add i32 %add94.i.i, %265
  tail call fastcc void @batadv_add_counter(ptr noundef %add.ptr.i.i39, i32 noundef 30, i32 noundef 2) #10
  tail call fastcc void @batadv_add_counter(ptr noundef %add.ptr.i.i39, i32 noundef 31, i32 noundef %add95.i.i) #10
  br label %out.i.i

land.lhs.true102.i.i:                             ; preds = %batadv_nc_memxor.exit.i.i
  br i1 %tobool107.not.i.i, label %if.then108.i.i, label %if.then145.i.i

if.then108.i.i:                                   ; preds = %land.lhs.true102.i.i
  %266 = ptrtoint ptr %len51.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %len51.i.i, align 4
  %len111.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb..i.i, i32 0, i32 6
  %268 = ptrtoint ptr %len111.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %len111.i.i, align 4
  %add112.i.i = add i32 %267, 28
  %add113.i.i = add i32 %add112.i.i, %269
  %270 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !69
  %bat_counters.i.i.i = getelementptr i8, ptr %19, i32 2312
  %271 = ptrtoint ptr %bat_counters.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %bat_counters.i.i.i, align 4
  %arrayidx.i275.i.i = getelementptr i64, ptr %272, i32 28
  %273 = ptrtoint ptr %arrayidx.i275.i.i to i32
  %274 = tail call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i.i.i = and i32 %274, -16384
  %275 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %275, i32 0, i32 3
  %276 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx14.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %277
  %278 = ptrtoint ptr %arrayidx14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %arrayidx14.i.i.i, align 4
  %add.i.i.i = add i32 %279, %273
  %280 = inttoptr i32 %add.i.i.i to ptr
  %281 = ptrtoint ptr %280 to i32
  call void @__asan_load8_noabort(i32 %281)
  %282 = load i64, ptr %280, align 8
  %add15.i.i.i = add i64 %282, 2
  store i64 %add15.i.i.i, ptr %280, align 8
  %283 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !70
  %and.i.i.i.i.i = and i32 %283, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i113.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i113.i, label %if.then.i.i114.i, label %if.then108.i.i.batadv_add_counter.exit.i.i_crit_edge, !prof !68

if.then108.i.i.batadv_add_counter.exit.i.i_crit_edge: ; preds = %if.then108.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_add_counter.exit.i.i

if.then.i.i114.i:                                 ; preds = %if.then108.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %batadv_add_counter.exit.i.i

batadv_add_counter.exit.i.i:                      ; preds = %if.then.i.i114.i, %if.then108.i.i.batadv_add_counter.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %270) #10, !srcloc !71
  %284 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !69
  %conv6.i.i.i = zext i32 %add113.i.i to i64
  %285 = ptrtoint ptr %bat_counters.i.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %bat_counters.i.i.i, align 4
  %arrayidx.i277.i.i = getelementptr i64, ptr %286, i32 29
  %287 = ptrtoint ptr %arrayidx.i277.i.i to i32
  %288 = tail call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i278.i.i = and i32 %288, -16384
  %289 = inttoptr i32 %and.i.i278.i.i to ptr
  %cpu.i279.i.i = getelementptr inbounds %struct.thread_info, ptr %289, i32 0, i32 3
  %290 = ptrtoint ptr %cpu.i279.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %cpu.i279.i.i, align 4
  %arrayidx14.i280.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %291
  %292 = ptrtoint ptr %arrayidx14.i280.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %arrayidx14.i280.i.i, align 4
  %add.i281.i.i = add i32 %293, %287
  %294 = inttoptr i32 %add.i281.i.i to ptr
  %295 = ptrtoint ptr %294 to i32
  call void @__asan_load8_noabort(i32 %295)
  %296 = load i64, ptr %294, align 8
  %add15.i282.i.i = add i64 %296, %conv6.i.i.i
  store i64 %add15.i282.i.i, ptr %294, align 8
  %297 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !70
  %and.i.i.i283.i.i = and i32 %297, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i283.i.i)
  %tobool.not.i284.i.i = icmp eq i32 %and.i.i.i283.i.i, 0
  br i1 %tobool.not.i284.i.i, label %if.then.i285.i.i, label %batadv_add_counter.exit.i.i.batadv_add_counter.exit286.i.i_crit_edge, !prof !68

batadv_add_counter.exit.i.i.batadv_add_counter.exit286.i.i_crit_edge: ; preds = %batadv_add_counter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_add_counter.exit286.i.i

if.then.i285.i.i:                                 ; preds = %batadv_add_counter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %batadv_add_counter.exit286.i.i

batadv_add_counter.exit286.i.i:                   ; preds = %if.then.i285.i.i, %batadv_add_counter.exit.i.i.batadv_add_counter.exit286.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %284) #10, !srcloc !71
  br label %out.i.i

if.then127.i.i:                                   ; preds = %land.lhs.true.i112.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @batadv_add_counter(ptr noundef %add.ptr.i.i39, i32 noundef 30, i32 noundef 1) #10
  %298 = ptrtoint ptr %len51.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %len51.i.i, align 4
  %add129.i.i = add i32 %299, 14
  tail call fastcc void @batadv_add_counter(ptr noundef %add.ptr.i.i39, i32 noundef 31, i32 noundef %add129.i.i) #10
  tail call fastcc void @batadv_add_counter(ptr noundef %add.ptr.i.i39, i32 noundef 28, i32 noundef 1) #10
  %len130.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb..i.i, i32 0, i32 6
  %300 = ptrtoint ptr %len130.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %len130.i.i, align 4
  %add131.i.i = add i32 %301, 14
  tail call fastcc void @batadv_add_counter(ptr noundef %add.ptr.i.i39, i32 noundef 29, i32 noundef %add131.i.i) #10
  br label %out.i.i

if.then145.i.i:                                   ; preds = %land.lhs.true102.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @batadv_add_counter(ptr noundef %add.ptr.i.i39, i32 noundef 28, i32 noundef 1) #10
  %302 = ptrtoint ptr %len51.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %len51.i.i, align 4
  %add147.i.i = add i32 %303, 14
  tail call fastcc void @batadv_add_counter(ptr noundef %add.ptr.i.i39, i32 noundef 29, i32 noundef %add147.i.i) #10
  tail call fastcc void @batadv_add_counter(ptr noundef %add.ptr.i.i39, i32 noundef 30, i32 noundef 1) #10
  %len148.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb..i.i, i32 0, i32 6
  %304 = ptrtoint ptr %len148.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %len148.i.i, align 4
  %add149.i.i = add i32 %305, 14
  tail call fastcc void @batadv_add_counter(ptr noundef %add.ptr.i.i39, i32 noundef 31, i32 noundef %add149.i.i) #10
  br label %out.i.i

out.i.i:                                          ; preds = %if.then145.i.i, %if.then127.i.i, %batadv_add_counter.exit286.i.i, %if.then91.i.i
  tail call void @consume_skb(ptr noundef %.skb.i.i) #10
  %306 = ptrtoint ptr %skb31.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr null, ptr %skb31.i, align 4
  tail call fastcc void @batadv_nc_packet_free(ptr noundef nonnull %nc_packet.1.i, i1 noundef zeroext false) #10
  %call155.i.i = tail call i32 @batadv_send_unicast_skb(ptr noundef %skb..i.i, ptr noundef %first_dest.0.i.i) #10
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %out.i.i, %cond.true.i263.i.i.if.end.i.i.i_crit_edge, %cond.true.i.i.i.if.end.i.i.i_crit_edge, %if.end10.i.i.if.end.i.i.i_crit_edge, %if.end4.i.i.if.end.i.i.i_crit_edge, %if.end.i100.i.if.end.i.i.i_crit_edge
  %res.0.off0335.i.i = phi i1 [ true, %out.i.i ], [ false, %cond.true.i263.i.i.if.end.i.i.i_crit_edge ], [ false, %cond.true.i.i.i.if.end.i.i.i_crit_edge ], [ false, %if.end10.i.i.if.end.i.i.i_crit_edge ], [ false, %if.end4.i.i.if.end.i.i.i_crit_edge ], [ false, %if.end.i100.i.if.end.i.i.i_crit_edge ]
  %router_coding_ifinfo.0333.i.i = phi ptr [ %call11.i.i, %out.i.i ], [ %call11.i.i, %cond.true.i263.i.i.if.end.i.i.i_crit_edge ], [ %call11.i.i, %cond.true.i.i.i.if.end.i.i.i_crit_edge ], [ null, %if.end10.i.i.if.end.i.i.i_crit_edge ], [ null, %if.end4.i.i.if.end.i.i.i_crit_edge ], [ null, %if.end.i100.i.if.end.i.i.i_crit_edge ]
  %router_coding.0329.i.i = phi ptr [ %call7.i.i, %out.i.i ], [ %call7.i.i, %cond.true.i263.i.i.if.end.i.i.i_crit_edge ], [ %call7.i.i, %cond.true.i.i.i.if.end.i.i.i_crit_edge ], [ %call7.i.i, %if.end10.i.i.if.end.i.i.i_crit_edge ], [ null, %if.end4.i.i.if.end.i.i.i_crit_edge ], [ null, %if.end.i100.i.if.end.i.i.i_crit_edge ]
  %refcount.i.i115.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call.i96.i, i32 0, i32 8
  %call.i.i.i.i.i.i.i.i116.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i115.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i115.i, i32 1, i32 3, i32 1) #10
  %307 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i115.i, ptr %refcount.i.i115.i, i32 1, ptr elementtype(i32) %refcount.i.i115.i) #10, !srcloc !75
  %asmresult.i.i.i.i.i.i.i.i.i117.i = extractvalue { i32, i32, i32 } %307, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i117.i)
  %cmp.i.i.i.i.i.i118.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i117.i, 1
  br i1 %cmp.i.i.i.i.i.i118.i, label %if.then.i.i.i122.i, label %if.end5.i.i.i.i.i.i120.i

if.end5.i.i.i.i.i.i120.i:                         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i117.i)
  %.not.i.i.i.i.i.i119.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i117.i, 0
  br i1 %.not.i.i.i.i.i.i119.i, label %if.end5.i.i.i.i.i.i120.i.batadv_neigh_node_put.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i121.i, !prof !76

if.end5.i.i.i.i.i.i120.i.batadv_neigh_node_put.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i120.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_neigh_node_put.exit.i.i

if.then10.i.i.i.i.i.i121.i:                       ; preds = %if.end5.i.i.i.i.i.i120.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i115.i, i32 noundef 3) #10
  br label %batadv_neigh_node_put.exit.i.i

if.then.i.i.i122.i:                               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !77
  tail call void @batadv_neigh_node_release(ptr noundef %refcount.i.i115.i) #10
  br label %batadv_neigh_node_put.exit.i.i

batadv_neigh_node_put.exit.i.i:                   ; preds = %if.then.i.i.i122.i, %if.then10.i.i.i.i.i.i121.i, %if.end5.i.i.i.i.i.i120.i.batadv_neigh_node_put.exit.i.i_crit_edge
  %tobool.not.i288.i.i = icmp eq ptr %router_coding.0329.i.i, null
  br i1 %tobool.not.i288.i.i, label %batadv_neigh_node_put.exit.i.i.batadv_neigh_node_put.exit298.i.i_crit_edge, label %if.end.i293.i.i

batadv_neigh_node_put.exit.i.i.batadv_neigh_node_put.exit298.i.i_crit_edge: ; preds = %batadv_neigh_node_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_neigh_node_put.exit298.i.i

if.end.i293.i.i:                                  ; preds = %batadv_neigh_node_put.exit.i.i
  %refcount.i289.i.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %router_coding.0329.i.i, i32 0, i32 8
  %call.i.i.i.i.i.i.i290.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i289.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %refcount.i289.i.i, i32 1, i32 3, i32 1) #10
  %308 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i289.i.i, ptr %refcount.i289.i.i, i32 1, ptr elementtype(i32) %refcount.i289.i.i) #10, !srcloc !75
  %asmresult.i.i.i.i.i.i.i.i291.i.i = extractvalue { i32, i32, i32 } %308, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i291.i.i)
  %cmp.i.i.i.i.i292.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i291.i.i, 1
  br i1 %cmp.i.i.i.i.i292.i.i, label %if.then.i.i297.i.i, label %if.end5.i.i.i.i.i295.i.i

if.end5.i.i.i.i.i295.i.i:                         ; preds = %if.end.i293.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i291.i.i)
  %.not.i.i.i.i.i294.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i291.i.i, 0
  br i1 %.not.i.i.i.i.i294.i.i, label %if.end5.i.i.i.i.i295.i.i.batadv_neigh_node_put.exit298.i.i_crit_edge, label %if.then10.i.i.i.i.i296.i.i, !prof !76

if.end5.i.i.i.i.i295.i.i.batadv_neigh_node_put.exit298.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i295.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_neigh_node_put.exit298.i.i

if.then10.i.i.i.i.i296.i.i:                       ; preds = %if.end5.i.i.i.i.i295.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i289.i.i, i32 noundef 3) #10
  br label %batadv_neigh_node_put.exit298.i.i

if.then.i.i297.i.i:                               ; preds = %if.end.i293.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !77
  tail call void @batadv_neigh_node_release(ptr noundef %refcount.i289.i.i) #10
  br label %batadv_neigh_node_put.exit298.i.i

batadv_neigh_node_put.exit298.i.i:                ; preds = %if.then.i.i297.i.i, %if.then10.i.i.i.i.i296.i.i, %if.end5.i.i.i.i.i295.i.i.batadv_neigh_node_put.exit298.i.i_crit_edge, %batadv_neigh_node_put.exit.i.i.batadv_neigh_node_put.exit298.i.i_crit_edge
  br i1 %tobool2.not.i99.i, label %batadv_neigh_node_put.exit298.i.i.batadv_neigh_ifinfo_put.exit.i.i_crit_edge, label %if.end.i304.i.i

batadv_neigh_node_put.exit298.i.i.batadv_neigh_ifinfo_put.exit.i.i_crit_edge: ; preds = %batadv_neigh_node_put.exit298.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_neigh_ifinfo_put.exit.i.i

if.end.i304.i.i:                                  ; preds = %batadv_neigh_node_put.exit298.i.i
  %refcount.i300.i.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %call1.i98.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i301.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i300.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %refcount.i300.i.i, i32 1, i32 3, i32 1) #10
  %309 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i300.i.i, ptr %refcount.i300.i.i, i32 1, ptr elementtype(i32) %refcount.i300.i.i) #10, !srcloc !75
  %asmresult.i.i.i.i.i.i.i.i302.i.i = extractvalue { i32, i32, i32 } %309, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i302.i.i)
  %cmp.i.i.i.i.i303.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i302.i.i, 1
  br i1 %cmp.i.i.i.i.i303.i.i, label %if.then.i.i308.i.i, label %if.end5.i.i.i.i.i306.i.i

if.end5.i.i.i.i.i306.i.i:                         ; preds = %if.end.i304.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i302.i.i)
  %.not.i.i.i.i.i305.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i302.i.i, 0
  br i1 %.not.i.i.i.i.i305.i.i, label %if.end5.i.i.i.i.i306.i.i.batadv_neigh_ifinfo_put.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i307.i.i, !prof !76

if.end5.i.i.i.i.i306.i.i.batadv_neigh_ifinfo_put.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i306.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_neigh_ifinfo_put.exit.i.i

if.then10.i.i.i.i.i307.i.i:                       ; preds = %if.end5.i.i.i.i.i306.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i300.i.i, i32 noundef 3) #10
  br label %batadv_neigh_ifinfo_put.exit.i.i

if.then.i.i308.i.i:                               ; preds = %if.end.i304.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !77
  tail call void @batadv_neigh_ifinfo_release(ptr noundef %refcount.i300.i.i) #10
  br label %batadv_neigh_ifinfo_put.exit.i.i

batadv_neigh_ifinfo_put.exit.i.i:                 ; preds = %if.then.i.i308.i.i, %if.then10.i.i.i.i.i307.i.i, %if.end5.i.i.i.i.i306.i.i.batadv_neigh_ifinfo_put.exit.i.i_crit_edge, %batadv_neigh_node_put.exit298.i.i.batadv_neigh_ifinfo_put.exit.i.i_crit_edge
  %tobool.not.i309.i.i = icmp eq ptr %router_coding_ifinfo.0333.i.i, null
  br i1 %tobool.not.i309.i.i, label %batadv_neigh_ifinfo_put.exit.i.i.batadv_nc_code_packets.exit.i_crit_edge, label %if.end.i314.i.i

batadv_neigh_ifinfo_put.exit.i.i.batadv_nc_code_packets.exit.i_crit_edge: ; preds = %batadv_neigh_ifinfo_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_code_packets.exit.i

if.end.i314.i.i:                                  ; preds = %batadv_neigh_ifinfo_put.exit.i.i
  %refcount.i310.i.i = getelementptr inbounds %struct.batadv_neigh_ifinfo, ptr %router_coding_ifinfo.0333.i.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i311.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i310.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %refcount.i310.i.i, i32 1, i32 3, i32 1) #10
  %310 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i310.i.i, ptr %refcount.i310.i.i, i32 1, ptr elementtype(i32) %refcount.i310.i.i) #10, !srcloc !75
  %asmresult.i.i.i.i.i.i.i.i312.i.i = extractvalue { i32, i32, i32 } %310, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i312.i.i)
  %cmp.i.i.i.i.i313.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i312.i.i, 1
  br i1 %cmp.i.i.i.i.i313.i.i, label %if.then.i.i318.i.i, label %if.end5.i.i.i.i.i316.i.i

if.end5.i.i.i.i.i316.i.i:                         ; preds = %if.end.i314.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i312.i.i)
  %.not.i.i.i.i.i315.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i312.i.i, 0
  br i1 %.not.i.i.i.i.i315.i.i, label %if.end5.i.i.i.i.i316.i.i.batadv_nc_code_packets.exit.i_crit_edge, label %if.then10.i.i.i.i.i317.i.i, !prof !76

if.end5.i.i.i.i.i316.i.i.batadv_nc_code_packets.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i316.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_code_packets.exit.i

if.then10.i.i.i.i.i317.i.i:                       ; preds = %if.end5.i.i.i.i.i316.i.i
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i310.i.i, i32 noundef 3) #10
  br i1 %res.0.off0335.i.i, label %if.then10.i.i.i.i.i317.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i317.i.i.if.end37.i_crit_edge

if.then10.i.i.i.i.i317.i.i.if.end37.i_crit_edge:  ; preds = %if.then10.i.i.i.i.i317.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

if.then10.i.i.i.i.i317.i.i.cleanup_crit_edge:     ; preds = %if.then10.i.i.i.i.i317.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.i318.i.i:                               ; preds = %if.end.i314.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !77
  tail call void @batadv_neigh_ifinfo_release(ptr noundef %refcount.i310.i.i) #10
  br i1 %res.0.off0335.i.i, label %if.then.i.i318.i.i.cleanup_crit_edge, label %if.then.i.i318.i.i.if.end37.i_crit_edge

if.then.i.i318.i.i.if.end37.i_crit_edge:          ; preds = %if.then.i.i318.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

if.then.i.i318.i.i.cleanup_crit_edge:             ; preds = %if.then.i.i318.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

batadv_nc_code_packets.exit.i:                    ; preds = %if.end5.i.i.i.i.i316.i.i.batadv_nc_code_packets.exit.i_crit_edge, %batadv_neigh_ifinfo_put.exit.i.i.batadv_nc_code_packets.exit.i_crit_edge
  br i1 %res.0.off0335.i.i, label %batadv_nc_code_packets.exit.i.cleanup_crit_edge, label %batadv_nc_code_packets.exit.i.if.end37.i_crit_edge

batadv_nc_code_packets.exit.i.if.end37.i_crit_edge: ; preds = %batadv_nc_code_packets.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

batadv_nc_code_packets.exit.i.cleanup_crit_edge:  ; preds = %batadv_nc_code_packets.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end37.i:                                       ; preds = %batadv_nc_code_packets.exit.i.if.end37.i_crit_edge, %if.then.i.i318.i.i.if.end37.i_crit_edge, %if.then10.i.i.i.i.i317.i.i.if.end37.i_crit_edge, %batadv_nc_skb_store_before_coding.exit95.i.if.end37.i_crit_edge
  %311 = ptrtoint ptr %skb31.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %skb31.i, align 4
  %313 = ptrtoint ptr %neigh_node32.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %neigh_node32.i, align 4
  %call.i123.i = tail call i32 @batadv_send_unicast_skb(ptr noundef %312, ptr noundef %314) #10
  %315 = ptrtoint ptr %skb31.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr null, ptr %skb31.i, align 4
  tail call fastcc void @batadv_nc_packet_free(ptr noundef nonnull %nc_packet.1.i, i1 noundef zeroext false) #10
  br label %if.end9

if.end9:                                          ; preds = %if.end37.i, %rcu_read_unlock.exit.i.if.end9_crit_edge
  %coding_hash = getelementptr i8, ptr %3, i32 4144
  %316 = ptrtoint ptr %coding_hash to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %coding_hash, align 4
  %call11 = tail call fastcc ptr @batadv_nc_get_path(ptr noundef %add.ptr.i, ptr noundef %317, ptr noundef %h_source.i, ptr noundef %addr.i)
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %add.ptr = getelementptr i8, ptr %add.ptr.i38, i32 10
  %call15 = tail call i32 @batadv_skb_crc32(ptr noundef %skb, ptr noundef %add.ptr) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %318 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %318, i32 noundef 2848, i32 noundef 28) #13
  %tobool.not.i41 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i41, label %if.end.i45, label %if.end.i

if.end.i:                                         ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %319 = load volatile i32, ptr @jiffies, align 128
  %timestamp.i = getelementptr inbounds %struct.batadv_nc_packet, ptr %call7.i.i.i, i32 0, i32 2
  %320 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 %319, ptr %timestamp.i, align 4
  %packet_id1.i = getelementptr inbounds %struct.batadv_nc_packet, ptr %call7.i.i.i, i32 0, i32 1
  %321 = ptrtoint ptr %packet_id1.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 %call15, ptr %packet_id1.i, align 8
  %skb2.i = getelementptr inbounds %struct.batadv_nc_packet, ptr %call7.i.i.i, i32 0, i32 4
  %322 = ptrtoint ptr %skb2.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store ptr %skb, ptr %skb2.i, align 4
  %neigh_node3.i = getelementptr inbounds %struct.batadv_nc_packet, ptr %call7.i.i.i, i32 0, i32 3
  %323 = ptrtoint ptr %neigh_node3.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr %neigh_node, ptr %neigh_node3.i, align 8
  %nc_path4.i = getelementptr inbounds %struct.batadv_nc_packet, ptr %call7.i.i.i, i32 0, i32 5
  %324 = ptrtoint ptr %nc_path4.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr %call11, ptr %nc_path4.i, align 8
  %packet_list_lock.i = getelementptr inbounds %struct.batadv_nc_path, ptr %call11, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %packet_list_lock.i) #10
  %packet_list.i = getelementptr inbounds %struct.batadv_nc_path, ptr %call11, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.batadv_nc_path, ptr %call11, i32 0, i32 3, i32 1
  %325 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i42 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %326, ptr noundef %packet_list.i) #10
  br i1 %call.i.i.i42, label %if.end.i.i.i43, label %if.end.i.batadv_nc_skb_add_to_path.exit.thread_crit_edge

if.end.i.batadv_nc_skb_add_to_path.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_skb_add_to_path.exit.thread

if.end.i.i.i43:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %327 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %328 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store ptr %packet_list.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %329 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr %326, ptr %prev3.i.i.i, align 4
  %330 = ptrtoint ptr %326 to i32
  call void @__asan_store4_noabort(i32 %330)
  store volatile ptr %call7.i.i.i, ptr %326, align 4
  br label %batadv_nc_skb_add_to_path.exit.thread

batadv_nc_skb_add_to_path.exit.thread:            ; preds = %if.end.i.i.i43, %if.end.i.batadv_nc_skb_add_to_path.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %packet_list_lock.i) #10
  br label %cleanup

if.end.i45:                                       ; preds = %if.end14
  %refcount.i = getelementptr inbounds %struct.batadv_nc_path, ptr %call11, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %331 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !75
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %331, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i46, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !76

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %cleanup

if.then.i.i46:                                    ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !77
  %rcu.i.i = getelementptr %struct.batadv_nc_path, ptr %call11, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 8 to ptr)) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i46, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %batadv_nc_skb_add_to_path.exit.thread, %if.end9.cleanup_crit_edge, %batadv_nc_code_packets.exit.i.cleanup_crit_edge, %if.then.i.i318.i.i.cleanup_crit_edge, %if.then10.i.i.i.i.i317.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end9.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ true, %batadv_nc_skb_add_to_path.exit.thread ], [ false, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ false, %if.then10.i.i.i.i.i ], [ false, %if.then.i.i46 ], [ true, %batadv_nc_code_packets.exit.i.cleanup_crit_edge ], [ true, %if.then10.i.i.i.i.i317.i.i.cleanup_crit_edge ], [ true, %if.then.i.i318.i.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_nc_get_path(ptr noundef %bat_priv, ptr noundef %hash, ptr nocapture noundef readonly %src, ptr nocapture noundef readonly %dst) unnamed_addr #2 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %nc_path_key.sroa.20.78.copyload = load i32, ptr %src, align 1
  %nc_path_key.sroa.20.sroa.0.0.extract.shift = lshr i32 %nc_path_key.sroa.20.78.copyload, 24
  %nc_path_key.sroa.20.sroa.8.0.extract.shift = lshr i32 %nc_path_key.sroa.20.78.copyload, 16
  %nc_path_key.sroa.20.sroa.10.0.extract.shift = lshr i32 %nc_path_key.sroa.20.78.copyload, 8
  %nc_path_key.sroa.31.78.src.sroa_idx = getelementptr inbounds i8, ptr %src, i32 4
  %1 = ptrtoint ptr %nc_path_key.sroa.31.78.src.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %nc_path_key.sroa.31.78.copyload = load i16, ptr %nc_path_key.sroa.31.78.src.sroa_idx, align 1
  %nc_path_key.sroa.31.sroa.0.0.extract.shift = lshr i16 %nc_path_key.sroa.31.78.copyload, 8
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %nc_path_key.sroa.3.72.copyload = load i32, ptr %dst, align 1
  %nc_path_key.sroa.14.72.dst.sroa_idx = getelementptr inbounds i8, ptr %dst, i32 4
  %3 = ptrtoint ptr %nc_path_key.sroa.14.72.dst.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %nc_path_key.sroa.14.72.copyload = load i16, ptr %nc_path_key.sroa.14.72.dst.sroa_idx, align 1
  %tobool.not.i = icmp eq ptr %hash, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %size.i = getelementptr inbounds %struct.batadv_hashtable, ptr %hash, i32 0, i32 2
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.i, align 4
  %6 = shl i16 %nc_path_key.sroa.31.78.copyload, 8
  %shl60.i.i = zext i16 %6 to i32
  %add61.i.i = add nuw nsw i32 %shl60.i.i, -559038731
  %conv64.i.i = zext i16 %nc_path_key.sroa.31.sroa.0.0.extract.shift to i32
  %add65.i.i = add nuw nsw i32 %add61.i.i, %conv64.i.i
  %conv68.i.i = shl i32 %nc_path_key.sroa.20.78.copyload, 24
  %conv73.i.i = shl i32 %nc_path_key.sroa.20.sroa.10.0.extract.shift, 16
  %shl74.i.i = and i32 %conv73.i.i, 16711680
  %conv78.i.i = shl nuw nsw i32 %nc_path_key.sroa.20.sroa.8.0.extract.shift, 8
  %shl79.i.i = and i32 %conv78.i.i, 65280
  %add70.i.i = add nuw nsw i32 %nc_path_key.sroa.20.sroa.0.0.extract.shift, -559038731
  %add75.i.i = add i32 %add70.i.i, %conv68.i.i
  %add80.i.i = add i32 %add75.i.i, %shl74.i.i
  %add84.i.i = add i32 %add80.i.i, %shl79.i.i
  %xor85.i.i = xor i32 %add65.i.i, -559038731
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add65.i.i, i32 %add65.i.i, i32 14) #10
  %sub87.i.i = sub i32 %xor85.i.i, %or.i.i.i
  %xor88.i.i = xor i32 %sub87.i.i, %add84.i.i
  %or.i1.i.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i.i, i32 %sub87.i.i, i32 11) #10
  %sub90.i.i = sub i32 %xor88.i.i, %or.i1.i.i
  %xor91.i.i = xor i32 %sub90.i.i, %add65.i.i
  %or.i2.i.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i.i, i32 %sub90.i.i, i32 25) #10
  %sub93.i.i = sub i32 %xor91.i.i, %or.i2.i.i
  %xor94.i.i = xor i32 %sub93.i.i, %sub87.i.i
  %or.i3.i.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i.i, i32 %sub93.i.i, i32 16) #10
  %sub96.i.i = sub i32 %xor94.i.i, %or.i3.i.i
  %xor97.i.i = xor i32 %sub96.i.i, %sub90.i.i
  %or.i4.i.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i.i, i32 %sub96.i.i, i32 4) #10
  %sub99.i.i = sub i32 %xor97.i.i, %or.i4.i.i
  %xor100.i.i = xor i32 %sub99.i.i, %sub93.i.i
  %or.i5.i.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i.i, i32 %sub99.i.i, i32 14) #10
  %sub102.i.i = sub i32 %xor100.i.i, %or.i5.i.i
  %or.i6.i.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i.i, i32 %sub102.i.i, i32 24) #10
  %xor103.i.i = xor i32 %sub102.i.i, %sub96.i.i
  %sub105.i.i = sub i32 %xor103.i.i, %or.i6.i.i
  %add1.i.i = add i32 %sub105.i.i, -559038731
  %rev = tail call i16 @llvm.bswap.i16(i16 %nc_path_key.sroa.14.72.copyload)
  %add61.i8.i = zext i16 %rev to i32
  %add65.i11.i = add i32 %add1.i.i, %add61.i8.i
  %add80.i23.i = tail call i32 @llvm.bswap.i32(i32 %nc_path_key.sroa.3.72.copyload)
  %add84.i25.i = add i32 %add1.i.i, %add80.i23.i
  %xor85.i26.i = xor i32 %add65.i11.i, %add1.i.i
  %or.i.i27.i = tail call i32 @llvm.fshl.i32(i32 %add65.i11.i, i32 %add65.i11.i, i32 14) #10
  %sub87.i28.i = sub i32 %xor85.i26.i, %or.i.i27.i
  %xor88.i29.i = xor i32 %sub87.i28.i, %add84.i25.i
  %or.i1.i30.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i28.i, i32 %sub87.i28.i, i32 11) #10
  %sub90.i31.i = sub i32 %xor88.i29.i, %or.i1.i30.i
  %xor91.i32.i = xor i32 %sub90.i31.i, %add65.i11.i
  %or.i2.i33.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i31.i, i32 %sub90.i31.i, i32 25) #10
  %sub93.i34.i = sub i32 %xor91.i32.i, %or.i2.i33.i
  %xor94.i35.i = xor i32 %sub93.i34.i, %sub87.i28.i
  %or.i3.i36.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i34.i, i32 %sub93.i34.i, i32 16) #10
  %sub96.i37.i = sub i32 %xor94.i35.i, %or.i3.i36.i
  %xor97.i38.i = xor i32 %sub96.i37.i, %sub90.i31.i
  %or.i4.i39.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i37.i, i32 %sub96.i37.i, i32 4) #10
  %sub99.i40.i = sub i32 %xor97.i38.i, %or.i4.i39.i
  %xor100.i41.i = xor i32 %sub99.i40.i, %sub93.i34.i
  %or.i5.i42.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i40.i, i32 %sub99.i40.i, i32 14) #10
  %sub102.i43.i = sub i32 %xor100.i41.i, %or.i5.i42.i
  %or.i6.i44.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i43.i, i32 %sub102.i43.i, i32 24) #10
  %xor103.i45.i = xor i32 %sub102.i43.i, %sub96.i37.i
  %sub105.i46.i = sub i32 %xor103.i45.i, %or.i6.i44.i
  %rem.i = urem i32 %sub105.i46.i, %5
  %7 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hash, align 4
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %8, i32 %rem.i
  %9 = tail call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !72
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i45 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i45, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %call1.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b53.i = load i1, ptr @batadv_nc_hash_find.__warned, align 1
  br i1 %.b53.i, label %land.lhs.true5.i.do.end.i_crit_edge, label %if.then7.i

land.lhs.true5.i.do.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then7.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_nc_hash_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 554, ptr noundef nonnull @.str.8) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then7.i, %land.lhs.true5.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %nc_path.065.i = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool16.not66.i = icmp eq ptr %nc_path.065.i, null
  br i1 %tobool16.not66.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %nc_path.067.i = phi ptr [ %nc_path.0.i, %for.inc.i.for.body.i_crit_edge ], [ %nc_path.065.i, %do.end.i.for.body.i_crit_edge ]
  %prev_hop.i.i = getelementptr inbounds %struct.batadv_nc_path, ptr %nc_path.067.i, i32 0, i32 6
  %14 = ptrtoint ptr %prev_hop.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %prev_hop.i.i, align 4
  %xor.i.i.i.i.i = xor i32 %15, %nc_path_key.sroa.20.78.copyload
  %add.ptr.i.i.i.i.i = getelementptr %struct.batadv_nc_path, ptr %nc_path.067.i, i32 0, i32 6, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i.i.i.i.i, align 2
  %xor37.i.i.i.i.i = xor i16 %17, %nc_path_key.sroa.31.78.copyload
  %xor3.i.i.i.i.i = zext i16 %xor37.i.i.i.i.i to i32
  %or.i.i.i.i.i = or i32 %xor.i.i.i.i.i, %xor3.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %or.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %batadv_nc_hash_compare.exit.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

batadv_nc_hash_compare.exit.i:                    ; preds = %for.body.i
  %next_hop.i.i = getelementptr inbounds %struct.batadv_nc_path, ptr %nc_path.067.i, i32 0, i32 5
  %18 = ptrtoint ptr %next_hop.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %next_hop.i.i, align 4
  %xor.i.i.i12.i.i = xor i32 %19, %nc_path_key.sroa.3.72.copyload
  %add.ptr.i.i.i13.i.i = getelementptr %struct.batadv_nc_path, ptr %nc_path.067.i, i32 0, i32 5, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i.i13.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i.i.i13.i.i, align 2
  %xor37.i.i.i15.i.i = xor i16 %21, %nc_path_key.sroa.14.72.copyload
  %xor3.i.i.i16.i.i = zext i16 %xor37.i.i.i15.i.i to i32
  %or.i.i.i17.i.i = or i32 %xor.i.i.i12.i.i, %xor3.i.i.i16.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i17.i.i)
  %cmp.i.i.i18.i.i = icmp eq i32 %or.i.i.i17.i.i, 0
  br i1 %cmp.i.i.i18.i.i, label %if.end19.i, label %batadv_nc_hash_compare.exit.i.for.inc.i_crit_edge

batadv_nc_hash_compare.exit.i.for.inc.i_crit_edge: ; preds = %batadv_nc_hash_compare.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end19.i:                                       ; preds = %batadv_nc_hash_compare.exit.i
  %refcount.i = getelementptr inbounds %struct.batadv_nc_path, ptr %nc_path.067.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #10
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #10
  %22 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %refcount.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.end19.i
  %24 = phi i32 [ %23, %if.end19.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %25 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i.i.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %24, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #10
  %26 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %28 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 %27, i32 %add.i.i.i.i.i, ptr elementtype(i32) %refcount.i) #10, !srcloc !78
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %28, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %28, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %27
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !76

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %29 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %30, 1
  %31 = or i32 %add5.i.i.i.i.i, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %.not.i.i.i.i.i = icmp sgt i32 %31, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !76

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 0) #10
  %32 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %33 = phi i32 [ %30, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %33, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #10
  br i1 %tobool12.i.i.i.i.not.i, label %kref_get_unless_zero.exit.i.for.inc.i_crit_edge, label %kref_get_unless_zero.exit.i.for.end.i_crit_edge

kref_get_unless_zero.exit.i.for.end.i_crit_edge:  ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

kref_get_unless_zero.exit.i.for.inc.i_crit_edge:  ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %kref_get_unless_zero.exit.i.for.inc.i_crit_edge, %batadv_nc_hash_compare.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %34 = ptrtoint ptr %nc_path.067.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %nc_path.0.i = load volatile ptr, ptr %nc_path.067.i, align 4
  %tobool16.not.i = icmp eq ptr %nc_path.0.i, null
  br i1 %tobool16.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %kref_get_unless_zero.exit.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %nc_path.0.lcssa.i = phi ptr [ null, %do.end.i.for.end.i_crit_edge ], [ null, %for.inc.i.for.end.i_crit_edge ], [ %nc_path.067.i, %kref_get_unless_zero.exit.i.for.end.i_crit_edge ]
  %call.i55.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i55.i, label %for.end.i.batadv_nc_hash_find.exit_crit_edge, label %land.lhs.true.i58.i

for.end.i.batadv_nc_hash_find.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_hash_find.exit

land.lhs.true.i58.i:                              ; preds = %for.end.i
  %call1.i56.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i56.i)
  %tobool.not.i57.i = icmp eq i32 %call1.i56.i, 0
  br i1 %tobool.not.i57.i, label %land.lhs.true.i58.i.batadv_nc_hash_find.exit_crit_edge, label %land.lhs.true2.i60.i

land.lhs.true.i58.i.batadv_nc_hash_find.exit_crit_edge: ; preds = %land.lhs.true.i58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_hash_find.exit

land.lhs.true2.i60.i:                             ; preds = %land.lhs.true.i58.i
  %.b4.i59.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i59.i, label %land.lhs.true2.i60.i.batadv_nc_hash_find.exit_crit_edge, label %if.then.i61.i

land.lhs.true2.i60.i.batadv_nc_hash_find.exit_crit_edge: ; preds = %land.lhs.true2.i60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_hash_find.exit

if.then.i61.i:                                    ; preds = %land.lhs.true2.i60.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #10
  br label %batadv_nc_hash_find.exit

batadv_nc_hash_find.exit:                         ; preds = %if.then.i61.i, %land.lhs.true2.i60.i.batadv_nc_hash_find.exit_crit_edge, %land.lhs.true.i58.i.batadv_nc_hash_find.exit_crit_edge, %for.end.i.batadv_nc_hash_find.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  %35 = call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i.i.i.i62.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i62.i to ptr
  %preempt_count.i.i.i.i63.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i63.i, align 4
  %sub.i.i.i.i = add i32 %38, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i63.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %tobool.not = icmp eq ptr %nc_path.0.lcssa.i, null
  br i1 %tobool.not, label %batadv_nc_hash_find.exit.if.end_crit_edge, label %if.then

batadv_nc_hash_find.exit.if.end_crit_edge:        ; preds = %batadv_nc_hash_find.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %batadv_nc_hash_find.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %last_valid = getelementptr inbounds %struct.batadv_nc_path, ptr %nc_path.0.lcssa.i, i32 0, i32 7
  %40 = ptrtoint ptr %last_valid to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %last_valid, align 4
  br label %cleanup

if.end:                                           ; preds = %batadv_nc_hash_find.exit.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 2848, i32 noundef 88) #13
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %packet_list = getelementptr inbounds %struct.batadv_nc_path, ptr %call7.i.i, i32 0, i32 3
  %42 = ptrtoint ptr %packet_list to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %packet_list, ptr %packet_list, align 4
  %prev.i = getelementptr inbounds %struct.batadv_nc_path, ptr %call7.i.i, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %packet_list, ptr %prev.i, align 8
  %packet_list_lock = getelementptr inbounds %struct.batadv_nc_path, ptr %call7.i.i, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %packet_list_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @batadv_nc_get_path.__key, i16 noundef signext 3) #10
  %refcount = getelementptr inbounds %struct.batadv_nc_path, ptr %call7.i.i, i32 0, i32 2
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  %44 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 1, ptr %refcount, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %last_valid6 = getelementptr inbounds %struct.batadv_nc_path, ptr %call7.i.i, i32 0, i32 7
  %46 = ptrtoint ptr %last_valid6 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %last_valid6, align 4
  %next_hop = getelementptr inbounds %struct.batadv_nc_path, ptr %call7.i.i, i32 0, i32 5
  %47 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dst, align 4
  %49 = ptrtoint ptr %next_hop to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %next_hop, align 8
  %50 = ptrtoint ptr %nc_path_key.sroa.14.72.dst.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %nc_path_key.sroa.14.72.dst.sroa_idx, align 2
  %add.ptr1.i = getelementptr %struct.batadv_nc_path, ptr %call7.i.i, i32 0, i32 5, i32 4
  %52 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %add.ptr1.i, align 4
  %prev_hop = getelementptr inbounds %struct.batadv_nc_path, ptr %call7.i.i, i32 0, i32 6
  %53 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %src, align 4
  %55 = ptrtoint ptr %prev_hop to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %prev_hop, align 4
  %56 = ptrtoint ptr %nc_path_key.sroa.31.78.src.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %nc_path_key.sroa.31.78.src.sroa_idx, align 2
  %add.ptr1.i47 = getelementptr %struct.batadv_nc_path, ptr %call7.i.i, i32 0, i32 6, i32 4
  %58 = ptrtoint ptr %add.ptr1.i47 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %add.ptr1.i47, align 2
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #10
  %59 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %60, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end4.if.end17_crit_edge, label %if.then11

if.end4.if.end17_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.14, ptr noundef %prev_hop, ptr noundef %next_hop) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %if.end4.if.end17_crit_edge
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %61 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !79
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end17.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !68

if.end17.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end17
  %add.i.i.i.i48 = add i32 %asmresult.i.i.i.i.i.i, 1
  %62 = or i32 %add.i.i.i.i48, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %62)
  %.not.i.i.i.i = icmp sgt i32 %62, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !76

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end17.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end17.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #10
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  br i1 %tobool.not.i, label %if.then22, label %if.end.i53

if.end.i53:                                       ; preds = %kref_get.exit
  %size.i50 = getelementptr inbounds %struct.batadv_hashtable, ptr %hash, i32 0, i32 2
  %63 = ptrtoint ptr %size.i50 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %size.i50, align 4
  %65 = shl i16 %nc_path_key.sroa.31.78.copyload, 8
  %shl60.i.i83 = zext i16 %65 to i32
  %add61.i.i84 = add nuw nsw i32 %shl60.i.i83, -559038731
  %conv64.i.i86 = zext i16 %nc_path_key.sroa.31.sroa.0.0.extract.shift to i32
  %add65.i.i87 = add nuw nsw i32 %add61.i.i84, %conv64.i.i86
  %conv68.i.i89 = shl i32 %nc_path_key.sroa.20.78.copyload, 24
  %conv73.i.i93 = shl i32 %nc_path_key.sroa.20.sroa.10.0.extract.shift, 16
  %shl74.i.i94 = and i32 %conv73.i.i93, 16711680
  %conv78.i.i97 = shl nuw nsw i32 %nc_path_key.sroa.20.sroa.8.0.extract.shift, 8
  %shl79.i.i98 = and i32 %conv78.i.i97, 65280
  %add70.i.i91 = add nuw nsw i32 %nc_path_key.sroa.20.sroa.0.0.extract.shift, -559038731
  %add75.i.i95 = add i32 %add70.i.i91, %conv68.i.i89
  %add80.i.i99 = add i32 %add75.i.i95, %shl74.i.i94
  %add84.i.i101 = add i32 %add80.i.i99, %shl79.i.i98
  %xor85.i.i102 = xor i32 %add65.i.i87, -559038731
  %or.i.i.i103 = call i32 @llvm.fshl.i32(i32 %add65.i.i87, i32 %add65.i.i87, i32 14) #10
  %sub87.i.i104 = sub i32 %xor85.i.i102, %or.i.i.i103
  %xor88.i.i105 = xor i32 %sub87.i.i104, %add84.i.i101
  %or.i1.i.i106 = call i32 @llvm.fshl.i32(i32 %sub87.i.i104, i32 %sub87.i.i104, i32 11) #10
  %sub90.i.i107 = sub i32 %xor88.i.i105, %or.i1.i.i106
  %xor91.i.i108 = xor i32 %sub90.i.i107, %add65.i.i87
  %or.i2.i.i109 = call i32 @llvm.fshl.i32(i32 %sub90.i.i107, i32 %sub90.i.i107, i32 25) #10
  %sub93.i.i110 = sub i32 %xor91.i.i108, %or.i2.i.i109
  %xor94.i.i111 = xor i32 %sub93.i.i110, %sub87.i.i104
  %or.i3.i.i112 = call i32 @llvm.fshl.i32(i32 %sub93.i.i110, i32 %sub93.i.i110, i32 16) #10
  %sub96.i.i113 = sub i32 %xor94.i.i111, %or.i3.i.i112
  %xor97.i.i114 = xor i32 %sub96.i.i113, %sub90.i.i107
  %or.i4.i.i115 = call i32 @llvm.fshl.i32(i32 %sub96.i.i113, i32 %sub96.i.i113, i32 4) #10
  %sub99.i.i116 = sub i32 %xor97.i.i114, %or.i4.i.i115
  %xor100.i.i117 = xor i32 %sub99.i.i116, %sub93.i.i110
  %or.i5.i.i118 = call i32 @llvm.fshl.i32(i32 %sub99.i.i116, i32 %sub99.i.i116, i32 14) #10
  %sub102.i.i119 = sub i32 %xor100.i.i117, %or.i5.i.i118
  %or.i6.i.i120 = call i32 @llvm.fshl.i32(i32 %sub102.i.i119, i32 %sub102.i.i119, i32 24) #10
  %xor103.i.i121 = xor i32 %sub102.i.i119, %sub96.i.i113
  %sub105.i.i122 = sub i32 %xor103.i.i121, %or.i6.i.i120
  %add1.i.i124 = add i32 %sub105.i.i122, -559038731
  %rev275 = call i16 @llvm.bswap.i16(i16 %nc_path_key.sroa.14.72.copyload)
  %add61.i8.i130 = zext i16 %rev275 to i32
  %add65.i11.i131 = add i32 %add1.i.i124, %add61.i8.i130
  %add80.i23.i144 = call i32 @llvm.bswap.i32(i32 %nc_path_key.sroa.3.72.copyload)
  %add84.i25.i145 = add i32 %add1.i.i124, %add80.i23.i144
  %xor85.i26.i146 = xor i32 %add65.i11.i131, %add1.i.i124
  %or.i.i27.i147 = call i32 @llvm.fshl.i32(i32 %add65.i11.i131, i32 %add65.i11.i131, i32 14) #10
  %sub87.i28.i148 = sub i32 %xor85.i26.i146, %or.i.i27.i147
  %xor88.i29.i149 = xor i32 %sub87.i28.i148, %add84.i25.i145
  %or.i1.i30.i150 = call i32 @llvm.fshl.i32(i32 %sub87.i28.i148, i32 %sub87.i28.i148, i32 11) #10
  %sub90.i31.i151 = sub i32 %xor88.i29.i149, %or.i1.i30.i150
  %xor91.i32.i152 = xor i32 %sub90.i31.i151, %add65.i11.i131
  %or.i2.i33.i153 = call i32 @llvm.fshl.i32(i32 %sub90.i31.i151, i32 %sub90.i31.i151, i32 25) #10
  %sub93.i34.i154 = sub i32 %xor91.i32.i152, %or.i2.i33.i153
  %xor94.i35.i155 = xor i32 %sub93.i34.i154, %sub87.i28.i148
  %or.i3.i36.i156 = call i32 @llvm.fshl.i32(i32 %sub93.i34.i154, i32 %sub93.i34.i154, i32 16) #10
  %sub96.i37.i157 = sub i32 %xor94.i35.i155, %or.i3.i36.i156
  %xor97.i38.i158 = xor i32 %sub96.i37.i157, %sub90.i31.i151
  %or.i4.i39.i159 = call i32 @llvm.fshl.i32(i32 %sub96.i37.i157, i32 %sub96.i37.i157, i32 4) #10
  %sub99.i40.i160 = sub i32 %xor97.i38.i158, %or.i4.i39.i159
  %xor100.i41.i161 = xor i32 %sub99.i40.i160, %sub93.i34.i154
  %or.i5.i42.i162 = call i32 @llvm.fshl.i32(i32 %sub99.i40.i160, i32 %sub99.i40.i160, i32 14) #10
  %sub102.i43.i163 = sub i32 %xor100.i41.i161, %or.i5.i42.i162
  %or.i6.i44.i164 = call i32 @llvm.fshl.i32(i32 %sub102.i43.i163, i32 %sub102.i43.i163, i32 24) #10
  %xor103.i45.i165 = xor i32 %sub102.i43.i163, %sub96.i37.i157
  %sub105.i46.i166 = sub i32 %xor103.i45.i165, %or.i6.i44.i164
  %rem.i167 = urem i32 %sub105.i46.i166, %64
  %66 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hash, align 4
  %arrayidx.i52 = getelementptr %struct.hlist_head, ptr %67, i32 %rem.i167
  %list_locks.i = getelementptr inbounds %struct.batadv_hashtable, ptr %hash, i32 0, i32 1
  %68 = ptrtoint ptr %list_locks.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %list_locks.i, align 4
  %arrayidx1.i = getelementptr %struct.spinlock, ptr %69, i32 %rem.i167
  call void @_raw_spin_lock_bh(ptr noundef %arrayidx1.i) #10
  %70 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load4_noabort(i32 %70)
  %node.01.i = load ptr, ptr %arrayidx.i52, align 4
  %tobool2.not2.i = icmp eq ptr %node.01.i, null
  br i1 %tobool2.not2.i, label %hlist_add_head_rcu.exit.i.critedge, label %if.end.i53.for.body.i66_crit_edge

if.end.i53.for.body.i66_crit_edge:                ; preds = %if.end.i53
  br label %for.body.i66

for.body.i66:                                     ; preds = %for.cond.backedge.i.for.body.i66_crit_edge, %if.end.i53.for.body.i66_crit_edge
  %node.03.i = phi ptr [ %node.0.i, %for.cond.backedge.i.for.body.i66_crit_edge ], [ %node.01.i, %if.end.i53.for.body.i66_crit_edge ]
  %prev_hop.i.i59 = getelementptr inbounds %struct.batadv_nc_path, ptr %node.03.i, i32 0, i32 6
  %71 = ptrtoint ptr %prev_hop.i.i59 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %prev_hop.i.i59, align 4
  %xor.i.i.i.i.i60 = xor i32 %72, %nc_path_key.sroa.20.78.copyload
  %add.ptr.i.i.i.i.i61 = getelementptr %struct.batadv_nc_path, ptr %node.03.i, i32 0, i32 6, i32 4
  %73 = ptrtoint ptr %add.ptr.i.i.i.i.i61 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %add.ptr.i.i.i.i.i61, align 2
  %xor37.i.i.i.i.i62 = xor i16 %74, %nc_path_key.sroa.31.78.copyload
  %xor3.i.i.i.i.i63 = zext i16 %xor37.i.i.i.i.i62 to i32
  %or.i.i.i.i.i64 = or i32 %xor.i.i.i.i.i60, %xor3.i.i.i.i.i63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i.i64)
  %cmp.i.i.i.i.i65 = icmp eq i32 %or.i.i.i.i.i64, 0
  br i1 %cmp.i.i.i.i.i65, label %if.end.i.i, label %for.body.i66.for.cond.backedge.i_crit_edge

for.body.i66.for.cond.backedge.i_crit_edge:       ; preds = %for.body.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i

if.end.i.i:                                       ; preds = %for.body.i66
  %next_hop.i.i67 = getelementptr inbounds %struct.batadv_nc_path, ptr %node.03.i, i32 0, i32 5
  %75 = ptrtoint ptr %next_hop.i.i67 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %next_hop.i.i67, align 4
  %xor.i.i.i12.i.i68 = xor i32 %76, %nc_path_key.sroa.3.72.copyload
  %add.ptr.i.i.i13.i.i69 = getelementptr %struct.batadv_nc_path, ptr %node.03.i, i32 0, i32 5, i32 4
  %77 = ptrtoint ptr %add.ptr.i.i.i13.i.i69 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %add.ptr.i.i.i13.i.i69, align 2
  %xor37.i.i.i15.i.i70 = xor i16 %78, %nc_path_key.sroa.14.72.copyload
  %xor3.i.i.i16.i.i71 = zext i16 %xor37.i.i.i15.i.i70 to i32
  %or.i.i.i17.i.i72 = or i32 %xor.i.i.i12.i.i68, %xor3.i.i.i16.i.i71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i17.i.i72)
  %cmp.i.i.i18.i.i73 = icmp eq i32 %or.i.i.i17.i.i72, 0
  br i1 %cmp.i.i.i18.i.i73, label %if.end.i.i.batadv_hash_add.exit_crit_edge, label %if.end.i.i.for.cond.backedge.i_crit_edge

if.end.i.i.for.cond.backedge.i_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i

if.end.i.i.batadv_hash_add.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_hash_add.exit

for.cond.backedge.i:                              ; preds = %if.end.i.i.for.cond.backedge.i_crit_edge, %for.body.i66.for.cond.backedge.i_crit_edge
  %79 = ptrtoint ptr %node.03.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %node.0.i = load ptr, ptr %node.03.i, align 4
  %tobool2.not.i74 = icmp eq ptr %node.0.i, null
  br i1 %tobool2.not.i74, label %for.end.i77, label %for.cond.backedge.i.for.body.i66_crit_edge

for.cond.backedge.i.for.body.i66_crit_edge:       ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i66

for.end.i77:                                      ; preds = %for.cond.backedge.i
  %80 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %node.01.i, ptr %call7.i.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %81 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %arrayidx.i52, ptr %pprev.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !81
  %82 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %call7.i.i, ptr %arrayidx.i52, align 4
  br i1 %tobool2.not2.i, label %for.end.i77.hlist_add_head_rcu.exit.i_crit_edge, label %do.body49.i.i

for.end.i77.hlist_add_head_rcu.exit.i_crit_edge:  ; preds = %for.end.i77
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_add_head_rcu.exit.i

do.body49.i.i:                                    ; preds = %for.end.i77
  call void @__sanitizer_cov_trace_pc() #12
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %node.01.i, i32 0, i32 1
  br label %hlist_add_head_rcu.exit.i.sink.split

hlist_add_head_rcu.exit.i.critedge:               ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %node.01.i, ptr %call7.i.i, align 8
  %pprev.i.i.c = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %84 = ptrtoint ptr %pprev.i.i.c to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %arrayidx.i52, ptr %pprev.i.i.c, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !81
  br label %hlist_add_head_rcu.exit.i.sink.split

hlist_add_head_rcu.exit.i.sink.split:             ; preds = %hlist_add_head_rcu.exit.i.critedge, %do.body49.i.i
  %arrayidx.i52.sink = phi ptr [ %arrayidx.i52, %hlist_add_head_rcu.exit.i.critedge ], [ %pprev51.i.i, %do.body49.i.i ]
  %85 = ptrtoint ptr %arrayidx.i52.sink to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %call7.i.i, ptr %arrayidx.i52.sink, align 4
  br label %hlist_add_head_rcu.exit.i

hlist_add_head_rcu.exit.i:                        ; preds = %hlist_add_head_rcu.exit.i.sink.split, %for.end.i77.hlist_add_head_rcu.exit.i_crit_edge
  %generation.i = getelementptr inbounds %struct.batadv_hashtable, ptr %hash, i32 0, i32 3
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %generation.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %generation.i, i32 1, i32 3, i32 1) #10
  %86 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %generation.i, ptr %generation.i, i32 1, ptr elementtype(i32) %generation.i) #10, !srcloc !82
  br label %batadv_hash_add.exit

batadv_hash_add.exit:                             ; preds = %hlist_add_head_rcu.exit.i, %if.end.i.i.batadv_hash_add.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %arrayidx1.i) #10
  br label %cleanup

if.then22:                                        ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %batadv_hash_add.exit, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %nc_path.0.lcssa.i, %if.then ], [ null, %if.then22 ], [ null, %if.end.cleanup_crit_edge ], [ %call7.i.i, %batadv_hash_add.exit ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_skb_crc32(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_nc_skb_store_for_decoding(ptr noundef %bat_priv, ptr noundef %skb) local_unnamed_addr #2 align 64 {
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
  %network_coding = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 40
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %network_coding, i32 noundef 4) #10
  %4 = ptrtoint ptr %network_coding to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %network_coding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %8 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %9 to i32
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv.i
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %11)
  %cmp.not = icmp eq i8 %11, 64
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %decoding_hash = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 41, i32 7
  %12 = ptrtoint ptr %decoding_hash to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %decoding_hash, align 4
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %call7 = tail call fastcc ptr @batadv_nc_get_path(ptr noundef %bat_priv, ptr noundef %13, ptr noundef %h_source, ptr noundef %add.ptr.i.i)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %call11 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #10
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end10.if.end.i67_crit_edge, label %if.end17, !prof !68

if.end10.if.end.i67_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i67

if.end17:                                         ; preds = %if.end10
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call11, i32 0, i32 6
  %14 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call11, i32 0, i32 7
  %16 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %15, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 14
  br i1 %cmp.not.i, label %if.end.i, label %if.end17.if.end28_crit_edge, !prof !68

if.end17.if.end28_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %15)
  %cmp3.i = icmp ult i32 %15, 14
  br i1 %cmp3.i, label %if.end.i.free_skb_crit_edge, label %pskb_may_pull.exit, !prof !68

if.end.i.free_skb_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_skb

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 14, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %call11, i32 noundef %sub.i) #10
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.free_skb_crit_edge, label %pskb_may_pull.exit.if.end28_crit_edge, !prof !68

pskb_may_pull.exit.if.end28_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

pskb_may_pull.exit.free_skb_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_skb

if.end28:                                         ; preds = %pskb_may_pull.exit.if.end28_crit_edge, %if.end17.if.end28_crit_edge
  %call29 = tail call ptr @skb_pull_rcsum(ptr noundef nonnull %call11, i32 noundef 14) #10
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.end28.free_skb_crit_edge, label %if.end40, !prof !68

if.end28.free_skb_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_skb

if.end40:                                         ; preds = %if.end28
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 10
  %call41 = tail call i32 @batadv_skb_crc32(ptr noundef nonnull %call11, ptr noundef %add.ptr) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 2848, i32 noundef 28) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end40.free_skb_crit_edge, label %if.end.i64

if.end40.free_skb_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_skb

if.end.i64:                                       ; preds = %if.end40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %timestamp.i = getelementptr inbounds %struct.batadv_nc_packet, ptr %call7.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %timestamp.i, align 4
  %packet_id1.i = getelementptr inbounds %struct.batadv_nc_packet, ptr %call7.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %packet_id1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call41, ptr %packet_id1.i, align 8
  %skb2.i = getelementptr inbounds %struct.batadv_nc_packet, ptr %call7.i.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %skb2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call11, ptr %skb2.i, align 4
  %neigh_node3.i = getelementptr inbounds %struct.batadv_nc_packet, ptr %call7.i.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %neigh_node3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %neigh_node3.i, align 8
  %nc_path4.i = getelementptr inbounds %struct.batadv_nc_packet, ptr %call7.i.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %nc_path4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7, ptr %nc_path4.i, align 8
  %packet_list_lock.i = getelementptr inbounds %struct.batadv_nc_path, ptr %call7, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %packet_list_lock.i) #10
  %packet_list.i = getelementptr inbounds %struct.batadv_nc_path, ptr %call7, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.batadv_nc_path, ptr %call7, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %26, ptr noundef %packet_list.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i64.if.end44_crit_edge

if.end.i64.if.end44_crit_edge:                    ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.end.i.i.i:                                     ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %packet_list.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %call7.i.i.i, ptr %26, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.end.i.i.i, %if.end.i64.if.end44_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %packet_list_lock.i) #10
  %31 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !69
  %bat_counters.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 2
  %32 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bat_counters.i, align 4
  %arrayidx.i = getelementptr i64, ptr %33, i32 32
  %34 = ptrtoint ptr %arrayidx.i to i32
  %35 = tail call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx14.i, align 4
  %add.i = add i32 %40, %34
  %41 = inttoptr i32 %add.i to ptr
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %41, align 8
  %add15.i = add i64 %43, 1
  store i64 %add15.i, ptr %41, align 8
  %44 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !70
  %and.i.i.i = and i32 %44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i65 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i65, label %if.then.i, label %if.end44.batadv_add_counter.exit_crit_edge, !prof !68

if.end44.batadv_add_counter.exit_crit_edge:       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_add_counter.exit

if.then.i:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %batadv_add_counter.exit

batadv_add_counter.exit:                          ; preds = %if.then.i, %if.end44.batadv_add_counter.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %31) #10, !srcloc !71
  br label %cleanup

free_skb:                                         ; preds = %if.end40.free_skb_crit_edge, %if.end28.free_skb_crit_edge, %pskb_may_pull.exit.free_skb_crit_edge, %if.end.i.free_skb_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call11, i32 noundef 0) #10
  br label %if.end.i67

if.end.i67:                                       ; preds = %free_skb, %if.end10.if.end.i67_crit_edge
  %refcount.i = getelementptr inbounds %struct.batadv_nc_path, ptr %call7, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !75
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !76

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !77
  %rcu.i.i = getelementptr %struct.batadv_nc_path, ptr %call7, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 8 to ptr)) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %batadv_add_counter.exit, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull_rcsum(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_add_counter(ptr nocapture noundef readonly %bat_priv, i32 noundef %idx, i32 noundef %count) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !69
  %conv6 = zext i32 %count to i64
  %bat_counters = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 2
  %1 = ptrtoint ptr %bat_counters to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bat_counters, align 4
  %arrayidx = getelementptr i64, ptr %2, i32 %idx
  %3 = ptrtoint ptr %arrayidx to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx14 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx14, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %10, align 8
  %add15 = add i64 %12, %conv6
  store i64 %add15, ptr %10, align 8
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !70
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end30_crit_edge, !prof !68

entry.do.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30

do.end30:                                         ; preds = %if.then, %entry.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #10, !srcloc !71
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_nc_skb_store_sniffed_unicast(ptr noundef %bat_priv, ptr noundef %skb) local_unnamed_addr #2 align 64 {
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
  %call1 = tail call zeroext i1 @batadv_is_my_mac(ptr noundef %bat_priv, ptr noundef %add.ptr.i.i) #10
  br i1 %call1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 14) #10
  tail call void @batadv_nc_skb_store_for_decoding(ptr noundef %bat_priv, ptr noundef %skb)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_is_my_mac(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_nc_mesh_free(ptr noundef %bat_priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @batadv_tvlv_container_unregister(ptr noundef %bat_priv, i8 noundef zeroext 3, i8 noundef zeroext 1) #10
  tail call void @batadv_tvlv_handler_unregister(ptr noundef %bat_priv, i8 noundef zeroext 3, i8 noundef zeroext 1) #10
  %nc = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 41
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %nc) #10
  %coding_hash = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 41, i32 6
  %0 = ptrtoint ptr %coding_hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %coding_hash, align 4
  tail call fastcc void @batadv_nc_purge_paths(ptr noundef %bat_priv, ptr noundef %1, ptr noundef null)
  %2 = ptrtoint ptr %coding_hash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %coding_hash, align 4
  tail call void @batadv_hash_destroy(ptr noundef %3) #10
  %decoding_hash = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 41, i32 7
  %4 = ptrtoint ptr %decoding_hash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %decoding_hash, align 4
  tail call fastcc void @batadv_nc_purge_paths(ptr noundef %bat_priv, ptr noundef %5, ptr noundef null)
  %6 = ptrtoint ptr %decoding_hash to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %decoding_hash, align 4
  tail call void @batadv_hash_destroy(ptr noundef %7) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tvlv_container_unregister(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tvlv_handler_unregister(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_nc_purge_paths(ptr noundef %bat_priv, ptr nocapture noundef readonly %hash, ptr noundef readonly %to_purge) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.batadv_hashtable, ptr %hash, i32 0, i32 2
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp74.not = icmp eq i32 %1, 0
  br i1 %cmp74.not, label %entry.for.end49_crit_edge, label %for.body.lr.ph

entry.for.end49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end49

for.body.lr.ph:                                   ; preds = %entry
  %list_locks = getelementptr inbounds %struct.batadv_hashtable, ptr %hash, i32 0, i32 1
  %tobool8.not = icmp eq ptr %to_purge, null
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.075 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hash, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %3, i32 %i.075
  %4 = ptrtoint ptr %list_locks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list_locks, align 4
  %arrayidx1 = getelementptr %struct.spinlock, ptr %5, i32 %i.075
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx1) #10
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool4.not72 = icmp eq ptr %7, null
  br i1 %tobool4.not72, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %nc_path.073 = phi ptr [ %9, %for.inc.land.rhs_crit_edge ], [ %7, %for.body.land.rhs_crit_edge ]
  %8 = ptrtoint ptr %nc_path.073 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nc_path.073, align 4
  br i1 %tobool8.not, label %land.rhs.if.end_crit_edge, label %land.lhs.true

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %land.rhs
  %call = tail call zeroext i1 %to_purge(ptr noundef %bat_priv, ptr noundef nonnull %nc_path.073) #10, !callees !83
  br i1 %call, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %land.rhs.if.end_crit_edge
  %packet_list = getelementptr inbounds %struct.batadv_nc_path, ptr %nc_path.073, i32 0, i32 3
  %10 = ptrtoint ptr %packet_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %packet_list, align 4
  %cmp.i.not = icmp eq ptr %11, %packet_list
  br i1 %cmp.i.not, label %do.body25, label %do.body, !prof !68

do.body:                                          ; preds = %if.end
  %call14 = tail call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.body.for.inc_crit_edge, label %do.end

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev_hop = getelementptr inbounds %struct.batadv_nc_path, ptr %nc_path.073, i32 0, i32 6
  %next_hop = getelementptr inbounds %struct.batadv_nc_path, ptr %nc_path.073, i32 0, i32 5
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %prev_hop, ptr noundef %next_hop) #14
  br label %for.inc

do.body25:                                        ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #10
  %12 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %do.body25.if.end34_crit_edge, label %if.then28

do.body25.if.end34_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then28:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #12
  %prev_hop29 = getelementptr inbounds %struct.batadv_nc_path, ptr %nc_path.073, i32 0, i32 6
  %next_hop31 = getelementptr inbounds %struct.batadv_nc_path, ptr %nc_path.073, i32 0, i32 5
  %call33 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.18, ptr noundef %prev_hop29, ptr noundef %next_hop31) #10
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %do.body25.if.end34_crit_edge
  %14 = ptrtoint ptr %nc_path.073 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nc_path.073, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %nc_path.073, i32 0, i32 1
  %16 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pprev2.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %15, ptr %17, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end34.if.end.i_crit_edge, label %do.body13.i.i

if.end34.if.end.i_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.body13.i.i:                                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %15, i32 0, i32 1
  %19 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %pprev14.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.body13.i.i, %if.end34.if.end.i_crit_edge
  %20 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %refcount.i = getelementptr inbounds %struct.batadv_nc_path, ptr %nc_path.073, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !75
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i.i.i, !prof !76

if.end5.i.i.i.i.i.for.inc_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %for.inc

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !77
  %rcu.i.i = getelementptr %struct.batadv_nc_path, ptr %nc_path.073, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 8 to ptr)) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.for.inc_crit_edge, %do.end, %do.body.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx1) #10
  %inc = add nuw i32 %i.075, 1
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end49_crit_edge

for.end.for.end49_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end49

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end49:                                        ; preds = %for.end.for.end49_crit_edge, %entry.for.end49_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tvlv_container_register(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_debug_log(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @batadv_nc_to_purge_nc_path_coding(ptr noundef %bat_priv, ptr nocapture noundef readonly %nc_path) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bat_priv, i32 noundef 4) #10
  %0 = ptrtoint ptr %bat_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bat_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %last_valid = getelementptr inbounds %struct.batadv_nc_path, ptr %nc_path, i32 0, i32 7
  %2 = ptrtoint ptr %last_valid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_valid, align 4
  %max_fwd_delay = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 41, i32 2
  %4 = ptrtoint ptr %max_fwd_delay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_fwd_delay, align 4
  %mul = mul i32 %5, 10
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #10
  %add.i = add i32 %call2.i.i, %3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp.i, %if.end ], [ true, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @batadv_nc_to_purge_nc_path_decoding(ptr noundef %bat_priv, ptr nocapture noundef readonly %nc_path) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bat_priv, i32 noundef 4) #10
  %0 = ptrtoint ptr %bat_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bat_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %last_valid = getelementptr inbounds %struct.batadv_nc_path, ptr %nc_path, i32 0, i32 7
  %2 = ptrtoint ptr %last_valid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_valid, align 4
  %max_buffer_time = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 41, i32 3
  %4 = ptrtoint ptr %max_buffer_time to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_buffer_time, align 4
  %mul = mul i32 %5, 10
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #10
  %add.i = add i32 %call2.i.i, %3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp.i, %if.end ], [ true, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_nc_process_nc_paths(ptr noundef %bat_priv, ptr noundef readonly %hash, ptr nocapture noundef readonly %process_fn) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hash, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %size = getelementptr inbounds %struct.batadv_hashtable, ptr %hash, i32 0, i32 2
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp95.not = icmp eq i32 %1, 0
  br i1 %cmp95.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %rcu_read_unlock.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.096 = phi i32 [ %inc, %rcu_read_unlock.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %2 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hash, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %3, i32 %i.096
  %4 = tail call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !72
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %for.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.body.rcu_read_lock.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.body
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.body.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b81 = load i1, ptr @batadv_nc_process_nc_paths.__warned, align 1
  br i1 %.b81, label %land.lhs.true4.do.end_crit_edge, label %if.then6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @batadv_nc_process_nc_paths.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 688, ptr noundef nonnull @.str.8) #10
  br label %do.end

do.end:                                           ; preds = %if.then6, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %nc_path.092 = load volatile ptr, ptr %arrayidx, align 4
  %tobool16.not93 = icmp eq ptr %nc_path.092, null
  br i1 %tobool16.not93, label %do.end.for.end57_crit_edge, label %do.end.for.body17_crit_edge

do.end.for.body17_crit_edge:                      ; preds = %do.end
  br label %for.body17

do.end.for.end57_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end57

for.body17:                                       ; preds = %for.end.for.body17_crit_edge, %do.end.for.body17_crit_edge
  %nc_path.094 = phi ptr [ %nc_path.0, %for.end.for.body17_crit_edge ], [ %nc_path.092, %do.end.for.body17_crit_edge ]
  %packet_list_lock = getelementptr inbounds %struct.batadv_nc_path, ptr %nc_path.094, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %packet_list_lock) #10
  %packet_list = getelementptr inbounds %struct.batadv_nc_path, ptr %nc_path.094, i32 0, i32 3
  %9 = ptrtoint ptr %packet_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %packet_list, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.body29.for.cond25_crit_edge, %for.body17
  %nc_packet.0 = phi ptr [ %10, %for.body17 ], [ %nc_packet_tmp.0, %for.body29.for.cond25_crit_edge ]
  %cmp28.not = icmp eq ptr %nc_packet.0, %packet_list
  br i1 %cmp28.not, label %for.cond25.for.end_crit_edge, label %for.body29

for.cond25.for.end_crit_edge:                     ; preds = %for.cond25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body29:                                       ; preds = %for.cond25
  %11 = ptrtoint ptr %nc_packet.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %nc_packet_tmp.0 = load ptr, ptr %nc_packet.0, align 4
  %call30 = tail call zeroext i1 %process_fn(ptr noundef %bat_priv, ptr noundef nonnull %nc_path.094, ptr noundef %nc_packet.0) #10, !callees !84
  br i1 %call30, label %for.body29.for.cond25_crit_edge, label %for.body29.for.end_crit_edge

for.body29.for.end_crit_edge:                     ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body29.for.cond25_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond25

for.end:                                          ; preds = %for.body29.for.end_crit_edge, %for.cond25.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %packet_list_lock) #10
  %12 = ptrtoint ptr %nc_path.094 to i32
  call void @__asan_load4_noabort(i32 %12)
  %nc_path.0 = load volatile ptr, ptr %nc_path.094, align 4
  %tobool16.not = icmp eq ptr %nc_path.0, null
  br i1 %tobool16.not, label %for.end.for.end57_crit_edge, label %for.end.for.body17_crit_edge

for.end.for.body17_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body17

for.end.for.end57_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end57

for.end57:                                        ; preds = %for.end.for.end57_crit_edge, %do.end.for.end57_crit_edge
  %call.i83 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i83, label %for.end57.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i86

for.end57.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i86:                                ; preds = %for.end57
  %call1.i84 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i84)
  %tobool.not.i85 = icmp eq i32 %call1.i84, 0
  br i1 %tobool.not.i85, label %land.lhs.true.i86.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i88

land.lhs.true.i86.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i86
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i88:                               ; preds = %land.lhs.true.i86
  %.b4.i87 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i87, label %land.lhs.true2.i88.rcu_read_unlock.exit_crit_edge, label %if.then.i89

land.lhs.true2.i88.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i88
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i89:                                      ; preds = %land.lhs.true2.i88
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i89, %land.lhs.true2.i88.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i86.rcu_read_unlock.exit_crit_edge, %for.end57.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  %13 = tail call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i.i.i.i90 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i90 to ptr
  %preempt_count.i.i.i.i91 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i91 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i91, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i91, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %inc = add nuw i32 %i.096, 1
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %rcu_read_unlock.exit.for.body_crit_edge, label %rcu_read_unlock.exit.cleanup_crit_edge

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

rcu_read_unlock.exit.for.body_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %rcu_read_unlock.exit.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @batadv_nc_fwd_flush(ptr noundef %bat_priv, ptr noundef %nc_path, ptr noundef %nc_packet) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %max_fwd_delay = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 41, i32 2
  %0 = ptrtoint ptr %max_fwd_delay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_fwd_delay, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.batadv_nc_path, ptr %nc_path, i32 0, i32 4, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !68

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 638, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bat_priv, i32 noundef 4) #10
  %3 = ptrtoint ptr %bat_priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %bat_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp25 = icmp eq i32 %4, 1
  br i1 %cmp25, label %land.lhs.true, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end
  %timestamp = getelementptr inbounds %struct.batadv_nc_packet, ptr %nc_packet, i32 0, i32 2
  %5 = ptrtoint ptr %timestamp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %timestamp, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #10
  %add.i = add i32 %call2.i.i, %6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %land.lhs.true.if.end28_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.end28:                                         ; preds = %land.lhs.true.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !69
  %bat_counters.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 2
  %9 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bat_counters.i, align 4
  %arrayidx.i = getelementptr i64, ptr %10, i32 5
  %11 = ptrtoint ptr %arrayidx.i to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx14.i, align 4
  %add.i36 = add i32 %17, %11
  %18 = inttoptr i32 %add.i36 to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %18, align 8
  %add15.i = add i64 %20, 1
  store i64 %add15.i, ptr %18, align 8
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !70
  %and.i.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end28.batadv_add_counter.exit_crit_edge, !prof !68

if.end28.batadv_add_counter.exit_crit_edge:       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_add_counter.exit

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %batadv_add_counter.exit

batadv_add_counter.exit:                          ; preds = %if.then.i, %if.end28.batadv_add_counter.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #10, !srcloc !71
  %skb = getelementptr inbounds %struct.batadv_nc_packet, ptr %nc_packet, i32 0, i32 4
  %22 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  %add = add i32 %25, 14
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !69
  %conv6.i = zext i32 %add to i64
  %27 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bat_counters.i, align 4
  %arrayidx.i38 = getelementptr i64, ptr %28, i32 6
  %29 = ptrtoint ptr %arrayidx.i38 to i32
  %30 = tail call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i39 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i39 to ptr
  %cpu.i40 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %cpu.i40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu.i40, align 4
  %arrayidx14.i41 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx14.i41 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx14.i41, align 4
  %add.i42 = add i32 %35, %29
  %36 = inttoptr i32 %add.i42 to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %36, align 8
  %add15.i43 = add i64 %38, %conv6.i
  store i64 %add15.i43, ptr %36, align 8
  %39 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !70
  %and.i.i.i44 = and i32 %39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i44)
  %tobool.not.i45 = icmp eq i32 %and.i.i.i44, 0
  br i1 %tobool.not.i45, label %if.then.i46, label %batadv_add_counter.exit.batadv_add_counter.exit47_crit_edge, !prof !68

batadv_add_counter.exit.batadv_add_counter.exit47_crit_edge: ; preds = %batadv_add_counter.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_add_counter.exit47

if.then.i46:                                      ; preds = %batadv_add_counter.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %batadv_add_counter.exit47

batadv_add_counter.exit47:                        ; preds = %if.then.i46, %batadv_add_counter.exit.batadv_add_counter.exit47_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %26) #10, !srcloc !71
  %call.i.i48 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %nc_packet) #10
  br i1 %call.i.i48, label %if.end.i.i49, label %batadv_add_counter.exit47.list_del.exit_crit_edge

batadv_add_counter.exit47.list_del.exit_crit_edge: ; preds = %batadv_add_counter.exit47
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i49:                                     ; preds = %batadv_add_counter.exit47
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %nc_packet, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i, align 4
  %42 = ptrtoint ptr %nc_packet to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %nc_packet, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i49, %batadv_add_counter.exit47.list_del.exit_crit_edge
  %46 = ptrtoint ptr %nc_packet to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 256 to ptr), ptr %nc_packet, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %nc_packet, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %48 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %skb, align 4
  %neigh_node.i = getelementptr inbounds %struct.batadv_nc_packet, ptr %nc_packet, i32 0, i32 3
  %50 = ptrtoint ptr %neigh_node.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %neigh_node.i, align 4
  %call.i50 = tail call i32 @batadv_send_unicast_skb(ptr noundef %49, ptr noundef %51) #10
  %52 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %skb, align 4
  tail call fastcc void @batadv_nc_packet_free(ptr noundef %nc_packet, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %list_del.exit ], [ false, %land.lhs.true.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @batadv_nc_sniffed_purge(ptr noundef %bat_priv, ptr noundef %nc_path, ptr noundef %nc_packet) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %max_buffer_time = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 41, i32 3
  %0 = ptrtoint ptr %max_buffer_time to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_buffer_time, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.batadv_nc_path, ptr %nc_path, i32 0, i32 4, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !68

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 600, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bat_priv, i32 noundef 4) #10
  %3 = ptrtoint ptr %bat_priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %bat_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp25 = icmp eq i32 %4, 1
  br i1 %cmp25, label %land.lhs.true, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end
  %timestamp = getelementptr inbounds %struct.batadv_nc_packet, ptr %nc_packet, i32 0, i32 2
  %5 = ptrtoint ptr %timestamp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %timestamp, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #10
  %add.i = add i32 %call2.i.i, %6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %land.lhs.true.if.end28_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.end28:                                         ; preds = %land.lhs.true.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %call.i.i34 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %nc_packet) #10
  br i1 %call.i.i34, label %if.end.i.i35, label %if.end28.list_del.exit_crit_edge

if.end28.list_del.exit_crit_edge:                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i35:                                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %nc_packet, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %nc_packet to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nc_packet, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i35, %if.end28.list_del.exit_crit_edge
  %14 = ptrtoint ptr %nc_packet to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %nc_packet, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %nc_packet, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call fastcc void @batadv_nc_packet_free(ptr noundef %nc_packet, i1 noundef zeroext true)
  br label %out

out:                                              ; preds = %list_del.exit, %land.lhs.true.out_crit_edge
  %res.0.off0 = phi i1 [ true, %list_del.exit ], [ false, %land.lhs.true.out_crit_edge ]
  ret i1 %res.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @batadv_nc_to_purge_nc_node(ptr noundef %bat_priv, ptr nocapture noundef readonly %nc_node) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bat_priv, i32 noundef 4) #10
  %0 = ptrtoint ptr %bat_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bat_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %last_seen = getelementptr inbounds %struct.batadv_nc_node, ptr %nc_node, i32 0, i32 5
  %2 = ptrtoint ptr %last_seen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_seen, align 4
  %add.i = add i32 %3, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp.i, %if.end ], [ true, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_send_unicast_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_nc_packet_free(ptr noundef %nc_packet, i1 noundef zeroext %dropped) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.batadv_nc_packet, ptr %nc_packet, i32 0, i32 4
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  br i1 %dropped, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef %1) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %nc_path = getelementptr inbounds %struct.batadv_nc_packet, ptr %nc_packet, i32 0, i32 5
  %2 = ptrtoint ptr %nc_path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nc_path, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.batadv_nc_path_put.exit_crit_edge, label %if.end.i

if.end.batadv_nc_path_put.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_path_put.exit

if.end.i:                                         ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.batadv_nc_path, ptr %3, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !75
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_nc_path_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !76

if.end5.i.i.i.i.i.batadv_nc_path_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %batadv_nc_path_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %batadv_nc_path_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !77
  %rcu.i.i = getelementptr %struct.batadv_nc_path, ptr %3, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 8 to ptr)) #10
  br label %batadv_nc_path_put.exit

batadv_nc_path_put.exit:                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_nc_path_put.exit_crit_edge, %if.end.batadv_nc_path_put.exit_crit_edge
  tail call void @kfree(ptr noundef %nc_packet) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_orig_ifinfo_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_orig_ifinfo_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_orig_node_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_orig_hash_find(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_copy_fclone(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_orig_router_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_neigh_ifinfo_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_neigh_node_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_neigh_ifinfo_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_recv_unicast_packet(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_trim_rcsum_slow(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !8, !10, !11, !13, !15, !17, !19, !20, !21, !23, !24, !25, !27, !28, !30, !32, !34, !36, !38, !40, !42, !43, !45, !47, !49, !51, !53, !54, !55, !56}
!llvm.named.register.sp = !{!58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @batadv_nc_mesh_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../net/batman-adv/network-coding.c", i32 159, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @batadv_nc_mesh_init.__key.1, !1, !"__key", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @batadv_nc_init_orig.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../net/batman-adv/network-coding.c", i32 192, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @batadv_nc_init_orig.__key.4, !9, !"__key", i1 false, i1 false}
!9 = !{!"../net/batman-adv/network-coding.c", i32 193, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @batadv_nc_coding_hash_lock_class_key, !12, !"batadv_nc_coding_hash_lock_class_key", i1 false, i1 false}
!12 = !{!"../net/batman-adv/network-coding.c", i32 47, i32 30}
!13 = !{ptr @batadv_nc_decoding_hash_lock_class_key, !14, !"batadv_nc_decoding_hash_lock_class_key", i1 false, i1 false}
!14 = !{!"../net/batman-adv/network-coding.c", i32 48, i32 30}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/batman-adv/network-coding.c", i32 354, i32 3}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../net/batman-adv/network-coding.c", i32 409, i32 3}
!19 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../net/batman-adv/network-coding.c", i32 688, i32 3}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/batman-adv/network-coding.c", i32 875, i32 2}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../net/batman-adv/network-coding.c", i32 809, i32 2}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../net/batman-adv/network-coding.c", i32 1418, i32 2}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../net/batman-adv/network-coding.c", i32 1340, i32 2}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../net/batman-adv/network-coding.c", i32 1279, i32 2}
!40 = !{ptr @batadv_nc_get_path.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../net/batman-adv/network-coding.c", i32 978, i32 2}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/batman-adv/network-coding.c", i32 984, i32 2}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../net/batman-adv/network-coding.c", i32 554, i32 2}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../net/batman-adv/network-coding.c", i32 1758, i32 2}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/batman-adv/network-coding.c", i32 1778, i32 3}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/batman-adv/network-coding.c", i32 456, i32 5}
!53 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @batadv_nc_purge_paths._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @batadv_nc_purge_paths._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/batman-adv/network-coding.c", i32 465, i32 4}
!58 = !{!"sp"}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"branch_weights", i32 1, i32 2000}
!69 = !{i64 641808, i64 641869}
!70 = !{i64 644540}
!71 = !{i64 644825}
!72 = !{i64 2149734476}
!73 = !{i64 2149734742}
!74 = !{i64 2148278012}
!75 = !{i64 2148192476, i64 2148192508, i64 2148192537, i64 2148192571, i64 2148192602, i64 2148192625}
!76 = !{!"branch_weights", i32 2000, i32 1}
!77 = !{i64 2150609023}
!78 = !{i64 563315, i64 563339, i64 563360, i64 563377, i64 563394}
!79 = !{i64 2148190011, i64 2148190043, i64 2148190072, i64 2148190106, i64 2148190137, i64 2148190160}
!80 = !{i64 2149759868}
!81 = !{i64 2149836087}
!82 = !{i64 2148188481, i64 2148188507, i64 2148188536, i64 2148188570, i64 2148188601, i64 2148188624}
!83 = !{ptr @batadv_nc_to_purge_nc_path_coding, ptr @batadv_nc_to_purge_nc_path_decoding}
!84 = !{ptr @batadv_nc_fwd_flush, ptr @batadv_nc_sniffed_purge}
