; ModuleID = '/llk/IR_all_yes/net/batman-adv/bat_v_elp.c_pt.bc'
source_filename = "../net/batman-adv/bat_v_elp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.115, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.115 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.station_info = type { i64, i32, i32, i64, i64, i64, i16, i16, i8, i8, i8, i8, [4 x i8], [4 x i8], %struct.rate_info, %struct.rate_info, i32, i32, i32, i32, i32, %struct.sta_bss_parameters, %struct.nl80211_sta_flag_update, i32, ptr, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i8, i8, ptr, i8, i8, i16, i32, i32, i32, i8 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_bss_parameters = type { i8, i8, i16 }
%struct.nl80211_sta_flag_update = type { i32, i32 }
%struct.batadv_hard_iface = type { %struct.list_head, i8, i8, i32, ptr, %struct.kref, %struct.packet_type, ptr, %struct.callback_head, %struct.atomic_t, %struct.batadv_hard_iface_bat_iv, %struct.batadv_hard_iface_bat_v, %struct.hlist_head, %struct.spinlock }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.batadv_hard_iface_bat_iv = type { ptr, i32, %struct.atomic_t, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.batadv_hard_iface_bat_v = type { %struct.atomic_t, %struct.atomic_t, ptr, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, i32, %struct.atomic_t, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.123, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.123 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.0, %union.anon.3, %union.anon.4, [48 x i8], %union.anon.5, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.7, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
%union.anon.4 = type { i64 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i32, ptr }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.9, i32, i32, i32, i16, i16, %union.anon.11, i32, %union.anon.12, %union.anon.13, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.9 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i32 }
%union.anon.13 = type { i16 }
%struct.batadv_elp_packet = type { i8, i8, [6 x i8], i32, i32 }
%struct.batadv_hardif_neigh_node = type { %struct.hlist_node, [6 x i8], [6 x i8], ptr, i32, %struct.batadv_hardif_neigh_node_bat_v, %struct.kref, %struct.callback_head }
%struct.batadv_hardif_neigh_node_bat_v = type { %struct.ewma_throughput, i32, i32, i32, %struct.work_struct }
%struct.ewma_throughput = type { i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.batadv_algo_ops = type { %struct.hlist_node, ptr, %struct.batadv_algo_iface_ops, %struct.batadv_algo_neigh_ops, %struct.batadv_algo_orig_ops, %struct.batadv_algo_gw_ops }
%struct.batadv_algo_iface_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.batadv_algo_neigh_ops = type { ptr, ptr, ptr, ptr }
%struct.batadv_algo_orig_ops = type { ptr }
%struct.batadv_algo_gw_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.batadv_neigh_node = type { %struct.hlist_node, ptr, [6 x i8], %struct.hlist_head, %struct.spinlock, ptr, i32, ptr, %struct.kref, %struct.callback_head }
%struct.batadv_orig_node = type { [6 x i8], %struct.hlist_head, ptr, i16, i32, i32, %struct.spinlock, i8, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, i32, i32, %struct.atomic_t, ptr, i16, %struct.spinlock, %struct.spinlock, [2 x i32], i32, %struct.hlist_head, %struct.spinlock, %struct.hlist_node, ptr, %struct.spinlock, %struct.kref, %struct.callback_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, [8 x %struct.batadv_frag_table_entry], %struct.hlist_head, %struct.spinlock, %struct.batadv_orig_bat_iv }
%struct.batadv_frag_table_entry = type { %struct.hlist_head, %struct.spinlock, i32, i16, i16, i16 }
%struct.batadv_orig_bat_iv = type { %struct.spinlock }

@batadv_v_elp_iface_enable.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(work_completion)(&(&hard_iface->bat_v.elp_wq)->work)\00", [42 x i8] zeroinitializer }, align 32
@batadv_v_elp_iface_enable.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&(&hard_iface->bat_v.elp_wq)->timer\00", [60 x i8] zeroinitializer }, align 32
@batadv_v_elp_primary_iface_set.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/batman-adv/bat_v_elp.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@batadv_hardif_list = external dso_local global %struct.list_head, align 4
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BATMAN_V\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Received ELP packet from %pM seqno %u ORIG: %pM\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [230 x i8], [58 x i8] } { [230 x i8] c"WiFi driver or ethtool info does not provide information about link speeds on interface %s, therefore defaulting to hardcoded throughput values of %u.%1u Mbps. Consider overriding the throughput manually or checking your driver.\0A\00", [58 x i8] zeroinitializer }, align 32
@batadv_v_elp_get_throughput._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [248 x i8], [40 x i8] } { [248 x i8] c"\016batman_adv: %s: WiFi driver or ethtool info does not provide information about link speeds on interface %s, therefore defaulting to hardcoded throughput values of %u.%1u Mbps. Consider overriding the throughput manually or checking your driver.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"batadv_v_elp_get_throughput\00", [36 x i8] zeroinitializer }, align 32
@batadv_v_elp_get_throughput._entry_ptr = internal global ptr @batadv_v_elp_get_throughput._entry, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.10 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Sending broadcast ELP packet on interface %s, seqno %u\0A\00", [40 x i8] zeroinitializer }, align 32
@batadv_v_elp_periodic_work.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@batadv_event_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.11 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Sending unicast (probe) ELP packet on interface %s to %pM\0A\00", [37 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@batadv_primary_if_get_selected.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/batman-adv/hard-interface.h\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 3]
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 377, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 430, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 524, i32 39 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 529, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 146, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 287, i32 2 }
@___asan_gen_.58 = private constant [30 x i8] c"../net/batman-adv/bat_v_elp.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 235, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 695, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 723, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [35 x i8] c"../net/batman-adv/hard-interface.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 110, i32 15 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @batadv_v_elp_get_throughput._entry, ptr @batadv_v_elp_get_throughput._entry_ptr, ptr @batadv_v_elp_iface_enable.__key, ptr @.str, ptr @batadv_v_elp_iface_enable.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_v_elp_iface_enable.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_v_elp_iface_enable.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 230, i32 288, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_v_elp_get_throughput._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_v_elp_throughput_metric_update(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %link_settings.i = alloca %struct.ethtool_link_ksettings, align 4
  %sinfo.i = alloca %struct.station_info, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -44
  %bat_v = getelementptr i8, ptr %work, i32 -16
  %if_incoming.i = getelementptr i8, ptr %work, i32 -24
  %0 = ptrtoint ptr %if_incoming.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %if_incoming.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %link_settings.i) #9
  %2 = call ptr @memset(ptr %link_settings.i, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %sinfo.i) #9
  %3 = call ptr @memset(ptr %sinfo.i, i32 255, i32 208)
  %throughput_override.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %1, i32 0, i32 11, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %throughput_override.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %throughput_override.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %throughput_override.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.batadv_v_elp_get_throughput.exit_crit_edge

entry.batadv_v_elp_get_throughput.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_v_elp_get_throughput.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call zeroext i1 @batadv_is_wifi_hardif(ptr noundef %1) #9
  br i1 %call1.i, label %if.then2.i, label %if.end29.i

if.then2.i:                                       ; preds = %if.end.i
  %call3.i = tail call zeroext i1 @batadv_is_cfg80211_hardif(ptr noundef %1) #9
  br i1 %call3.i, label %if.end5.i, label %if.then2.i.default_throughput.i_crit_edge

if.then2.i.default_throughput.i_crit_edge:        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %default_throughput.i

if.end5.i:                                        ; preds = %if.then2.i
  %net_dev.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev.i, align 4
  %call6.i = tail call ptr @batadv_get_real_netdev(ptr noundef %7) #9
  %tobool.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i, label %if.end5.i.default_throughput.i_crit_edge, label %if.end8.i

if.end5.i.default_throughput.i_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %default_throughput.i

if.end8.i:                                        ; preds = %if.end5.i
  %addr.i = getelementptr i8, ptr %work, i32 -36
  %call9.i = call i32 @cfg80211_get_station(ptr noundef nonnull %call6.i, ptr noundef %addr.i, ptr noundef nonnull %sinfo.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end8.i.do.body1.i.i_crit_edge

if.end8.i.do.body1.i.i_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %pertid.i.i = getelementptr inbounds %struct.station_info, ptr %sinfo.i, i32 0, i32 37
  %8 = ptrtoint ptr %pertid.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pertid.i.i, align 4
  call void @kfree(ptr noundef %9) #9
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %if.then11.i, %if.end8.i.do.body1.i.i_crit_edge
  %10 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !48
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call6.i, i32 0, i32 118
  %11 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = call i32 @llvm.read_register.i32(metadata !38) #9
  %and.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %19, %13
  %20 = inttoptr i32 %add.i.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add13.i.i = add i32 %22, -1
  store i32 %add13.i.i, ptr %20, align 4
  %23 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !49
  %and.i.i.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !50

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #9, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call9.i)
  %cmp13.i = icmp eq i32 %call9.i, -2
  br i1 %cmp13.i, label %dev_put.exit.i.batadv_v_elp_get_throughput.exit_crit_edge, label %if.end15.i

dev_put.exit.i.batadv_v_elp_get_throughput.exit_crit_edge: ; preds = %dev_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_v_elp_get_throughput.exit

if.end15.i:                                       ; preds = %dev_put.exit.i
  br i1 %tobool10.not.i, label %if.end18.i, label %if.end15.i.default_throughput.i_crit_edge

if.end15.i.default_throughput.i_crit_edge:        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %default_throughput.i

if.end18.i:                                       ; preds = %if.end15.i
  %24 = ptrtoint ptr %sinfo.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %sinfo.i, align 8
  %and.i = and i64 %25, 134217728
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool19.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  %expected_throughput.i = getelementptr inbounds %struct.station_info, ptr %sinfo.i, i32 0, i32 31
  %26 = ptrtoint ptr %expected_throughput.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %expected_throughput.i, align 4
  %div.i = udiv i32 %27, 100
  br label %batadv_v_elp_get_throughput.exit

if.end21.i:                                       ; preds = %if.end18.i
  %and23.i = and i64 %25, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and23.i)
  %tobool24.not.i = icmp eq i64 %and23.i, 0
  br i1 %tobool24.not.i, label %if.end21.i.default_throughput.i_crit_edge, label %if.then25.i

if.end21.i.default_throughput.i_crit_edge:        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %default_throughput.i

if.then25.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  %txrate.i = getelementptr inbounds %struct.station_info, ptr %sinfo.i, i32 0, i32 14
  %call26.i = call i32 @cfg80211_calculate_bitrate(ptr noundef %txrate.i) #9
  %div27.i = udiv i32 %call26.i, 3
  br label %batadv_v_elp_get_throughput.exit

if.end29.i:                                       ; preds = %if.end.i
  %28 = call ptr @memset(ptr %link_settings.i, i32 0, i32 88)
  tail call void @rtnl_lock() #9
  %net_dev30.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %net_dev30.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net_dev30.i, align 4
  %call31.i = call i32 @__ethtool_get_link_ksettings(ptr noundef %30, ptr noundef nonnull %link_settings.i) #9
  call void @rtnl_unlock() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp eq i32 %call31.i, 0
  br i1 %cmp32.i, label %if.then33.i, label %if.end29.i.default_throughput.i_crit_edge

if.end29.i.default_throughput.i_crit_edge:        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %default_throughput.i

if.then33.i:                                      ; preds = %if.end29.i
  %duplex.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_settings.i, i32 0, i32 2
  %31 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp34.i = icmp eq i8 %32, 1
  %flags.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %1, i32 0, i32 11, i32 8
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %flags.i, align 4
  %35 = and i8 %34, -2
  %masksel.i = zext i1 %cmp34.i to i8
  %.sink.i = or i8 %35, %masksel.i
  store i8 %.sink.i, ptr %flags.i, align 4
  %speed.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_settings.i, i32 0, i32 1
  %36 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %speed.i, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i32 %37, label %if.then50.i [
    i32 0, label %if.then33.i.default_throughput.i_crit_edge
    i32 -1, label %if.then33.i.default_throughput.i_crit_edge9
  ]

if.then33.i.default_throughput.i_crit_edge9:      ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %default_throughput.i

if.then33.i.default_throughput.i_crit_edge:       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %default_throughput.i

if.then50.i:                                      ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i = mul i32 %37, 10
  br label %batadv_v_elp_get_throughput.exit

default_throughput.i:                             ; preds = %if.then33.i.default_throughput.i_crit_edge, %if.then33.i.default_throughput.i_crit_edge9, %if.end29.i.default_throughput.i_crit_edge, %if.end21.i.default_throughput.i_crit_edge, %if.end15.i.default_throughput.i_crit_edge, %if.end5.i.default_throughput.i_crit_edge, %if.then2.i.default_throughput.i_crit_edge
  %flags54.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %1, i32 0, i32 11, i32 8
  %39 = ptrtoint ptr %flags54.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %flags54.i, align 4
  %41 = and i8 %40, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool57.not.i = icmp eq i8 %41, 0
  br i1 %tobool57.not.i, label %do.body.i, label %default_throughput.i.batadv_v_elp_get_throughput.exit_crit_edge

default_throughput.i.batadv_v_elp_get_throughput.exit_crit_edge: ; preds = %default_throughput.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_v_elp_get_throughput.exit

do.body.i:                                        ; preds = %default_throughput.i
  %soft_iface.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %1, i32 0, i32 7
  %42 = ptrtoint ptr %soft_iface.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %soft_iface.i, align 4
  %log_level.i = getelementptr i8, ptr %43, i32 2360
  %call.i.i114.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #9
  %44 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %log_level.i, align 4
  %and62.i = and i32 %45, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %tobool63.not.i = icmp eq i32 %and62.i, 0
  br i1 %tobool63.not.i, label %do.body.i.if.end68.i_crit_edge, label %if.then64.i

do.body.i.if.end68.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68.i

if.then64.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 2304
  %net_dev65.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %1, i32 0, i32 4
  %46 = ptrtoint ptr %net_dev65.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %net_dev65.i, align 4
  %call67.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str.7, ptr noundef %47, i32 noundef 1, i32 noundef 0) #9
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then64.i, %do.body.i.if.end68.i_crit_edge
  %net_dev74.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %1, i32 0, i32 4
  %48 = ptrtoint ptr %net_dev74.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %net_dev74.i, align 4
  %call77.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %43, ptr noundef %49, i32 noundef 1, i32 noundef 0) #12
  %50 = ptrtoint ptr %flags54.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %flags54.i, align 4
  %52 = or i8 %51, 2
  store i8 %52, ptr %flags54.i, align 4
  br label %batadv_v_elp_get_throughput.exit

batadv_v_elp_get_throughput.exit:                 ; preds = %if.end68.i, %default_throughput.i.batadv_v_elp_get_throughput.exit_crit_edge, %if.then50.i, %if.then25.i, %if.then20.i, %dev_put.exit.i.batadv_v_elp_get_throughput.exit_crit_edge, %entry.batadv_v_elp_get_throughput.exit_crit_edge
  %retval.0.i = phi i32 [ %div.i, %if.then20.i ], [ %div27.i, %if.then25.i ], [ %mul.i, %if.then50.i ], [ %5, %entry.batadv_v_elp_get_throughput.exit_crit_edge ], [ 0, %dev_put.exit.i.batadv_v_elp_get_throughput.exit_crit_edge ], [ 10, %if.end68.i ], [ 10, %default_throughput.i.batadv_v_elp_get_throughput.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %sinfo.i) #9
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %link_settings.i) #9
  %53 = ptrtoint ptr %bat_v to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %bat_v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i6 = icmp eq i32 %54, 0
  %sub.i = mul i32 %54, 7
  %shl19.i = shl i32 %retval.0.i, 10
  %add.i = add i32 %sub.i, %shl19.i
  %shr.i = lshr i32 %add.i, 3
  %cond.i = select i1 %tobool.not.i6, i32 %shl19.i, i32 %shr.i
  %55 = ptrtoint ptr %bat_v to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 %cond.i, ptr %bat_v, align 4
  %tobool.not.i7 = icmp eq ptr %add.ptr3, null
  br i1 %tobool.not.i7, label %batadv_v_elp_get_throughput.exit.batadv_hardif_neigh_put.exit_crit_edge, label %if.end.i8

batadv_v_elp_get_throughput.exit.batadv_hardif_neigh_put.exit_crit_edge: ; preds = %batadv_v_elp_get_throughput.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_hardif_neigh_put.exit

if.end.i8:                                        ; preds = %batadv_v_elp_get_throughput.exit
  %refcount.i = getelementptr i8, ptr %work, i32 44
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !52
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %56 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !53
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_hardif_neigh_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !54

if.end5.i.i.i.i.i.batadv_hardif_neigh_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_hardif_neigh_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %batadv_hardif_neigh_put.exit

if.then.i.i:                                      ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  call void @batadv_hardif_neigh_release(ptr noundef %refcount.i) #9, !callees !56
  br label %batadv_hardif_neigh_put.exit

batadv_hardif_neigh_put.exit:                     ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_hardif_neigh_put.exit_crit_edge, %batadv_v_elp_get_throughput.exit.batadv_hardif_neigh_put.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_v_elp_iface_enable(ptr noundef %hard_iface) local_unnamed_addr #0 align 64 {
entry:
  %random_seqno = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %random_seqno) #9
  %0 = ptrtoint ptr %random_seqno to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %random_seqno, align 4, !annotation !57
  %call.i.i61 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 36, i32 noundef 2592) #9
  %elp_skb = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 2
  %1 = ptrtoint ptr %elp_skb to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i.i61, ptr %elp_skb, align 4
  %tobool.not = icmp eq ptr %call.i.i61, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i61, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 16
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i61, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %5, i32 16
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %6 = ptrtoint ptr %elp_skb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %elp_skb, align 4
  %call.i = tail call ptr @skb_put(ptr noundef %7, i32 noundef 20) #9
  %8 = getelementptr inbounds i8, ptr %call.i, i32 2
  %9 = call ptr @memset(ptr %8, i32 0, i32 18)
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %call.i, align 2
  %version = getelementptr inbounds %struct.batadv_elp_packet, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 15, ptr %version, align 1
  call void @get_random_bytes(ptr noundef nonnull %random_seqno, i32 noundef 4) #9
  %elp_seqno = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 1
  %12 = ptrtoint ptr %random_seqno to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %random_seqno, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %elp_seqno, i32 noundef 4) #9
  %14 = ptrtoint ptr %elp_seqno to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %13, ptr %elp_seqno, align 4
  %flags = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 8
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flags, align 4
  %17 = and i8 %16, -4
  %18 = or i8 %17, 1
  store i8 %18, ptr %flags, align 4
  %call15 = call zeroext i1 @batadv_is_wifi_hardif(ptr noundef %hard_iface) #9
  br i1 %call15, label %if.then16, label %if.end.do.body23_crit_edge

if.end.do.body23_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body23

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags, align 4
  %21 = and i8 %20, -2
  store i8 %21, ptr %flags, align 4
  br label %do.body23

do.body23:                                        ; preds = %if.then16, %if.end.do.body23_crit_edge
  %elp_wq = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 3
  call void @__init_work(ptr noundef %elp_wq, i32 noundef 0) #9
  %22 = ptrtoint ptr %elp_wq to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %elp_wq, align 4
  %lockdep_map = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 3, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @batadv_v_elp_iface_enable.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry34 = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 3, i32 0, i32 1
  %23 = ptrtoint ptr %entry34 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry34, ptr %entry34, align 4
  %prev.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 3, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry34, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 3, i32 0, i32 2
  %25 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @batadv_v_elp_periodic_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 3, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @batadv_v_elp_iface_enable.__key.1) #9
  %bat_v.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %bat_v.i, i32 noundef 4) #9
  %26 = ptrtoint ptr %bat_v.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %bat_v.i, align 4
  %call.i.i62 = call i32 @prandom_u32() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_event_workqueue to i32))
  %28 = load ptr, ptr @batadv_event_workqueue, align 4
  %sub.i = add i32 %27, -20
  %conv.i.i = zext i32 %call.i.i62 to i64
  %mul.i.i = mul nuw nsw i64 %conv.i.i, 40
  %shr.i.i = lshr i64 %mul.i.i, 32
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %add.i = add i32 %sub.i, %conv2.i.i
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %add.i) #9
  %call.i7.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %elp_wq, i32 noundef %call2.i.i) #9
  br label %out

out:                                              ; preds = %do.body23, %entry.out_crit_edge
  %res.0 = phi i32 [ 0, %do.body23 ], [ -12, %entry.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %random_seqno) #9
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_is_wifi_hardif(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_v_elp_periodic_work(ptr noundef %work) #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -196
  %soft_iface = getelementptr i8, ptr %work, i32 -132
  %0 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_iface, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i, i32 noundef 4) #9
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %if_status = getelementptr i8, ptr %work, i32 -188
  %4 = ptrtoint ptr %if_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %if_status, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %5, label %if.end.restart_timer_crit_edge [
    i8 0, label %if.end.out_crit_edge
    i8 1, label %if.end.out_crit_edge146
    i8 3, label %if.end18
  ]

if.end.out_crit_edge146:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.restart_timer_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %restart_timer

if.end18:                                         ; preds = %if.end
  %elp_skb = getelementptr i8, ptr %work, i32 -4
  %7 = ptrtoint ptr %elp_skb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %elp_skb, align 4
  %call20 = tail call ptr @skb_copy(ptr noundef %8, i32 noundef 2592) #9
  %tobool.not = icmp eq ptr %call20, null
  br i1 %tobool.not, label %if.end18.restart_timer_crit_edge, label %if.end22

if.end18.restart_timer_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %restart_timer

if.end22:                                         ; preds = %if.end18
  %bat_v19 = getelementptr i8, ptr %work, i32 -12
  %data = getelementptr inbounds %struct.sk_buff, ptr %call20, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %elp_seqno = getelementptr i8, ptr %work, i32 -8
  %call.i.i116 = tail call zeroext i1 @__kasan_check_read(ptr noundef %elp_seqno, i32 noundef 4) #9
  %11 = ptrtoint ptr %elp_seqno to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %elp_seqno, align 4
  %seqno = getelementptr inbounds %struct.batadv_elp_packet, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %seqno to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %seqno, align 2
  %call.i.i117 = tail call zeroext i1 @__kasan_check_read(ptr noundef %bat_v19, i32 noundef 4) #9
  %14 = ptrtoint ptr %bat_v19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %bat_v19, align 4
  %elp_interval28 = getelementptr inbounds %struct.batadv_elp_packet, ptr %10, i32 0, i32 4
  %16 = ptrtoint ptr %elp_interval28 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %elp_interval28, align 2
  %log_level = getelementptr i8, ptr %1, i32 2360
  %call.i.i118 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #9
  %17 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %if.end22.if.end36_crit_edge, label %if.then31

if.end22.if.end36_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then31:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %net_dev = getelementptr i8, ptr %work, i32 -180
  %19 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net_dev, align 4
  %call.i.i119 = tail call zeroext i1 @__kasan_check_read(ptr noundef %elp_seqno, i32 noundef 4) #9
  %21 = ptrtoint ptr %elp_seqno to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %elp_seqno, align 4
  %call35 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.10, ptr noundef %20, i32 noundef %22) #9
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %if.end22.if.end36_crit_edge
  %call37 = tail call i32 @batadv_send_broadcast_skb(ptr noundef nonnull %call20, ptr noundef %add.ptr3) #9
  %call.i.i120 = tail call zeroext i1 @__kasan_check_write(ptr noundef %elp_seqno, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %elp_seqno, i32 1, i32 3, i32 1) #9
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %elp_seqno, ptr %elp_seqno, i32 1, ptr elementtype(i32) %elp_seqno) #9, !srcloc !58
  %24 = tail call i32 @llvm.read_register.i32(metadata !38) #9
  %and.i.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %27, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !59
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end36.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end36.rcu_read_lock.exit_crit_edge:            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end36
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end36.rcu_read_lock.exit_crit_edge
  %call41 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end50_crit_edge

rcu_read_lock.exit.do.end50_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end50

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call43 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %land.lhs.true.do.end50_crit_edge, label %land.lhs.true45

land.lhs.true.do.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end50

land.lhs.true45:                                  ; preds = %land.lhs.true
  %.b114 = load i1, ptr @batadv_v_elp_periodic_work.__warned, align 1
  br i1 %.b114, label %land.lhs.true45.do.end50_crit_edge, label %if.then47

land.lhs.true45.do.end50_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end50

if.then47:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @batadv_v_elp_periodic_work.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 308, ptr noundef nonnull @.str.4) #9
  br label %do.end50

do.end50:                                         ; preds = %if.then47, %land.lhs.true45.do.end50_crit_edge, %land.lhs.true.do.end50_crit_edge, %rcu_read_lock.exit.do.end50_crit_edge
  %neigh_list = getelementptr i8, ptr %work, i32 268
  %28 = ptrtoint ptr %neigh_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %hardif_neigh.0143 = load volatile ptr, ptr %neigh_list, align 4
  %tobool61.not144 = icmp eq ptr %hardif_neigh.0143, null
  br i1 %tobool61.not144, label %do.end50.for.end_crit_edge, label %do.end50.for.body_crit_edge

do.end50.for.body_crit_edge:                      ; preds = %do.end50
  br label %for.body

do.end50.for.end_crit_edge:                       ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end50.for.body_crit_edge
  %hardif_neigh.0145 = phi ptr [ %hardif_neigh.0, %for.inc.for.body_crit_edge ], [ %hardif_neigh.0143, %do.end50.for.body_crit_edge ]
  %if_incoming.i = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %hardif_neigh.0145, i32 0, i32 3
  %29 = ptrtoint ptr %if_incoming.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %if_incoming.i, align 4
  %soft_iface.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %soft_iface.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %soft_iface.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 2304
  %call1.i121 = call zeroext i1 @batadv_is_wifi_hardif(ptr noundef %30) #9
  br i1 %call1.i121, label %if.end.i, label %for.body.if.end64_crit_edge

for.body.if.end64_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.end.i:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %last_unicast_tx.i = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %hardif_neigh.0145, i32 0, i32 5, i32 3
  %34 = ptrtoint ptr %last_unicast_tx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %last_unicast_tx.i, align 4
  %sub.i = sub i32 %33, %35
  %call2.i = call i32 @jiffies_to_msecs(i32 noundef %sub.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %call2.i)
  %cmp.i = icmp ult i32 %call2.i, 101
  br i1 %cmp.i, label %if.end.i.if.end64_crit_edge, label %for.cond.preheader.i

if.end.i.if.end64_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

for.cond.preheader.i:                             ; preds = %if.end.i
  %elp_skb.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %30, i32 0, i32 11, i32 2
  %log_level.i = getelementptr i8, ptr %32, i32 2360
  %net_dev.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %30, i32 0, i32 4
  %addr.i = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %hardif_neigh.0145, i32 0, i32 1
  %36 = ptrtoint ptr %elp_skb.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %elp_skb.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len.i, align 4
  %sub9.i = sub i32 200, %39
  %call10.i = call ptr @skb_copy_expand(ptr noundef %37, i32 noundef 0, i32 noundef %sub9.i, i32 noundef 2592) #9
  %tobool.not.i122 = icmp eq ptr %call10.i, null
  br i1 %tobool.not.i122, label %for.cond.preheader.i.for.end_crit_edge, label %if.end12.i

for.cond.preheader.i.for.end_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end12.i:                                       ; preds = %for.cond.preheader.i
  %40 = ptrtoint ptr %elp_skb.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %elp_skb.i, align 4
  %len15.i = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %len15.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len15.i, align 4
  %sub16.i = sub i32 200, %43
  %call.i.i123 = call ptr @skb_put(ptr noundef nonnull %call10.i, i32 noundef %sub16.i) #9
  %44 = call ptr @memset(ptr %call.i.i123, i32 0, i32 %sub16.i)
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #9
  %45 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %log_level.i, align 4
  %and.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool19.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool19.not.i, label %if.end12.i.if.end23.i_crit_edge, label %if.then20.i

if.end12.i.if.end23.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then20.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %net_dev.i, align 4
  %call22.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str.11, ptr noundef %48, ptr noundef %addr.i) #9
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %if.end12.i.if.end23.i_crit_edge
  %call26.i = call i32 @batadv_send_skb_packet(ptr noundef nonnull %call10.i, ptr noundef %30, ptr noundef %addr.i) #9
  %49 = ptrtoint ptr %elp_skb.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %elp_skb.i, align 4
  %len.1.i = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %len.1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len.1.i, align 4
  %sub9.1.i = sub i32 200, %52
  %call10.1.i = call ptr @skb_copy_expand(ptr noundef %50, i32 noundef 0, i32 noundef %sub9.1.i, i32 noundef 2592) #9
  %tobool.not.1.i = icmp eq ptr %call10.1.i, null
  br i1 %tobool.not.1.i, label %if.end23.i.for.end_crit_edge, label %if.end12.1.i

if.end23.i.for.end_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end12.1.i:                                     ; preds = %if.end23.i
  %53 = ptrtoint ptr %elp_skb.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %elp_skb.i, align 4
  %len15.1.i = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %len15.1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len15.1.i, align 4
  %sub16.1.i = sub i32 200, %56
  %call.i.1.i = call ptr @skb_put(ptr noundef nonnull %call10.1.i, i32 noundef %sub16.1.i) #9
  %57 = call ptr @memset(ptr %call.i.1.i, i32 0, i32 %sub16.1.i)
  %call.i.i.1.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #9
  %58 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %log_level.i, align 4
  %and.1.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool19.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool19.not.1.i, label %if.end12.1.i.if.end23.1.i_crit_edge, label %if.then20.1.i

if.end12.1.i.if.end23.1.i_crit_edge:              ; preds = %if.end12.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.1.i

if.then20.1.i:                                    ; preds = %if.end12.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %net_dev.i, align 4
  %call22.1.i = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str.11, ptr noundef %61, ptr noundef %addr.i) #9
  br label %if.end23.1.i

if.end23.1.i:                                     ; preds = %if.then20.1.i, %if.end12.1.i.if.end23.1.i_crit_edge
  %call26.1.i = call i32 @batadv_send_skb_packet(ptr noundef nonnull %call10.1.i, ptr noundef %30, ptr noundef %addr.i) #9
  br label %if.end64

if.end64:                                         ; preds = %if.end23.1.i, %if.end.i.if.end64_crit_edge, %for.body.if.end64_crit_edge
  %refcount = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %hardif_neigh.0145, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #9
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #9
  %62 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end64
  %64 = phi i32 [ %63, %if.end64 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %65 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i.i.i.i = icmp eq i32 %64, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %64, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #9
  %66 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %68 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %67, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #9, !srcloc !60
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %68, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %68, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %67
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !54

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %69 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %70, 1
  %71 = or i32 %add5.i.i.i.i, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %71)
  %.not.i.i.i.i = icmp sgt i32 %71, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !54

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #9
  %72 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %73 = phi i32 [ %70, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool12.i.i.i.i.not = icmp eq i32 %73, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #9
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.for.inc_crit_edge, label %if.end68

kref_get_unless_zero.exit.for.inc_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end68:                                         ; preds = %kref_get_unless_zero.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_event_workqueue to i32))
  %74 = load ptr, ptr @batadv_event_workqueue, align 4
  %metric_work = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %hardif_neigh.0145, i32 0, i32 5, i32 4
  %call.i124 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %74, ptr noundef %metric_work) #9
  br i1 %call.i124, label %if.end68.for.inc_crit_edge, label %if.end.i127

if.end68.for.inc_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i127:                                      ; preds = %if.end68
  %call.i.i.i.i.i.i.i126 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !52
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %75 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !53
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %75, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i.i.i, !prof !54

if.end5.i.i.i.i.i.for.inc_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %for.inc

if.then.i.i:                                      ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  call void @batadv_hardif_neigh_release(ptr noundef %refcount) #9, !callees !56
  br label %for.inc

for.inc:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.for.inc_crit_edge, %if.end68.for.inc_crit_edge, %kref_get_unless_zero.exit.for.inc_crit_edge
  %76 = ptrtoint ptr %hardif_neigh.0145 to i32
  call void @__asan_load4_noabort(i32 %76)
  %hardif_neigh.0 = load volatile ptr, ptr %hardif_neigh.0145, align 4
  %tobool61.not = icmp eq ptr %hardif_neigh.0, null
  br i1 %tobool61.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end23.i.for.end_crit_edge, %for.cond.preheader.i.for.end_crit_edge, %do.end50.for.end_crit_edge
  %call.i128 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i128, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i131

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i131:                               ; preds = %for.end
  %call1.i129 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i129)
  %tobool.not.i130 = icmp eq i32 %call1.i129, 0
  br i1 %tobool.not.i130, label %land.lhs.true.i131.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i133

land.lhs.true.i131.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i131
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i133:                              ; preds = %land.lhs.true.i131
  %.b4.i132 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i132, label %land.lhs.true2.i133.rcu_read_unlock.exit_crit_edge, label %if.then.i134

land.lhs.true2.i133.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i133
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i134:                                     ; preds = %land.lhs.true2.i133
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i134, %land.lhs.true2.i133.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i131.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !61
  %77 = call i32 @llvm.read_register.i32(metadata !38) #9
  %and.i.i.i.i.i135 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i.i.i135 to ptr
  %preempt_count.i.i.i.i136 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %preempt_count.i.i.i.i136 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %preempt_count.i.i.i.i136, align 4
  %sub.i.i.i = add i32 %80, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i136, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %restart_timer

restart_timer:                                    ; preds = %rcu_read_unlock.exit, %if.end18.restart_timer_crit_edge, %if.end.restart_timer_crit_edge
  %bat_v.i = getelementptr i8, ptr %work, i32 -12
  %call.i.i.i137 = call zeroext i1 @__kasan_check_read(ptr noundef %bat_v.i, i32 noundef 4) #9
  %81 = ptrtoint ptr %bat_v.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %bat_v.i, align 4
  %call.i.i139 = call i32 @prandom_u32() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_event_workqueue to i32))
  %83 = load ptr, ptr @batadv_event_workqueue, align 4
  %sub.i138 = add i32 %82, -20
  %conv.i.i = zext i32 %call.i.i139 to i64
  %mul.i.i = mul nuw nsw i64 %conv.i.i, 40
  %shr.i.i = lshr i64 %mul.i.i, 32
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %add.i = add i32 %sub.i138, %conv2.i.i
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %add.i) #9
  %call.i7.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %83, ptr noundef %work, i32 noundef %call2.i.i) #9
  br label %out

out:                                              ; preds = %restart_timer, %if.end.out_crit_edge, %if.end.out_crit_edge146, %entry.out_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_v_elp_iface_disable(ptr noundef %hard_iface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %elp_wq = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 3
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %elp_wq) #9
  %elp_skb = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 2
  %0 = ptrtoint ptr %elp_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elp_skb, align 4
  tail call void @consume_skb(ptr noundef %1) #9
  %2 = ptrtoint ptr %elp_skb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %elp_skb, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @batadv_v_elp_iface_activate(ptr nocapture noundef readonly %primary_iface, ptr nocapture noundef readonly %hard_iface) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %elp_skb = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface, i32 0, i32 11, i32 2
  %0 = ptrtoint ptr %elp_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elp_skb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %orig = getelementptr inbounds %struct.batadv_elp_packet, ptr %3, i32 0, i32 2
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %primary_iface, i32 0, i32 4
  %4 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 86
  %6 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_addr, align 64
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = ptrtoint ptr %orig to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %orig, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.batadv_elp_packet, ptr %3, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %add.ptr1.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_v_elp_primary_iface_set(ptr nocapture noundef readonly %primary_iface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !38) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !59
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b25 = load i1, ptr @batadv_v_elp_primary_iface_set.__warned, align 1
  br i1 %.b25, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @batadv_v_elp_primary_iface_set.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 430, ptr noundef nonnull @.str.4) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_hardif_list to i32))
  %hard_iface.036 = load volatile ptr, ptr @batadv_hardif_list, align 4
  %cmp.not37 = icmp eq ptr %hard_iface.036, @batadv_hardif_list
  br i1 %cmp.not37, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %primary_iface, i32 0, i32 7
  %net_dev.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %primary_iface, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %hard_iface.038 = phi ptr [ %hard_iface.036, %for.body.lr.ph ], [ %hard_iface.0, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soft_iface, align 4
  %soft_iface9 = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.038, i32 0, i32 7
  %6 = ptrtoint ptr %soft_iface9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soft_iface9, align 4
  %cmp10.not = icmp eq ptr %5, %7
  br i1 %cmp10.not, label %if.end12, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end12:                                         ; preds = %for.body
  %elp_skb.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.038, i32 0, i32 11, i32 2
  %8 = ptrtoint ptr %elp_skb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %elp_skb.i, align 4
  %tobool.not.i26 = icmp eq ptr %9, null
  br i1 %tobool.not.i26, label %if.end12.for.inc_crit_edge, label %if.end.i

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %orig.i = getelementptr inbounds %struct.batadv_elp_packet, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net_dev.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 86
  %14 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_addr.i, align 64
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %18 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %orig.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.batadv_elp_packet, ptr %11, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %add.ptr1.i.i, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end.i, %if.end12.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %22 = ptrtoint ptr %hard_iface.038 to i32
  call void @__asan_load4_noabort(i32 %22)
  %hard_iface.0 = load volatile ptr, ptr %hard_iface.038, align 4
  %cmp.not = icmp eq ptr %hard_iface.0, @batadv_hardif_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i27 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i27, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i30

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i30:                                ; preds = %for.end
  %call1.i28 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i28)
  %tobool.not.i29 = icmp eq i32 %call1.i28, 0
  br i1 %tobool.not.i29, label %land.lhs.true.i30.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i32

land.lhs.true.i30.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i32:                               ; preds = %land.lhs.true.i30
  %.b4.i31 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i31, label %land.lhs.true2.i32.rcu_read_unlock.exit_crit_edge, label %if.then.i33

land.lhs.true2.i32.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i32
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i33:                                      ; preds = %land.lhs.true2.i32
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i33, %land.lhs.true2.i32.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i30.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !61
  %23 = tail call i32 @llvm.read_register.i32(metadata !38) #9
  %and.i.i.i.i.i34 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i34 to ptr
  %preempt_count.i.i.i.i35 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i35, align 4
  %sub.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i35, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_v_elp_packet_recv(ptr noundef %skb, ptr noundef %if_incoming) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %if_incoming, i32 0, i32 7
  %0 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_iface, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %4 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mac_header.i, align 2
  %call2 = tail call zeroext i1 @batadv_check_management_packet(ptr noundef %skb, ptr noundef %if_incoming, i32 noundef 16) #9
  br i1 %call2, label %if.end, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end:                                           ; preds = %entry
  %conv.i = zext i16 %5 to i32
  %add.ptr.i43 = getelementptr i8, ptr %3, i32 %conv.i
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i43, i32 0, i32 1
  %call3 = tail call zeroext i1 @batadv_is_my_mac(ptr noundef %add.ptr.i, ptr noundef %h_source) #9
  br i1 %call3, label %if.end.if.else_crit_edge, label %if.end5

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end5:                                          ; preds = %if.end
  %algo_ops = getelementptr i8, ptr %1, i32 2640
  %6 = ptrtoint ptr %algo_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %algo_ops, align 4
  %name = getelementptr inbounds %struct.batadv_algo_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %call6 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(9) @.str.5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %if.end8, label %if.end5.if.else_crit_edge

if.end5.if.else_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end8:                                          ; preds = %if.end5
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %log_level = getelementptr i8, ptr %1, i32 2360
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #9
  %12 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end8.if.end16_crit_edge, label %if.then11

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %seqno = getelementptr inbounds %struct.batadv_elp_packet, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %seqno to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %seqno, align 2
  %orig = getelementptr inbounds %struct.batadv_elp_packet, ptr %11, i32 0, i32 2
  %call15 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.6, ptr noundef %h_source, i32 noundef %15, ptr noundef %orig) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end8.if.end16_crit_edge
  %16 = tail call i32 @llvm.read_register.i32(metadata !38) #9
  %and.i.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !59
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i44 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i44, label %if.end16.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end16.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end16
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end16.rcu_read_lock.exit.i_crit_edge
  %primary_if.i = getelementptr i8, ptr %1, i32 2636
  %20 = ptrtoint ptr %primary_if.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %primary_if.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b18.i = load i1, ptr @batadv_primary_if_get_selected.__warned, align 1
  br i1 %.b18.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @batadv_primary_if_get_selected.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 110, ptr noundef nonnull @.str.16) #9
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %tobool9.not.i = icmp eq ptr %21, null
  br i1 %tobool9.not.i, label %do.end7.i.out.i_crit_edge, label %if.end11.i

do.end7.i.out.i_crit_edge:                        ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end11.i:                                       ; preds = %do.end7.i
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %21, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #9
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #9
  %22 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %refcount.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.end11.i
  %24 = phi i32 [ %23, %if.end11.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %25 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i.i.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %24, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #9
  %26 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %28 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 %27, i32 %add.i.i.i.i.i, ptr elementtype(i32) %refcount.i) #9, !srcloc !60
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %28, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %28, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %27
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !54

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %29 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %30, 1
  %31 = or i32 %add5.i.i.i.i.i, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %.not.i.i.i.i.i = icmp sgt i32 %31, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !54

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 0) #9
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %32 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %33, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #9
  %spec.select.i = select i1 %tobool12.i.i.i.i.not.i, ptr null, ptr %21
  br label %out.i

out.i:                                            ; preds = %kref_get_unless_zero.exit.i, %do.end7.i.out.i_crit_edge
  %hard_iface.0.i = phi ptr [ null, %do.end7.i.out.i_crit_edge ], [ %spec.select.i, %kref_get_unless_zero.exit.i ]
  %call.i19.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i19.i, label %out.i.batadv_primary_if_get_selected.exit_crit_edge, label %land.lhs.true.i22.i

out.i.batadv_primary_if_get_selected.exit_crit_edge: ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_primary_if_get_selected.exit

land.lhs.true.i22.i:                              ; preds = %out.i
  %call1.i20.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20.i)
  %tobool.not.i21.i = icmp eq i32 %call1.i20.i, 0
  br i1 %tobool.not.i21.i, label %land.lhs.true.i22.i.batadv_primary_if_get_selected.exit_crit_edge, label %land.lhs.true2.i24.i

land.lhs.true.i22.i.batadv_primary_if_get_selected.exit_crit_edge: ; preds = %land.lhs.true.i22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_primary_if_get_selected.exit

land.lhs.true2.i24.i:                             ; preds = %land.lhs.true.i22.i
  %.b4.i23.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i23.i, label %land.lhs.true2.i24.i.batadv_primary_if_get_selected.exit_crit_edge, label %if.then.i25.i

land.lhs.true2.i24.i.batadv_primary_if_get_selected.exit_crit_edge: ; preds = %land.lhs.true2.i24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %batadv_primary_if_get_selected.exit

if.then.i25.i:                                    ; preds = %land.lhs.true2.i24.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #9
  br label %batadv_primary_if_get_selected.exit

batadv_primary_if_get_selected.exit:              ; preds = %if.then.i25.i, %land.lhs.true2.i24.i.batadv_primary_if_get_selected.exit_crit_edge, %land.lhs.true.i22.i.batadv_primary_if_get_selected.exit_crit_edge, %out.i.batadv_primary_if_get_selected.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !61
  %34 = call i32 @llvm.read_register.i32(metadata !38) #9
  %and.i.i.i.i.i26.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i26.i to ptr
  %preempt_count.i.i.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i27.i, align 4
  %sub.i.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i27.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %tobool18.not = icmp eq ptr %hard_iface.0.i, null
  br i1 %tobool18.not, label %batadv_primary_if_get_selected.exit.if.else_crit_edge, label %if.end20

batadv_primary_if_get_selected.exit.if.else_crit_edge: ; preds = %batadv_primary_if_get_selected.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end20:                                         ; preds = %batadv_primary_if_get_selected.exit
  %orig.i = getelementptr inbounds %struct.batadv_elp_packet, ptr %11, i32 0, i32 2
  %call.i45 = call ptr @batadv_v_ogm_orig_get(ptr noundef %add.ptr.i, ptr noundef %orig.i) #9
  %tobool.not.i46 = icmp eq ptr %call.i45, null
  br i1 %tobool.not.i46, label %if.end20.if.end.i52_crit_edge, label %if.end.i

if.end20.if.end.i52_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i52

if.end.i:                                         ; preds = %if.end20
  %call1.i = call ptr @batadv_neigh_node_get_or_create(ptr noundef nonnull %call.i45, ptr noundef %if_incoming, ptr noundef %h_source) #9
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.end.i53.i_crit_edge, label %if.end4.i

if.end.i.if.end.i53.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i53.i

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call ptr @batadv_hardif_neigh_get(ptr noundef %if_incoming, ptr noundef %h_source) #9
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.end4.i.if.end.i43.i_crit_edge, label %if.end8.i

if.end4.i.if.end.i43.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i43.i

if.end8.i:                                        ; preds = %if.end4.i
  %elp_latest_seqno9.i = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %call5.i, i32 0, i32 5, i32 2
  %38 = ptrtoint ptr %elp_latest_seqno9.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %elp_latest_seqno9.i, align 4
  %seqno.i = getelementptr inbounds %struct.batadv_elp_packet, ptr %11, i32 0, i32 3
  %40 = ptrtoint ptr %seqno.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %seqno.i, align 2
  %sub.i = sub i32 63, %39
  %42 = add i32 %sub.i, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %42)
  %43 = icmp ult i32 %42, 64
  br i1 %43, label %if.end8.i.if.end.i.i_crit_edge, label %if.end12.i

if.end8.i.if.end.i.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %last_seen.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call1.i, i32 0, i32 6
  %45 = ptrtoint ptr %last_seen.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %last_seen.i, align 4
  %46 = load volatile i32, ptr @jiffies, align 128
  %last_seen13.i = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %call5.i, i32 0, i32 4
  %47 = ptrtoint ptr %last_seen13.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %last_seen13.i, align 4
  %48 = ptrtoint ptr %seqno.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %seqno.i, align 2
  %50 = ptrtoint ptr %elp_latest_seqno9.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %elp_latest_seqno9.i, align 4
  %elp_interval.i = getelementptr inbounds %struct.batadv_elp_packet, ptr %11, i32 0, i32 4
  %51 = ptrtoint ptr %elp_interval.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %elp_interval.i, align 2
  %elp_interval18.i = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %call5.i, i32 0, i32 5, i32 1
  %53 = ptrtoint ptr %elp_interval18.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %elp_interval18.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end12.i, %if.end8.i.if.end.i.i_crit_edge
  %refcount.i.i = getelementptr inbounds %struct.batadv_hardif_neigh_node, ptr %call5.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i47 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !52
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #9
  %54 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #9, !srcloc !53
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end.i43.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !54

if.end5.i.i.i.i.i.i.if.end.i43.i_crit_edge:       ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i43.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #9
  br label %if.end.i43.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  call void @batadv_hardif_neigh_release(ptr noundef %refcount.i.i) #9, !callees !56
  br label %if.end.i43.i

if.end.i43.i:                                     ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end.i43.i_crit_edge, %if.end4.i.if.end.i43.i_crit_edge
  %refcount.i39.i = getelementptr inbounds %struct.batadv_neigh_node, ptr %call1.i, i32 0, i32 8
  %call.i.i.i.i.i.i.i40.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i39.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !52
  call void @llvm.prefetch.p0(ptr %refcount.i39.i, i32 1, i32 3, i32 1) #9
  %55 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i39.i, ptr %refcount.i39.i, i32 1, ptr elementtype(i32) %refcount.i39.i) #9, !srcloc !53
  %asmresult.i.i.i.i.i.i.i.i41.i = extractvalue { i32, i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i41.i)
  %cmp.i.i.i.i.i42.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i41.i, 1
  br i1 %cmp.i.i.i.i.i42.i, label %if.then.i.i47.i, label %if.end5.i.i.i.i.i45.i

if.end5.i.i.i.i.i45.i:                            ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i41.i)
  %.not.i.i.i.i.i44.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i41.i, 0
  br i1 %.not.i.i.i.i.i44.i, label %if.end5.i.i.i.i.i45.i.if.end.i53.i_crit_edge, label %if.then10.i.i.i.i.i46.i, !prof !54

if.end5.i.i.i.i.i45.i.if.end.i53.i_crit_edge:     ; preds = %if.end5.i.i.i.i.i45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i53.i

if.then10.i.i.i.i.i46.i:                          ; preds = %if.end5.i.i.i.i.i45.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i39.i, i32 noundef 3) #9
  br label %if.end.i53.i

if.then.i.i47.i:                                  ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  call void @batadv_neigh_node_release(ptr noundef %refcount.i39.i) #9, !callees !56
  br label %if.end.i53.i

if.end.i53.i:                                     ; preds = %if.then.i.i47.i, %if.then10.i.i.i.i.i46.i, %if.end5.i.i.i.i.i45.i.if.end.i53.i_crit_edge, %if.end.i.if.end.i53.i_crit_edge
  %refcount.i49.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call.i45, i32 0, i32 27
  %call.i.i.i.i.i.i.i50.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i49.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !52
  call void @llvm.prefetch.p0(ptr %refcount.i49.i, i32 1, i32 3, i32 1) #9
  %56 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i49.i, ptr %refcount.i49.i, i32 1, ptr elementtype(i32) %refcount.i49.i) #9, !srcloc !53
  %asmresult.i.i.i.i.i.i.i.i51.i = extractvalue { i32, i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i51.i)
  %cmp.i.i.i.i.i52.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i51.i, 1
  br i1 %cmp.i.i.i.i.i52.i, label %if.then.i.i57.i, label %if.end5.i.i.i.i.i55.i

if.end5.i.i.i.i.i55.i:                            ; preds = %if.end.i53.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i51.i)
  %.not.i.i.i.i.i54.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i51.i, 0
  br i1 %.not.i.i.i.i.i54.i, label %if.end5.i.i.i.i.i55.i.if.end.i52_crit_edge, label %if.then10.i.i.i.i.i56.i, !prof !54

if.end5.i.i.i.i.i55.i.if.end.i52_crit_edge:       ; preds = %if.end5.i.i.i.i.i55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i52

if.then10.i.i.i.i.i56.i:                          ; preds = %if.end5.i.i.i.i.i55.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i49.i, i32 noundef 3) #9
  br label %if.end.i52

if.then.i.i57.i:                                  ; preds = %if.end.i53.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  call void @batadv_orig_node_release(ptr noundef %refcount.i49.i) #9, !callees !56
  br label %if.end.i52

if.end.i52:                                       ; preds = %if.then.i.i57.i, %if.then10.i.i.i.i.i56.i, %if.end5.i.i.i.i.i55.i.if.end.i52_crit_edge, %if.end20.if.end.i52_crit_edge
  %refcount.i49 = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i50 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i49, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !52
  call void @llvm.prefetch.p0(ptr %refcount.i49, i32 1, i32 3, i32 1) #9
  %57 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i49, ptr %refcount.i49, i32 1, ptr elementtype(i32) %refcount.i49) #9, !srcloc !53
  %asmresult.i.i.i.i.i.i.i.i51 = extractvalue { i32, i32, i32 } %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i51)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i51, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i55, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i51)
  %.not.i.i.i.i.i53 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i51, 0
  br i1 %.not.i.i.i.i.i53, label %if.end5.i.i.i.i.i.if.then24_crit_edge, label %if.then10.i.i.i.i.i54, !prof !54

if.end5.i.i.i.i.i.if.then24_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

if.then10.i.i.i.i.i54:                            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i49, i32 noundef 3) #9
  br label %if.then24

if.then.i.i55:                                    ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  call void @batadv_hardif_release(ptr noundef %refcount.i49) #9, !callees !56
  br label %if.then24

if.then24:                                        ; preds = %if.then.i.i55, %if.then10.i.i.i.i.i54, %if.end5.i.i.i.i.i.if.then24_crit_edge
  call void @consume_skb(ptr noundef %skb) #9
  br label %if.end25

if.else:                                          ; preds = %batadv_primary_if_get_selected.exit.if.else_crit_edge, %if.end5.if.else_crit_edge, %if.end.if.else_crit_edge, %entry.if.else_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then24
  %ret.058 = phi i32 [ 1, %if.else ], [ 0, %if.then24 ]
  ret i32 %ret.058
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_check_management_packet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_is_my_mac(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_debug_log(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @batadv_is_cfg80211_hardif(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_get_real_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_get_station(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_calculate_bitrate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_hardif_neigh_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_send_broadcast_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_send_skb_packet(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_v_ogm_orig_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_neigh_node_get_or_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_hardif_neigh_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_neigh_node_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_orig_node_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_hardif_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !21, !23, !25, !27, !29, !30, !31, !33, !34, !36, !37}
!llvm.named.register.sp = !{!38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = distinct !{null, !1, !"tvlv_padding", i1 false, i1 false}
!1 = !{!"../net/batman-adv/bat_v_elp.c", i32 344, i32 22}
!2 = !{ptr @batadv_v_elp_iface_enable.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../net/batman-adv/bat_v_elp.c", i32 377, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @batadv_v_elp_iface_enable.__key.1, !3, !"__key", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__warned", i1 false, i1 false}
!8 = !{!"../net/batman-adv/bat_v_elp.c", i32 430, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/batman-adv/bat_v_elp.c", i32 524, i32 39}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/batman-adv/bat_v_elp.c", i32 529, i32 2}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/batman-adv/bat_v_elp.c", i32 146, i32 3}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @batadv_v_elp_get_throughput._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @batadv_v_elp_get_throughput._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/batman-adv/bat_v_elp.c", i32 287, i32 2}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../net/batman-adv/bat_v_elp.c", i32 308, i32 2}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/batman-adv/bat_v_elp.c", i32 235, i32 3}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../net/batman-adv/hard-interface.h", i32 110, i32 15}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!38 = !{!"sp"}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 599881, i64 599942}
!49 = !{i64 602613}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{i64 602898}
!52 = !{i64 2148236085}
!53 = !{i64 2148150549, i64 2148150581, i64 2148150610, i64 2148150644, i64 2148150675, i64 2148150698}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{i64 2150567096}
!56 = !{ptr @batadv_hardif_neigh_release, ptr @batadv_hardif_release, ptr @batadv_neigh_node_release, ptr @batadv_orig_node_release}
!57 = !{!"auto-init"}
!58 = !{i64 2148146554, i64 2148146580, i64 2148146609, i64 2148146643, i64 2148146674, i64 2148146697}
!59 = !{i64 2149692549}
!60 = !{i64 521388, i64 521412, i64 521433, i64 521450, i64 521467}
!61 = !{i64 2149692815}
