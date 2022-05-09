; ModuleID = '/llk/IR_all_yes/net/batman-adv/tp_meter.c_pt.bc'
source_filename = "../net/batman-adv/tp_meter.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.24 }
%union.anon.24 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.batadv_priv = type { %struct.atomic_t, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.atomic_t, %struct.delayed_work, ptr, ptr, %struct.hlist_head, %struct.spinlock, %struct.batadv_priv_bla, ptr, %struct.batadv_priv_gw, %struct.batadv_priv_tt, %struct.batadv_priv_tvlv, %struct.batadv_priv_dat, %struct.batadv_priv_mcast, %struct.atomic_t, %struct.batadv_priv_nc, %struct.batadv_priv_bat_v }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.25 }
%union.anon.25 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.26 }
%union.anon.26 = type { i32 }
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
%struct.atomic_t = type { i32 }
%struct.batadv_priv_nc = type { %struct.delayed_work, i8, i32, i32, i32, i32, ptr, ptr }
%struct.batadv_priv_bat_v = type { ptr, i32, %struct.atomic_t, %struct.mutex, %struct.delayed_work }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.batadv_tp_vars = type { %struct.hlist_node, %struct.timer_list, ptr, i32, [6 x i8], i32, %struct.atomic_t, i32, %struct.delayed_work, i32, [2 x i8], i8, i16, i32, %struct.spinlock, i32, %struct.atomic_t, i32, %struct.atomic64_t, %struct.atomic_t, i8, i32, i32, i32, i32, %struct.wait_queue_head, i32, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.kref, %struct.callback_head }
%struct.atomic64_t = type { i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.batadv_orig_node = type { [6 x i8], %struct.hlist_head, ptr, i16, i32, i32, %struct.spinlock, i8, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, i32, i32, %struct.atomic_t, ptr, i16, %struct.spinlock, %struct.spinlock, [2 x i32], i32, %struct.hlist_head, %struct.spinlock, %struct.hlist_node, ptr, %struct.spinlock, %struct.kref, %struct.callback_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, [8 x %struct.batadv_frag_table_entry], %struct.hlist_head, %struct.spinlock, %struct.batadv_orig_bat_iv }
%struct.batadv_frag_table_entry = type { %struct.hlist_head, %struct.spinlock, i32, i16, i16, i16 }
%struct.batadv_orig_bat_iv = type { %struct.spinlock }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.batadv_icmp_tp_packet = type { i8, i8, i8, i8, [6 x i8], [6 x i8], i8, i8, [2 x i8], i32, i32 }
%struct.batadv_tp_unacked = type { i32, i16, %struct.list_head }
%struct.batadv_hard_iface = type { %struct.list_head, i8, i8, i32, ptr, %struct.kref, %struct.packet_type, ptr, %struct.callback_head, %struct.atomic_t, %struct.batadv_hard_iface_bat_iv, %struct.batadv_hard_iface_bat_v, %struct.hlist_head, %struct.spinlock }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.batadv_hard_iface_bat_iv = type { ptr, i32, %struct.atomic_t, %struct.mutex }
%struct.batadv_hard_iface_bat_v = type { %struct.atomic_t, %struct.atomic_t, ptr, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, i32, %struct.atomic_t, i8 }
%struct.sk_buff_head = type { %union.anon.70, i32, %struct.spinlock }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.115, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.115 = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@.str = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Meter: test to or from the same node already ongoing, aborting\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Meter: too many ongoing sessions, aborting (SEND)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Meter: %s cannot allocate list elements\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.batadv_tp_start = private unnamed_addr constant [16 x i8] c"batadv_tp_start\00", align 1
@batadv_tp_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(&tp_vars->timer)\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@batadv_tp_start.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&tp_vars->more_bytes\00", [43 x i8] zeroinitializer }, align 32
@batadv_tp_start.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&tp_vars->unacked_lock\00", [41 x i8] zeroinitializer }, align 32
@batadv_tp_start.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&tp_vars->cwnd_lock\00", [44 x i8] zeroinitializer }, align 32
@batadv_tp_start.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&tp_vars->prerandom_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Meter: starting throughput meter towards %pM (length=%ums)\0A\00", [36 x i8] zeroinitializer }, align 32
@batadv_tp_start.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&(&tp_vars->finish_work)->work)\00", [46 x i8] zeroinitializer }, align 32
@batadv_tp_start.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&(&tp_vars->finish_work)->timer\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Meter: stopping test towards %pM\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Meter: trying to interrupt an already over connection\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Received unknown TP Metric packet type %u\0A\00", [53 x i8] zeroinitializer }, align 32
@batadv_tp_prerandom = internal global [4096 x i8] zeroinitializer, section ".data..read_mostly", align 1
@batadv_tp_list_find.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/batman-adv/tp_meter.c\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.25 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"Meter: RTO fired during test towards %pM! cwnd=%u new ss_thr=%u, resetting last_sent to %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kbatadv_tp_meter\00", [47 x i8] zeroinitializer }, align 32
@batadv_tp_start_kthread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.20, i32 912, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013batman_adv: batadv: cannot create tp meter kthread\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"batadv_tp_start_kthread\00", [40 x i8] zeroinitializer }, align 32
@batadv_tp_start_kthread._entry_ptr = internal global ptr @batadv_tp_start_kthread._entry, section ".printk_index", align 4
@batadv_event_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Meter: %s() cannot send packets (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.batadv_tp_send = private unnamed_addr constant [15 x i8] c"batadv_tp_send\00", align 1
@batadv_primary_if_get_selected.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/batman-adv/hard-interface.h\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Test towards %pM finished..shutting down (reason=%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Last timing stats: SRTT=%ums RTTVAR=%ums RTO=%ums\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Final values: cwnd=%u ss_threshold=%u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Meter: seqno != BATADV_TP_FIRST_SEQ cannot initiate connection\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unexpected packet from %pM!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Meter: dropping packet: not expected (role=%u)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Meter: too many ongoing sessions, aborting (RECV)\0A\00", [45 x i8] zeroinitializer }, align 32
@batadv_tp_init_recv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@batadv_tp_init_recv.__key.39 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Shutting down for inactivity (more than %dms) from %pM\0A\00", [40 x i8] zeroinitializer }, align 32
@batadv_tp_list_find_session.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Meter: Fast Recovery, (cur cwnd=%u) ss_thr=%u last_sent=%u recv_ack=%u\0A\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 132]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 954, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 963, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 973, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1014, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1019, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1021, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1024, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1027, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1037, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1042, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1065, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1074, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1477, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 268, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 695, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 723, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 512, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 908, i32 12 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 912, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 868, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant [35 x i8] c"../net/batman-adv/hard-interface.h\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 110, i32 15 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 407, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 411, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 415, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1398, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1406, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1414, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1341, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1357, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1364, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1118, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.176 = private constant [29 x i8] c"../net/batman-adv/tp_meter.c\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 700, i32 3 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @batadv_tp_start_kthread._entry, ptr @batadv_tp_start_kthread._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @batadv_tp_start.__key, ptr @.str.3, ptr @batadv_tp_start.__key.4, ptr @.str.5, ptr @batadv_tp_start.__key.6, ptr @.str.7, ptr @batadv_tp_start.__key.8, ptr @.str.9, ptr @batadv_tp_start.__key.10, ptr @.str.11, ptr @.str.12, ptr @batadv_tp_start.__key.13, ptr @.str.14, ptr @batadv_tp_start.__key.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @batadv_tp_init_recv.__key, ptr @batadv_tp_init_recv.__key.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_tp_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_tp_start.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_tp_start.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_tp_start.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_tp_start.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_tp_start.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_tp_start.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_tp_start_kthread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_tp_init_recv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_tp_init_recv.__key.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_tp_start(ptr noundef %bat_priv, ptr noundef %dst, i32 noundef %test_length, ptr nocapture noundef writeonly %cookie) local_unnamed_addr #0 align 64 {
entry:
  %session_id = alloca [2 x i8], align 2
  %icmp_uid = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %session_id) #11
  %0 = ptrtoint ptr %session_id to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %session_id, align 2, !annotation !98
  %1 = getelementptr inbounds [2 x i8], ptr %session_id, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !98
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %icmp_uid) #11
  %3 = ptrtoint ptr %icmp_uid to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %icmp_uid, align 1, !annotation !98
  call void @get_random_bytes(ptr noundef nonnull %session_id, i32 noundef 2) #11
  call void @get_random_bytes(ptr noundef nonnull %icmp_uid, i32 noundef 1) #11
  %4 = ptrtoint ptr %icmp_uid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %icmp_uid, align 1
  %conv.i = zext i8 %5 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %6 = ptrtoint ptr %session_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %session_id, align 2
  %conv1.i = zext i8 %7 to i32
  %shl2.i = shl nuw nsw i32 %conv1.i, 8
  %or.i = or i32 %shl2.i, %shl.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 1
  %conv4.i = zext i8 %9 to i32
  %or5.i = or i32 %or.i, %conv4.i
  %10 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or5.i, ptr %cookie, align 4
  %tp_list_lock = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 26
  call void @_raw_spin_lock_bh(ptr noundef %tp_list_lock) #11
  %call2 = call fastcc ptr @batadv_tp_list_find(ptr noundef %bat_priv, ptr noundef %dst)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  call void @_raw_spin_unlock_bh(ptr noundef %tp_list_lock) #11
  call fastcc void @batadv_tp_vars_put(ptr noundef nonnull %call2)
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %11 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str) #11
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %call6.i.i = call i32 @batadv_netlink_tpmeter_notify(ptr noundef %bat_priv, ptr noundef %dst, i8 noundef zeroext -126, i32 noundef 0, i64 noundef 0, i32 noundef %or5.i) #11
  br label %cleanup

if.end8:                                          ; preds = %entry
  %tp_num = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 27
  %call.i.i175 = call zeroext i1 @__kasan_check_write(ptr noundef %tp_num, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !99
  call void @llvm.prefetch.p0(ptr %tp_num, i32 1, i32 3, i32 1) #11
  %13 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %tp_num, ptr %tp_num, i32 5, i32 1, ptr elementtype(i32) %tp_num) #11, !srcloc !100
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 5
  br i1 %cmp.not.i.i.i, label %if.then10, label %if.end23

if.then10:                                        ; preds = %if.end8
  call void @_raw_spin_unlock_bh(ptr noundef %tp_list_lock) #11
  %log_level14 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i176 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level14, i32 noundef 4) #11
  %14 = ptrtoint ptr %log_level14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %log_level14, align 4
  %and16 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then10.if.end20_crit_edge, label %if.then18

if.then10.if.end20_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then18:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  %call19 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.1) #11
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then10.if.end20_crit_edge
  %call6.i.i182 = call i32 @batadv_netlink_tpmeter_notify(ptr noundef %bat_priv, ptr noundef %dst, i8 noundef zeroext -123, i32 noundef 0, i64 noundef 0, i32 noundef %or5.i) #11
  br label %cleanup

if.end23:                                         ; preds = %if.end8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !101
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 2592, i32 noundef 464) #14
  %tobool25.not = icmp eq ptr %call7.i, null
  br i1 %tobool25.not, label %if.then26, label %if.end39

if.then26:                                        ; preds = %if.end23
  call void @_raw_spin_unlock_bh(ptr noundef %tp_list_lock) #11
  %log_level30 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i177 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level30, i32 noundef 4) #11
  %17 = ptrtoint ptr %log_level30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %log_level30, align 4
  %and32 = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.then26.if.end36_crit_edge, label %if.then34

if.then26.if.end36_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then34:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  %call35 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.batadv_tp_start) #11
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.then26.if.end36_crit_edge
  %call6.i.i183 = call i32 @batadv_netlink_tpmeter_notify(ptr noundef %bat_priv, ptr noundef %dst, i8 noundef zeroext -125, i32 noundef 0, i64 noundef 0, i32 noundef %or5.i) #11
  br label %cleanup

if.end39:                                         ; preds = %if.end23
  %other_end = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 4
  %19 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dst, align 4
  %21 = ptrtoint ptr %other_end to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %other_end, align 8
  %add.ptr.i = getelementptr i8, ptr %dst, i32 4
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 4, i32 4
  %24 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %add.ptr1.i, align 4
  %refcount = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 32
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  %25 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 1, ptr %refcount, align 8
  %role = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 5
  %26 = ptrtoint ptr %role to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %role, align 8
  %sending = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 6
  %call.i.i178 = call zeroext i1 @__kasan_check_write(ptr noundef %sending, i32 noundef 4) #11
  %27 = ptrtoint ptr %sending to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 1, ptr %sending, align 4
  %session = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 10
  %28 = ptrtoint ptr %session_id to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %session_id, align 2
  %30 = ptrtoint ptr %session to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %session, align 4
  %31 = ptrtoint ptr %icmp_uid to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %icmp_uid, align 1
  %icmp_uid43 = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 11
  %33 = ptrtoint ptr %icmp_uid43 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %icmp_uid43, align 2
  %last_sent = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 17
  %34 = ptrtoint ptr %last_sent to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -2001, ptr %last_sent, align 4
  %last_acked = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 16
  %call.i.i179 = call zeroext i1 @__kasan_check_write(ptr noundef %last_acked, i32 noundef 4) #11
  %35 = ptrtoint ptr %last_acked to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 -2001, ptr %last_acked, align 8
  %fast_recovery = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 20
  %36 = ptrtoint ptr %fast_recovery to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load = load i8, ptr %fast_recovery, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %fast_recovery, align 4
  %recover = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 21
  %37 = ptrtoint ptr %recover to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -2001, ptr %recover, align 8
  %cwnd = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 13
  %38 = ptrtoint ptr %cwnd to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4428, ptr %cwnd, align 4
  %ss_threshold = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 15
  %39 = ptrtoint ptr %ss_threshold to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 536870912, ptr %ss_threshold, align 4
  %rto = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 22
  %40 = ptrtoint ptr %rto to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1000, ptr %rto, align 4
  %srtt = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 23
  %41 = ptrtoint ptr %srtt to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %srtt, align 8
  %rttvar = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 24
  %42 = ptrtoint ptr %rttvar to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %rttvar, align 4
  %tot_sent = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 18
  %call.i.i180 = call zeroext i1 @__kasan_check_write(ptr noundef %tot_sent, i32 noundef 8) #11
  call void @generic_atomic64_set(ptr noundef %tot_sent, i64 noundef 0) #11
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %43 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !102
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end39.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !103

if.end39.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end39
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %44 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %.not.i.i.i.i = icmp sgt i32 %44, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !104

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end39.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end39.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #11
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %timer = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @batadv_tp_sender_timeout, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @batadv_tp_start.__key) #11
  %bat_priv48 = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 2
  %45 = ptrtoint ptr %bat_priv48 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %bat_priv, ptr %bat_priv48, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %start_time = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 3
  %47 = ptrtoint ptr %start_time to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %start_time, align 4
  %more_bytes = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 25
  call void @__init_waitqueue_head(ptr noundef %more_bytes, ptr noundef nonnull @.str.5, ptr noundef nonnull @batadv_tp_start.__key.4) #11
  %unacked_lock = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 30
  call void @__raw_spin_lock_init(ptr noundef %unacked_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @batadv_tp_start.__key.6, i16 noundef signext 3) #11
  %unacked_list = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 29
  %48 = ptrtoint ptr %unacked_list to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %unacked_list, ptr %unacked_list, align 8
  %prev.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 29, i32 1
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %unacked_list, ptr %prev.i, align 4
  %cwnd_lock = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 14
  call void @__raw_spin_lock_init(ptr noundef %cwnd_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @batadv_tp_start.__key.8, i16 noundef signext 3) #11
  %prerandom_offset = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 26
  %50 = ptrtoint ptr %prerandom_offset to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %prerandom_offset, align 4
  %prerandom_lock = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 27
  call void @__raw_spin_lock_init(ptr noundef %prerandom_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @batadv_tp_start.__key.10, i16 noundef signext 3) #11
  %call.i.i.i.i.i.i184 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %51 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !102
  %asmresult.i.i.i.i.i.i185 = extractvalue { i32, i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i185)
  %tobool1.not.i.i.i.i186 = icmp eq i32 %asmresult.i.i.i.i.i.i185, 0
  br i1 %tobool1.not.i.i.i.i186, label %kref_get.exit.if.end15.sink.split.i.i.i.i191_crit_edge, label %if.else.i.i.i.i189, !prof !103

kref_get.exit.if.end15.sink.split.i.i.i.i191_crit_edge: ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i191

if.else.i.i.i.i189:                               ; preds = %kref_get.exit
  %add.i.i.i.i187 = add i32 %asmresult.i.i.i.i.i.i185, 1
  %52 = or i32 %add.i.i.i.i187, %asmresult.i.i.i.i.i.i185
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %52)
  %.not.i.i.i.i188 = icmp sgt i32 %52, -1
  br i1 %.not.i.i.i.i188, label %if.else.i.i.i.i189.kref_get.exit192_crit_edge, label %if.else.i.i.i.i189.if.end15.sink.split.i.i.i.i191_crit_edge, !prof !104

if.else.i.i.i.i189.if.end15.sink.split.i.i.i.i191_crit_edge: ; preds = %if.else.i.i.i.i189
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i191

if.else.i.i.i.i189.kref_get.exit192_crit_edge:    ; preds = %if.else.i.i.i.i189
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit192

if.end15.sink.split.i.i.i.i191:                   ; preds = %if.else.i.i.i.i189.if.end15.sink.split.i.i.i.i191_crit_edge, %kref_get.exit.if.end15.sink.split.i.i.i.i191_crit_edge
  %.sink.i.i.i.i190 = phi i32 [ 2, %kref_get.exit.if.end15.sink.split.i.i.i.i191_crit_edge ], [ 1, %if.else.i.i.i.i189.if.end15.sink.split.i.i.i.i191_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i190) #11
  br label %kref_get.exit192

kref_get.exit192:                                 ; preds = %if.end15.sink.split.i.i.i.i191, %if.else.i.i.i.i189.kref_get.exit192_crit_edge
  %tp_list = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 22
  %53 = ptrtoint ptr %tp_list to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tp_list, align 4
  %55 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %call7.i, align 8
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i, i32 0, i32 1
  %56 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %tp_list, ptr %pprev.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !105
  %57 = ptrtoint ptr %tp_list to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %call7.i, ptr %tp_list, align 4
  %tobool.not.i = icmp eq ptr %54, null
  br i1 %tobool.not.i, label %kref_get.exit192.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

kref_get.exit192.hlist_add_head_rcu.exit_crit_edge: ; preds = %kref_get.exit192
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %kref_get.exit192
  call void @__sanitizer_cov_trace_pc() #13
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %54, i32 0, i32 1
  %58 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %call7.i, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %kref_get.exit192.hlist_add_head_rcu.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %tp_list_lock) #11
  %test_length66 = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %test_length)
  %tobool68.not = icmp eq i32 %test_length, 0
  %spec.select = select i1 %tobool68.not, i32 10000, i32 %test_length
  %59 = ptrtoint ptr %test_length66 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %spec.select, ptr %test_length66, align 8
  %log_level74 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i181 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level74, i32 noundef 4) #11
  %60 = ptrtoint ptr %log_level74 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %log_level74, align 4
  %and76 = and i32 %61, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %hlist_add_head_rcu.exit.if.end80_crit_edge, label %if.then78

hlist_add_head_rcu.exit.if.end80_crit_edge:       ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

if.then78:                                        ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call79 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.12, ptr noundef %dst, i32 noundef %test_length) #11
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %hlist_add_head_rcu.exit.if.end80_crit_edge
  %finish_work = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 8
  call void @__init_work(ptr noundef %finish_work, i32 noundef 0) #11
  %62 = ptrtoint ptr %finish_work to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -64, ptr %finish_work, align 4
  %lockdep_map = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 8, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.14, ptr noundef nonnull @batadv_tp_start.__key.13, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry91 = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 8, i32 0, i32 1
  %63 = ptrtoint ptr %entry91 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %entry91, ptr %entry91, align 8
  %prev.i193 = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 8, i32 0, i32 1, i32 1
  %64 = ptrtoint ptr %prev.i193 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %entry91, ptr %prev.i193, align 4
  %func = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 8, i32 0, i32 2
  %65 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @batadv_tp_sender_finish, ptr %func, align 8
  %timer98 = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 8, i32 1
  call void @init_timer_key(ptr noundef %timer98, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.16, ptr noundef nonnull @batadv_tp_start.__key.15) #11
  %66 = ptrtoint ptr %bat_priv48 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bat_priv48, align 8
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %68 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !102
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %68, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end80.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !103

if.end80.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end80
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %69 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %69)
  %.not.i.i.i.i.i = icmp sgt i32 %69, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !104

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.kref_get.exit.i_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end80.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end80.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i.i) #11
  br label %kref_get.exit.i

kref_get.exit.i:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge
  %call.i = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @batadv_tp_send, ptr noundef nonnull %call7.i, i32 noundef -1, ptr noundef nonnull @.str.26) #11
  %cmp.i.i194 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i194, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %kref_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %icmp_uid43 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %icmp_uid43, align 2
  %conv.i.i = zext i8 %71 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 16
  %72 = ptrtoint ptr %session to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %session, align 4
  %conv1.i.i = zext i8 %73 to i32
  %shl2.i.i = shl nuw nsw i32 %conv1.i.i, 8
  %or.i.i = or i32 %shl2.i.i, %shl.i.i
  %arrayidx3.i.i = getelementptr %struct.batadv_tp_vars, ptr %call7.i, i32 0, i32 10, i32 1
  %74 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx3.i.i, align 1
  %conv4.i.i = zext i8 %75 to i32
  %or5.i.i = or i32 %or.i.i, %conv4.i.i
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #15
  %call6.i.i.i = call i32 @batadv_netlink_tpmeter_notify(ptr noundef %67, ptr noundef %other_end, i8 noundef zeroext -125, i32 noundef 0, i64 noundef 0, i32 noundef %or5.i.i) #11
  call fastcc void @batadv_tp_vars_put(ptr noundef nonnull %call7.i) #11
  call fastcc void @batadv_tp_sender_cleanup(ptr noundef nonnull %call7.i) #11
  br label %batadv_tp_start_kthread.exit

if.end.i:                                         ; preds = %kref_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i = call i32 @wake_up_process(ptr noundef %call.i) #11
  br label %batadv_tp_start_kthread.exit

batadv_tp_start_kthread.exit:                     ; preds = %if.end.i, %if.then.i
  call fastcc void @batadv_tp_vars_put(ptr noundef nonnull %call7.i)
  br label %cleanup

cleanup:                                          ; preds = %batadv_tp_start_kthread.exit, %if.end36, %if.end20, %if.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %icmp_uid) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %session_id) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_tp_list_find(ptr noundef %bat_priv, ptr nocapture noundef readonly %dst) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !88) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !106
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b45 = load i1, ptr @batadv_tp_list_find.__warned, align 1
  br i1 %.b45, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_tp_list_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 268, ptr noundef nonnull @.str.21) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %tp_list = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 22
  %4 = ptrtoint ptr %tp_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %pos.056 = load volatile ptr, ptr %tp_list, align 4
  %tobool12.not57 = icmp eq ptr %pos.056, null
  br i1 %tobool12.not57, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %add.ptr1.i.i.i = getelementptr i8, ptr %dst, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pos.058 = phi ptr [ %pos.056, %for.body.lr.ph ], [ %pos.0, %for.inc.for.body_crit_edge ]
  %other_end = getelementptr inbounds %struct.batadv_tp_vars, ptr %pos.058, i32 0, i32 4
  %5 = ptrtoint ptr %other_end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %other_end, align 4
  %7 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dst, align 4
  %xor.i.i.i = xor i32 %8, %6
  %add.ptr.i.i.i = getelementptr %struct.batadv_tp_vars, ptr %pos.058, i32 0, i32 4, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i.i, align 2
  %11 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %12, %10
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end15, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end15:                                         ; preds = %for.body
  %refcount = getelementptr inbounds %struct.batadv_tp_vars, ptr %pos.058, i32 0, i32 32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #11
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #11
  %13 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end15
  %15 = phi i32 [ %14, %if.end15 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %15, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #11
  %17 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %19 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %18, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #11, !srcloc !107
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %18
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !104

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %20 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %21, 1
  %22 = or i32 %add5.i.i.i.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %.not.i.i.i.i = icmp sgt i32 %22, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !104

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #11
  %23 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %24 = phi i32 [ %21, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool12.i.i.i.i.not = icmp eq i32 %24, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #11
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.for.inc_crit_edge, label %kref_get_unless_zero.exit.for.end_crit_edge, !prof !103

kref_get_unless_zero.exit.for.end_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

kref_get_unless_zero.exit.for.inc_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %kref_get_unless_zero.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %25 = ptrtoint ptr %pos.058 to i32
  call void @__asan_load4_noabort(i32 %25)
  %pos.0 = load volatile ptr, ptr %pos.058, align 4
  %tobool12.not = icmp eq ptr %pos.0, null
  br i1 %tobool12.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %kref_get_unless_zero.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %pos.0.lcssa = phi ptr [ null, %do.end.for.end_crit_edge ], [ %pos.058, %kref_get_unless_zero.exit.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %call.i47 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i47, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i50

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i50:                                ; preds = %for.end
  %call1.i48 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48)
  %tobool.not.i49 = icmp eq i32 %call1.i48, 0
  br i1 %tobool.not.i49, label %land.lhs.true.i50.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i52

land.lhs.true.i50.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i52:                               ; preds = %land.lhs.true.i50
  %.b4.i51 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i51, label %land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge, label %if.then.i53

land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i53:                                      ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i53, %land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i50.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !108
  %26 = call i32 @llvm.read_register.i32(metadata !88) #11
  %and.i.i.i.i.i54 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i54 to ptr
  %preempt_count.i.i.i.i55 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i55, align 4
  %sub.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i55, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %pos.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_tp_vars_put(ptr noundef %tp_vars) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tp_vars, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.batadv_tp_vars, ptr %tp_vars, i32 0, i32 32
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !110
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !104

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #11
  br label %return

if.then.i:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !111
  %unacked_lock.i = getelementptr %struct.batadv_tp_vars, ptr %tp_vars, i32 0, i32 30
  tail call void @_raw_spin_lock_bh(ptr noundef %unacked_lock.i) #11
  %unacked_list.i = getelementptr %struct.batadv_tp_vars, ptr %tp_vars, i32 0, i32 29
  %1 = ptrtoint ptr %unacked_list.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %unacked_list.i, align 8
  %cmp.not30.i = icmp eq ptr %2, %unacked_list.i
  br i1 %cmp.not30.i, label %if.then.i.for.end.i_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i.for.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %.pn.in31.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %2, %if.then.i.for.body.i_crit_edge ]
  %un.0.i = getelementptr i8, ptr %.pn.in31.i, i32 -8
  %3 = ptrtoint ptr %.pn.in31.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %.pn.in31.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in31.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in31.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %.pn.in31.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %.pn.in31.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %10 = ptrtoint ptr %.pn.in31.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in31.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in31.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %un.0.i) #11
  %cmp.not.i = icmp eq ptr %.pn.i, %unacked_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.for.end.i_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

list_del.exit.i.for.end.i_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %list_del.exit.i.for.end.i_crit_edge, %if.then.i.for.end.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %unacked_lock.i) #11
  %rcu.i = getelementptr %struct.batadv_tp_vars, ptr %tp_vars, i32 0, i32 33
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 452 to ptr)) #11
  br label %return

return:                                           ; preds = %for.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_debug_log(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_tp_sender_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -8
  %bat_priv1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %bat_priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bat_priv1, align 8
  %sending = getelementptr i8, ptr %t, i32 68
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sending, i32 noundef 4) #11
  %2 = ptrtoint ptr %sending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %sending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %rto = getelementptr i8, ptr %t, i32 268
  %4 = ptrtoint ptr %rto to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rto, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29999, i32 %5)
  %cmp2 = icmp ugt i32 %5, 29999
  br i1 %cmp2, label %if.then4, label %if.end5, !prof !103

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @batadv_tp_sender_shutdown(ptr noundef %add.ptr, i32 noundef 128)
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %shl = shl nuw nsw i32 %5, 1
  %6 = ptrtoint ptr %rto to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shl, ptr %rto, align 4
  %cwnd_lock = getelementptr i8, ptr %t, i32 192
  tail call void @_raw_spin_lock_bh(ptr noundef %cwnd_lock) #11
  %cwnd = getelementptr i8, ptr %t, i32 188
  %7 = ptrtoint ptr %cwnd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cwnd, align 4
  %shr = lshr i32 %8, 1
  %ss_threshold = getelementptr i8, ptr %t, i32 236
  call void @__sanitizer_cov_trace_const_cmp4(i32 5904, i32 %8)
  %cmp8 = icmp ult i32 %8, 5904
  %spec.select = select i1 %cmp8, i32 2952, i32 %shr
  %9 = ptrtoint ptr %ss_threshold to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select, ptr %ss_threshold, align 4
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 14
  %call.i.i45 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %10 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end5.if.end19_crit_edge, label %if.then14

if.end5.if.end19_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then14:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %other_end = getelementptr i8, ptr %t, i32 56
  %12 = ptrtoint ptr %cwnd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cwnd, align 4
  %14 = ptrtoint ptr %ss_threshold to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ss_threshold, align 4
  %last_acked = getelementptr i8, ptr %t, i32 240
  %call.i.i46 = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_acked, i32 noundef 4) #11
  %16 = ptrtoint ptr %last_acked to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %last_acked, align 4
  %call18 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %1, ptr noundef nonnull @.str.25, ptr noundef %other_end, i32 noundef %13, i32 noundef %15, i32 noundef %17) #11
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.end5.if.end19_crit_edge
  %18 = ptrtoint ptr %cwnd to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4428, ptr %cwnd, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %cwnd_lock) #11
  %last_acked22 = getelementptr i8, ptr %t, i32 240
  %call.i.i47 = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_acked22, i32 noundef 4) #11
  %19 = ptrtoint ptr %last_acked22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %last_acked22, align 4
  %last_sent = getelementptr i8, ptr %t, i32 244
  %21 = ptrtoint ptr %last_sent to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %last_sent, align 4
  %more_bytes = getelementptr i8, ptr %t, i32 280
  tail call void @__wake_up(ptr noundef %more_bytes, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sending, i32 noundef 4) #11
  %22 = ptrtoint ptr %sending to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %sending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i = icmp eq i32 %23, 0
  br i1 %cmp.i, label %if.end19.cleanup_crit_edge, label %if.end.i, !prof !103

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %25 = ptrtoint ptr %rto to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rto, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %26) #11
  %add.i = add i32 %call2.i.i, %24
  %call3.i = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end19.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_tp_sender_finish(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sending.i = getelementptr i8, ptr %work, i32 -8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sending.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @llvm.prefetch.p0(ptr %sending.i, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sending.i, ptr %sending.i, i32 1, ptr elementtype(i32) %sending.i) #11, !srcloc !113
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i, label %entry.batadv_tp_sender_shutdown.exit_crit_edge

entry.batadv_tp_sender_shutdown.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tp_sender_shutdown.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %reason1.i = getelementptr i8, ptr %work, i32 -4
  %1 = ptrtoint ptr %reason1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %reason1.i, align 8
  br label %batadv_tp_sender_shutdown.exit

batadv_tp_sender_shutdown.exit:                   ; preds = %if.end.i, %entry.batadv_tp_sender_shutdown.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_tp_stop(ptr noundef %bat_priv, ptr noundef %dst, i8 noundef zeroext %return_value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %0 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.17, ptr noundef %dst) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2 = tail call ptr @batadv_orig_hash_find(ptr noundef %bat_priv, ptr noundef %dst) #11
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc ptr @batadv_tp_list_find(ptr noundef %bat_priv, ptr noundef nonnull %call2)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.body9, label %if.end20

do.body9:                                         ; preds = %if.end5
  %call.i.i32 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %2 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %log_level, align 4
  %and13 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body9.if.end.i33_crit_edge, label %if.then15

do.body9.if.end.i33_crit_edge:                    ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i33

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.18) #11
  br label %if.end.i33

if.end20:                                         ; preds = %if.end5
  %sending.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call6, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sending.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @llvm.prefetch.p0(ptr %sending.i, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sending.i, ptr %sending.i, i32 1, ptr elementtype(i32) %sending.i) #11, !srcloc !113
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i, label %if.end20.batadv_tp_sender_shutdown.exit_crit_edge

if.end20.batadv_tp_sender_shutdown.exit_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tp_sender_shutdown.exit

if.end.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %return_value to i32
  %reason1.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call6, i32 0, i32 7
  %5 = ptrtoint ptr %reason1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %reason1.i, align 8
  br label %batadv_tp_sender_shutdown.exit

batadv_tp_sender_shutdown.exit:                   ; preds = %if.end.i, %if.end20.batadv_tp_sender_shutdown.exit_crit_edge
  tail call fastcc void @batadv_tp_vars_put(ptr noundef nonnull %call6)
  br label %if.end.i33

if.end.i33:                                       ; preds = %batadv_tp_sender_shutdown.exit, %if.then15, %do.body9.if.end.i33_crit_edge
  %refcount.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call2, i32 0, i32 27
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !110
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !104

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !111
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i) #11, !callees !115
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_orig_hash_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_tp_sender_shutdown(ptr noundef %tp_vars, i32 noundef %reason) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sending = getelementptr inbounds %struct.batadv_tp_vars, ptr %tp_vars, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sending, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @llvm.prefetch.p0(ptr %sending, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sending, ptr %sending, i32 1, ptr elementtype(i32) %sending) #11, !srcloc !113
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %reason1 = getelementptr inbounds %struct.batadv_tp_vars, ptr %tp_vars, i32 0, i32 7
  %1 = ptrtoint ptr %reason1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %reason, ptr %reason1, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_tp_meter_recv(ptr noundef %bat_priv, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %subtype = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %subtype to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %subtype, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %do.body [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %seqno1.i = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %seqno1.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %seqno1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2001, i32 %6)
  %cmp.i = icmp eq i32 %6, -2001
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb
  %tp_list_lock.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 26
  tail call void @_raw_spin_lock_bh(ptr noundef %tp_list_lock.i.i) #11
  %orig.i.i = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %1, i32 0, i32 5
  %session.i.i = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %1, i32 0, i32 8
  %call.i.i12 = tail call fastcc ptr @batadv_tp_list_find_session(ptr noundef %bat_priv, ptr noundef %orig.i.i, ptr noundef %session.i.i) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i12, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.batadv_tp_init_recv.exit.i_crit_edge

if.then.i.batadv_tp_init_recv.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tp_init_recv.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %tp_num.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 27
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tp_num.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %tp_num.i.i, i32 1, i32 3, i32 1) #11
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %tp_num.i.i, ptr %tp_num.i.i, i32 5, i32 1, ptr elementtype(i32) %tp_num.i.i) #11, !srcloc !100
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 5
  br i1 %cmp.not.i.i.i.i.i, label %do.body.i.i, label %if.end9.i.i

do.body.i.i:                                      ; preds = %if.end.i.i
  %log_level.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i57.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i.i, i32 noundef 4) #11
  %8 = ptrtoint ptr %log_level.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %log_level.i.i, align 4
  %and.i.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %do.body.i.i.do.body.i_crit_edge, label %if.then6.i.i

do.body.i.i.do.body.i_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.then6.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.38) #11
  br label %do.body.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !101
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2592, i32 noundef 464) #14
  %tobool11.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool11.not.i.i, label %if.end9.i.i.do.body.i_crit_edge, label %if.end13.i.i

if.end9.i.i.do.body.i_crit_edge:                  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end13.i.i:                                     ; preds = %if.end9.i.i
  %other_end.i.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %orig.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %orig.i.i, align 4
  %13 = ptrtoint ptr %other_end.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %other_end.i.i, align 8
  %add.ptr.i.i.i = getelementptr %struct.batadv_icmp_tp_packet, ptr %1, i32 0, i32 5, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr %struct.batadv_tp_vars, ptr %call7.i.i.i, i32 0, i32 4, i32 4
  %16 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %add.ptr1.i.i.i, align 4
  %role.i.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %role.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %role.i.i, align 8
  %session17.i.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %session.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %session.i.i, align 2
  %20 = ptrtoint ptr %session17.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %session17.i.i, align 4
  %last_recv.i.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i.i.i, i32 0, i32 28
  %21 = ptrtoint ptr %last_recv.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -2001, ptr %last_recv.i.i, align 4
  %bat_priv21.i.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %bat_priv21.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %bat_priv, ptr %bat_priv21.i.i, align 8
  %refcount.i.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i.i.i, i32 0, i32 32
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #11
  %23 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 1, ptr %refcount.i.i, align 8
  %unacked_lock.i.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i.i.i, i32 0, i32 30
  tail call void @__raw_spin_lock_init(ptr noundef %unacked_lock.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @batadv_tp_init_recv.__key, i16 noundef signext 3) #11
  %unacked_list.i.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i.i.i, i32 0, i32 29
  %24 = ptrtoint ptr %unacked_list.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %unacked_list.i.i, ptr %unacked_list.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i.i.i, i32 0, i32 29, i32 1
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %unacked_list.i.i, ptr %prev.i.i.i, align 4
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #11
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #11, !srcloc !102
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end13.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !103

if.end13.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end13.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %27 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %.not.i.i.i.i.i.i = icmp sgt i32 %27, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.kref_get.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !104

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.kref_get.exit.i.i_crit_edge:  ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end13.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end13.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef %.sink.i.i.i.i.i.i) #11
  br label %kref_get.exit.i.i

kref_get.exit.i.i:                                ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.kref_get.exit.i.i_crit_edge
  %tp_list.i.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 22
  %28 = ptrtoint ptr %tp_list.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tp_list.i.i, align 4
  %30 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %call7.i.i.i, align 8
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %tp_list.i.i, ptr %pprev.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !105
  %32 = ptrtoint ptr %tp_list.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %call7.i.i.i, ptr %tp_list.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i.i, label %kref_get.exit.i.i.hlist_add_head_rcu.exit.i.i_crit_edge, label %do.body49.i.i.i

kref_get.exit.i.i.hlist_add_head_rcu.exit.i.i_crit_edge: ; preds = %kref_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_add_head_rcu.exit.i.i

do.body49.i.i.i:                                  ; preds = %kref_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev51.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %29, i32 0, i32 1
  %33 = ptrtoint ptr %pprev51.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %call7.i.i.i, ptr %pprev51.i.i.i, align 4
  br label %hlist_add_head_rcu.exit.i.i

hlist_add_head_rcu.exit.i.i:                      ; preds = %do.body49.i.i.i, %kref_get.exit.i.i.hlist_add_head_rcu.exit.i.i_crit_edge
  %call.i.i.i.i.i.i58.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #11
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #11, !srcloc !102
  %asmresult.i.i.i.i.i.i59.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i59.i.i)
  %tobool1.not.i.i.i.i60.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i59.i.i, 0
  br i1 %tobool1.not.i.i.i.i60.i.i, label %hlist_add_head_rcu.exit.i.i.if.end15.sink.split.i.i.i.i65.i.i_crit_edge, label %if.else.i.i.i.i63.i.i, !prof !103

hlist_add_head_rcu.exit.i.i.if.end15.sink.split.i.i.i.i65.i.i_crit_edge: ; preds = %hlist_add_head_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i65.i.i

if.else.i.i.i.i63.i.i:                            ; preds = %hlist_add_head_rcu.exit.i.i
  %add.i.i.i.i61.i.i = add i32 %asmresult.i.i.i.i.i.i59.i.i, 1
  %35 = or i32 %add.i.i.i.i61.i.i, %asmresult.i.i.i.i.i.i59.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %.not.i.i.i.i62.i.i = icmp sgt i32 %35, -1
  br i1 %.not.i.i.i.i62.i.i, label %if.else.i.i.i.i63.i.i.kref_get.exit66.i.i_crit_edge, label %if.else.i.i.i.i63.i.i.if.end15.sink.split.i.i.i.i65.i.i_crit_edge, !prof !104

if.else.i.i.i.i63.i.i.if.end15.sink.split.i.i.i.i65.i.i_crit_edge: ; preds = %if.else.i.i.i.i63.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i65.i.i

if.else.i.i.i.i63.i.i.kref_get.exit66.i.i_crit_edge: ; preds = %if.else.i.i.i.i63.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit66.i.i

if.end15.sink.split.i.i.i.i65.i.i:                ; preds = %if.else.i.i.i.i63.i.i.if.end15.sink.split.i.i.i.i65.i.i_crit_edge, %hlist_add_head_rcu.exit.i.i.if.end15.sink.split.i.i.i.i65.i.i_crit_edge
  %.sink.i.i.i.i64.i.i = phi i32 [ 2, %hlist_add_head_rcu.exit.i.i.if.end15.sink.split.i.i.i.i65.i.i_crit_edge ], [ 1, %if.else.i.i.i.i63.i.i.if.end15.sink.split.i.i.i.i65.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef %.sink.i.i.i.i64.i.i) #11
  br label %kref_get.exit66.i.i

kref_get.exit66.i.i:                              ; preds = %if.end15.sink.split.i.i.i.i65.i.i, %if.else.i.i.i.i63.i.i.kref_get.exit66.i.i_crit_edge
  %timer.i.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call7.i.i.i, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i.i, ptr noundef nonnull @batadv_tp_receiver_shutdown, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @batadv_tp_init_recv.__key.39) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %add.i.i.i = add i32 %36, 100
  %call1.i.i.i = tail call i32 @mod_timer(ptr noundef %timer.i.i, i32 noundef %add.i.i.i) #11
  br label %batadv_tp_init_recv.exit.i

batadv_tp_init_recv.exit.i:                       ; preds = %kref_get.exit66.i.i, %if.then.i.batadv_tp_init_recv.exit.i_crit_edge
  %tp_vars.0.i.i = phi ptr [ %call.i.i12, %if.then.i.batadv_tp_init_recv.exit.i_crit_edge ], [ %call7.i.i.i, %kref_get.exit66.i.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %tp_list_lock.i.i) #11
  br label %if.end26.i

do.body.i:                                        ; preds = %if.end9.i.i.do.body.i_crit_edge, %if.then6.i.i, %do.body.i.i.do.body.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tp_list_lock.i.i) #11
  %log_level.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #11
  %37 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %log_level.i, align 4
  %and.i = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %do.body.i.batadv_tp_recv_msg.exit_crit_edge, label %if.then5.i

do.body.i.batadv_tp_recv_msg.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tp_recv_msg.exit

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.35) #11
  br label %batadv_tp_recv_msg.exit

if.else.i:                                        ; preds = %sw.bb
  %orig.i = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %1, i32 0, i32 5
  %session.i = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %1, i32 0, i32 8
  %call9.i = tail call fastcc ptr @batadv_tp_list_find_session(ptr noundef %bat_priv, ptr noundef %orig.i, ptr noundef %session.i) #11
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %do.body12.i, label %if.else.i.if.end26.i_crit_edge

if.else.i.if.end26.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

do.body12.i:                                      ; preds = %if.else.i
  %log_level14.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i99.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level14.i, i32 noundef 4) #11
  %39 = ptrtoint ptr %log_level14.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %log_level14.i, align 4
  %and16.i = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %do.body12.i.batadv_tp_recv_msg.exit_crit_edge, label %if.then18.i

do.body12.i.batadv_tp_recv_msg.exit_crit_edge:    ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tp_recv_msg.exit

if.then18.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  %call21.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.36, ptr noundef %orig.i) #11
  br label %batadv_tp_recv_msg.exit

if.end26.i:                                       ; preds = %if.else.i.if.end26.i_crit_edge, %batadv_tp_init_recv.exit.i
  %tp_vars.0.i = phi ptr [ %tp_vars.0.i.i, %batadv_tp_init_recv.exit.i ], [ %call9.i, %if.else.i.if.end26.i_crit_edge ]
  %role.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %tp_vars.0.i, i32 0, i32 5
  %41 = ptrtoint ptr %role.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %role.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp27.not.i = icmp eq i32 %42, 0
  br i1 %cmp27.not.i, label %if.end43.i, label %do.body31.i, !prof !104

do.body31.i:                                      ; preds = %if.end26.i
  %log_level33.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i100.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level33.i, i32 noundef 4) #11
  %43 = ptrtoint ptr %log_level33.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %log_level33.i, align 4
  %and35.i = and i32 %44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %do.body31.i.batadv_tp_recv_msg.exit_crit_edge, label %if.then37.i

do.body31.i.batadv_tp_recv_msg.exit_crit_edge:    ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tp_recv_msg.exit

if.then37.i:                                      ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %role.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %role.i, align 8
  %call39.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.37, i32 noundef %46) #11
  br label %batadv_tp_recv_msg.exit

if.end43.i:                                       ; preds = %if.end26.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %last_recv_time.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %tp_vars.0.i, i32 0, i32 31
  %48 = ptrtoint ptr %last_recv_time.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %last_recv_time.i, align 4
  %last_recv.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %tp_vars.0.i, i32 0, i32 28
  %49 = ptrtoint ptr %last_recv.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %last_recv.i, align 4
  %sub.i = sub i32 %6, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %sub.i)
  %cmp45.i = icmp ugt i32 %sub.i, -2147483648
  br i1 %cmp45.i, label %if.end43.i.send_ack.i_crit_edge, label %if.end49.i

if.end43.i.send_ack.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_ack.i

if.end49.i:                                       ; preds = %if.end43.i
  %51 = ptrtoint ptr %seqno1.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %seqno1.i, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %50)
  %cmp52.not.i = icmp eq i32 %52, %50
  br i1 %cmp52.not.i, label %if.end58.i, label %if.then54.i

if.then54.i:                                      ; preds = %if.end49.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %53 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i101.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %53, i32 noundef 2592, i32 noundef 16) #14
  %tobool.not.i102.i = icmp eq ptr %call7.i.i101.i, null
  br i1 %tobool.not.i102.i, label %if.then54.i.batadv_tp_recv_msg.exit_crit_edge, label %if.end.i105.i, !prof !103

if.then54.i.batadv_tp_recv_msg.exit_crit_edge:    ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tp_recv_msg.exit

if.end.i105.i:                                    ; preds = %if.then54.i
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data, align 4
  %seqno.i.i = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %seqno.i.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %seqno.i.i, align 2
  %58 = ptrtoint ptr %call7.i.i101.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %call7.i.i101.i, align 8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %59 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len.i.i, align 4
  %61 = trunc i32 %60 to i16
  %conv.i.i = add i16 %61, -10
  %len5.i.i = getelementptr inbounds %struct.batadv_tp_unacked, ptr %call7.i.i101.i, i32 0, i32 1
  %62 = ptrtoint ptr %len5.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv.i.i, ptr %len5.i.i, align 4
  %unacked_lock.i103.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %tp_vars.0.i, i32 0, i32 30
  tail call void @_raw_spin_lock_bh(ptr noundef %unacked_lock.i103.i) #11
  %unacked_list.i104.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %tp_vars.0.i, i32 0, i32 29
  %63 = ptrtoint ptr %unacked_list.i104.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %unacked_list.i104.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %64, %unacked_list.i104.i
  br i1 %cmp.i.not.i.i, label %if.then8.i.i, label %if.end10.i.i

if.then8.i.i:                                     ; preds = %if.end.i105.i
  %list.i.i = getelementptr inbounds %struct.batadv_tp_unacked, ptr %call7.i.i101.i, i32 0, i32 2
  %call.i.i.i106.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %unacked_list.i104.i, ptr noundef %unacked_list.i104.i) #11
  br i1 %call.i.i.i106.i, label %if.end.i.i.i.i, label %if.then8.i.i.send_ack.sink.split.i_crit_edge

if.then8.i.i.send_ack.sink.split.i_crit_edge:     ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_ack.sink.split.i

if.end.i.i.i.i:                                   ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %tp_vars.0.i, i32 0, i32 29, i32 1
  %65 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %list.i.i, ptr %prev1.i.i.i.i, align 4
  %66 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %unacked_list.i104.i, ptr %list.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.batadv_tp_unacked, ptr %call7.i.i101.i, i32 0, i32 2, i32 1
  %67 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %unacked_list.i104.i, ptr %prev3.i.i.i.i, align 4
  %68 = ptrtoint ptr %unacked_list.i104.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %list.i.i, ptr %unacked_list.i104.i, align 4
  br label %send_ack.sink.split.i

if.end10.i.i:                                     ; preds = %if.end.i105.i
  %prev.i.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %tp_vars.0.i, i32 0, i32 29, i32 1
  %69 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pn95.i.i = load ptr, ptr %prev.i.i, align 4
  %cmp.not96.i.i = icmp eq ptr %.pn95.i.i, %unacked_list.i104.i
  br i1 %cmp.not96.i.i, label %if.end10.i.i.if.then52.critedge.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end10.i.i.if.then52.critedge.i.i_crit_edge:    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then52.critedge.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end10.i.i
  %70 = ptrtoint ptr %call7.i.i101.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %call7.i.i101.i, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn97.i.i = phi ptr [ %.pn95.i.i, %for.body.lr.ph.i.i ], [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %un.0.i.i = getelementptr i8, ptr %.pn97.i.i, i32 -8
  %72 = ptrtoint ptr %un.0.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %un.0.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp19.i.i = icmp eq i32 %71, %73
  br i1 %cmp19.i.i, label %if.then21.i.i, label %if.end32.i.i

if.then21.i.i:                                    ; preds = %for.body.i.i
  %74 = ptrtoint ptr %len5.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %len5.i.i, align 4
  %len24.i.i = getelementptr i8, ptr %.pn97.i.i, i32 -4
  %76 = ptrtoint ptr %len24.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %len24.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %75, i16 %77)
  %cmp26.i.i = icmp ugt i16 %75, %77
  br i1 %cmp26.i.i, label %if.then28.i.i, label %if.then21.i.i.if.end31.i.i_crit_edge

if.then21.i.i.if.end31.i.i_crit_edge:             ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i.i

if.then28.i.i:                                    ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %len24.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %75, ptr %len24.i.i, align 4
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then28.i.i, %if.then21.i.i.if.end31.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i101.i) #11
  br label %send_ack.sink.split.i

if.end32.i.i:                                     ; preds = %for.body.i.i
  %sub35.i.i = sub i32 %71, %73
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %sub35.i.i)
  %cmp39.i.i = icmp ugt i32 %sub35.i.i, -2147483648
  br i1 %cmp39.i.i, label %for.inc.i.i, label %if.end43.i.i

if.end43.i.i:                                     ; preds = %if.end32.i.i
  %list44.i.i = getelementptr inbounds %struct.batadv_tp_unacked, ptr %call7.i.i101.i, i32 0, i32 2
  %prev.i.i107.i = getelementptr inbounds %struct.list_head, ptr %.pn97.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i.i107.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i.i107.i, align 4
  %call.i.i85.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list44.i.i, ptr noundef %80, ptr noundef %.pn97.i.i) #11
  br i1 %call.i.i85.i.i, label %if.end.i.i87.i.i, label %if.end43.i.i.send_ack.sink.split.i_crit_edge

if.end43.i.i.send_ack.sink.split.i_crit_edge:     ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_ack.sink.split.i

if.end.i.i87.i.i:                                 ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %81 = ptrtoint ptr %prev.i.i107.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %list44.i.i, ptr %prev.i.i107.i, align 4
  %82 = ptrtoint ptr %list44.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %.pn97.i.i, ptr %list44.i.i, align 8
  %prev3.i.i86.i.i = getelementptr inbounds %struct.batadv_tp_unacked, ptr %call7.i.i101.i, i32 0, i32 2, i32 1
  %83 = ptrtoint ptr %prev3.i.i86.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev3.i.i86.i.i, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %list44.i.i, ptr %80, align 4
  br label %send_ack.sink.split.i

for.inc.i.i:                                      ; preds = %if.end32.i.i
  %prev48.i.i = getelementptr inbounds %struct.list_head, ptr %.pn97.i.i, i32 0, i32 1
  %85 = ptrtoint ptr %prev48.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %.pn.i.i = load ptr, ptr %prev48.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %unacked_list.i104.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.then52.critedge.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.if.then52.critedge.i.i_crit_edge:     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then52.critedge.i.i

if.then52.critedge.i.i:                           ; preds = %for.inc.i.i.if.then52.critedge.i.i_crit_edge, %if.end10.i.i.if.then52.critedge.i.i_crit_edge
  %list53.i.i = getelementptr inbounds %struct.batadv_tp_unacked, ptr %call7.i.i101.i, i32 0, i32 2
  %call.i.i88.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list53.i.i, ptr noundef %unacked_list.i104.i, ptr noundef %64) #11
  br i1 %call.i.i88.i.i, label %if.end.i.i91.i.i, label %if.then52.critedge.i.i.send_ack.sink.split.i_crit_edge

if.then52.critedge.i.i.send_ack.sink.split.i_crit_edge: ; preds = %if.then52.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_ack.sink.split.i

if.end.i.i91.i.i:                                 ; preds = %if.then52.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i89.i.i = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %86 = ptrtoint ptr %prev1.i.i89.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %list53.i.i, ptr %prev1.i.i89.i.i, align 4
  %87 = ptrtoint ptr %list53.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %64, ptr %list53.i.i, align 8
  %prev3.i.i90.i.i = getelementptr inbounds %struct.batadv_tp_unacked, ptr %call7.i.i101.i, i32 0, i32 2, i32 1
  %88 = ptrtoint ptr %prev3.i.i90.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %unacked_list.i104.i, ptr %prev3.i.i90.i.i, align 4
  %89 = ptrtoint ptr %unacked_list.i104.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %list53.i.i, ptr %unacked_list.i104.i, align 4
  br label %send_ack.sink.split.i

if.end58.i:                                       ; preds = %if.end49.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %90 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %len.i, align 4
  %sub59.i = add i32 %50, -10
  %add.i = add i32 %sub59.i, %91
  %92 = ptrtoint ptr %last_recv.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %add.i, ptr %last_recv.i, align 4
  %unacked_lock.i108.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %tp_vars.0.i, i32 0, i32 30
  tail call void @_raw_spin_lock_bh(ptr noundef %unacked_lock.i108.i) #11
  %unacked_list.i109.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %tp_vars.0.i, i32 0, i32 29
  %93 = ptrtoint ptr %unacked_list.i109.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %unacked_list.i109.i, align 8
  %cmp.not60.i.i = icmp eq ptr %94, %unacked_list.i109.i
  br i1 %cmp.not60.i.i, label %if.end58.i.send_ack.sink.split.i_crit_edge, label %if.end58.i.for.body.i111.i_crit_edge

if.end58.i.for.body.i111.i_crit_edge:             ; preds = %if.end58.i
  br label %for.body.i111.i

if.end58.i.send_ack.sink.split.i_crit_edge:       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_ack.sink.split.i

for.body.i111.i:                                  ; preds = %list_del.exit.i.i.for.body.i111.i_crit_edge, %if.end58.i.for.body.i111.i_crit_edge
  %.pn.in61.i.i = phi ptr [ %.pn64.i.i, %list_del.exit.i.i.for.body.i111.i_crit_edge ], [ %94, %if.end58.i.for.body.i111.i_crit_edge ]
  %un.063.i.i = getelementptr i8, ptr %.pn.in61.i.i, i32 -8
  %95 = ptrtoint ptr %.pn.in61.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %.pn64.i.i = load ptr, ptr %.pn.in61.i.i, align 4
  %96 = ptrtoint ptr %last_recv.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %last_recv.i, align 4
  %98 = ptrtoint ptr %un.063.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %un.063.i.i, align 4
  %sub.i.i = sub i32 %97, %99
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %sub.i.i)
  %cmp9.i.i = icmp ugt i32 %sub.i.i, -2147483648
  br i1 %cmp9.i.i, label %for.body.i111.i.send_ack.sink.split.i_crit_edge, label %if.end.i113.i

for.body.i111.i.send_ack.sink.split.i_crit_edge:  ; preds = %for.body.i111.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_ack.sink.split.i

if.end.i113.i:                                    ; preds = %for.body.i111.i
  %len.i112.i = getelementptr i8, ptr %.pn.in61.i.i, i32 -4
  %100 = ptrtoint ptr %len.i112.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %len.i112.i, align 4
  %conv20.i.i = zext i16 %101 to i32
  %add21.i.i = add i32 %99, %conv20.i.i
  %sub23.i.i = sub i32 %97, %add21.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %sub23.i.i)
  %cmp27.i.i = icmp ugt i32 %sub23.i.i, -2147483648
  br i1 %cmp27.i.i, label %if.then30.i.i, label %if.end.i113.i.if.end33.i.i_crit_edge

if.end.i113.i.if.end33.i.i_crit_edge:             ; preds = %if.end.i113.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i.i

if.then30.i.i:                                    ; preds = %if.end.i113.i
  call void @__sanitizer_cov_trace_pc() #13
  %102 = ptrtoint ptr %last_recv.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %add21.i.i, ptr %last_recv.i, align 4
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.then30.i.i, %if.end.i113.i.if.end33.i.i_crit_edge
  %call.i.i.i114.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in61.i.i) #11
  br i1 %call.i.i.i114.i, label %if.end.i.i.i115.i, label %if.end33.i.i.list_del.exit.i.i_crit_edge

if.end33.i.i.list_del.exit.i.i_crit_edge:         ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i.i

if.end.i.i.i115.i:                                ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in61.i.i, i32 0, i32 1
  %103 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %prev.i.i.i.i, align 4
  %105 = ptrtoint ptr %.pn.in61.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %.pn.in61.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %104, ptr %prev1.i.i.i.i.i, align 4
  %108 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %106, ptr %104, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i115.i, %if.end33.i.i.list_del.exit.i.i_crit_edge
  %109 = ptrtoint ptr %.pn.in61.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in61.i.i, align 4
  %prev.i.i116.i = getelementptr inbounds %struct.list_head, ptr %.pn.in61.i.i, i32 0, i32 1
  %110 = ptrtoint ptr %prev.i.i116.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i116.i, align 4
  tail call void @kfree(ptr noundef %un.063.i.i) #11
  %cmp.not.i117.i = icmp eq ptr %.pn64.i.i, %unacked_list.i109.i
  br i1 %cmp.not.i117.i, label %list_del.exit.i.i.send_ack.sink.split.i_crit_edge, label %list_del.exit.i.i.for.body.i111.i_crit_edge

list_del.exit.i.i.for.body.i111.i_crit_edge:      ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i111.i

list_del.exit.i.i.send_ack.sink.split.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_ack.sink.split.i

send_ack.sink.split.i:                            ; preds = %list_del.exit.i.i.send_ack.sink.split.i_crit_edge, %for.body.i111.i.send_ack.sink.split.i_crit_edge, %if.end58.i.send_ack.sink.split.i_crit_edge, %if.end.i.i91.i.i, %if.then52.critedge.i.i.send_ack.sink.split.i_crit_edge, %if.end.i.i87.i.i, %if.end43.i.i.send_ack.sink.split.i_crit_edge, %if.end31.i.i, %if.end.i.i.i.i, %if.then8.i.i.send_ack.sink.split.i_crit_edge
  %unacked_lock.i103.sink.i = phi ptr [ %unacked_lock.i103.i, %if.then8.i.i.send_ack.sink.split.i_crit_edge ], [ %unacked_lock.i103.i, %if.end.i.i.i.i ], [ %unacked_lock.i103.i, %if.end31.i.i ], [ %unacked_lock.i103.i, %if.end43.i.i.send_ack.sink.split.i_crit_edge ], [ %unacked_lock.i103.i, %if.end.i.i87.i.i ], [ %unacked_lock.i103.i, %if.then52.critedge.i.i.send_ack.sink.split.i_crit_edge ], [ %unacked_lock.i103.i, %if.end.i.i91.i.i ], [ %unacked_lock.i108.i, %if.end58.i.send_ack.sink.split.i_crit_edge ], [ %unacked_lock.i108.i, %for.body.i111.i.send_ack.sink.split.i_crit_edge ], [ %unacked_lock.i108.i, %list_del.exit.i.i.send_ack.sink.split.i_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %unacked_lock.i103.sink.i) #11
  br label %send_ack.i

send_ack.i:                                       ; preds = %send_ack.sink.split.i, %if.end43.i.send_ack.i_crit_edge
  %orig61.i = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %1, i32 0, i32 5
  %111 = ptrtoint ptr %last_recv.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %last_recv.i, align 4
  %timestamp.i = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %1, i32 0, i32 10
  %113 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %114 = load i32, ptr %timestamp.i, align 2
  %session64.i = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %1, i32 0, i32 8
  %uid.i = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %1, i32 0, i32 6
  %115 = ptrtoint ptr %uid.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %uid.i, align 2
  %call.i118.i = tail call ptr @batadv_orig_hash_find(ptr noundef %bat_priv, ptr noundef %orig61.i) #11
  %tobool.not.i119.i = icmp eq ptr %call.i118.i, null
  br i1 %tobool.not.i119.i, label %send_ack.i.batadv_tp_recv_msg.exit_crit_edge, label %if.end.i121.i, !prof !103

send_ack.i.batadv_tp_recv_msg.exit_crit_edge:     ; preds = %send_ack.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tp_recv_msg.exit

if.end.i121.i:                                    ; preds = %send_ack.i
  %call4.i.i = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %bat_priv) #11
  %tobool5.not.i120.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool5.not.i120.i, label %if.end.i121.i.if.end.i.i.i_crit_edge, label %if.end15.i.i, !prof !103

if.end.i121.i.if.end.i.i.i_crit_edge:             ; preds = %if.end.i121.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.end15.i.i:                                     ; preds = %if.end.i121.i
  %call.i.i.i122.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 44, i32 noundef 2592) #11
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i122.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end15.i.i.if.end.i.i.i_crit_edge, label %if.end27.i.i

if.end15.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.end27.i.i:                                     ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i122.i, i32 0, i32 19
  %117 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %data.i.i.i.i.i, align 4
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i122.i, i32 0, i32 16
  %119 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr.i.i123.i = getelementptr i8, ptr %118, i32 16
  store ptr %add.ptr.i.i123.i, ptr %data.i.i.i.i.i, align 4
  %add.ptr1.i.i124.i = getelementptr i8, ptr %120, i32 16
  store ptr %add.ptr1.i.i124.i, ptr %tail.i.i.i.i.i, align 8
  %call28.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i122.i, i32 noundef 28) #11
  %121 = ptrtoint ptr %call28.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 67, ptr %call28.i.i, align 2
  %version.i.i = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %call28.i.i, i32 0, i32 1
  %122 = ptrtoint ptr %version.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 15, ptr %version.i.i, align 1
  %ttl.i.i = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %call28.i.i, i32 0, i32 2
  %123 = ptrtoint ptr %ttl.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 50, ptr %ttl.i.i, align 2
  %msg_type.i.i = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %call28.i.i, i32 0, i32 3
  %124 = ptrtoint ptr %msg_type.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 15, ptr %msg_type.i.i, align 1
  %dst29.i.i = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %call28.i.i, i32 0, i32 4
  %125 = ptrtoint ptr %call.i118.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %call.i118.i, align 4
  %127 = ptrtoint ptr %dst29.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %dst29.i.i, align 4
  %add.ptr.i1.i.i = getelementptr i8, ptr %call.i118.i, i32 4
  %128 = ptrtoint ptr %add.ptr.i1.i.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %add.ptr.i1.i.i, align 2
  %add.ptr1.i2.i.i = getelementptr %struct.batadv_icmp_tp_packet, ptr %call28.i.i, i32 0, i32 4, i32 4
  %130 = ptrtoint ptr %add.ptr1.i2.i.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %129, ptr %add.ptr1.i2.i.i, align 2
  %orig31.i.i = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %call28.i.i, i32 0, i32 5
  %net_dev.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call4.i.i, i32 0, i32 4
  %131 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %net_dev.i.i, align 4
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %132, i32 0, i32 86
  %133 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev_addr.i.i, align 64
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %134, align 4
  %137 = ptrtoint ptr %orig31.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %orig31.i.i, align 4
  %add.ptr.i3.i.i = getelementptr i8, ptr %134, i32 4
  %138 = ptrtoint ptr %add.ptr.i3.i.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %add.ptr.i3.i.i, align 2
  %add.ptr1.i4.i.i = getelementptr %struct.batadv_icmp_tp_packet, ptr %call28.i.i, i32 0, i32 5, i32 4
  %140 = ptrtoint ptr %add.ptr1.i4.i.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %139, ptr %add.ptr1.i4.i.i, align 2
  %uid.i.i = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %call28.i.i, i32 0, i32 6
  %141 = ptrtoint ptr %uid.i.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %116, ptr %uid.i.i, align 2
  %subtype.i.i = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %call28.i.i, i32 0, i32 7
  %142 = ptrtoint ptr %subtype.i.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 1, ptr %subtype.i.i, align 1
  %session33.i.i = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %call28.i.i, i32 0, i32 8
  %143 = ptrtoint ptr %session64.i to i32
  call void @__asan_loadN_noabort(i32 %143, i32 2)
  %144 = load i16, ptr %session64.i, align 1
  %145 = ptrtoint ptr %session33.i.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %144, ptr %session33.i.i, align 2
  %seqno.i125.i = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %call28.i.i, i32 0, i32 9
  %146 = ptrtoint ptr %seqno.i125.i to i32
  call void @__asan_storeN_noabort(i32 %146, i32 4)
  store i32 %112, ptr %seqno.i125.i, align 2
  %timestamp35.i.i = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %call28.i.i, i32 0, i32 10
  %147 = ptrtoint ptr %timestamp35.i.i to i32
  call void @__asan_storeN_noabort(i32 %147, i32 4)
  store i32 %114, ptr %timestamp35.i.i, align 2
  %call36.i.i = tail call i32 @batadv_send_skb_to_orig(ptr noundef nonnull %call.i.i.i122.i, ptr noundef nonnull %call.i118.i, ptr noundef null) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.end27.i.i, %if.end15.i.i.if.end.i.i.i_crit_edge, %if.end.i121.i.if.end.i.i.i_crit_edge
  %refcount.i.i.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call.i118.i, i32 0, i32 27
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i.i, i32 1, i32 3, i32 1) #11
  %148 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i, ptr %refcount.i.i.i, i32 1, ptr elementtype(i32) %refcount.i.i.i) #11, !srcloc !110
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %148, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i5.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.batadv_orig_node_put.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !104

if.end5.i.i.i.i.i.i.i.batadv_orig_node_put.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_orig_node_put.exit.i.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i, i32 noundef 3) #11
  br label %batadv_orig_node_put.exit.i.i

if.then.i.i5.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !111
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i.i.i) #11, !callees !115
  br label %batadv_orig_node_put.exit.i.i

batadv_orig_node_put.exit.i.i:                    ; preds = %if.then.i.i5.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.batadv_orig_node_put.exit.i.i_crit_edge
  br i1 %tobool5.not.i120.i, label %batadv_orig_node_put.exit.i.i.batadv_tp_recv_msg.exit_crit_edge, label %if.end.i11.i.i

batadv_orig_node_put.exit.i.i.batadv_tp_recv_msg.exit_crit_edge: ; preds = %batadv_orig_node_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tp_recv_msg.exit

if.end.i11.i.i:                                   ; preds = %batadv_orig_node_put.exit.i.i
  %refcount.i7.i.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call4.i.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i8.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i7.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  tail call void @llvm.prefetch.p0(ptr %refcount.i7.i.i, i32 1, i32 3, i32 1) #11
  %149 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i7.i.i, ptr %refcount.i7.i.i, i32 1, ptr elementtype(i32) %refcount.i7.i.i) #11, !srcloc !110
  %asmresult.i.i.i.i.i.i.i.i9.i.i = extractvalue { i32, i32, i32 } %149, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i9.i.i)
  %cmp.i.i.i.i.i10.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i9.i.i, 1
  br i1 %cmp.i.i.i.i.i10.i.i, label %if.then.i.i15.i.i, label %if.end5.i.i.i.i.i13.i.i

if.end5.i.i.i.i.i13.i.i:                          ; preds = %if.end.i11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i9.i.i)
  %.not.i.i.i.i.i12.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i9.i.i, 0
  br i1 %.not.i.i.i.i.i12.i.i, label %if.end5.i.i.i.i.i13.i.i.batadv_tp_recv_msg.exit_crit_edge, label %if.then10.i.i.i.i.i14.i.i, !prof !104

if.end5.i.i.i.i.i13.i.i.batadv_tp_recv_msg.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tp_recv_msg.exit

if.then10.i.i.i.i.i14.i.i:                        ; preds = %if.end5.i.i.i.i.i13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i7.i.i, i32 noundef 3) #11
  br label %batadv_tp_recv_msg.exit

if.then.i.i15.i.i:                                ; preds = %if.end.i11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !111
  tail call void @batadv_hardif_release(ptr noundef %refcount.i7.i.i) #11, !callees !115
  br label %batadv_tp_recv_msg.exit

batadv_tp_recv_msg.exit:                          ; preds = %if.then.i.i15.i.i, %if.then10.i.i.i.i.i14.i.i, %if.end5.i.i.i.i.i13.i.i.batadv_tp_recv_msg.exit_crit_edge, %batadv_orig_node_put.exit.i.i.batadv_tp_recv_msg.exit_crit_edge, %send_ack.i.batadv_tp_recv_msg.exit_crit_edge, %if.then54.i.batadv_tp_recv_msg.exit_crit_edge, %if.then37.i, %do.body31.i.batadv_tp_recv_msg.exit_crit_edge, %if.then18.i, %do.body12.i.batadv_tp_recv_msg.exit_crit_edge, %if.then5.i, %do.body.i.batadv_tp_recv_msg.exit_crit_edge
  %tp_vars.1.i = phi ptr [ null, %if.then5.i ], [ null, %do.body.i.batadv_tp_recv_msg.exit_crit_edge ], [ null, %if.then18.i ], [ null, %do.body12.i.batadv_tp_recv_msg.exit_crit_edge ], [ %tp_vars.0.i, %if.then37.i ], [ %tp_vars.0.i, %do.body31.i.batadv_tp_recv_msg.exit_crit_edge ], [ %tp_vars.0.i, %send_ack.i.batadv_tp_recv_msg.exit_crit_edge ], [ %tp_vars.0.i, %batadv_orig_node_put.exit.i.i.batadv_tp_recv_msg.exit_crit_edge ], [ %tp_vars.0.i, %if.end5.i.i.i.i.i13.i.i.batadv_tp_recv_msg.exit_crit_edge ], [ %tp_vars.0.i, %if.then10.i.i.i.i.i14.i.i ], [ %tp_vars.0.i, %if.then.i.i15.i.i ], [ %tp_vars.0.i, %if.then54.i.batadv_tp_recv_msg.exit_crit_edge ]
  tail call fastcc void @batadv_tp_vars_put(ptr noundef %tp_vars.1.i) #11
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %orig.i14 = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %1, i32 0, i32 5
  %session.i15 = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %1, i32 0, i32 8
  %call.i = tail call fastcc ptr @batadv_tp_list_find_session(ptr noundef %bat_priv, ptr noundef %orig.i14, ptr noundef %session.i15) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sw.bb1.sw.epilog_crit_edge, label %if.end.i, !prof !103

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb1
  %sending.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call.i, i32 0, i32 6
  %call.i.i.i16 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sending.i, i32 noundef 4) #11
  %150 = ptrtoint ptr %sending.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %sending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %cmp.i17 = icmp eq i32 %151, 0
  br i1 %cmp.i17, label %if.end.i.batadv_orig_node_put.exit.i_crit_edge, label %if.end13.i, !prof !103

if.end.i.batadv_orig_node_put.exit.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_orig_node_put.exit.i

if.end13.i:                                       ; preds = %if.end.i
  %seqno.i = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %1, i32 0, i32 9
  %152 = ptrtoint ptr %seqno.i to i32
  call void @__asan_loadN_noabort(i32 %152, i32 4)
  %153 = load i32, ptr %seqno.i, align 2
  %last_acked.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call.i, i32 0, i32 16
  %call.i.i228.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_acked.i, i32 noundef 4) #11
  %154 = ptrtoint ptr %last_acked.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %last_acked.i, align 4
  %sub.i18 = sub i32 %153, %155
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %sub.i18)
  %cmp16.i = icmp ugt i32 %sub.i18, -2147483648
  br i1 %cmp16.i, label %if.end13.i.batadv_orig_node_put.exit.i_crit_edge, label %if.end20.i

if.end13.i.batadv_orig_node_put.exit.i_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_orig_node_put.exit.i

if.end20.i:                                       ; preds = %if.end13.i
  %call21.i19 = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %bat_priv) #11
  %tobool22.not.i = icmp eq ptr %call21.i19, null
  br i1 %tobool22.not.i, label %if.end20.i.batadv_orig_node_put.exit.i_crit_edge, label %if.end32.i, !prof !103

if.end20.i.batadv_orig_node_put.exit.i_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_orig_node_put.exit.i

if.end32.i:                                       ; preds = %if.end20.i
  %call35.i = tail call ptr @batadv_orig_hash_find(ptr noundef %bat_priv, ptr noundef %orig.i14) #11
  %tobool36.not.i20 = icmp eq ptr %call35.i, null
  br i1 %tobool36.not.i20, label %if.end32.i.if.end.i243.i_crit_edge, label %if.end46.i, !prof !103

if.end32.i.if.end.i243.i_crit_edge:               ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i243.i

if.end46.i:                                       ; preds = %if.end32.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %156 = load volatile i32, ptr @jiffies, align 128
  %call47.i = tail call i32 @jiffies_to_msecs(i32 noundef %156) #11
  %timestamp.i21 = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %1, i32 0, i32 10
  %157 = ptrtoint ptr %timestamp.i21 to i32
  call void @__asan_loadN_noabort(i32 %157, i32 4)
  %158 = load i32, ptr %timestamp.i21, align 2
  %sub48.i = sub i32 %call47.i, %158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool50.not.i = icmp eq i32 %158, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call47.i, i32 %158)
  %tobool51.not.i = icmp eq i32 %call47.i, %158
  %or.cond.i = select i1 %tobool50.not.i, i1 true, i1 %tobool51.not.i
  br i1 %or.cond.i, label %if.end46.i.if.end53.i_crit_edge, label %if.then52.i

if.end46.i.if.end53.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53.i

if.then52.i:                                      ; preds = %if.end46.i
  %srtt.i.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call.i, i32 0, i32 23
  %159 = ptrtoint ptr %srtt.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %srtt.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %cmp.not.i.i22 = icmp eq i32 %160, 0
  br i1 %cmp.not.i.i22, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i.i = lshr i32 %160, 3
  %sub.i.i23 = sub i32 %sub48.i, %shr.i.i
  %add.i.i = add i32 %sub.i.i23, %160
  %161 = ptrtoint ptr %srtt.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %add.i.i, ptr %srtt.i.i, align 8
  %162 = tail call i32 @llvm.abs.i32(i32 %sub.i.i23, i1 false) #11
  %rttvar.i.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call.i, i32 0, i32 24
  %163 = ptrtoint ptr %rttvar.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %rttvar.i.i, align 4
  %shr6.i.i = lshr i32 %164, 2
  %sub7.i.i = add i32 %164, %162
  %add9.i.i = sub i32 %sub7.i.i, %shr6.i.i
  store i32 %add9.i.i, ptr %rttvar.i.i, align 4
  br label %batadv_tp_update_rto.exit.i

if.else.i.i:                                      ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #13
  %shl.i.i = shl i32 %sub48.i, 3
  %165 = ptrtoint ptr %srtt.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %shl.i.i, ptr %srtt.i.i, align 8
  %shl11.i.i = shl i32 %sub48.i, 1
  %rttvar12.i.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call.i, i32 0, i32 24
  %166 = ptrtoint ptr %rttvar12.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %shl11.i.i, ptr %rttvar12.i.i, align 4
  br label %batadv_tp_update_rto.exit.i

batadv_tp_update_rto.exit.i:                      ; preds = %if.else.i.i, %if.then.i.i
  %167 = ptrtoint ptr %srtt.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %srtt.i.i, align 8
  %shr15.i.i = lshr i32 %168, 3
  %rttvar16.i.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call.i, i32 0, i32 24
  %169 = ptrtoint ptr %rttvar16.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %rttvar16.i.i, align 4
  %add17.i.i = add i32 %shr15.i.i, %170
  %rto.i.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call.i, i32 0, i32 22
  %171 = ptrtoint ptr %rto.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %add17.i.i, ptr %rto.i.i, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %batadv_tp_update_rto.exit.i, %if.end46.i.if.end53.i_crit_edge
  %call.i.i.i.i24 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sending.i, i32 noundef 4) #11
  %172 = ptrtoint ptr %sending.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load volatile i32, ptr %sending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp.i.i = icmp eq i32 %173, 0
  br i1 %cmp.i.i, label %if.end53.i.batadv_tp_reset_sender_timer.exit.i_crit_edge, label %if.end.i.i26, !prof !103

if.end53.i.batadv_tp_reset_sender_timer.exit.i_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tp_reset_sender_timer.exit.i

if.end.i.i26:                                     ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #13
  %timer.i.i25 = getelementptr inbounds %struct.batadv_tp_vars, ptr %call.i, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %174 = load volatile i32, ptr @jiffies, align 128
  %rto.i238.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call.i, i32 0, i32 22
  %175 = ptrtoint ptr %rto.i238.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %rto.i238.i, align 4
  %call2.i.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %176) #11
  %add.i239.i = add i32 %call2.i.i.i, %174
  %call3.i.i = tail call i32 @mod_timer(ptr noundef %timer.i.i25, i32 noundef %add.i239.i) #11
  br label %batadv_tp_reset_sender_timer.exit.i

batadv_tp_reset_sender_timer.exit.i:              ; preds = %if.end.i.i26, %if.end53.i.batadv_tp_reset_sender_timer.exit.i_crit_edge
  %177 = ptrtoint ptr %seqno.i to i32
  call void @__asan_loadN_noabort(i32 %177, i32 4)
  %178 = load i32, ptr %seqno.i, align 2
  %call.i.i229.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_acked.i, i32 noundef 4) #11
  %179 = ptrtoint ptr %last_acked.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load volatile i32, ptr %last_acked.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %180, i32 %178)
  %cmp57.i = icmp eq i32 %180, %178
  br i1 %cmp57.i, label %if.then59.i, label %if.else.i31

if.then59.i:                                      ; preds = %batadv_tp_reset_sender_timer.exit.i
  %dup_acks.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call.i, i32 0, i32 19
  %call.i.i230.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dup_acks.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %dup_acks.i, i32 1, i32 3, i32 1) #11
  %181 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dup_acks.i, ptr %dup_acks.i, i32 1, ptr elementtype(i32) %dup_acks.i) #11, !srcloc !116
  %call.i.i231.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dup_acks.i, i32 noundef 4) #11
  %182 = ptrtoint ptr %dup_acks.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load volatile i32, ptr %dup_acks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %183)
  %cmp62.not.i = icmp eq i32 %183, 3
  br i1 %cmp62.not.i, label %if.end65.i, label %if.then59.i.if.end.i243.i_crit_edge

if.then59.i.if.end.i243.i_crit_edge:              ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i243.i

if.end65.i:                                       ; preds = %if.then59.i
  %recover.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call.i, i32 0, i32 21
  %184 = ptrtoint ptr %recover.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %recover.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %178, i32 %185)
  %cmp66.not.i = icmp ult i32 %178, %185
  br i1 %cmp66.not.i, label %if.end69.i, label %if.end65.i.if.end.i243.i_crit_edge

if.end65.i.if.end.i243.i_crit_edge:               ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i243.i

if.end69.i:                                       ; preds = %if.end65.i
  %net_dev.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call21.i19, i32 0, i32 4
  %186 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %net_dev.i, align 4
  %dev_addr70.i = getelementptr inbounds %struct.net_device, ptr %187, i32 0, i32 86
  %188 = ptrtoint ptr %dev_addr70.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %dev_addr70.i, align 64
  %uid.i28 = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %1, i32 0, i32 6
  %190 = ptrtoint ptr %uid.i28 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %uid.i28, align 2
  %conv73.i = zext i8 %191 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %192 = load volatile i32, ptr @jiffies, align 128
  %call74.i = tail call i32 @jiffies_to_msecs(i32 noundef %192) #11
  %193 = tail call fastcc i32 @batadv_tp_send_msg(ptr noundef nonnull %call.i, ptr noundef %189, ptr noundef nonnull %call35.i, i32 noundef %178, ptr noundef %session.i15, i32 noundef %conv73.i, i32 noundef %call74.i) #11
  %cwnd_lock.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call.i, i32 0, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %cwnd_lock.i) #11
  %fast_recovery.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call.i, i32 0, i32 20
  %194 = ptrtoint ptr %fast_recovery.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %bf.load.i = load i8, ptr %fast_recovery.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %fast_recovery.i, align 4
  %last_sent.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call.i, i32 0, i32 17
  %195 = ptrtoint ptr %last_sent.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %last_sent.i, align 4
  %197 = ptrtoint ptr %recover.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %196, ptr %recover.i, align 8
  %cwnd77.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call.i, i32 0, i32 13
  %198 = ptrtoint ptr %cwnd77.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %cwnd77.i, align 4
  %shr.i = lshr i32 %199, 1
  %ss_threshold.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call.i, i32 0, i32 15
  %200 = ptrtoint ptr %ss_threshold.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %shr.i, ptr %ss_threshold.i, align 4
  %log_level.i29 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i232.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i29, i32 noundef 4) #11
  %201 = ptrtoint ptr %log_level.i29 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load volatile i32, ptr %log_level.i29, align 4
  %and.i30 = and i32 %202, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30)
  %tobool79.not.i = icmp eq i32 %and.i30, 0
  br i1 %tobool79.not.i, label %if.end69.i.if.end85.i_crit_edge, label %if.then80.i

if.end69.i.if.end85.i_crit_edge:                  ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85.i

if.then80.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #13
  %203 = ptrtoint ptr %cwnd77.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %cwnd77.i, align 4
  %205 = ptrtoint ptr %ss_threshold.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %ss_threshold.i, align 4
  %207 = ptrtoint ptr %last_sent.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %last_sent.i, align 4
  %call84.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.41, i32 noundef %204, i32 noundef %206, i32 noundef %208, i32 noundef %178) #11
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then80.i, %if.end69.i.if.end85.i_crit_edge
  %209 = ptrtoint ptr %ss_threshold.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %ss_threshold.i, align 4
  %211 = tail call i32 @llvm.uadd.sat.i32(i32 %210, i32 4428) #11
  %212 = tail call i32 @llvm.umin.i32(i32 %211, i32 536870912) #11
  %213 = ptrtoint ptr %cwnd77.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %212, ptr %cwnd77.i, align 4
  %dec_cwnd.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call.i, i32 0, i32 12
  %214 = ptrtoint ptr %dec_cwnd.i to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 0, ptr %dec_cwnd.i, align 8
  %215 = ptrtoint ptr %last_sent.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %178, ptr %last_sent.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %cwnd_lock.i) #11
  br label %if.end141.i

if.else.i31:                                      ; preds = %batadv_tp_reset_sender_timer.exit.i
  %call.i.i233.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_acked.i, i32 noundef 4) #11
  %216 = ptrtoint ptr %last_acked.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load volatile i32, ptr %last_acked.i, align 4
  %sub93.i = sub i32 %178, %217
  %conv94.i = zext i32 %sub93.i to i64
  %tot_sent.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call.i, i32 0, i32 18
  %call.i.i234.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tot_sent.i, i32 noundef 8) #11
  tail call void @generic_atomic64_add(i64 noundef %conv94.i, ptr noundef %tot_sent.i) #11
  %dup_acks95.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call.i, i32 0, i32 19
  %call.i.i235.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dup_acks95.i, i32 noundef 4) #11
  %218 = ptrtoint ptr %dup_acks95.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store volatile i32 0, ptr %dup_acks95.i, align 4
  %fast_recovery96.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call.i, i32 0, i32 20
  %219 = ptrtoint ptr %fast_recovery96.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %bf.load97.i = load i8, ptr %fast_recovery96.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load97.i)
  %tobool98.not.i = icmp sgt i8 %bf.load97.i, -1
  br i1 %tobool98.not.i, label %if.end132.i, label %if.then99.i

if.then99.i:                                      ; preds = %if.else.i31
  %recover102.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call.i, i32 0, i32 21
  %220 = ptrtoint ptr %recover102.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %recover102.i, align 8
  %sub104.i = sub i32 %178, %221
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %sub104.i)
  %cmp108.i = icmp ugt i32 %sub104.i, -2147483648
  br i1 %cmp108.i, label %if.then111.i, label %if.else123.i

if.then111.i:                                     ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #13
  %net_dev112.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call21.i19, i32 0, i32 4
  %222 = ptrtoint ptr %net_dev112.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %net_dev112.i, align 4
  %dev_addr113.i = getelementptr inbounds %struct.net_device, ptr %223, i32 0, i32 86
  %224 = ptrtoint ptr %dev_addr113.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %dev_addr113.i, align 64
  %uid116.i = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %1, i32 0, i32 6
  %226 = ptrtoint ptr %uid116.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %uid116.i, align 2
  %conv117.i = zext i8 %227 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %228 = load volatile i32, ptr @jiffies, align 128
  %call118.i = tail call i32 @jiffies_to_msecs(i32 noundef %228) #11
  %229 = tail call fastcc i32 @batadv_tp_send_msg(ptr noundef nonnull %call.i, ptr noundef %225, ptr noundef nonnull %call35.i, i32 noundef %178, ptr noundef %session.i15, i32 noundef %conv117.i, i32 noundef %call118.i) #11
  %cwnd120.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call.i, i32 0, i32 13
  %230 = ptrtoint ptr %cwnd120.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %cwnd120.i, align 4
  %232 = tail call i32 @llvm.uadd.sat.i32(i32 %231, i32 1476) #11
  %233 = tail call i32 @llvm.umin.i32(i32 %232, i32 536870912) #11
  %234 = ptrtoint ptr %cwnd120.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %233, ptr %cwnd120.i, align 4
  br label %move_twnd.i

if.else123.i:                                     ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear126.i = and i8 %bf.load97.i, 127
  %235 = ptrtoint ptr %fast_recovery96.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %bf.clear126.i, ptr %fast_recovery96.i, align 4
  %ss_threshold128.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call.i, i32 0, i32 15
  %236 = ptrtoint ptr %ss_threshold128.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %ss_threshold128.i, align 4
  %238 = tail call i32 @llvm.umin.i32(i32 %237, i32 536870912) #11
  %239 = tail call i32 @llvm.umax.i32(i32 %238, i32 1476) #11
  %cwnd130.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call.i, i32 0, i32 13
  %240 = ptrtoint ptr %cwnd130.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %239, ptr %cwnd130.i, align 4
  br label %move_twnd.i

if.end132.i:                                      ; preds = %if.else.i31
  %call.i.i236.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_acked.i, i32 noundef 4) #11
  %241 = ptrtoint ptr %last_acked.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load volatile i32, ptr %last_acked.i, align 4
  %sub135.i = sub i32 %178, %242
  call void @__sanitizer_cov_trace_const_cmp4(i32 1475, i32 %sub135.i)
  %cmp136.i = icmp ugt i32 %sub135.i, 1475
  br i1 %cmp136.i, label %if.then138.i, label %if.end132.i.move_twnd.i_crit_edge

if.end132.i.move_twnd.i_crit_edge:                ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %move_twnd.i

if.then138.i:                                     ; preds = %if.end132.i
  %cwnd_lock.i.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call.i, i32 0, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %cwnd_lock.i.i) #11
  %cwnd.i.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call.i, i32 0, i32 13
  %243 = ptrtoint ptr %cwnd.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %cwnd.i.i, align 4
  %ss_threshold.i.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call.i, i32 0, i32 15
  %245 = ptrtoint ptr %ss_threshold.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %ss_threshold.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %244, i32 %246)
  %cmp.not.i240.i = icmp ugt i32 %244, %246
  br i1 %cmp.not.i240.i, label %if.end.i242.i, label %if.then.i241.i

if.then.i241.i:                                   ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec_cwnd.i.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call.i, i32 0, i32 12
  %247 = ptrtoint ptr %dec_cwnd.i.i to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 0, ptr %dec_cwnd.i.i, align 8
  %248 = tail call i32 @llvm.uadd.sat.i32(i32 %244, i32 1476) #11
  %249 = tail call i32 @llvm.umin.i32(i32 %248, i32 536870912) #11
  %250 = ptrtoint ptr %cwnd.i.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %249, ptr %cwnd.i.i, align 4
  br label %batadv_tp_update_cwnd.exit.i

if.end.i242.i:                                    ; preds = %if.then138.i
  %shl5.i.i = shl i32 %244, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 17428608, i32 %shl5.i.i)
  %cmp6.i.i = icmp ugt i32 %shl5.i.i, 17428608
  br i1 %cmp6.i.i, label %if.end.i242.i.cond.end.i.i_crit_edge, label %cond.false.i.i

if.end.i242.i.cond.end.i.i_crit_edge:             ; preds = %if.end.i242.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.end.i242.i
  call void @__sanitizer_cov_trace_pc() #13
  %div.i.i = udiv i32 139428864, %shl5.i.i
  %phi.cast.i.i = trunc i32 %div.i.i to i16
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.end.i242.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i16 [ %phi.cast.i.i, %cond.false.i.i ], [ 8, %if.end.i242.i.cond.end.i.i_crit_edge ]
  %dec_cwnd7.i.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call.i, i32 0, i32 12
  %251 = ptrtoint ptr %dec_cwnd7.i.i to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %dec_cwnd7.i.i, align 8
  %conv8.i.i = add i16 %252, %cond.i.i
  store i16 %conv8.i.i, ptr %dec_cwnd7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 11808, i16 %conv8.i.i)
  %cmp12.i.i = icmp ult i16 %conv8.i.i, 11808
  br i1 %cmp12.i.i, label %cond.end.i.i.batadv_tp_update_cwnd.exit.i_crit_edge, label %if.end16.i.i

cond.end.i.i.batadv_tp_update_cwnd.exit.i_crit_edge: ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tp_update_cwnd.exit.i

if.end16.i.i:                                     ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %253 = tail call i32 @llvm.uadd.sat.i32(i32 %244, i32 1476) #11
  %254 = tail call i32 @llvm.umin.i32(i32 %253, i32 536870912) #11
  %255 = ptrtoint ptr %cwnd.i.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %254, ptr %cwnd.i.i, align 4
  %256 = ptrtoint ptr %dec_cwnd7.i.i to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 0, ptr %dec_cwnd7.i.i, align 8
  br label %batadv_tp_update_cwnd.exit.i

batadv_tp_update_cwnd.exit.i:                     ; preds = %if.end16.i.i, %cond.end.i.i.batadv_tp_update_cwnd.exit.i_crit_edge, %if.then.i241.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %cwnd_lock.i.i) #11
  br label %move_twnd.i

move_twnd.i:                                      ; preds = %batadv_tp_update_cwnd.exit.i, %if.end132.i.move_twnd.i_crit_edge, %if.else123.i, %if.then111.i
  %call.i.i237.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %last_acked.i, i32 noundef 4) #11
  %257 = ptrtoint ptr %last_acked.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store volatile i32 %178, ptr %last_acked.i, align 4
  br label %if.end141.i

if.end141.i:                                      ; preds = %move_twnd.i, %if.end85.i
  %more_bytes.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %call.i, i32 0, i32 25
  tail call void @__wake_up(ptr noundef %more_bytes.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %if.end.i243.i

if.end.i243.i:                                    ; preds = %if.end141.i, %if.end65.i.if.end.i243.i_crit_edge, %if.then59.i.if.end.i243.i_crit_edge, %if.end32.i.if.end.i243.i_crit_edge
  %refcount.i.i32 = getelementptr inbounds %struct.batadv_hard_iface, ptr %call21.i19, i32 0, i32 5
  %call.i.i.i.i.i.i.i.i33 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i32, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i32, i32 1, i32 3, i32 1) #11
  %258 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i32, ptr %refcount.i.i32, i32 1, ptr elementtype(i32) %refcount.i.i32) #11, !srcloc !110
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %258, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i244.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end.i243.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i34 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i34, label %if.end5.i.i.i.i.i.i.batadv_hardif_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !104

if.end5.i.i.i.i.i.i.batadv_hardif_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_hardif_put.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i32, i32 noundef 3) #11
  br label %batadv_hardif_put.exit.i

if.then.i.i244.i:                                 ; preds = %if.end.i243.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !111
  tail call void @batadv_hardif_release(ptr noundef %refcount.i.i32) #11, !callees !115
  br label %batadv_hardif_put.exit.i

batadv_hardif_put.exit.i:                         ; preds = %if.then.i.i244.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.batadv_hardif_put.exit.i_crit_edge
  br i1 %tobool36.not.i20, label %batadv_hardif_put.exit.i.batadv_orig_node_put.exit.i_crit_edge, label %if.end.i250.i

batadv_hardif_put.exit.i.batadv_orig_node_put.exit.i_crit_edge: ; preds = %batadv_hardif_put.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_orig_node_put.exit.i

if.end.i250.i:                                    ; preds = %batadv_hardif_put.exit.i
  %refcount.i246.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call35.i, i32 0, i32 27
  %call.i.i.i.i.i.i.i247.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i246.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  tail call void @llvm.prefetch.p0(ptr %refcount.i246.i, i32 1, i32 3, i32 1) #11
  %259 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i246.i, ptr %refcount.i246.i, i32 1, ptr elementtype(i32) %refcount.i246.i) #11, !srcloc !110
  %asmresult.i.i.i.i.i.i.i.i248.i = extractvalue { i32, i32, i32 } %259, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i248.i)
  %cmp.i.i.i.i.i249.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i248.i, 1
  br i1 %cmp.i.i.i.i.i249.i, label %if.then.i.i254.i, label %if.end5.i.i.i.i.i252.i

if.end5.i.i.i.i.i252.i:                           ; preds = %if.end.i250.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i248.i)
  %.not.i.i.i.i.i251.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i248.i, 0
  br i1 %.not.i.i.i.i.i251.i, label %if.end5.i.i.i.i.i252.i.batadv_orig_node_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i253.i, !prof !104

if.end5.i.i.i.i.i252.i.batadv_orig_node_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i252.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_orig_node_put.exit.i

if.then10.i.i.i.i.i253.i:                         ; preds = %if.end5.i.i.i.i.i252.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i246.i, i32 noundef 3) #11
  br label %batadv_orig_node_put.exit.i

if.then.i.i254.i:                                 ; preds = %if.end.i250.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !111
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i246.i) #11, !callees !115
  br label %batadv_orig_node_put.exit.i

batadv_orig_node_put.exit.i:                      ; preds = %if.then.i.i254.i, %if.then10.i.i.i.i.i253.i, %if.end5.i.i.i.i.i252.i.batadv_orig_node_put.exit.i_crit_edge, %batadv_hardif_put.exit.i.batadv_orig_node_put.exit.i_crit_edge, %if.end20.i.batadv_orig_node_put.exit.i_crit_edge, %if.end13.i.batadv_orig_node_put.exit.i_crit_edge, %if.end.i.batadv_orig_node_put.exit.i_crit_edge
  tail call fastcc void @batadv_tp_vars_put(ptr noundef nonnull %call.i) #11
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %260 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %261, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.sw.epilog_crit_edge, label %if.then

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %262 = ptrtoint ptr %subtype to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %subtype, align 1
  %conv3 = zext i8 %263 to i32
  %call4 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %bat_priv, ptr noundef nonnull @.str.19, i32 noundef %conv3) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %do.body.sw.epilog_crit_edge, %batadv_orig_node_put.exit.i, %sw.bb1.sw.epilog_crit_edge, %batadv_tp_recv_msg.exit
  tail call void @consume_skb(ptr noundef %skb) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_tp_meter_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @get_random_bytes(ptr noundef nonnull @batadv_tp_prerandom, i32 noundef 4096) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_netlink_tpmeter_notify(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batadv_tp_send(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bat_priv1 = getelementptr inbounds %struct.batadv_tp_vars, ptr %arg, i32 0, i32 2
  %0 = ptrtoint ptr %bat_priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bat_priv1, align 8
  %role = getelementptr inbounds %struct.batadv_tp_vars, ptr %arg, i32 0, i32 5
  %2 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %role, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %if.then, !prof !104

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %reason = getelementptr inbounds %struct.batadv_tp_vars, ptr %arg, i32 0, i32 7
  %4 = ptrtoint ptr %reason to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 128, ptr %reason, align 8
  br label %batadv_orig_node_put.exit

if.end:                                           ; preds = %entry
  %other_end = getelementptr inbounds %struct.batadv_tp_vars, ptr %arg, i32 0, i32 4
  %call = tail call ptr @batadv_orig_hash_find(ptr noundef %1, ptr noundef %other_end) #11
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.then12, label %if.end14, !prof !103

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %reason13 = getelementptr inbounds %struct.batadv_tp_vars, ptr %arg, i32 0, i32 7
  %5 = ptrtoint ptr %reason13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 128, ptr %reason13, align 8
  br label %batadv_orig_node_put.exit

if.end14:                                         ; preds = %if.end
  %call15 = tail call fastcc ptr @batadv_primary_if_get_selected(ptr noundef %1)
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %batadv_hardif_put.exit.thread154, label %if.end27, !prof !103

batadv_hardif_put.exit.thread154:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %reason26 = getelementptr inbounds %struct.batadv_tp_vars, ptr %arg, i32 0, i32 7
  %6 = ptrtoint ptr %reason26 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 128, ptr %reason26, align 8
  br label %if.end.i133

if.end27:                                         ; preds = %if.end14
  %sending.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %arg, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sending.i, i32 noundef 4) #11
  %7 = ptrtoint ptr %sending.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %sending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i119 = icmp eq i32 %8, 0
  br i1 %cmp.i119, label %if.end27.batadv_tp_reset_sender_timer.exit_crit_edge, label %if.end.i120, !prof !103

if.end27.batadv_tp_reset_sender_timer.exit_crit_edge: ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tp_reset_sender_timer.exit

if.end.i120:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %timer.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %arg, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %rto.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %arg, i32 0, i32 22
  %10 = ptrtoint ptr %rto.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rto.i, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %11) #11
  %add.i = add i32 %call2.i.i, %9
  %call3.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #11
  br label %batadv_tp_reset_sender_timer.exit

batadv_tp_reset_sender_timer.exit:                ; preds = %if.end.i120, %if.end27.batadv_tp_reset_sender_timer.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @batadv_event_workqueue to i32))
  %12 = load ptr, ptr @batadv_event_workqueue, align 4
  %finish_work = getelementptr inbounds %struct.batadv_tp_vars, ptr %arg, i32 0, i32 8
  %test_length = getelementptr inbounds %struct.batadv_tp_vars, ptr %arg, i32 0, i32 9
  %13 = ptrtoint ptr %test_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %test_length, align 8
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %14) #11
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %finish_work, i32 noundef %call2.i) #11
  %call.i.i158 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sending.i, i32 noundef 4) #11
  %15 = ptrtoint ptr %sending.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %sending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp31.not159 = icmp eq i32 %16, 0
  br i1 %cmp31.not159, label %batadv_tp_reset_sender_timer.exit.if.end.i126_crit_edge, label %while.body.lr.ph

batadv_tp_reset_sender_timer.exit.if.end.i126_crit_edge: ; preds = %batadv_tp_reset_sender_timer.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i126

while.body.lr.ph:                                 ; preds = %batadv_tp_reset_sender_timer.exit
  %last_acked.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %arg, i32 0, i32 16
  %cwnd.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %arg, i32 0, i32 13
  %last_sent.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %arg, i32 0, i32 17
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %call15, i32 0, i32 4
  %session = getelementptr inbounds %struct.batadv_tp_vars, ptr %arg, i32 0, i32 10
  %icmp_uid = getelementptr inbounds %struct.batadv_tp_vars, ptr %arg, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call.i.i.i122 = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_acked.i, i32 noundef 4) #11
  %17 = ptrtoint ptr %last_acked.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %last_acked.i, align 4
  %19 = ptrtoint ptr %cwnd.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cwnd.i, align 4
  %add.i123 = add i32 %20, %18
  %21 = ptrtoint ptr %last_sent.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %last_sent.i, align 4
  %sub.i = sub i32 %add.i123, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1475, i32 %sub.i)
  %cmp.i124 = icmp ugt i32 %sub.i, 1475
  br i1 %cmp.i124, label %if.end43, label %if.then41, !prof !104

if.then41:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @batadv_tp_wait_available(ptr noundef %arg)
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end75, %if.then41
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sending.i, i32 noundef 4) #11
  %23 = ptrtoint ptr %sending.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %sending.i, align 4
  %cmp31.not = icmp eq i32 %24, 0
  br i1 %cmp31.not, label %while.cond.backedge.if.end.i126_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.cond.backedge.if.end.i126_crit_edge:        ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i126

if.end43:                                         ; preds = %while.body
  %25 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net_dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 86
  %27 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_addr, align 64
  %29 = ptrtoint ptr %icmp_uid to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %icmp_uid, align 2
  %conv = zext i8 %30 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %call45 = tail call i32 @jiffies_to_msecs(i32 noundef %31) #11
  %call46 = tail call fastcc i32 @batadv_tp_send_msg(ptr noundef %arg, ptr noundef %28, ptr noundef nonnull %call, i32 noundef %22, ptr noundef %session, i32 noundef %conv, i32 noundef %call45)
  %32 = zext i32 %call46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %call46, label %do.body57 [
    i32 0, label %if.then72
    i32 132, label %if.end43.if.end75_crit_edge
  ]

if.end43.if.end75_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

do.body57:                                        ; preds = %if.end43
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 14
  %call.i.i117 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %33 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool59.not = icmp eq i32 %and, 0
  br i1 %tobool59.not, label %do.body57.if.end62_crit_edge, label %if.then60

do.body57.if.end62_crit_edge:                     ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.then60:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #13
  %call61 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.batadv_tp_send, i32 noundef %call46) #11
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %do.body57.if.end62_crit_edge
  %call.i.i118 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sending.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @llvm.prefetch.p0(ptr %sending.i, i32 1, i32 3, i32 1) #11
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sending.i, ptr %sending.i, i32 1, ptr elementtype(i32) %sending.i) #11, !srcloc !113
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %35, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then67, label %if.end62.if.end.i126_crit_edge

if.end62.if.end.i126_crit_edge:                   ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i126

if.then67:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  %reason68 = getelementptr inbounds %struct.batadv_tp_vars, ptr %arg, i32 0, i32 7
  %36 = ptrtoint ptr %reason68 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call46, ptr %reason68, align 8
  br label %if.end.i126

if.then72:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %last_sent.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %last_sent.i, align 4
  %add74 = add i32 %38, 1476
  store i32 %add74, ptr %last_sent.i, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %if.end43.if.end75_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str.20, i32 noundef 881, i32 noundef 0) #11
  %call.i125 = tail call i32 @__cond_resched() #11
  br label %while.cond.backedge

if.end.i126:                                      ; preds = %if.then67, %if.end62.if.end.i126_crit_edge, %while.cond.backedge.if.end.i126_crit_edge, %batadv_tp_reset_sender_timer.exit.if.end.i126_crit_edge
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %call15, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !110
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i127, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end.i133_crit_edge, label %if.then10.i.i.i.i.i, !prof !104

if.end5.i.i.i.i.i.if.end.i133_crit_edge:          ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i133

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %if.end.i133

if.then.i.i127:                                   ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !111
  tail call void @batadv_hardif_release(ptr noundef %refcount.i) #11, !callees !115
  br label %if.end.i133

if.end.i133:                                      ; preds = %if.then.i.i127, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end.i133_crit_edge, %batadv_hardif_put.exit.thread154
  %refcount.i129 = getelementptr inbounds %struct.batadv_orig_node, ptr %call, i32 0, i32 27
  %call.i.i.i.i.i.i.i130 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i129, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  tail call void @llvm.prefetch.p0(ptr %refcount.i129, i32 1, i32 3, i32 1) #11
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i129, ptr %refcount.i129, i32 1, ptr elementtype(i32) %refcount.i129) #11, !srcloc !110
  %asmresult.i.i.i.i.i.i.i.i131 = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i131)
  %cmp.i.i.i.i.i132 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i131, 1
  br i1 %cmp.i.i.i.i.i132, label %if.then.i.i137, label %if.end5.i.i.i.i.i135

if.end5.i.i.i.i.i135:                             ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i131)
  %.not.i.i.i.i.i134 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i131, 0
  br i1 %.not.i.i.i.i.i134, label %if.end5.i.i.i.i.i135.batadv_orig_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i136, !prof !104

if.end5.i.i.i.i.i135.batadv_orig_node_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i135
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_orig_node_put.exit

if.then10.i.i.i.i.i136:                           ; preds = %if.end5.i.i.i.i.i135
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i129, i32 noundef 3) #11
  br label %batadv_orig_node_put.exit

if.then.i.i137:                                   ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !111
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i129) #11, !callees !115
  br label %batadv_orig_node_put.exit

batadv_orig_node_put.exit:                        ; preds = %if.then.i.i137, %if.then10.i.i.i.i.i136, %if.end5.i.i.i.i.i135.batadv_orig_node_put.exit_crit_edge, %if.then12, %if.then
  %log_level.i = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 14
  %call.i.i.i138 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #11
  %41 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %log_level.i, align 4
  %and.i = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i139 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i139, label %batadv_orig_node_put.exit.if.end.i141_crit_edge, label %if.then.i140

batadv_orig_node_put.exit.if.end.i141_crit_edge:  ; preds = %batadv_orig_node_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i141

if.then.i140:                                     ; preds = %batadv_orig_node_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  %other_end.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %arg, i32 0, i32 4
  %reason.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %arg, i32 0, i32 7
  %43 = ptrtoint ptr %reason.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %reason.i, align 8
  %call1.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef %other_end.i, i32 noundef %44) #11
  br label %if.end.i141

if.end.i141:                                      ; preds = %if.then.i140, %batadv_orig_node_put.exit.if.end.i141_crit_edge
  %call.i.i49.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #11
  %45 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %log_level.i, align 4
  %and6.i = and i32 %46, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end.i141.if.end11.i_crit_edge, label %if.then8.i

if.end.i141.if.end11.i_crit_edge:                 ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #13
  %srtt.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %arg, i32 0, i32 23
  %47 = ptrtoint ptr %srtt.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %srtt.i, align 8
  %shr.i = lshr i32 %48, 3
  %rttvar.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %arg, i32 0, i32 24
  %49 = ptrtoint ptr %rttvar.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rttvar.i, align 4
  %shr9.i = lshr i32 %50, 2
  %rto.i142 = getelementptr inbounds %struct.batadv_tp_vars, ptr %arg, i32 0, i32 22
  %51 = ptrtoint ptr %rto.i142 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rto.i142, align 4
  %call10.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %1, ptr noundef nonnull @.str.33, i32 noundef %shr.i, i32 noundef %shr9.i, i32 noundef %52) #11
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.end.i141.if.end11.i_crit_edge
  %call.i.i50.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level.i, i32 noundef 4) #11
  %53 = ptrtoint ptr %log_level.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %log_level.i, align 4
  %and18.i = and i32 %54, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end11.i.if.end22.i_crit_edge, label %if.then20.i

if.end11.i.if.end22.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

if.then20.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  %cwnd.i143 = getelementptr inbounds %struct.batadv_tp_vars, ptr %arg, i32 0, i32 13
  %55 = ptrtoint ptr %cwnd.i143 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cwnd.i143, align 4
  %ss_threshold.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %arg, i32 0, i32 15
  %57 = ptrtoint ptr %ss_threshold.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ss_threshold.i, align 4
  %call21.i = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %1, ptr noundef nonnull @.str.34, i32 noundef %56, i32 noundef %58) #11
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then20.i, %if.end11.i.if.end22.i_crit_edge
  %session.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %arg, i32 0, i32 10
  %icmp_uid.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %arg, i32 0, i32 11
  %59 = ptrtoint ptr %icmp_uid.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %icmp_uid.i, align 2
  %61 = ptrtoint ptr %session.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %session.i, align 1
  %arrayidx3.i.i = getelementptr %struct.batadv_tp_vars, ptr %arg, i32 0, i32 10, i32 1
  %63 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx3.i.i, align 1
  %reason27.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %arg, i32 0, i32 7
  %65 = ptrtoint ptr %reason27.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %reason27.i, align 8
  %start_time.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %arg, i32 0, i32 3
  %67 = ptrtoint ptr %start_time.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %start_time.i, align 4
  %tot_sent.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %arg, i32 0, i32 18
  %call.i.i51.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tot_sent.i, i32 noundef 8) #11
  %call.i.i144 = tail call i64 @generic_atomic64_read(ptr noundef %tot_sent.i) #11
  %conv1.i52.i = and i32 %66, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i52.i)
  %cmp.not.i.i = icmp eq i32 %conv1.i52.i, 0
  br i1 %cmp.not.i.i, label %if.then.i.i146, label %if.else.i.i147

if.then.i.i146:                                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %69 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i145 = sub i32 %69, %68
  %call.i53.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub.i.i145) #11
  %conv3.i.i = trunc i64 %call.i.i144 to i32
  br label %batadv_tp_sender_end.exit

if.else.i.i147:                                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i54.i = trunc i32 %66 to i8
  br label %batadv_tp_sender_end.exit

batadv_tp_sender_end.exit:                        ; preds = %if.else.i.i147, %if.then.i.i146
  %test_time.0.i.i = phi i32 [ 0, %if.else.i.i147 ], [ %call.i53.i, %if.then.i.i146 ]
  %result.0.i.i = phi i8 [ %conv.i54.i, %if.else.i.i147 ], [ 3, %if.then.i.i146 ]
  %total_bytes.0.i.i = phi i32 [ 0, %if.else.i.i147 ], [ %conv3.i.i, %if.then.i.i146 ]
  %other_end28.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %arg, i32 0, i32 4
  %conv1.i.i = zext i8 %62 to i32
  %shl2.i.i = shl nuw nsw i32 %conv1.i.i, 8
  %conv.i.i = zext i8 %60 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 16
  %or.i.i = or i32 %shl2.i.i, %shl.i.i
  %conv4.i.i = zext i8 %64 to i32
  %or5.i.i = or i32 %or.i.i, %conv4.i.i
  %conv5.i.i = zext i32 %total_bytes.0.i.i to i64
  %call6.i.i = tail call i32 @batadv_netlink_tpmeter_notify(ptr noundef %1, ptr noundef %other_end28.i, i8 noundef zeroext %result.0.i.i, i32 noundef %test_time.0.i.i, i64 noundef %conv5.i.i, i32 noundef %or5.i.i) #11
  tail call fastcc void @batadv_tp_sender_cleanup(ptr noundef %arg)
  tail call fastcc void @batadv_tp_vars_put(ptr noundef %arg)
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_tp_sender_cleanup(ptr noundef %tp_vars) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %finish_work = getelementptr inbounds %struct.batadv_tp_vars, ptr %tp_vars, i32 0, i32 8
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %finish_work) #11
  %bat_priv1 = getelementptr inbounds %struct.batadv_tp_vars, ptr %tp_vars, i32 0, i32 2
  %0 = ptrtoint ptr %bat_priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bat_priv1, align 8
  %tp_list_lock = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 26
  tail call void @_raw_spin_lock_bh(ptr noundef %tp_list_lock) #11
  %2 = ptrtoint ptr %tp_vars to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tp_vars, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %tp_vars, i32 0, i32 1
  %4 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev2.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %3, ptr %5, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

entry.hlist_del_rcu.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %entry.hlist_del_rcu.exit_crit_edge
  %8 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %9 = ptrtoint ptr %bat_priv1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bat_priv1, align 8
  %tp_list_lock3 = getelementptr inbounds %struct.batadv_priv, ptr %10, i32 0, i32 26
  tail call void @_raw_spin_unlock_bh(ptr noundef %tp_list_lock3) #11
  tail call fastcc void @batadv_tp_vars_put(ptr noundef %tp_vars)
  %11 = ptrtoint ptr %bat_priv1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bat_priv1, align 8
  %tp_num = getelementptr inbounds %struct.batadv_priv, ptr %12, i32 0, i32 27
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tp_num, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %tp_num, i32 1, i32 3, i32 1) #11
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tp_num, ptr %tp_num, i32 1, ptr elementtype(i32) %tp_num) #11, !srcloc !117
  %timer = getelementptr inbounds %struct.batadv_tp_vars, ptr %tp_vars, i32 0, i32 1
  %call5 = tail call i32 @del_timer_sync(ptr noundef %timer) #11
  %call7 = tail call i32 @del_timer(ptr noundef %timer) #11
  tail call fastcc void @batadv_tp_vars_put(ptr noundef %tp_vars)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_primary_if_get_selected(ptr noundef %bat_priv) unnamed_addr #4 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !88) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !106
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %primary_if = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 29
  %4 = ptrtoint ptr %primary_if to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %primary_if, align 4
  %call = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b18 = load i1, ptr @batadv_primary_if_get_selected.__warned, align 1
  br i1 %.b18, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_primary_if_get_selected.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 110, ptr noundef nonnull @.str.31) #11
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end7.out_crit_edge, label %if.end11

do.end7.out_crit_edge:                            ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end11:                                         ; preds = %do.end7
  %refcount = getelementptr inbounds %struct.batadv_hard_iface, ptr %5, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #11
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #11
  %6 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end11
  %8 = phi i32 [ %7, %if.end11 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %9 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %8, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #11
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %11, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #11, !srcloc !107
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !104

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !104

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #11
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.i.not = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #11
  %spec.select = select i1 %tobool12.i.i.i.i.not, ptr null, ptr %5
  br label %out

out:                                              ; preds = %kref_get_unless_zero.exit, %do.end7.out_crit_edge
  %hard_iface.0 = phi ptr [ null, %do.end7.out_crit_edge ], [ %spec.select, %kref_get_unless_zero.exit ]
  %call.i19 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i19, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i22

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i22:                                ; preds = %out
  %call1.i20 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool.not.i21, label %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i24

land.lhs.true.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i24:                               ; preds = %land.lhs.true.i22
  %.b4.i23 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i23, label %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, label %if.then.i25

land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i25:                                      ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i25, %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !108
  %18 = call i32 @llvm.read_register.i32(metadata !88) #11
  %and.i.i.i.i.i26 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i26 to ptr
  %preempt_count.i.i.i.i27 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i27, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i27, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %hard_iface.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_tp_wait_available(ptr noundef %tp_vars) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 794) #11
  %last_acked.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %tp_vars, i32 0, i32 16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_acked.i, i32 noundef 4) #11
  %0 = ptrtoint ptr %last_acked.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %last_acked.i, align 4
  %cwnd.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %tp_vars, i32 0, i32 13
  %2 = ptrtoint ptr %cwnd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cwnd.i, align 4
  %add.i = add i32 %3, %1
  %last_sent.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %tp_vars, i32 0, i32 17
  %4 = ptrtoint ptr %last_sent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_sent.i, align 4
  %sub.i = sub i32 %add.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1475, i32 %sub.i)
  %cmp.i = icmp ugt i32 %sub.i, 1475
  br i1 %cmp.i, label %entry.if.end35_crit_edge, label %if.then8

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then8:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %more_bytes = getelementptr inbounds %struct.batadv_tp_vars, ptr %tp_vars, i32 0, i32 25
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then8
  %__ret9.0 = phi i32 [ 10, %if.then8 ], [ %call32, %cleanup ]
  %call10 = call i32 @prepare_to_wait_event(ptr noundef %more_bytes, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %call.i.i.i2 = call zeroext i1 @__kasan_check_read(ptr noundef %last_acked.i, i32 noundef 4) #11
  %7 = ptrtoint ptr %last_acked.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %last_acked.i, align 4
  %9 = ptrtoint ptr %cwnd.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cwnd.i, align 4
  %add.i4 = add i32 %10, %8
  %11 = ptrtoint ptr %last_sent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %last_sent.i, align 4
  %sub.i6 = sub i32 %add.i4, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1475, i32 %sub.i6)
  %cmp.i7 = icmp ugt i32 %sub.i6, 1475
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret9.0)
  %tobool16.not = icmp eq i32 %__ret9.0, 0
  %13 = select i1 %cmp.i7, i1 %tobool16.not, i1 false
  %__ret9.1 = select i1 %13, i32 1, i32 %__ret9.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret9.1)
  %tobool22.not = icmp eq i32 %__ret9.1, 0
  %14 = select i1 %cmp.i7, i1 true, i1 %tobool22.not
  br i1 %14, label %for.end, label %if.end28

if.end28:                                         ; preds = %for.cond
  %tobool29.not = icmp eq i32 %call10, 0
  br i1 %tobool29.not, label %cleanup, label %if.end28.__out_crit_edge

if.end28.__out_crit_edge:                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %__out

cleanup:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %call32 = call i32 @schedule_timeout(i32 noundef %__ret9.1) #11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  call void @finish_wait(ptr noundef %more_bytes, ptr noundef nonnull %__wq_entry) #11
  br label %__out

__out:                                            ; preds = %for.end, %if.end28.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end35

if.end35:                                         ; preds = %__out, %entry.if.end35_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @batadv_tp_send_msg(ptr noundef %tp_vars, ptr nocapture noundef readonly %src, ptr noundef %orig_node, i32 noundef %seqno, ptr nocapture noundef readonly %session, i32 noundef %uid, i32 noundef %timestamp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 1502, i32 noundef 2592) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  store ptr %add.ptr.i, ptr %data.i.i.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %3, i32 16
  store ptr %add.ptr1.i, ptr %tail.i.i.i, align 8
  %call4 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 28) #11
  %dst = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %call4, i32 0, i32 4
  %4 = ptrtoint ptr %orig_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %orig_node, align 4
  %6 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %dst, align 4
  %add.ptr.i1 = getelementptr i8, ptr %orig_node, i32 4
  %7 = ptrtoint ptr %add.ptr.i1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i1, align 2
  %add.ptr1.i2 = getelementptr %struct.batadv_icmp_tp_packet, ptr %call4, i32 0, i32 4, i32 4
  %9 = ptrtoint ptr %add.ptr1.i2 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %add.ptr1.i2, align 2
  %orig6 = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %call4, i32 0, i32 5
  %10 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %src, align 4
  %12 = ptrtoint ptr %orig6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %orig6, align 4
  %add.ptr.i3 = getelementptr i8, ptr %src, i32 4
  %13 = ptrtoint ptr %add.ptr.i3 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i3, align 2
  %add.ptr1.i4 = getelementptr %struct.batadv_icmp_tp_packet, ptr %call4, i32 0, i32 5, i32 4
  %15 = ptrtoint ptr %add.ptr1.i4 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %add.ptr1.i4, align 2
  %version = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %call4, i32 0, i32 1
  %16 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 15, ptr %version, align 1
  %17 = ptrtoint ptr %call4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 67, ptr %call4, align 2
  %ttl = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %call4, i32 0, i32 2
  %18 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 50, ptr %ttl, align 2
  %msg_type = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %call4, i32 0, i32 3
  %19 = ptrtoint ptr %msg_type to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 15, ptr %msg_type, align 1
  %conv = trunc i32 %uid to i8
  %uid8 = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %call4, i32 0, i32 6
  %20 = ptrtoint ptr %uid8 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %uid8, align 2
  %subtype = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %call4, i32 0, i32 7
  %21 = ptrtoint ptr %subtype to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %subtype, align 1
  %session9 = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %call4, i32 0, i32 8
  %22 = ptrtoint ptr %session to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %session, align 1
  %24 = ptrtoint ptr %session9 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %session9, align 2
  %seqno11 = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %call4, i32 0, i32 9
  %25 = ptrtoint ptr %seqno11 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %seqno, ptr %seqno11, align 2
  %timestamp12 = getelementptr inbounds %struct.batadv_icmp_tp_packet, ptr %call4, i32 0, i32 10
  %26 = ptrtoint ptr %timestamp12 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %timestamp, ptr %timestamp12, align 2
  %call13 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1458) #11
  %prerandom_lock.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %tp_vars, i32 0, i32 27
  tail call void @_raw_spin_lock_bh(ptr noundef %prerandom_lock.i) #11
  %prerandom_offset.i = getelementptr inbounds %struct.batadv_tp_vars, ptr %tp_vars, i32 0, i32 26
  %27 = ptrtoint ptr %prerandom_offset.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %prerandom_offset.i, align 4
  %add.i = add i32 %28, 1458
  %rem.i = and i32 %add.i, 4095
  store i32 %rem.i, ptr %prerandom_offset.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %prerandom_lock.i) #11
  %phi.bo.i = and i32 %28, 4095
  %sub.peel.i = sub nuw nsw i32 4096, %phi.bo.i
  %29 = tail call i32 @llvm.umin.i32(i32 %sub.peel.i, i32 1458) #11
  %arrayidx5.peel.i = getelementptr [4096 x i8], ptr @batadv_tp_prerandom, i32 0, i32 %phi.bo.i
  %30 = call ptr @memcpy(ptr %call13, ptr %arrayidx5.peel.i, i32 %29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2639, i32 %phi.bo.i)
  %tobool.not.peel.i = icmp ult i32 %phi.bo.i, 2639
  br i1 %tobool.not.peel.i, label %if.end.batadv_tp_fill_prerandom.exit_crit_edge, label %while.body.peel.next.i

if.end.batadv_tp_fill_prerandom.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tp_fill_prerandom.exit

while.body.peel.next.i:                           ; preds = %if.end
  %sub7.peel.i = sub nuw nsw i32 1458, %29
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.peel.next.i
  %nbytes.addr.03.i = phi i32 [ %sub7.peel.i, %while.body.peel.next.i ], [ %sub7.i, %while.body.i.while.body.i_crit_edge ]
  %pos.02.i = phi i32 [ %29, %while.body.peel.next.i ], [ %add6.i, %while.body.i.while.body.i_crit_edge ]
  %31 = tail call i32 @llvm.umin.i32(i32 %nbytes.addr.03.i, i32 4096) #11
  %arrayidx.i = getelementptr i8, ptr %call13, i32 %pos.02.i
  %32 = call ptr @memcpy(ptr %arrayidx.i, ptr @batadv_tp_prerandom, i32 %31)
  %add6.i = add i32 %31, %pos.02.i
  %sub7.i = sub i32 %nbytes.addr.03.i, %31
  %tobool.not.i = icmp eq i32 %sub7.i, 0
  br i1 %tobool.not.i, label %while.body.i.batadv_tp_fill_prerandom.exit_crit_edge, label %while.body.i.while.body.i_crit_edge, !llvm.loop !118

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.batadv_tp_fill_prerandom.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %batadv_tp_fill_prerandom.exit

batadv_tp_fill_prerandom.exit:                    ; preds = %while.body.i.batadv_tp_fill_prerandom.exit_crit_edge, %if.end.batadv_tp_fill_prerandom.exit_crit_edge
  %call14 = tail call i32 @batadv_send_skb_to_orig(ptr noundef nonnull %call.i.i, ptr noundef %orig_node, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp eq i32 %call14, 0
  %. = select i1 %cmp, i32 0, i32 132
  br label %cleanup

cleanup:                                          ; preds = %batadv_tp_fill_prerandom.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %batadv_tp_fill_prerandom.exit ], [ 131, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_send_skb_to_orig(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_hardif_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_orig_node_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_tp_list_find_session(ptr noundef %bat_priv, ptr nocapture noundef readonly %dst, ptr nocapture noundef readonly %session) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !88) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !106
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b51 = load i1, ptr @batadv_tp_list_find_session.__warned, align 1
  br i1 %.b51, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @batadv_tp_list_find_session.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 307, ptr noundef nonnull @.str.21) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %tp_list = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 22
  %4 = ptrtoint ptr %tp_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %pos.062 = load volatile ptr, ptr %tp_list, align 4
  %tobool12.not63 = icmp eq ptr %pos.062, null
  br i1 %tobool12.not63, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %add.ptr1.i.i.i = getelementptr i8, ptr %dst, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pos.064 = phi ptr [ %pos.062, %for.body.lr.ph ], [ %pos.0, %for.inc.for.body_crit_edge ]
  %other_end = getelementptr inbounds %struct.batadv_tp_vars, ptr %pos.064, i32 0, i32 4
  %5 = ptrtoint ptr %other_end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %other_end, align 4
  %7 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dst, align 4
  %xor.i.i.i = xor i32 %8, %6
  %add.ptr.i.i.i = getelementptr %struct.batadv_tp_vars, ptr %pos.064, i32 0, i32 4, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i.i, align 2
  %11 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %12, %10
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end15, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end15:                                         ; preds = %for.body
  %session16 = getelementptr inbounds %struct.batadv_tp_vars, ptr %pos.064, i32 0, i32 10
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(2) %session16, ptr noundef dereferenceable(2) %session, i32 2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp.not = icmp eq i32 %bcmp, 0
  br i1 %cmp.not, label %if.end20, label %if.end15.for.inc_crit_edge

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end20:                                         ; preds = %if.end15
  %refcount = getelementptr inbounds %struct.batadv_tp_vars, ptr %pos.064, i32 0, i32 32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #11
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #11
  %13 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end20
  %15 = phi i32 [ %14, %if.end20 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %15, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #11
  %17 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %19 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %18, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #11, !srcloc !107
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %18
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !104

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %20 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %21, 1
  %22 = or i32 %add5.i.i.i.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %.not.i.i.i.i = icmp sgt i32 %22, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !104

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #11
  %23 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %24 = phi i32 [ %21, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool12.i.i.i.i.not = icmp eq i32 %24, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #11
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.for.inc_crit_edge, label %kref_get_unless_zero.exit.for.end_crit_edge, !prof !103

kref_get_unless_zero.exit.for.end_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

kref_get_unless_zero.exit.for.inc_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %kref_get_unless_zero.exit.for.inc_crit_edge, %if.end15.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %25 = ptrtoint ptr %pos.064 to i32
  call void @__asan_load4_noabort(i32 %25)
  %pos.0 = load volatile ptr, ptr %pos.064, align 4
  %tobool12.not = icmp eq ptr %pos.0, null
  br i1 %tobool12.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %kref_get_unless_zero.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %pos.0.lcssa = phi ptr [ null, %do.end.for.end_crit_edge ], [ %pos.064, %kref_get_unless_zero.exit.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %call.i53 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i53, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i56

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i56:                                ; preds = %for.end
  %call1.i54 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i54)
  %tobool.not.i55 = icmp eq i32 %call1.i54, 0
  br i1 %tobool.not.i55, label %land.lhs.true.i56.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i58

land.lhs.true.i56.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i56
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i58:                               ; preds = %land.lhs.true.i56
  %.b4.i57 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i57, label %land.lhs.true2.i58.rcu_read_unlock.exit_crit_edge, label %if.then.i59

land.lhs.true2.i58.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i59:                                      ; preds = %land.lhs.true2.i58
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i59, %land.lhs.true2.i58.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i56.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !108
  %26 = call i32 @llvm.read_register.i32(metadata !88) #11
  %and.i.i.i.i.i60 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i60 to ptr
  %preempt_count.i.i.i.i61 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i61, align 4
  %sub.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i61, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %pos.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_tp_receiver_shutdown(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -8
  %bat_priv1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %bat_priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bat_priv1, align 8
  %last_recv_time = getelementptr i8, ptr %t, i32 436
  %2 = ptrtoint ptr %last_recv_time to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_recv_time, align 4
  %add.i = add i32 %3, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %add.i49 = add i32 %5, 100
  %call1.i = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add.i49) #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %log_level = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #11
  %6 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.if.end5_crit_edge, label %if.then3

do.body.if.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %other_end = getelementptr i8, ptr %t, i32 56
  %call4 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %1, ptr noundef nonnull @.str.40, i32 noundef 1000, ptr noundef %other_end) #11
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %do.body.if.end5_crit_edge
  %8 = ptrtoint ptr %bat_priv1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bat_priv1, align 8
  %tp_list_lock = getelementptr inbounds %struct.batadv_priv, ptr %9, i32 0, i32 26
  tail call void @_raw_spin_lock_bh(ptr noundef %tp_list_lock) #11
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %pprev2.i.i = getelementptr i8, ptr %t, i32 -4
  %12 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pprev2.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %11, ptr %13, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end5.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

if.end5.hlist_del_rcu.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %if.end5.hlist_del_rcu.exit_crit_edge
  %16 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %17 = ptrtoint ptr %bat_priv1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bat_priv1, align 8
  %tp_list_lock8 = getelementptr inbounds %struct.batadv_priv, ptr %18, i32 0, i32 26
  tail call void @_raw_spin_unlock_bh(ptr noundef %tp_list_lock8) #11
  tail call fastcc void @batadv_tp_vars_put(ptr noundef %add.ptr)
  %tp_num = getelementptr inbounds %struct.batadv_priv, ptr %1, i32 0, i32 27
  %call.i.i48 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tp_num, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %tp_num, i32 1, i32 3, i32 1) #11
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tp_num, ptr %tp_num, i32 1, ptr elementtype(i32) %tp_num) #11, !srcloc !117
  %unacked_lock = getelementptr i8, ptr %t, i32 392
  tail call void @_raw_spin_lock_bh(ptr noundef %unacked_lock) #11
  %unacked_list = getelementptr i8, ptr %t, i32 384
  %20 = ptrtoint ptr %unacked_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %unacked_list, align 8
  %cmp.not51 = icmp eq ptr %21, %unacked_list
  br i1 %cmp.not51, label %hlist_del_rcu.exit.for.end_crit_edge, label %hlist_del_rcu.exit.for.body_crit_edge

hlist_del_rcu.exit.for.body_crit_edge:            ; preds = %hlist_del_rcu.exit
  br label %for.body

hlist_del_rcu.exit.for.end_crit_edge:             ; preds = %hlist_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %hlist_del_rcu.exit.for.body_crit_edge
  %.pn.in52 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %21, %hlist_del_rcu.exit.for.body_crit_edge ]
  %un.0 = getelementptr i8, ptr %.pn.in52, i32 -8
  %22 = ptrtoint ptr %.pn.in52 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn.in52, align 4
  %call.i.i50 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in52) #11
  br i1 %call.i.i50, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in52, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %.pn.in52 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %.pn.in52, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %29 = ptrtoint ptr %.pn.in52 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in52, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in52, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %un.0) #11
  %cmp.not = icmp eq ptr %.pn, %unacked_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %hlist_del_rcu.exit.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %unacked_lock) #11
  tail call fastcc void @batadv_tp_vars_put(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !26, !27, !28, !29, !31, !33, !35, !37, !39, !40, !41, !43, !44, !45, !47, !48, !50, !52, !54, !55, !56, !57, !59, !60, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86}
!llvm.named.register.sp = !{!88}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/batman-adv/tp_meter.c", i32 954, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/batman-adv/tp_meter.c", i32 963, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/batman-adv/tp_meter.c", i32 973, i32 3}
!6 = !{ptr @__func__.batadv_tp_start, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @batadv_tp_start.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../net/batman-adv/tp_meter.c", i32 1014, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @batadv_tp_start.__key.4, !11, !"__key", i1 false, i1 false}
!11 = !{!"../net/batman-adv/tp_meter.c", i32 1019, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @batadv_tp_start.__key.6, !14, !"__key", i1 false, i1 false}
!14 = !{!"../net/batman-adv/tp_meter.c", i32 1021, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @batadv_tp_start.__key.8, !17, !"__key", i1 false, i1 false}
!17 = !{!"../net/batman-adv/tp_meter.c", i32 1024, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @batadv_tp_start.__key.10, !20, !"__key", i1 false, i1 false}
!20 = !{!"../net/batman-adv/tp_meter.c", i32 1027, i32 2}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/batman-adv/tp_meter.c", i32 1037, i32 2}
!24 = !{ptr @batadv_tp_start.__key.13, !25, !"__key", i1 false, i1 false}
!25 = !{!"../net/batman-adv/tp_meter.c", i32 1042, i32 2}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @batadv_tp_start.__key.15, !25, !"__key", i1 false, i1 false}
!28 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/batman-adv/tp_meter.c", i32 1065, i32 2}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/batman-adv/tp_meter.c", i32 1074, i32 3}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/batman-adv/tp_meter.c", i32 1477, i32 3}
!35 = !{ptr @batadv_tp_prerandom, !36, !"batadv_tp_prerandom", i1 false, i1 false}
!36 = !{!"../net/batman-adv/tp_meter.c", i32 88, i32 11}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../net/batman-adv/tp_meter.c", i32 268, i32 2}
!39 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!43 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!47 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/batman-adv/tp_meter.c", i32 512, i32 2}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/batman-adv/tp_meter.c", i32 908, i32 12}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/batman-adv/tp_meter.c", i32 912, i32 3}
!54 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @batadv_tp_start_kthread._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @batadv_tp_start_kthread._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/batman-adv/tp_meter.c", i32 868, i32 4}
!59 = !{ptr @__func__.batadv_tp_send, !58, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../net/batman-adv/hard-interface.h", i32 110, i32 15}
!62 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/batman-adv/tp_meter.c", i32 407, i32 2}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/batman-adv/tp_meter.c", i32 411, i32 2}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/batman-adv/tp_meter.c", i32 415, i32 2}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/batman-adv/tp_meter.c", i32 1398, i32 4}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/batman-adv/tp_meter.c", i32 1406, i32 4}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/batman-adv/tp_meter.c", i32 1414, i32 3}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/batman-adv/tp_meter.c", i32 1341, i32 3}
!78 = !{ptr @batadv_tp_init_recv.__key, !79, !"__key", i1 false, i1 false}
!79 = !{!"../net/batman-adv/tp_meter.c", i32 1357, i32 2}
!80 = !{ptr @batadv_tp_init_recv.__key.39, !81, !"__key", i1 false, i1 false}
!81 = !{!"../net/batman-adv/tp_meter.c", i32 1364, i32 2}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/batman-adv/tp_meter.c", i32 1118, i32 2}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../net/batman-adv/tp_meter.c", i32 307, i32 2}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/batman-adv/tp_meter.c", i32 700, i32 3}
!88 = !{!"sp"}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{!"auto-init"}
!99 = !{i64 2148172075}
!100 = !{i64 547996, i64 548021, i64 548043, i64 548059, i64 548071, i64 548091, i64 548115, i64 548131, i64 548143}
!101 = !{i64 2148172263}
!102 = !{i64 2148174186, i64 2148174218, i64 2148174247, i64 2148174281, i64 2148174312, i64 2148174335}
!103 = !{!"branch_weights", i32 1, i32 2000}
!104 = !{!"branch_weights", i32 2000, i32 1}
!105 = !{i64 2149820262}
!106 = !{i64 2149718651}
!107 = !{i64 547490, i64 547514, i64 547535, i64 547552, i64 547569}
!108 = !{i64 2149718917}
!109 = !{i64 2148262187}
!110 = !{i64 2148176651, i64 2148176683, i64 2148176712, i64 2148176746, i64 2148176777, i64 2148176800}
!111 = !{i64 2150593198}
!112 = !{i64 2148261108}
!113 = !{i64 2148175841, i64 2148175873, i64 2148175902, i64 2148175936, i64 2148175967, i64 2148175990}
!114 = !{i64 2148261337}
!115 = distinct !{ptr @batadv_hardif_release, ptr @batadv_orig_node_release, null}
!116 = !{i64 2148172656, i64 2148172682, i64 2148172711, i64 2148172745, i64 2148172776, i64 2148172799}
!117 = !{i64 2148175121, i64 2148175147, i64 2148175176, i64 2148175210, i64 2148175241, i64 2148175264}
!118 = distinct !{!118, !119}
!119 = !{!"llvm.loop.peeled.count", i32 1}
