; ModuleID = '/llk/IR_all_yes/net/llc/llc_conn.c_pt.bc'
source_filename = "../net/llc/llc_conn.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.llc_conn_state = type { i8, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.llc_addr = type { i8, [6 x i8] }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.llc_sock = type { %struct.sock, %struct.sockaddr_llc, i8, ptr, %struct.llc_addr, %struct.llc_addr, ptr, ptr, i32, i8, i8, i8, i8, %struct.llc_timer, %struct.llc_timer, %struct.llc_timer, %struct.llc_timer, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, %struct.sk_buff_head, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, %struct.hlist_node }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.119, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.120, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.121, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.115, [0 x i32], %union.anon.116, i16, i16, %union.anon.117, %struct.refcount_struct, [0 x i32], %union.anon.118 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { %struct.hlist_node }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.119 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.120 = type { ptr }
%union.anon.121 = type { ptr }
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
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr_llc = type { i16, i16, i8, i8, i8, i8, [6 x i8], [2 x i8] }
%struct.llc_timer = type { %struct.timer_list, i32 }
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
%struct.llc_conn_state_trans = type { ptr, i8, ptr, ptr }
%struct.llc_pdu_sn = type { i8, i8, i8, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.125, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.125 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.139 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.llc_sap = type { i8, i8, i8, %struct.refcount_struct, ptr, %struct.llc_addr, %struct.list_head, %struct.spinlock, i32, [64 x %struct.hlist_nulls_head], [64 x %struct.hlist_head], %struct.callback_head }
%struct.hlist_nulls_head = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.llc_pdu_un = type { i8, i8, i8 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.114, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.114 = type { ptr }

@sysctl_llc2_ack_timeout = dso_local global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@sysctl_llc2_p_timeout = dso_local global { i32, [28 x i8] } { i32 200, [28 x i8] zeroinitializer }, align 32
@sysctl_llc2_rej_timeout = dso_local global { i32, [28 x i8] } { i32 300, [28 x i8] zeroinitializer }, align 32
@sysctl_llc2_busy_timeout = dso_local global { i32, [28 x i8] } { i32 300, [28 x i8] zeroinitializer }, align 32
@llc_conn_state_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: llc_conn_service failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"llc_conn_state_process\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/llc/llc_conn.c\00", [45 x i8] zeroinitializer }, align 32
@llc_conn_state_process._entry_ptr = internal global ptr @llc_conn_state_process._entry, section ".printk_index", align 4
@llc_conn_state_process._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: sock_queue_rcv_skb failed!\0A\00", [62 x i8] zeroinitializer }, align 32
@llc_conn_state_process._entry_ptr.5 = internal global ptr @llc_conn_state_process._entry.3, section ".printk_index", align 4
@llc_conn_state_process._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: received a reset ind!\0A\00", [35 x i8] zeroinitializer }, align 32
@llc_conn_state_process._entry_ptr.8 = internal global ptr @llc_conn_state_process._entry.6, section ".printk_index", align 4
@llc_conn_state_process._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: received unknown %d prim!\0A\00", [63 x i8] zeroinitializer }, align 32
@llc_conn_state_process._entry_ptr.11 = internal global ptr @llc_conn_state_process._entry.9, section ".printk_index", align 4
@llc_conn_state_process._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: received a reset conf!\0A\00", [34 x i8] zeroinitializer }, align 32
@llc_conn_state_process._entry_ptr.14 = internal global ptr @llc_conn_state_process._entry.12, section ".printk_index", align 4
@llc_conn_state_process._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@llc_conn_state_process._entry_ptr.16 = internal global ptr @llc_conn_state_process._entry.15, section ".printk_index", align 4
@llc_conn_state_table = external dso_local local_unnamed_addr global [0 x %struct.llc_conn_state], align 4
@llc_offset_table = internal global { [12 x [5 x i32]], [48 x i8] } zeroinitializer, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@llc_lookup_listener.null_addr = internal global { %struct.llc_addr, [25 x i8] } zeroinitializer, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@sock_owned_by_me.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@llc_sk_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(&llc->ack_timer.timer)\00", [40 x i8] zeroinitializer }, align 32
@llc_sk_init.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(&llc->pf_cycle_timer.timer)\00", [35 x i8] zeroinitializer }, align 32
@llc_sk_init.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(&llc->rej_sent_timer.timer)\00", [35 x i8] zeroinitializer }, align 32
@llc_sk_init.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(&llc->busy_state_timer.timer)\00", [33 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@llc_backlog_rcv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: invalid skb in backlog\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"llc_backlog_rcv\00", [16 x i8] zeroinitializer }, align 32
@llc_backlog_rcv._entry_ptr = internal global ptr @llc_backlog_rcv._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.35 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.37 = private unnamed_addr constant [24 x i8] c"sysctl_llc2_ack_timeout\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 44, i32 5 }
@___asan_gen_.40 = private unnamed_addr constant [22 x i8] c"sysctl_llc2_p_timeout\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 45, i32 5 }
@___asan_gen_.43 = private unnamed_addr constant [24 x i8] c"sysctl_llc2_rej_timeout\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 46, i32 5 }
@___asan_gen_.46 = private unnamed_addr constant [25 x i8] c"sysctl_llc2_busy_timeout\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 47, i32 5 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 73, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 85, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 119, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 123, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 163, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 167, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"llc_offset_table\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 42, i32 12 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 695, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 723, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 751, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [10 x i8] c"null_addr\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 586, i32 25 }
@___asan_gen_.107 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 316, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1011, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 887, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 890, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 893, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 896, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1984, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private constant [22 x i8] c"../net/llc/llc_conn.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 863, i32 3 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @llc_backlog_rcv._entry, ptr @llc_backlog_rcv._entry_ptr, ptr @llc_conn_state_process._entry, ptr @llc_conn_state_process._entry.12, ptr @llc_conn_state_process._entry.15, ptr @llc_conn_state_process._entry.3, ptr @llc_conn_state_process._entry.6, ptr @llc_conn_state_process._entry.9, ptr @llc_conn_state_process._entry_ptr, ptr @llc_conn_state_process._entry_ptr.11, ptr @llc_conn_state_process._entry_ptr.14, ptr @llc_conn_state_process._entry_ptr.16, ptr @llc_conn_state_process._entry_ptr.5, ptr @llc_conn_state_process._entry_ptr.8, ptr @sysctl_llc2_ack_timeout, ptr @sysctl_llc2_p_timeout, ptr @sysctl_llc2_rej_timeout, ptr @sysctl_llc2_busy_timeout, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @llc_offset_table, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @llc_lookup_listener.null_addr, ptr @.str.21, ptr @.str.22, ptr @llc_sk_init.__key, ptr @.str.23, ptr @llc_sk_init.__key.24, ptr @.str.25, ptr @llc_sk_init.__key.26, ptr @.str.27, ptr @llc_sk_init.__key.28, ptr @.str.29, ptr @skb_queue_head_init.__key, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_llc2_ack_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_llc2_p_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_llc2_rej_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_llc2_busy_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_conn_state_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_conn_state_process._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_conn_state_process._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_conn_state_process._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_conn_state_process._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_conn_state_process._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_offset_table to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_lookup_listener.null_addr to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_sk_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_sk_init.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_sk_init.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_sk_init.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_backlog_rcv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_state_process(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %cfm_prim = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 6
  %3 = ptrtoint ptr %cfm_prim to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %cfm_prim, align 1
  %ind_prim = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 5
  %4 = ptrtoint ptr %ind_prim to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %ind_prim, align 1
  %state.i = getelementptr inbounds %struct.llc_sock, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %6)
  %cmp.i = icmp ugt i8 %6, 12
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i:                                         ; preds = %entry
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %conv.i.i = zext i8 %6 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %transitions.i.i = getelementptr [0 x %struct.llc_conn_state], ptr @llc_conn_state_table, i32 0, i32 %sub.i.i, i32 1
  %7 = ptrtoint ptr %transitions.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %transitions.i.i, align 4
  %9 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cb.i, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i8 %10, label %if.end.i.llc_find_offset.exit.i.i_crit_edge [
    i8 3, label %sw.bb.i.i.i
    i8 4, label %sw.bb2.i.i.i
    i8 1, label %sw.bb5.i.i.i
    i8 6, label %if.end.i.sw.bb8.i.i.i_crit_edge
    i8 5, label %if.end.i.sw.bb8.i.i.i_crit_edge273
    i8 7, label %if.end.i.sw.bb8.i.i.i_crit_edge274
    i8 8, label %if.end.i.sw.bb8.i.i.i_crit_edge275
  ]

if.end.i.sw.bb8.i.i.i_crit_edge275:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb8.i.i.i

if.end.i.sw.bb8.i.i.i_crit_edge274:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb8.i.i.i

if.end.i.sw.bb8.i.i.i_crit_edge273:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb8.i.i.i

if.end.i.sw.bb8.i.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb8.i.i.i

if.end.i.llc_find_offset.exit.i.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %llc_find_offset.exit.i.i

sw.bb.i.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i.i = getelementptr [12 x [5 x i32]], ptr @llc_offset_table, i32 0, i32 %sub.i.i
  br label %sw.epilog.sink.split.i.i.i

sw.bb2.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx4.i.i.i = getelementptr [12 x [5 x i32]], ptr @llc_offset_table, i32 0, i32 %sub.i.i, i32 4
  br label %sw.epilog.sink.split.i.i.i

sw.bb5.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx7.i.i.i = getelementptr [12 x [5 x i32]], ptr @llc_offset_table, i32 0, i32 %sub.i.i, i32 1
  br label %sw.epilog.sink.split.i.i.i

sw.bb8.i.i.i:                                     ; preds = %if.end.i.sw.bb8.i.i.i_crit_edge, %if.end.i.sw.bb8.i.i.i_crit_edge273, %if.end.i.sw.bb8.i.i.i_crit_edge274, %if.end.i.sw.bb8.i.i.i_crit_edge275
  %arrayidx10.i.i.i = getelementptr [12 x [5 x i32]], ptr @llc_offset_table, i32 0, i32 %sub.i.i, i32 3
  br label %sw.epilog.sink.split.i.i.i

sw.epilog.sink.split.i.i.i:                       ; preds = %sw.bb8.i.i.i, %sw.bb5.i.i.i, %sw.bb2.i.i.i, %sw.bb.i.i.i
  %arrayidx10.sink.i.i.i = phi ptr [ %arrayidx10.i.i.i, %sw.bb8.i.i.i ], [ %arrayidx7.i.i.i, %sw.bb5.i.i.i ], [ %arrayidx4.i.i.i, %sw.bb2.i.i.i ], [ %arrayidx.i.i.i, %sw.bb.i.i.i ]
  %12 = ptrtoint ptr %arrayidx10.sink.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx10.sink.i.i.i, align 4
  br label %llc_find_offset.exit.i.i

llc_find_offset.exit.i.i:                         ; preds = %sw.epilog.sink.split.i.i.i, %if.end.i.llc_find_offset.exit.i.i_crit_edge
  %rc.0.i.i.i = phi i32 [ 0, %if.end.i.llc_find_offset.exit.i.i_crit_edge ], [ %13, %sw.epilog.sink.split.i.i.i ]
  %add.ptr.i.i = getelementptr ptr, ptr %8, i32 %rc.0.i.i.i
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool.not55.i.i = icmp eq ptr %17, null
  br i1 %tobool.not55.i.i, label %llc_find_offset.exit.i.i.if.end_crit_edge, label %llc_find_offset.exit.i.i.for.body.i.i_crit_edge

llc_find_offset.exit.i.i.for.body.i.i_crit_edge:  ; preds = %llc_find_offset.exit.i.i
  br label %for.body.i.i

llc_find_offset.exit.i.i.if.end_crit_edge:        ; preds = %llc_find_offset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i.i:                                     ; preds = %for.inc21.i.i.for.body.i.i_crit_edge, %llc_find_offset.exit.i.i.for.body.i.i_crit_edge
  %18 = phi ptr [ %29, %for.inc21.i.i.for.body.i.i_crit_edge ], [ %17, %llc_find_offset.exit.i.i.for.body.i.i_crit_edge ]
  %next_trans.056.i.i = phi ptr [ %incdec.ptr22.i.i, %for.inc21.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %llc_find_offset.exit.i.i.for.body.i.i_crit_edge ]
  %call9.i.i = tail call i32 %18(ptr noundef %2, ptr noundef %skb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.then.i.i, label %for.body.i.i.for.inc21.i.i_crit_edge

for.body.i.i.for.inc21.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc21.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %19 = ptrtoint ptr %next_trans.056.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %next_trans.056.i.i, align 4
  %ev_qualifiers.i.i = getelementptr inbounds %struct.llc_conn_state_trans, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %ev_qualifiers.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ev_qualifiers.i.i, align 4
  %tobool12.not51.i.i = icmp eq ptr %22, null
  br i1 %tobool12.not51.i.i, label %if.then.i.i.llc_qualify_conn_ev.exit.i_crit_edge, label %if.then.i.i.land.lhs.true.i.i_crit_edge

if.then.i.i.land.lhs.true.i.i_crit_edge:          ; preds = %if.then.i.i
  br label %land.lhs.true.i.i

if.then.i.i.llc_qualify_conn_ev.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %llc_qualify_conn_ev.exit.i

land.lhs.true.i.i:                                ; preds = %for.inc.i.i.land.lhs.true.i.i_crit_edge, %if.then.i.i.land.lhs.true.i.i_crit_edge
  %next_qualifier.052.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.land.lhs.true.i.i_crit_edge ], [ %22, %if.then.i.i.land.lhs.true.i.i_crit_edge ]
  %23 = ptrtoint ptr %next_qualifier.052.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %next_qualifier.052.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %24, null
  br i1 %tobool13.not.i.i, label %land.lhs.true.i.i.llc_qualify_conn_ev.exitthread-pre-split.i_crit_edge, label %land.rhs.i.i

land.lhs.true.i.i.llc_qualify_conn_ev.exitthread-pre-split.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %llc_qualify_conn_ev.exitthread-pre-split.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call14.i.i = tail call i32 %24(ptr noundef %2, ptr noundef %skb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %for.inc.i.i, label %lor.lhs.false.i.i

for.inc.i.i:                                      ; preds = %land.rhs.i.i
  %incdec.ptr.i.i = getelementptr ptr, ptr %next_qualifier.052.i.i, i32 1
  %tobool12.not.i.i = icmp eq ptr %incdec.ptr.i.i, null
  br i1 %tobool12.not.i.i, label %for.inc.i.i.llc_qualify_conn_ev.exitthread-pre-split.i_crit_edge, label %for.inc.i.i.land.lhs.true.i.i_crit_edge

for.inc.i.i.land.lhs.true.i.i_crit_edge:          ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i.i

for.inc.i.i.llc_qualify_conn_ev.exitthread-pre-split.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %llc_qualify_conn_ev.exitthread-pre-split.i

lor.lhs.false.i.i:                                ; preds = %land.rhs.i.i
  %25 = ptrtoint ptr %next_qualifier.052.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr.i.i = load ptr, ptr %next_qualifier.052.i.i, align 4
  %tobool18.not.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %tobool18.not.i.i, label %lor.lhs.false.i.i.llc_qualify_conn_ev.exitthread-pre-split.i_crit_edge, label %lor.lhs.false.i.i.for.inc21.i.i_crit_edge

lor.lhs.false.i.i.for.inc21.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc21.i.i

lor.lhs.false.i.i.llc_qualify_conn_ev.exitthread-pre-split.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %llc_qualify_conn_ev.exitthread-pre-split.i

for.inc21.i.i:                                    ; preds = %lor.lhs.false.i.i.for.inc21.i.i_crit_edge, %for.body.i.i.for.inc21.i.i_crit_edge
  %incdec.ptr22.i.i = getelementptr ptr, ptr %next_trans.056.i.i, i32 1
  %26 = ptrtoint ptr %incdec.ptr22.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %incdec.ptr22.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %for.inc21.i.i.if.end_crit_edge, label %for.inc21.i.i.for.body.i.i_crit_edge

for.inc21.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc21.i.i.if.end_crit_edge:                   ; preds = %for.inc21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

llc_qualify_conn_ev.exitthread-pre-split.i:       ; preds = %lor.lhs.false.i.i.llc_qualify_conn_ev.exitthread-pre-split.i_crit_edge, %for.inc.i.i.llc_qualify_conn_ev.exitthread-pre-split.i_crit_edge, %land.lhs.true.i.i.llc_qualify_conn_ev.exitthread-pre-split.i_crit_edge
  %30 = ptrtoint ptr %next_trans.056.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr.i = load ptr, ptr %next_trans.056.i.i, align 4
  br label %llc_qualify_conn_ev.exit.i

llc_qualify_conn_ev.exit.i:                       ; preds = %llc_qualify_conn_ev.exitthread-pre-split.i, %if.then.i.i.llc_qualify_conn_ev.exit.i_crit_edge
  %31 = phi ptr [ %.pr.i, %llc_qualify_conn_ev.exitthread-pre-split.i ], [ %20, %if.then.i.i.llc_qualify_conn_ev.exit.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %llc_qualify_conn_ev.exit.i.if.end_crit_edge, label %if.then3.i

llc_qualify_conn_ev.exit.i.if.end_crit_edge:      ; preds = %llc_qualify_conn_ev.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then3.i:                                       ; preds = %llc_qualify_conn_ev.exit.i
  %ev_actions.i.i = getelementptr inbounds %struct.llc_conn_state_trans, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %ev_actions.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ev_actions.i.i, align 4
  %tobool.not16.i.i = icmp eq ptr %33, null
  br i1 %tobool.not16.i.i, label %if.then3.i.land.lhs.true.i_crit_edge, label %if.then3.i.land.rhs.i30.i_crit_edge

if.then3.i.land.rhs.i30.i_crit_edge:              ; preds = %if.then3.i
  br label %land.rhs.i30.i

if.then3.i.land.lhs.true.i_crit_edge:             ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

land.rhs.i30.i:                                   ; preds = %for.inc.i34.i.land.rhs.i30.i_crit_edge, %if.then3.i.land.rhs.i30.i_crit_edge
  %next_action.018.i.i = phi ptr [ %incdec.ptr.i32.i, %for.inc.i34.i.land.rhs.i30.i_crit_edge ], [ %33, %if.then3.i.land.rhs.i30.i_crit_edge ]
  %rc.017.i.i = phi i32 [ %rc.1.i.i, %for.inc.i34.i.land.rhs.i30.i_crit_edge ], [ 0, %if.then3.i.land.rhs.i30.i_crit_edge ]
  %34 = ptrtoint ptr %next_action.018.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %next_action.018.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %35, null
  br i1 %tobool1.not.i.i, label %land.rhs.i30.i.llc_exec_conn_trans_actions.exit.i_crit_edge, label %for.body.i31.i

land.rhs.i30.i.llc_exec_conn_trans_actions.exit.i_crit_edge: ; preds = %land.rhs.i30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %llc_exec_conn_trans_actions.exit.i

for.body.i31.i:                                   ; preds = %land.rhs.i30.i
  %call.i.i = tail call i32 %35(ptr noundef %2, ptr noundef %skb) #11
  %36 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %call.i.i, label %if.then3.i.i [
    i32 2, label %for.body.i31.i.do.end_crit_edge
    i32 0, label %for.body.i31.i.for.inc.i34.i_crit_edge
  ]

for.body.i31.i.for.inc.i34.i_crit_edge:           ; preds = %for.body.i31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i34.i

for.body.i31.i.do.end_crit_edge:                  ; preds = %for.body.i31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then3.i.i:                                     ; preds = %for.body.i31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i34.i

for.inc.i34.i:                                    ; preds = %if.then3.i.i, %for.body.i31.i.for.inc.i34.i_crit_edge
  %rc.1.i.i = phi i32 [ 1, %if.then3.i.i ], [ %rc.017.i.i, %for.body.i31.i.for.inc.i34.i_crit_edge ]
  %incdec.ptr.i32.i = getelementptr ptr, ptr %next_action.018.i.i, i32 1
  %tobool.not.i33.i = icmp eq ptr %incdec.ptr.i32.i, null
  br i1 %tobool.not.i33.i, label %for.inc.i34.i.llc_exec_conn_trans_actions.exit.i_crit_edge, label %for.inc.i34.i.land.rhs.i30.i_crit_edge

for.inc.i34.i.land.rhs.i30.i_crit_edge:           ; preds = %for.inc.i34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i30.i

for.inc.i34.i.llc_exec_conn_trans_actions.exit.i_crit_edge: ; preds = %for.inc.i34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %llc_exec_conn_trans_actions.exit.i

llc_exec_conn_trans_actions.exit.i:               ; preds = %for.inc.i34.i.llc_exec_conn_trans_actions.exit.i_crit_edge, %land.rhs.i30.i.llc_exec_conn_trans_actions.exit.i_crit_edge
  %rc.3.i.i = phi i32 [ %rc.1.i.i, %for.inc.i34.i.llc_exec_conn_trans_actions.exit.i_crit_edge ], [ %rc.017.i.i, %land.rhs.i30.i.llc_exec_conn_trans_actions.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.3.i.i)
  %tobool5.not.i = icmp eq i32 %rc.3.i.i, 0
  br i1 %tobool5.not.i, label %llc_exec_conn_trans_actions.exit.i.land.lhs.true.i_crit_edge, label %llc_exec_conn_trans_actions.exit.i.do.end_crit_edge

llc_exec_conn_trans_actions.exit.i.do.end_crit_edge: ; preds = %llc_exec_conn_trans_actions.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

llc_exec_conn_trans_actions.exit.i.land.lhs.true.i_crit_edge: ; preds = %llc_exec_conn_trans_actions.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %llc_exec_conn_trans_actions.exit.i.land.lhs.true.i_crit_edge, %if.then3.i.land.lhs.true.i_crit_edge
  %next_state.i = getelementptr inbounds %struct.llc_conn_state_trans, ptr %31, i32 0, i32 1
  %37 = ptrtoint ptr %next_state.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %next_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %38)
  %cmp7.not.i = icmp eq i8 %38, 100
  br i1 %cmp7.not.i, label %land.lhs.true.i.if.end_crit_edge, label %if.then9.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then9.i:                                       ; preds = %land.lhs.true.i
  %39 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %state.i, align 8
  %40 = add i8 %38, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %40)
  %switch.i.i = icmp ult i8 %40, 3
  br i1 %switch.i.i, label %if.then15.i, label %if.then9.i.if.end_crit_edge

if.then9.i.if.end_crit_edge:                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then15.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk_state_change.i = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 76
  %41 = ptrtoint ptr %sk_state_change.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sk_state_change.i, align 4
  tail call void %42(ptr noundef %2) #11
  br label %if.end

do.end:                                           ; preds = %llc_exec_conn_trans_actions.exit.i.do.end_crit_edge, %for.body.i31.i.do.end_crit_edge, %entry.do.end_crit_edge
  %rc.0.i = phi i32 [ 1, %entry.do.end_crit_edge ], [ %rc.3.i.i, %llc_exec_conn_trans_actions.exit.i.do.end_crit_edge ], [ %call.i.i, %for.body.i31.i.do.end_crit_edge ]
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  br label %out_skb_put

if.end:                                           ; preds = %if.then15.i, %if.then9.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %llc_qualify_conn_ev.exit.i.if.end_crit_edge, %for.inc21.i.i.if.end_crit_edge, %llc_find_offset.exit.i.i.if.end_crit_edge
  %43 = ptrtoint ptr %ind_prim to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ind_prim, align 1
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %44, label %do.end50 [
    i8 3, label %sw.bb
    i8 2, label %sw.bb22
    i8 4, label %sw.bb24
    i8 5, label %do.end42
    i8 0, label %if.end.sw.epilog_crit_edge
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i190 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #11
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #11, !srcloc !82
  %asmresult.i.i.i.i.i.i191 = extractvalue { i32, i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i191)
  %tobool1.not.i.i.i.i192 = icmp eq i32 %asmresult.i.i.i.i.i.i191, 0
  br i1 %tobool1.not.i.i.i.i192, label %sw.bb.if.end15.sink.split.i.i.i.i197_crit_edge, label %if.else.i.i.i.i195, !prof !83

sw.bb.if.end15.sink.split.i.i.i.i197_crit_edge:   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i197

if.else.i.i.i.i195:                               ; preds = %sw.bb
  %add.i.i.i.i193 = add i32 %asmresult.i.i.i.i.i.i191, 1
  %47 = or i32 %add.i.i.i.i193, %asmresult.i.i.i.i.i.i191
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %.not.i.i.i.i194 = icmp sgt i32 %47, -1
  br i1 %.not.i.i.i.i194, label %if.else.i.i.i.i195.skb_get.exit_crit_edge, label %if.else.i.i.i.i195.if.end15.sink.split.i.i.i.i197_crit_edge, !prof !84

if.else.i.i.i.i195.if.end15.sink.split.i.i.i.i197_crit_edge: ; preds = %if.else.i.i.i.i195
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i197

if.else.i.i.i.i195.skb_get.exit_crit_edge:        ; preds = %if.else.i.i.i.i195
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i197:                   ; preds = %if.else.i.i.i.i195.if.end15.sink.split.i.i.i.i197_crit_edge, %sw.bb.if.end15.sink.split.i.i.i.i197_crit_edge
  %.sink.i.i.i.i196 = phi i32 [ 2, %sw.bb.if.end15.sink.split.i.i.i.i197_crit_edge ], [ 1, %if.else.i.i.i.i195.if.end15.sink.split.i.i.i.i197_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i196) #11
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i197, %if.else.i.i.i.i195.skb_get.exit_crit_edge
  tail call void @llc_save_primitive(ptr noundef %sk, ptr noundef %skb, i8 noundef zeroext 3) #11
  %call7 = tail call i32 @sock_queue_rcv_skb(ptr noundef %sk, ptr noundef %skb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %skb_get.exit.sw.epilog_crit_edge, label %do.end18, !prof !84

skb_get.exit.sw.epilog_crit_edge:                 ; preds = %skb_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end18:                                         ; preds = %skb_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #14
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  %users.i198 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i199 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i198, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %users.i198, i32 1, i32 3, i32 1) #11
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i198, ptr %users.i198, i32 1, ptr elementtype(i32) %users.i198) #11, !srcloc !82
  %asmresult.i.i.i.i.i.i200 = extractvalue { i32, i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i200)
  %tobool1.not.i.i.i.i201 = icmp eq i32 %asmresult.i.i.i.i.i.i200, 0
  br i1 %tobool1.not.i.i.i.i201, label %sw.bb22.if.end15.sink.split.i.i.i.i206_crit_edge, label %if.else.i.i.i.i204, !prof !83

sw.bb22.if.end15.sink.split.i.i.i.i206_crit_edge: ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i206

if.else.i.i.i.i204:                               ; preds = %sw.bb22
  %add.i.i.i.i202 = add i32 %asmresult.i.i.i.i.i.i200, 1
  %49 = or i32 %add.i.i.i.i202, %asmresult.i.i.i.i.i.i200
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %.not.i.i.i.i203 = icmp sgt i32 %49, -1
  br i1 %.not.i.i.i.i203, label %if.else.i.i.i.i204.skb_get.exit207_crit_edge, label %if.else.i.i.i.i204.if.end15.sink.split.i.i.i.i206_crit_edge, !prof !84

if.else.i.i.i.i204.if.end15.sink.split.i.i.i.i206_crit_edge: ; preds = %if.else.i.i.i.i204
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i206

if.else.i.i.i.i204.skb_get.exit207_crit_edge:     ; preds = %if.else.i.i.i.i204
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_get.exit207

if.end15.sink.split.i.i.i.i206:                   ; preds = %if.else.i.i.i.i204.if.end15.sink.split.i.i.i.i206_crit_edge, %sw.bb22.if.end15.sink.split.i.i.i.i206_crit_edge
  %.sink.i.i.i.i205 = phi i32 [ 2, %sw.bb22.if.end15.sink.split.i.i.i.i206_crit_edge ], [ 1, %if.else.i.i.i.i204.if.end15.sink.split.i.i.i.i206_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i198, i32 noundef %.sink.i.i.i.i205) #11
  br label %skb_get.exit207

skb_get.exit207:                                  ; preds = %if.end15.sink.split.i.i.i.i206, %if.else.i.i.i.i204.skb_get.exit207_crit_edge
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  tail call void @skb_queue_tail(ptr noundef %sk_receive_queue, ptr noundef %skb) #11
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %50 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sk_state_change, align 4
  tail call void %51(ptr noundef %sk) #11
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %52 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !82
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %sw.bb24.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !83

sw.bb24.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %sw.bb24
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %53 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %.not.i.i.i.i = icmp sgt i32 %53, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !84

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %sw.bb24.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %sw.bb24.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #11
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %sk_type = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %54 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %55)
  %cmp26 = icmp eq i16 %55, 1
  br i1 %cmp26, label %land.lhs.true, label %sock_hold.exit.if.end38_crit_edge

sock_hold.exit.if.end38_crit_edge:                ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

land.lhs.true:                                    ; preds = %sock_hold.exit
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %56 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %57)
  %cmp29 = icmp eq i8 %57, 1
  br i1 %cmp29, label %if.then31, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then31:                                        ; preds = %land.lhs.true
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %58 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 3, ptr %sk_shutdown, align 2
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %59 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sk_socket, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %60, align 128
  %62 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %62)
  store volatile i8 7, ptr %skc_state, align 2
  %63 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %63, align 4
  %66 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.i.not = icmp eq i32 %66, 0
  br i1 %tobool.i.not, label %if.then35, label %if.then31.if.end38_crit_edge

if.then31.if.end38_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then35:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  %or.i.i = or i32 %65, 1
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or.i.i, ptr %63, align 4
  %sk_state_change36 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %68 = ptrtoint ptr %sk_state_change36 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sk_state_change36, align 4
  tail call void %69(ptr noundef %sk) #11
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.then31.if.end38_crit_edge, %land.lhs.true.if.end38_crit_edge, %sock_hold.exit.if.end38_crit_edge
  %call.i.i.i.i.i.i209 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %70 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !86
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i210 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i210, label %if.end5.i.i.i.i.sw.epilog_crit_edge, label %if.then10.i.i.i.i, !prof !84

if.end5.i.i.i.i.sw.epilog_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #11
  br label %sw.epilog

if.then.i:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !87
  tail call void @sk_free(ptr noundef %sk) #11
  br label %sw.epilog

do.end42:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1) #14
  br label %sw.epilog

do.end50:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %44 to i32
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef %conv) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end50, %do.end42, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sw.epilog_crit_edge, %skb_get.exit207, %do.end18, %skb_get.exit.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %71 = ptrtoint ptr %cfm_prim to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %cfm_prim, align 1
  %73 = zext i8 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %72, label %do.end120 [
    i8 3, label %sw.bb58
    i8 2, label %sw.bb64
    i8 4, label %sw.bb90
    i8 5, label %do.end111
    i8 0, label %sw.epilog.out_skb_put_crit_edge
  ]

sw.epilog.out_skb_put_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_skb_put

sw.bb58:                                          ; preds = %sw.epilog
  %74 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %state.i, align 8
  %76 = add i8 %75, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %76)
  %switch.i = icmp ult i8 %76, 3
  br i1 %switch.i, label %if.then62, label %if.else

if.then62:                                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #13
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 78
  %77 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sk_write_space, align 4
  tail call void %78(ptr noundef %sk) #11
  br label %out_skb_put

if.else:                                          ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #13
  %failed_data_req = getelementptr inbounds %struct.llc_sock, ptr %2, i32 0, i32 33
  %79 = ptrtoint ptr %failed_data_req to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %failed_data_req, align 8
  br label %out_skb_put

sw.bb64:                                          ; preds = %sw.epilog
  %sk_type65 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %80 = ptrtoint ptr %sk_type65 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %sk_type65, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %81)
  %cmp67 = icmp eq i16 %81, 1
  br i1 %cmp67, label %land.lhs.true69, label %sw.bb64.out_skb_put_crit_edge

sw.bb64.out_skb_put_crit_edge:                    ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_skb_put

land.lhs.true69:                                  ; preds = %sw.bb64
  %skc_state71 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %82 = ptrtoint ptr %skc_state71 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load volatile i8, ptr %skc_state71, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %83)
  %cmp73 = icmp eq i8 %83, 2
  br i1 %cmp73, label %if.then75, label %land.lhs.true69.out_skb_put_crit_edge

land.lhs.true69.out_skb_put_crit_edge:            ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_skb_put

if.then75:                                        ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #13
  %status = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %84 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool76.not = icmp eq i8 %85, 0
  %sk_socket83 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %86 = ptrtoint ptr %sk_socket83 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sk_socket83, align 8
  %. = select i1 %tobool76.not, i32 3, i32 1
  %.249 = select i1 %tobool76.not, i8 1, i8 7
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %., ptr %87, align 128
  %89 = ptrtoint ptr %skc_state71 to i32
  call void @__asan_store1_noabort(i32 %89)
  store volatile i8 %.249, ptr %skc_state71, align 2
  %sk_state_change88 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %90 = ptrtoint ptr %sk_state_change88 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %sk_state_change88, align 4
  tail call void %91(ptr noundef %sk) #11
  br label %out_skb_put

sw.bb90:                                          ; preds = %sw.epilog
  %skc_refcnt.i180 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i181 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i180, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i180, i32 1, i32 3, i32 1) #11
  %92 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i180, ptr %skc_refcnt.i180, i32 1, ptr elementtype(i32) %skc_refcnt.i180) #11, !srcloc !82
  %asmresult.i.i.i.i.i.i182 = extractvalue { i32, i32, i32 } %92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i182)
  %tobool1.not.i.i.i.i183 = icmp eq i32 %asmresult.i.i.i.i.i.i182, 0
  br i1 %tobool1.not.i.i.i.i183, label %sw.bb90.if.end15.sink.split.i.i.i.i188_crit_edge, label %if.else.i.i.i.i186, !prof !83

sw.bb90.if.end15.sink.split.i.i.i.i188_crit_edge: ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i188

if.else.i.i.i.i186:                               ; preds = %sw.bb90
  %add.i.i.i.i184 = add i32 %asmresult.i.i.i.i.i.i182, 1
  %93 = or i32 %add.i.i.i.i184, %asmresult.i.i.i.i.i.i182
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %93)
  %.not.i.i.i.i185 = icmp sgt i32 %93, -1
  br i1 %.not.i.i.i.i185, label %if.else.i.i.i.i186.sock_hold.exit189_crit_edge, label %if.else.i.i.i.i186.if.end15.sink.split.i.i.i.i188_crit_edge, !prof !84

if.else.i.i.i.i186.if.end15.sink.split.i.i.i.i188_crit_edge: ; preds = %if.else.i.i.i.i186
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i188

if.else.i.i.i.i186.sock_hold.exit189_crit_edge:   ; preds = %if.else.i.i.i.i186
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_hold.exit189

if.end15.sink.split.i.i.i.i188:                   ; preds = %if.else.i.i.i.i186.if.end15.sink.split.i.i.i.i188_crit_edge, %sw.bb90.if.end15.sink.split.i.i.i.i188_crit_edge
  %.sink.i.i.i.i187 = phi i32 [ 2, %sw.bb90.if.end15.sink.split.i.i.i.i188_crit_edge ], [ 1, %if.else.i.i.i.i186.if.end15.sink.split.i.i.i.i188_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i180, i32 noundef %.sink.i.i.i.i187) #11
  br label %sock_hold.exit189

sock_hold.exit189:                                ; preds = %if.end15.sink.split.i.i.i.i188, %if.else.i.i.i.i186.sock_hold.exit189_crit_edge
  %sk_type91 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %94 = ptrtoint ptr %sk_type91 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %sk_type91, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %95)
  %cmp93 = icmp eq i16 %95, 1
  br i1 %cmp93, label %land.lhs.true95, label %sock_hold.exit189.if.end107_crit_edge

sock_hold.exit189.if.end107_crit_edge:            ; preds = %sock_hold.exit189
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end107

land.lhs.true95:                                  ; preds = %sock_hold.exit189
  %skc_state97 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %96 = ptrtoint ptr %skc_state97 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load volatile i8, ptr %skc_state97, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %97)
  %cmp99 = icmp eq i8 %97, 11
  br i1 %cmp99, label %if.then101, label %land.lhs.true95.if.end107_crit_edge

land.lhs.true95.if.end107_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end107

if.then101:                                       ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #13
  %sk_socket102 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %98 = ptrtoint ptr %sk_socket102 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %sk_socket102, align 8
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1, ptr %99, align 128
  %101 = ptrtoint ptr %skc_state97 to i32
  call void @__asan_store1_noabort(i32 %101)
  store volatile i8 7, ptr %skc_state97, align 2
  %sk_state_change106 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %102 = ptrtoint ptr %sk_state_change106 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %sk_state_change106, align 4
  tail call void %103(ptr noundef %sk) #11
  br label %if.end107

if.end107:                                        ; preds = %if.then101, %land.lhs.true95.if.end107_crit_edge, %sock_hold.exit189.if.end107_crit_edge
  %call.i.i.i.i.i.i213 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i180, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i180, i32 1, i32 3, i32 1) #11
  %104 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i180, ptr %skc_refcnt.i180, i32 1, ptr elementtype(i32) %skc_refcnt.i180) #11, !srcloc !86
  %asmresult.i.i.i.i.i.i.i214 = extractvalue { i32, i32, i32 } %104, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i214)
  %cmp.i.i.i.i215 = icmp eq i32 %asmresult.i.i.i.i.i.i.i214, 1
  br i1 %cmp.i.i.i.i215, label %if.then.i219, label %if.end5.i.i.i.i217

if.end5.i.i.i.i217:                               ; preds = %if.end107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i214)
  %.not.i.i.i.i216 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i214, 0
  br i1 %.not.i.i.i.i216, label %if.end5.i.i.i.i217.out_skb_put_crit_edge, label %if.then10.i.i.i.i218, !prof !84

if.end5.i.i.i.i217.out_skb_put_crit_edge:         ; preds = %if.end5.i.i.i.i217
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_skb_put

if.then10.i.i.i.i218:                             ; preds = %if.end5.i.i.i.i217
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i180, i32 noundef 3) #11
  br label %out_skb_put

if.then.i219:                                     ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !87
  tail call void @sk_free(ptr noundef %sk) #11
  br label %out_skb_put

do.end111:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1) #14
  br label %out_skb_put

do.end120:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %conv57 = zext i8 %72 to i32
  %call124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef %conv57) #14
  br label %out_skb_put

out_skb_put:                                      ; preds = %do.end120, %do.end111, %if.then.i219, %if.then10.i.i.i.i218, %if.end5.i.i.i.i217.out_skb_put_crit_edge, %if.then75, %land.lhs.true69.out_skb_put_crit_edge, %sw.bb64.out_skb_put_crit_edge, %if.else, %if.then62, %sw.epilog.out_skb_put_crit_edge, %do.end
  %rc.0 = phi i32 [ %rc.0.i, %do.end ], [ 0, %do.end120 ], [ 0, %do.end111 ], [ 0, %if.then75 ], [ 0, %land.lhs.true69.out_skb_put_crit_edge ], [ 0, %sw.bb64.out_skb_put_crit_edge ], [ 1, %if.else ], [ 0, %if.then62 ], [ 0, %sw.epilog.out_skb_put_crit_edge ], [ 0, %if.end5.i.i.i.i217.out_skb_put_crit_edge ], [ 0, %if.then10.i.i.i.i218 ], [ 0, %if.then.i219 ]
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  ret i32 %rc.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_save_primitive(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sock_put(ptr noundef %sk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 1, ptr elementtype(i32) %skc_refcnt) #11, !srcloc !86
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !84

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 3) #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !87
  tail call void @sk_free(ptr noundef %sk) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @llc_data_accept_state(i8 noundef zeroext %state) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i8 %state, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %0)
  %switch = icmp ult i8 %0, -3
  %conv8 = zext i1 %switch to i8
  ret i8 %conv8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @llc_conn_send_pdu(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  tail call void @skb_queue_tail(ptr noundef %sk_write_queue, ptr noundef %skb) #11
  tail call fastcc void @llc_conn_send_pdus(ptr noundef %sk)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @llc_conn_send_pdus(ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  %call20 = tail call ptr @skb_dequeue(ptr noundef %sk_write_queue) #11
  %cmp.not21 = icmp eq ptr %call20, null
  br i1 %cmp.not21, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %pdu_unack_q = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 29
  br label %while.body

while.body:                                       ; preds = %if.end8.while.body_crit_edge, %while.body.lr.ph
  %call22 = phi ptr [ %call20, %while.body.lr.ph ], [ %call, %if.end8.while.body_crit_edge ]
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call22, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call22, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctrl_1, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %land.lhs.true, label %while.body.if.end8_crit_edge

while.body.if.end8_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

land.lhs.true:                                    ; preds = %while.body
  %7 = getelementptr inbounds %struct.anon.44, ptr %call22, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %and2 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then:                                          ; preds = %land.lhs.true
  %call4 = tail call ptr @skb_clone(ptr noundef nonnull %call22, i32 noundef 2592) #11
  tail call void @skb_queue_tail(ptr noundef %pdu_unack_q, ptr noundef nonnull %call22) #11
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %if.then.while.end_crit_edge, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge, %while.body.if.end8_crit_edge
  %skb.1 = phi ptr [ %call22, %while.body.if.end8_crit_edge ], [ %call22, %land.lhs.true.if.end8_crit_edge ], [ %call4, %if.then.if.end8_crit_edge ]
  %call9 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %skb.1) #11
  %call = tail call ptr @skb_dequeue(ptr noundef %sk_write_queue) #11
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.end8.while.end_crit_edge, label %if.end8.while.body_crit_edge

if.end8.while.body_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end8.while.end_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end8.while.end_crit_edge, %if.then.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @llc_conn_rtn_pdu(ptr nocapture noundef readnone %sk, ptr nocapture noundef writeonly %skb) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ind_prim = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 5
  %0 = ptrtoint ptr %ind_prim to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 3, ptr %ind_prim, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @llc_conn_resend_i_pdu_as_cmd(ptr noundef %sk, i8 noundef zeroext %nr, i8 noundef zeroext %first_p_bit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdu_unack_q.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 29
  %qlen.i.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 29, i32 1
  %0 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.llc_conn_remove_acked_pdus.exit_crit_edge, label %if.end.i

entry.llc_conn_remove_acked_pdus.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %llc_conn_remove_acked_pdus.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %pdu_unack_q.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdu_unack_q.i, align 4
  %cmp.i.i = icmp eq ptr %3, %pdu_unack_q.i
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %3
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 15, i32 0, i32 20
  %6 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %7 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 %conv.i.i.i
  %conv.i = zext i8 %nr to i32
  %ctrl_1.i = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %ctrl_1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ctrl_1.i, align 1
  %10 = lshr i8 %9, 1
  %conv7.i = zext i8 %10 to i32
  %sub.i = sub nsw i32 %conv.i, %conv7.i
  %rem2627.i = and i32 %sub.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem2627.i)
  %cmp28.i = icmp ne i32 %rem2627.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp929.i = icmp sgt i32 %1, 0
  %or.cond30.i = select i1 %cmp28.i, i1 %cmp929.i, i1 false
  br i1 %or.cond30.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.llc_conn_remove_acked_pdus.exit_crit_edge

if.end.i.llc_conn_remove_acked_pdus.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %llc_conn_remove_acked_pdus.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %nbr_acked.032.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %call12.i = tail call ptr @skb_dequeue(ptr noundef %pdu_unack_q.i) #11
  tail call void @kfree_skb_reason(ptr noundef %call12.i, i32 noundef 0) #11
  %inc.i = add nuw nsw i32 %nbr_acked.032.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %rem2627.i)
  %cmp.i = icmp ult i32 %inc.i, %rem2627.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %1)
  %cmp9.i = icmp slt i32 %inc.i, %1
  %or.cond.i = select i1 %cmp.i, i1 %cmp9.i, i1 false
  br i1 %or.cond.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.llc_conn_remove_acked_pdus.exit_crit_edge

for.body.i.llc_conn_remove_acked_pdus.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %llc_conn_remove_acked_pdus.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

llc_conn_remove_acked_pdus.exit:                  ; preds = %for.body.i.llc_conn_remove_acked_pdus.exit_crit_edge, %if.end.i.llc_conn_remove_acked_pdus.exit_crit_edge, %entry.llc_conn_remove_acked_pdus.exit_crit_edge
  %11 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qlen.i.i, align 4
  %conv16.i = trunc i32 %12 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv16.i)
  %tobool.not = icmp eq i16 %conv16.i, 0
  br i1 %tobool.not, label %llc_conn_remove_acked_pdus.exit.out_crit_edge, label %while.cond.preheader

llc_conn_remove_acked_pdus.exit.out_crit_edge:    ; preds = %llc_conn_remove_acked_pdus.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

while.cond.preheader:                             ; preds = %llc_conn_remove_acked_pdus.exit
  %call224 = tail call ptr @skb_dequeue(ptr noundef %pdu_unack_q.i) #11
  %cmp.not25 = icmp eq ptr %call224, null
  br i1 %cmp.not25, label %while.cond.preheader.if.end13_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.end13_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  %vS = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 17
  %head.i.i.peel = getelementptr inbounds %struct.sk_buff, ptr %call224, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i.peel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i.peel, align 8
  %network_header.i.i.peel = getelementptr inbounds %struct.sk_buff, ptr %call224, i32 0, i32 15, i32 0, i32 20
  %15 = ptrtoint ptr %network_header.i.i.peel to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %network_header.i.i.peel, align 4
  %conv.i.i.peel = zext i16 %16 to i32
  %add.ptr.i.i.peel = getelementptr i8, ptr %14, i32 %conv.i.i.peel
  tail call void @llc_pdu_set_cmd_rsp(ptr noundef nonnull %call224, i8 noundef zeroext 0) #11
  tail call void @llc_pdu_set_pf_bit(ptr noundef nonnull %call224, i8 noundef zeroext %first_p_bit) #11
  tail call void @skb_queue_tail(ptr noundef %sk_write_queue, ptr noundef nonnull %call224) #11
  %ctrl_1.peel = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i.peel, i32 0, i32 2
  %17 = ptrtoint ptr %ctrl_1.peel to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ctrl_1.peel, align 1
  %19 = lshr i8 %18, 1
  %20 = ptrtoint ptr %vS to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %vS, align 8
  %call2.peel = tail call ptr @skb_dequeue(ptr noundef %pdu_unack_q.i) #11
  %cmp.not.peel = icmp eq ptr %call2.peel, null
  br i1 %cmp.not.peel, label %while.body.lr.ph.if.then8_crit_edge, label %while.body.lr.ph.while.body_crit_edge

while.body.lr.ph.while.body_crit_edge:            ; preds = %while.body.lr.ph
  br label %while.body

while.body.lr.ph.if.then8_crit_edge:              ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph.while.body_crit_edge
  %call228 = phi ptr [ %call2, %while.body.while.body_crit_edge ], [ %call2.peel, %while.body.lr.ph.while.body_crit_edge ]
  %howmany_resend.027 = phi i8 [ %inc, %while.body.while.body_crit_edge ], [ 1, %while.body.lr.ph.while.body_crit_edge ]
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call228, i32 0, i32 18
  %21 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call228, i32 0, i32 15, i32 0, i32 20
  %23 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %24 to i32
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 %conv.i.i
  tail call void @llc_pdu_set_cmd_rsp(ptr noundef nonnull %call228, i8 noundef zeroext 0) #11
  tail call void @llc_pdu_set_pf_bit(ptr noundef nonnull %call228, i8 noundef zeroext 0) #11
  tail call void @skb_queue_tail(ptr noundef %sk_write_queue, ptr noundef nonnull %call228) #11
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ctrl_1, align 1
  %27 = lshr i8 %26, 1
  %28 = ptrtoint ptr %vS to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %vS, align 8
  %inc = add i8 %howmany_resend.027, 1
  %call2 = tail call ptr @skb_dequeue(ptr noundef %pdu_unack_q.i) #11
  %cmp.not = icmp eq ptr %call2, null
  br i1 %cmp.not, label %while.end, label %while.body.while.body_crit_edge, !llvm.loop !88

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc)
  %cmp6.not = icmp eq i8 %inc, 0
  br i1 %cmp6.not, label %while.end.if.end13_crit_edge, label %while.end.if.then8_crit_edge

while.end.if.then8_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

while.end.if.end13_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then8:                                         ; preds = %while.end.if.then8_crit_edge, %while.body.lr.ph.if.then8_crit_edge
  %vS9 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 17
  %29 = ptrtoint ptr %vS9 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %vS9, align 8
  %31 = add i8 %30, 1
  %32 = and i8 %31, 127
  store i8 %32, ptr %vS9, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %while.end.if.end13_crit_edge, %while.cond.preheader.if.end13_crit_edge
  tail call fastcc void @llc_conn_send_pdus(ptr noundef %sk)
  br label %out

out:                                              ; preds = %if.end13, %llc_conn_remove_acked_pdus.exit.out_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_remove_acked_pdus(ptr noundef %sk, i8 noundef zeroext %nr, ptr nocapture noundef writeonly %how_many_unacked) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdu_unack_q = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 29
  %qlen.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 29, i32 1
  %0 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %pdu_unack_q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdu_unack_q, align 4
  %cmp.i = icmp eq ptr %3, %pdu_unack_q
  %spec.store.select.i = select i1 %cmp.i, ptr null, ptr %3
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 15, i32 0, i32 20
  %6 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %conv.i.i
  %conv = zext i8 %nr to i32
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ctrl_1, align 1
  %10 = lshr i8 %9, 1
  %conv7 = zext i8 %10 to i32
  %sub = sub nsw i32 %conv, %conv7
  %rem2627 = and i32 %sub, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem2627)
  %cmp28 = icmp ne i32 %rem2627, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp929 = icmp sgt i32 %1, 0
  %or.cond30 = select i1 %cmp28, i1 %cmp929, i1 false
  br i1 %or.cond30, label %if.end.for.body_crit_edge, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %nbr_acked.032 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %call12 = tail call ptr @skb_dequeue(ptr noundef %pdu_unack_q) #11
  tail call void @kfree_skb_reason(ptr noundef %call12, i32 noundef 0) #11
  %inc = add nuw nsw i32 %nbr_acked.032, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %rem2627)
  %cmp = icmp ult i32 %inc, %rem2627
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %1)
  %cmp9 = icmp slt i32 %inc, %1
  %or.cond = select i1 %cmp, i1 %cmp9, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

out:                                              ; preds = %for.body.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %nbr_acked.1 = phi i32 [ 0, %entry.out_crit_edge ], [ 0, %if.end.out_crit_edge ], [ %inc, %for.body.out_crit_edge ]
  %11 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qlen.i, align 4
  %conv16 = trunc i32 %12 to i16
  %13 = ptrtoint ptr %how_many_unacked to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv16, ptr %how_many_unacked, align 2
  ret i32 %nbr_acked.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_pdu_set_cmd_rsp(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_pdu_set_pf_bit(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @llc_conn_resend_i_pdu_as_rsp(ptr noundef %sk, i8 noundef zeroext %nr, i8 noundef zeroext %first_f_bit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdu_unack_q.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 29
  %qlen.i.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 29, i32 1
  %0 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.llc_conn_remove_acked_pdus.exit_crit_edge, label %if.end.i

entry.llc_conn_remove_acked_pdus.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %llc_conn_remove_acked_pdus.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %pdu_unack_q.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdu_unack_q.i, align 4
  %cmp.i.i = icmp eq ptr %3, %pdu_unack_q.i
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %3
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 15, i32 0, i32 20
  %6 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %7 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 %conv.i.i.i
  %conv.i = zext i8 %nr to i32
  %ctrl_1.i = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %ctrl_1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ctrl_1.i, align 1
  %10 = lshr i8 %9, 1
  %conv7.i = zext i8 %10 to i32
  %sub.i = sub nsw i32 %conv.i, %conv7.i
  %rem2627.i = and i32 %sub.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem2627.i)
  %cmp28.i = icmp ne i32 %rem2627.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp929.i = icmp sgt i32 %1, 0
  %or.cond30.i = select i1 %cmp28.i, i1 %cmp929.i, i1 false
  br i1 %or.cond30.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.llc_conn_remove_acked_pdus.exit_crit_edge

if.end.i.llc_conn_remove_acked_pdus.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %llc_conn_remove_acked_pdus.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %nbr_acked.032.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %call12.i = tail call ptr @skb_dequeue(ptr noundef %pdu_unack_q.i) #11
  tail call void @kfree_skb_reason(ptr noundef %call12.i, i32 noundef 0) #11
  %inc.i = add nuw nsw i32 %nbr_acked.032.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %rem2627.i)
  %cmp.i = icmp ult i32 %inc.i, %rem2627.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %1)
  %cmp9.i = icmp slt i32 %inc.i, %1
  %or.cond.i = select i1 %cmp.i, i1 %cmp9.i, i1 false
  br i1 %or.cond.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.llc_conn_remove_acked_pdus.exit_crit_edge

for.body.i.llc_conn_remove_acked_pdus.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %llc_conn_remove_acked_pdus.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

llc_conn_remove_acked_pdus.exit:                  ; preds = %for.body.i.llc_conn_remove_acked_pdus.exit_crit_edge, %if.end.i.llc_conn_remove_acked_pdus.exit_crit_edge, %entry.llc_conn_remove_acked_pdus.exit_crit_edge
  %11 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qlen.i.i, align 4
  %conv16.i = trunc i32 %12 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv16.i)
  %tobool.not = icmp eq i16 %conv16.i, 0
  br i1 %tobool.not, label %llc_conn_remove_acked_pdus.exit.out_crit_edge, label %while.cond.preheader

llc_conn_remove_acked_pdus.exit.out_crit_edge:    ; preds = %llc_conn_remove_acked_pdus.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

while.cond.preheader:                             ; preds = %llc_conn_remove_acked_pdus.exit
  %call224 = tail call ptr @skb_dequeue(ptr noundef %pdu_unack_q.i) #11
  %cmp.not25 = icmp eq ptr %call224, null
  br i1 %cmp.not25, label %while.cond.preheader.if.end13_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.end13_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  %vS = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 17
  %head.i.i.peel = getelementptr inbounds %struct.sk_buff, ptr %call224, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i.peel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i.peel, align 8
  %network_header.i.i.peel = getelementptr inbounds %struct.sk_buff, ptr %call224, i32 0, i32 15, i32 0, i32 20
  %15 = ptrtoint ptr %network_header.i.i.peel to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %network_header.i.i.peel, align 4
  %conv.i.i.peel = zext i16 %16 to i32
  %add.ptr.i.i.peel = getelementptr i8, ptr %14, i32 %conv.i.i.peel
  tail call void @llc_pdu_set_cmd_rsp(ptr noundef nonnull %call224, i8 noundef zeroext 1) #11
  tail call void @llc_pdu_set_pf_bit(ptr noundef nonnull %call224, i8 noundef zeroext %first_f_bit) #11
  tail call void @skb_queue_tail(ptr noundef %sk_write_queue, ptr noundef nonnull %call224) #11
  %ctrl_1.peel = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i.peel, i32 0, i32 2
  %17 = ptrtoint ptr %ctrl_1.peel to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ctrl_1.peel, align 1
  %19 = lshr i8 %18, 1
  %20 = ptrtoint ptr %vS to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %vS, align 8
  %call2.peel = tail call ptr @skb_dequeue(ptr noundef %pdu_unack_q.i) #11
  %cmp.not.peel = icmp eq ptr %call2.peel, null
  br i1 %cmp.not.peel, label %while.body.lr.ph.if.then8_crit_edge, label %while.body.lr.ph.while.body_crit_edge

while.body.lr.ph.while.body_crit_edge:            ; preds = %while.body.lr.ph
  br label %while.body

while.body.lr.ph.if.then8_crit_edge:              ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph.while.body_crit_edge
  %call228 = phi ptr [ %call2, %while.body.while.body_crit_edge ], [ %call2.peel, %while.body.lr.ph.while.body_crit_edge ]
  %howmany_resend.026 = phi i8 [ %inc, %while.body.while.body_crit_edge ], [ 1, %while.body.lr.ph.while.body_crit_edge ]
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call228, i32 0, i32 18
  %21 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call228, i32 0, i32 15, i32 0, i32 20
  %23 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %24 to i32
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 %conv.i.i
  tail call void @llc_pdu_set_cmd_rsp(ptr noundef nonnull %call228, i8 noundef zeroext 1) #11
  tail call void @llc_pdu_set_pf_bit(ptr noundef nonnull %call228, i8 noundef zeroext 0) #11
  tail call void @skb_queue_tail(ptr noundef %sk_write_queue, ptr noundef nonnull %call228) #11
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ctrl_1, align 1
  %27 = lshr i8 %26, 1
  %28 = ptrtoint ptr %vS to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %vS, align 8
  %inc = add i8 %howmany_resend.026, 1
  %call2 = tail call ptr @skb_dequeue(ptr noundef %pdu_unack_q.i) #11
  %cmp.not = icmp eq ptr %call2, null
  br i1 %cmp.not, label %while.end, label %while.body.while.body_crit_edge, !llvm.loop !90

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc)
  %cmp6.not = icmp eq i8 %inc, 0
  br i1 %cmp6.not, label %while.end.if.end13_crit_edge, label %while.end.if.then8_crit_edge

while.end.if.then8_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

while.end.if.end13_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then8:                                         ; preds = %while.end.if.then8_crit_edge, %while.body.lr.ph.if.then8_crit_edge
  %vS9 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 17
  %29 = ptrtoint ptr %vS9 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %vS9, align 8
  %31 = add i8 %30, 1
  %32 = and i8 %31, 127
  store i8 %32, ptr %vS9, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %while.end.if.end13_crit_edge, %while.cond.preheader.if.end13_crit_edge
  tail call fastcc void @llc_conn_send_pdus(ptr noundef %sk)
  br label %out

out:                                              ; preds = %if.end13, %llc_conn_remove_acked_pdus.exit.out_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @llc_lookup_established(ptr noundef %sap, ptr nocapture noundef readonly %daddr, ptr nocapture noundef readonly %laddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @local_bh_disable()
  %call = tail call fastcc ptr @__llc_lookup_established(ptr noundef %sap, ptr noundef %daddr, ptr noundef %laddr)
  tail call fastcc void @local_bh_enable()
  ret ptr %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__llc_lookup_established(ptr noundef %sap, ptr nocapture noundef readonly %daddr, ptr nocapture noundef readonly %laddr) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mac.i = getelementptr inbounds %struct.llc_addr, ptr %laddr, i32 0, i32 1
  %arrayidx58.i.i = getelementptr %struct.llc_addr, ptr %laddr, i32 0, i32 1, i32 5
  %0 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx58.i.i, align 1
  %conv59.i.i = zext i8 %1 to i32
  %shl60.i.i = shl nuw nsw i32 %conv59.i.i, 8
  %add61.i.i = add nuw nsw i32 %shl60.i.i, -559038731
  %arrayidx63.i.i = getelementptr %struct.llc_addr, ptr %laddr, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx63.i.i, align 1
  %conv64.i.i = zext i8 %3 to i32
  %add65.i.i = add nuw nsw i32 %add61.i.i, %conv64.i.i
  %arrayidx67.i.i = getelementptr %struct.llc_addr, ptr %laddr, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx67.i.i, align 1
  %conv68.i.i = zext i8 %5 to i32
  %shl69.i.i = shl nuw i32 %conv68.i.i, 24
  %add70.i.i = add i32 %shl69.i.i, -559038731
  %arrayidx72.i.i = getelementptr %struct.llc_addr, ptr %laddr, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %arrayidx72.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx72.i.i, align 1
  %conv73.i.i = zext i8 %7 to i32
  %shl74.i.i = shl nuw nsw i32 %conv73.i.i, 16
  %add75.i.i = add i32 %add70.i.i, %shl74.i.i
  %arrayidx77.i.i = getelementptr %struct.llc_addr, ptr %laddr, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx77.i.i, align 1
  %conv78.i.i = zext i8 %9 to i32
  %shl79.i.i = shl nuw nsw i32 %conv78.i.i, 8
  %add80.i.i = add i32 %add75.i.i, %shl79.i.i
  %10 = ptrtoint ptr %mac.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mac.i, align 1
  %conv83.i.i = zext i8 %11 to i32
  %add84.i.i = add i32 %add80.i.i, %conv83.i.i
  %xor85.i.i = xor i32 %add65.i.i, -559038731
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add65.i.i, i32 %add65.i.i, i32 14) #11
  %sub87.i.i = sub i32 %xor85.i.i, %or.i.i.i
  %xor88.i.i = xor i32 %add84.i.i, %sub87.i.i
  %or.i1.i.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i.i, i32 %sub87.i.i, i32 11) #11
  %sub90.i.i = sub i32 %xor88.i.i, %or.i1.i.i
  %xor91.i.i = xor i32 %sub90.i.i, %add65.i.i
  %or.i2.i.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i.i, i32 %sub90.i.i, i32 25) #11
  %sub93.i.i = sub i32 %xor91.i.i, %or.i2.i.i
  %xor94.i.i = xor i32 %sub93.i.i, %sub87.i.i
  %or.i3.i.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i.i, i32 %sub93.i.i, i32 16) #11
  %sub96.i.i = sub i32 %xor94.i.i, %or.i3.i.i
  %xor97.i.i = xor i32 %sub96.i.i, %sub90.i.i
  %or.i4.i.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i.i, i32 %sub96.i.i, i32 4) #11
  %sub99.i.i = sub i32 %xor97.i.i, %or.i4.i.i
  %xor100.i.i = xor i32 %sub99.i.i, %sub93.i.i
  %or.i5.i.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i.i, i32 %sub99.i.i, i32 14) #11
  %sub102.i.i = sub i32 %xor100.i.i, %or.i5.i.i
  %or.i6.i.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i.i, i32 %sub102.i.i, i32 24) #11
  %xor103.i.i = xor i32 %sub102.i.i, %sub96.i.i
  %sub105.i.i = sub i32 %xor103.i.i, %or.i6.i.i
  %mul.i.i.i = mul i32 %sub105.i.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 26
  %arrayidx = getelementptr %struct.llc_sap, ptr %sap, i32 0, i32 9, i32 %shr.i.i
  %12 = tail call i32 @llvm.read_register.i32(metadata !72) #11
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !91
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %mac21.i = getelementptr inbounds %struct.llc_addr, ptr %daddr, i32 0, i32 1
  %add.ptr1.i3.i = getelementptr %struct.llc_addr, ptr %daddr, i32 0, i32 1, i32 4
  br label %again

again:                                            ; preds = %again.backedge, %rcu_read_lock.exit
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !92
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %node.0101 = load volatile ptr, ptr %arrayidx, align 4
  %17 = ptrtoint ptr %node.0101 to i32
  %and.i102 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i102)
  %tobool.not103 = icmp eq i32 %and.i102, 0
  br i1 %tobool.not103, label %again.land.rhs_crit_edge, label %again.for.end_crit_edge

again.for.end_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

again.land.rhs_crit_edge:                         ; preds = %again
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %again.land.rhs_crit_edge
  %node.0104 = phi ptr [ %node.0, %for.inc.land.rhs_crit_edge ], [ %node.0101, %again.land.rhs_crit_edge ]
  %add.ptr = getelementptr i8, ptr %node.0104, i32 -84
  %laddr1.i = getelementptr i8, ptr %node.0104, i32 900
  %18 = ptrtoint ptr %laddr1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %laddr1.i, align 8
  %20 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %laddr, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp.i = icmp eq i8 %19, %21
  br i1 %cmp.i, label %land.lhs.true.i57, label %land.rhs.for.inc_crit_edge

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.i57:                                ; preds = %land.rhs
  %daddr5.i = getelementptr i8, ptr %node.0104, i32 907
  %22 = ptrtoint ptr %daddr5.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %daddr5.i, align 1
  %24 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %daddr, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %25)
  %cmp10.i = icmp eq i8 %23, %25
  br i1 %cmp10.i, label %land.lhs.true12.i, label %land.lhs.true.i57.for.inc_crit_edge

land.lhs.true.i57.for.inc_crit_edge:              ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true12.i:                                ; preds = %land.lhs.true.i57
  %mac.i58 = getelementptr i8, ptr %node.0104, i32 901
  %26 = ptrtoint ptr %mac.i58 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mac.i58, align 4
  %28 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mac.i, align 4
  %xor.i.i = xor i32 %29, %27
  %add.ptr.i.i = getelementptr i8, ptr %node.0104, i32 905
  %30 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i.i, align 2
  %32 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx63.i.i, align 2
  %xor37.i.i = xor i16 %33, %31
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %llc_estab_match.exit, label %land.lhs.true12.i.for.inc_crit_edge

land.lhs.true12.i.for.inc_crit_edge:              ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

llc_estab_match.exit:                             ; preds = %land.lhs.true12.i
  %mac19.i = getelementptr i8, ptr %node.0104, i32 908
  %34 = ptrtoint ptr %mac19.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mac19.i, align 4
  %36 = ptrtoint ptr %mac21.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mac21.i, align 4
  %xor.i1.i = xor i32 %37, %35
  %add.ptr.i2.i = getelementptr i8, ptr %node.0104, i32 912
  %38 = ptrtoint ptr %add.ptr.i2.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr.i2.i, align 2
  %40 = ptrtoint ptr %add.ptr1.i3.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %add.ptr1.i3.i, align 2
  %xor37.i4.i = xor i16 %41, %39
  %xor3.i5.i = zext i16 %xor37.i4.i to i32
  %or.i6.i = or i32 %xor.i1.i, %xor3.i5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i6.i)
  %cmp.i7.i = icmp eq i32 %or.i6.i, 0
  br i1 %cmp.i7.i, label %if.then, label %llc_estab_match.exit.for.inc_crit_edge

llc_estab_match.exit.for.inc_crit_edge:           ; preds = %llc_estab_match.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %llc_estab_match.exit
  %skc_refcnt = getelementptr i8, ptr %node.0104, i32 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #11
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt, i32 noundef 4) #11
  %42 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %skc_refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.then
  %44 = phi i32 [ %43, %if.then ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %45 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i.i.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i59 = add i32 %44, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #11
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #11
  %46 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %48 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 %47, i32 %add.i.i.i59, ptr elementtype(i32) %skc_refcnt) #11, !srcloc !93
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %48, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %48, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %47
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !84

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %49 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %50, 1
  %51 = or i32 %add5.i.i.i, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %.not.i.i.i = icmp sgt i32 %51, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !84

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 0) #11
  %52 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %53 = phi i32 [ %50, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool12.i.i.i.not = icmp eq i32 %53, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #11
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.again.backedge_crit_edge, label %if.end, !prof !83

refcount_inc_not_zero.exit.again.backedge_crit_edge: ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %again.backedge

if.end:                                           ; preds = %refcount_inc_not_zero.exit
  %sap13 = getelementptr i8, ptr %node.0104, i32 896
  %54 = ptrtoint ptr %sap13 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sap13, align 4
  %cmp.not = icmp eq ptr %55, %sap
  br i1 %cmp.not, label %lor.rhs, label %if.end.if.then23_crit_edge, !prof !84

if.end.if.then23_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

lor.rhs:                                          ; preds = %if.end
  %56 = ptrtoint ptr %laddr1.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %laddr1.i, align 8
  %58 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %laddr, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %59)
  %cmp.i61 = icmp eq i8 %57, %59
  br i1 %cmp.i61, label %land.lhs.true.i64, label %lor.rhs.if.then23_crit_edge

lor.rhs.if.then23_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

land.lhs.true.i64:                                ; preds = %lor.rhs
  %60 = ptrtoint ptr %daddr5.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %daddr5.i, align 1
  %62 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %daddr, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %61, i8 %63)
  %cmp10.i63 = icmp eq i8 %61, %63
  br i1 %cmp10.i63, label %land.lhs.true12.i74, label %land.lhs.true.i64.if.then23_crit_edge

land.lhs.true.i64.if.then23_crit_edge:            ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

land.lhs.true12.i74:                              ; preds = %land.lhs.true.i64
  %64 = ptrtoint ptr %mac.i58 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mac.i58, align 4
  %66 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mac.i, align 4
  %xor.i.i67 = xor i32 %67, %65
  %68 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %add.ptr.i.i, align 2
  %70 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx63.i.i, align 2
  %xor37.i.i70 = xor i16 %71, %69
  %xor3.i.i71 = zext i16 %xor37.i.i70 to i32
  %or.i.i72 = or i32 %xor.i.i67, %xor3.i.i71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i72)
  %cmp.i.i73 = icmp eq i32 %or.i.i72, 0
  br i1 %cmp.i.i73, label %llc_estab_match.exit85, label %land.lhs.true12.i74.if.then23_crit_edge

land.lhs.true12.i74.if.then23_crit_edge:          ; preds = %land.lhs.true12.i74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

llc_estab_match.exit85:                           ; preds = %land.lhs.true12.i74
  %72 = ptrtoint ptr %mac19.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mac19.i, align 4
  %74 = ptrtoint ptr %mac21.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mac21.i, align 4
  %xor.i1.i77 = xor i32 %75, %73
  %76 = ptrtoint ptr %add.ptr.i2.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %add.ptr.i2.i, align 2
  %78 = ptrtoint ptr %add.ptr1.i3.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %add.ptr1.i3.i, align 2
  %xor37.i4.i80 = xor i16 %79, %77
  %xor3.i5.i81 = zext i16 %xor37.i4.i80 to i32
  %or.i6.i82 = or i32 %xor.i1.i77, %xor3.i5.i81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i6.i82)
  %cmp.i7.i83.not = icmp eq i32 %or.i6.i82, 0
  br i1 %cmp.i7.i83.not, label %llc_estab_match.exit85.found_crit_edge, label %llc_estab_match.exit85.if.then23_crit_edge, !prof !84

llc_estab_match.exit85.if.then23_crit_edge:       ; preds = %llc_estab_match.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

llc_estab_match.exit85.found_crit_edge:           ; preds = %llc_estab_match.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %found

if.then23:                                        ; preds = %llc_estab_match.exit85.if.then23_crit_edge, %land.lhs.true12.i74.if.then23_crit_edge, %land.lhs.true.i64.if.then23_crit_edge, %lor.rhs.if.then23_crit_edge, %if.end.if.then23_crit_edge
  call fastcc void @sock_put(ptr noundef %add.ptr)
  br label %for.inc

for.inc:                                          ; preds = %if.then23, %llc_estab_match.exit.for.inc_crit_edge, %land.lhs.true12.i.for.inc_crit_edge, %land.lhs.true.i57.for.inc_crit_edge, %land.rhs.for.inc_crit_edge
  %80 = ptrtoint ptr %node.0104 to i32
  call void @__asan_load4_noabort(i32 %80)
  %node.0 = load volatile ptr, ptr %node.0104, align 4
  %81 = ptrtoint ptr %node.0 to i32
  %and.i = and i32 %81, 1
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %for.inc.land.rhs_crit_edge, label %for.end.loopexit

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %82 = ptrtoint ptr %node.0 to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %again.for.end_crit_edge
  %.pre-phi = phi i32 [ %17, %again.for.end_crit_edge ], [ %82, %for.end.loopexit ]
  %shr.i = lshr i32 %.pre-phi, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %shr.i.i)
  %cmp32.not = icmp eq i32 %shr.i, %shr.i.i
  br i1 %cmp32.not, label %for.end.found_crit_edge, label %for.end.again.backedge_crit_edge, !prof !84

for.end.again.backedge_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %again.backedge

for.end.found_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %found

again.backedge:                                   ; preds = %for.end.again.backedge_crit_edge, %refcount_inc_not_zero.exit.again.backedge_crit_edge
  br label %again

found:                                            ; preds = %for.end.found_crit_edge, %llc_estab_match.exit85.found_crit_edge
  %rc.0 = phi ptr [ %add.ptr, %llc_estab_match.exit85.found_crit_edge ], [ null, %for.end.found_crit_edge ]
  %call.i86 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i86, label %found.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i89

found.rcu_read_unlock.exit_crit_edge:             ; preds = %found
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i89:                                ; preds = %found
  %call1.i87 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i87)
  %tobool.not.i88 = icmp eq i32 %call1.i87, 0
  br i1 %tobool.not.i88, label %land.lhs.true.i89.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i91

land.lhs.true.i89.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i89
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i91:                               ; preds = %land.lhs.true.i89
  %.b4.i90 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i90, label %land.lhs.true2.i91.rcu_read_unlock.exit_crit_edge, label %if.then.i92

land.lhs.true2.i91.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i91
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i92:                                      ; preds = %land.lhs.true2.i91
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i92, %land.lhs.true2.i91.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i89.rcu_read_unlock.exit_crit_edge, %found.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !94
  %83 = call i32 @llvm.read_register.i32(metadata !72) #11
  %and.i.i.i.i.i93 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i.i.i93 to ptr
  %preempt_count.i.i.i.i94 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %preempt_count.i.i.i.i94 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %preempt_count.i.i.i.i94, align 4
  %sub.i.i.i = add i32 %86, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i94, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %rc.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @llc_build_offset_table() local_unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc8.for.cond1.preheader_crit_edge, %entry
  %state.020 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8.for.cond1.preheader_crit_edge ]
  %transitions.i = getelementptr [0 x %struct.llc_conn_state], ptr @llc_conn_state_table, i32 0, i32 %state.020, i32 1
  %0 = ptrtoint ptr %transitions.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transitions.i, align 4
  br label %for.body3

for.body3:                                        ; preds = %llc_find_next_offset.exit.for.body3_crit_edge, %for.cond1.preheader
  %next_offset.019 = phi i32 [ 0, %for.cond1.preheader ], [ %add7, %llc_find_next_offset.exit.for.body3_crit_edge ]
  %ev_type.018 = phi i32 [ 0, %for.cond1.preheader ], [ %inc, %llc_find_next_offset.exit.for.body3_crit_edge ]
  %arrayidx5 = getelementptr [12 x [5 x i32]], ptr @llc_offset_table, i32 0, i32 %state.020, i32 %ev_type.018
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %next_offset.019, ptr %arrayidx5, align 4
  %conv.i = and i32 %next_offset.019, 65535
  %add.ptr.i = getelementptr ptr, ptr %1, i32 %conv.i
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool.not3.i = icmp eq ptr %6, null
  br i1 %tobool.not3.i, label %for.body3.llc_find_next_offset.exit_crit_edge, label %for.body3.for.body.i_crit_edge

for.body3.for.body.i_crit_edge:                   ; preds = %for.body3
  br label %for.body.i

for.body3.llc_find_next_offset.exit_crit_edge:    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #13
  br label %llc_find_next_offset.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body3.for.body.i_crit_edge
  %next_trans.05.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr.i, %for.body3.for.body.i_crit_edge ]
  %cnt.04.i = phi i16 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body3.for.body.i_crit_edge ]
  %inc.i = add i16 %cnt.04.i, 1
  %incdec.ptr.i = getelementptr ptr, ptr %next_trans.05.i, i32 1
  %7 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %incdec.ptr.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %for.body.i.llc_find_next_offset.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.llc_find_next_offset.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %llc_find_next_offset.exit

llc_find_next_offset.exit:                        ; preds = %for.body.i.llc_find_next_offset.exit_crit_edge, %for.body3.llc_find_next_offset.exit_crit_edge
  %cnt.0.lcssa.i = phi i16 [ 0, %for.body3.llc_find_next_offset.exit_crit_edge ], [ %inc.i, %for.body.i.llc_find_next_offset.exit_crit_edge ]
  %conv6 = zext i16 %cnt.0.lcssa.i to i32
  %add = add i32 %next_offset.019, 1
  %add7 = add i32 %add, %conv6
  %inc = add nuw nsw i32 %ev_type.018, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.inc8, label %llc_find_next_offset.exit.for.body3_crit_edge

llc_find_next_offset.exit.for.body3_crit_edge:    ; preds = %llc_find_next_offset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3

for.inc8:                                         ; preds = %llc_find_next_offset.exit
  %inc9 = add nuw nsw i32 %state.020, 1
  %exitcond21.not = icmp eq i32 %inc9, 12
  br i1 %exitcond21.not, label %for.end10, label %for.inc8.for.cond1.preheader_crit_edge

for.inc8.for.cond1.preheader_crit_edge:           ; preds = %for.inc8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader

for.end10:                                        ; preds = %for.inc8
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @llc_sap_add_socket(ptr noundef %sap, ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ifindex, align 4
  %mul.i.i.i = mul i32 %3, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 26
  %arrayidx.i = getelementptr %struct.llc_sap, ptr %sap, i32 0, i32 10, i32 %shr.i.i
  %mac.i.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 4, i32 1
  %arrayidx58.i.i.i = getelementptr %struct.llc_sock, ptr %sk, i32 0, i32 4, i32 1, i32 5
  %4 = ptrtoint ptr %arrayidx58.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx58.i.i.i, align 1
  %conv59.i.i.i = zext i8 %5 to i32
  %shl60.i.i.i = shl nuw nsw i32 %conv59.i.i.i, 8
  %add61.i.i.i = add nuw nsw i32 %shl60.i.i.i, -559038731
  %arrayidx63.i.i.i = getelementptr %struct.llc_sock, ptr %sk, i32 0, i32 4, i32 1, i32 4
  %6 = ptrtoint ptr %arrayidx63.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx63.i.i.i, align 1
  %conv64.i.i.i = zext i8 %7 to i32
  %add65.i.i.i = add nuw nsw i32 %add61.i.i.i, %conv64.i.i.i
  %arrayidx67.i.i.i = getelementptr %struct.llc_sock, ptr %sk, i32 0, i32 4, i32 1, i32 3
  %8 = ptrtoint ptr %arrayidx67.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx67.i.i.i, align 1
  %conv68.i.i.i = zext i8 %9 to i32
  %shl69.i.i.i = shl nuw i32 %conv68.i.i.i, 24
  %add70.i.i.i = add i32 %shl69.i.i.i, -559038731
  %arrayidx72.i.i.i = getelementptr %struct.llc_sock, ptr %sk, i32 0, i32 4, i32 1, i32 2
  %10 = ptrtoint ptr %arrayidx72.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx72.i.i.i, align 1
  %conv73.i.i.i = zext i8 %11 to i32
  %shl74.i.i.i = shl nuw nsw i32 %conv73.i.i.i, 16
  %add75.i.i.i = add i32 %add70.i.i.i, %shl74.i.i.i
  %arrayidx77.i.i.i = getelementptr %struct.llc_sock, ptr %sk, i32 0, i32 4, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx77.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx77.i.i.i, align 1
  %conv78.i.i.i = zext i8 %13 to i32
  %shl79.i.i.i = shl nuw nsw i32 %conv78.i.i.i, 8
  %add80.i.i.i = add i32 %add75.i.i.i, %shl79.i.i.i
  %14 = ptrtoint ptr %mac.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mac.i.i, align 1
  %conv83.i.i.i = zext i8 %15 to i32
  %add84.i.i.i = add i32 %add80.i.i.i, %conv83.i.i.i
  %xor85.i.i.i = xor i32 %add65.i.i.i, -559038731
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add65.i.i.i, i32 %add65.i.i.i, i32 14) #11
  %sub87.i.i.i = sub i32 %xor85.i.i.i, %or.i.i.i.i
  %xor88.i.i.i = xor i32 %add84.i.i.i, %sub87.i.i.i
  %or.i1.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i.i.i, i32 %sub87.i.i.i, i32 11) #11
  %sub90.i.i.i = sub i32 %xor88.i.i.i, %or.i1.i.i.i
  %xor91.i.i.i = xor i32 %sub90.i.i.i, %add65.i.i.i
  %or.i2.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i.i.i, i32 %sub90.i.i.i, i32 25) #11
  %sub93.i.i.i = sub i32 %xor91.i.i.i, %or.i2.i.i.i
  %xor94.i.i.i = xor i32 %sub93.i.i.i, %sub87.i.i.i
  %or.i3.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i.i.i, i32 %sub93.i.i.i, i32 16) #11
  %sub96.i.i.i = sub i32 %xor94.i.i.i, %or.i3.i.i.i
  %xor97.i.i.i = xor i32 %sub96.i.i.i, %sub90.i.i.i
  %or.i4.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i.i.i, i32 %sub96.i.i.i, i32 4) #11
  %sub99.i.i.i = sub i32 %xor97.i.i.i, %or.i4.i.i.i
  %xor100.i.i.i = xor i32 %sub99.i.i.i, %sub93.i.i.i
  %or.i5.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i.i.i, i32 %sub99.i.i.i, i32 14) #11
  %sub102.i.i.i = sub i32 %xor100.i.i.i, %or.i5.i.i.i
  %or.i6.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i.i.i, i32 %sub102.i.i.i, i32 24) #11
  %xor103.i.i.i = xor i32 %sub102.i.i.i, %sub96.i.i.i
  %sub105.i.i.i = sub i32 %xor103.i.i.i, %or.i6.i.i.i
  %mul.i.i.i.i = mul i32 %sub105.i.i.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 26
  %arrayidx.i17 = getelementptr %struct.llc_sap, ptr %sap, i32 0, i32 9, i32 %shr.i.i.i
  %refcnt.i = getelementptr inbounds %struct.llc_sap, ptr %sap, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #11
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #11, !srcloc !82
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !83

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %17 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.llc_sap_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !84

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.llc_sap_hold.exit_crit_edge:      ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %llc_sap_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #11
  br label %llc_sap_hold.exit

llc_sap_hold.exit:                                ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.llc_sap_hold.exit_crit_edge
  %sap4 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 3
  %18 = ptrtoint ptr %sap4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %sap, ptr %sap4, align 4
  %sk_lock = getelementptr inbounds %struct.llc_sap, ptr %sap, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %sk_lock) #11
  %19 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %or.i.i = or i32 %21, 8388608
  store i32 %or.i.i, ptr %19, align 4
  %sk_count = getelementptr inbounds %struct.llc_sap, ptr %sap, i32 0, i32 8
  %22 = ptrtoint ptr %sk_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sk_count, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %sk_count, align 4
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #11
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #11, !srcloc !82
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %llc_sap_hold.exit.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !83

llc_sap_hold.exit.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %llc_sap_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %llc_sap_hold.exit
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %25 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !84

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %llc_sap_hold.exit.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %llc_sap_hold.exit.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %sock_hold.exit.i

sock_hold.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge
  %26 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %27 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i17, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %26, align 4
  %pprev.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %30 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %arrayidx.i17, ptr %pprev.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !95
  %31 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %26, ptr %arrayidx.i17, align 4
  %32 = ptrtoint ptr %28 to i32
  %and.i.i.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body49.i.i.i, label %sock_hold.exit.i.sk_nulls_add_node_rcu.exit_crit_edge

sock_hold.exit.i.sk_nulls_add_node_rcu.exit_crit_edge: ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sk_nulls_add_node_rcu.exit

do.body49.i.i.i:                                  ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev51.i.i.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %pprev51.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %26, ptr %pprev51.i.i.i, align 4
  br label %sk_nulls_add_node_rcu.exit

sk_nulls_add_node_rcu.exit:                       ; preds = %do.body49.i.i.i, %sock_hold.exit.i.sk_nulls_add_node_rcu.exit_crit_edge
  %dev_hash_node = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 41
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  %36 = ptrtoint ptr %dev_hash_node to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %35, ptr %dev_hash_node, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %sk_nulls_add_node_rcu.exit.hlist_add_head.exit_crit_edge, label %do.body12.i

sk_nulls_add_node_rcu.exit.hlist_add_head.exit_crit_edge: ; preds = %sk_nulls_add_node_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %sk_nulls_add_node_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %35, i32 0, i32 1
  %37 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %dev_hash_node, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %sk_nulls_add_node_rcu.exit.hlist_add_head.exit_crit_edge
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %dev_hash_node, ptr %arrayidx.i, align 4
  %pprev34.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 41, i32 1
  %39 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %arrayidx.i, ptr %pprev34.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %sk_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @llc_sap_remove_socket(ptr noundef %sap, ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_lock = getelementptr inbounds %struct.llc_sap, ptr %sap, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %sk_lock) #11
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i.i.not.i, label %entry.sk_nulls_del_node_init_rcu.exit_crit_edge, label %if.then.i.i.i

entry.sk_nulls_del_node_init_rcu.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sk_nulls_del_node_init_rcu.exit

if.then.i.i.i:                                    ; preds = %entry
  %2 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %4, ptr %1, align 4
  %6 = ptrtoint ptr %4 to i32
  %and.i.i.i.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i7.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i7.i.i.i, label %do.body13.i.i.i.i, label %if.then.i.i.i.if.then.i_crit_edge

if.then.i.i.i.if.then.i_crit_edge:                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %1, ptr %pprev14.i.i.i.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.if.then.i_crit_edge
  %8 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr null, ptr %pprev.i.i.i.i.i, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  %9 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %skc_refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i = icmp eq i32 %10, 1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !83

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 751, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !86
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i.i, label %if.end.i.sk_nulls_del_node_init_rcu.exit_crit_edge, !prof !83

if.end.i.sk_nulls_del_node_init_rcu.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sk_nulls_del_node_init_rcu.exit

if.then3.i.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  br label %sk_nulls_del_node_init_rcu.exit

sk_nulls_del_node_init_rcu.exit:                  ; preds = %if.then3.i.i.i.i, %if.end.i.sk_nulls_del_node_init_rcu.exit_crit_edge, %entry.sk_nulls_del_node_init_rcu.exit_crit_edge
  %dev_hash_node = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 41
  %12 = ptrtoint ptr %dev_hash_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_hash_node, align 4
  %pprev2.i.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 41, i32 1
  %14 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pprev2.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %13, ptr %15, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %sk_nulls_del_node_init_rcu.exit.hlist_del.exit_crit_edge, label %do.body13.i.i

sk_nulls_del_node_init_rcu.exit.hlist_del.exit_crit_edge: ; preds = %sk_nulls_del_node_init_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %sk_nulls_del_node_init_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %sk_nulls_del_node_init_rcu.exit.hlist_del.exit_crit_edge
  %18 = ptrtoint ptr %dev_hash_node to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %dev_hash_node, align 4
  %19 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %sk_count = getelementptr inbounds %struct.llc_sap, ptr %sap, i32 0, i32 8
  %20 = ptrtoint ptr %sk_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sk_count, align 4
  %dec = add i32 %21, -1
  store i32 %dec, ptr %sk_count, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %sk_lock) #11
  %refcnt.i = getelementptr inbounds %struct.llc_sap, ptr %sap, i32 0, i32 3
  %call.i.i.i.i.i.i7 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #11
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #11, !srcloc !86
  %asmresult.i.i.i.i.i.i.i8 = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i8)
  %cmp.i.i.i.i9 = icmp eq i32 %asmresult.i.i.i.i.i.i.i8, 1
  br i1 %cmp.i.i.i.i9, label %if.then.i10, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i8)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i8, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.llc_sap_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !84

if.end5.i.i.i.i.llc_sap_put.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %llc_sap_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #11
  br label %llc_sap_put.exit

if.then.i10:                                      ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !87
  tail call void @llc_sap_close(ptr noundef %sap) #11
  br label %llc_sap_put.exit

llc_sap_put.exit:                                 ; preds = %if.then.i10, %if.then10.i.i.i.i, %if.end5.i.i.i.i.llc_sap_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @llc_conn_handler(ptr noundef %sap, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %saddr = alloca %struct.llc_addr, align 1
  %daddr = alloca %struct.llc_addr, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %saddr) #11
  %0 = call ptr @memset(ptr %saddr, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %daddr) #11
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %1 = getelementptr inbounds i8, ptr %daddr, i32 1
  %2 = call ptr @memset(ptr %1, i32 255, i32 6)
  %3 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %4)
  %cmp.i = icmp eq i16 %4, 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i.i, align 8
  br i1 %cmp.i, label %if.then.i61, label %llc_pdu_decode_sa.exit

llc_pdu_decode_sa.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i53 = zext i16 %8 to i32
  %add.ptr.i.i.i54 = getelementptr i8, ptr %6, i32 %conv.i.i.i53
  %ssap1.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i54, i32 0, i32 1
  %9 = ptrtoint ptr %ssap1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ssap1.i, align 1
  %11 = and i8 %10, -2
  %12 = ptrtoint ptr %saddr to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %saddr, align 1
  br label %llc_pdu_decode_da.exit

if.then.i61:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %13 = getelementptr inbounds %struct.llc_addr, ptr %daddr, i32 0, i32 1
  %14 = getelementptr inbounds %struct.llc_addr, ptr %saddr, i32 0, i32 1
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %15 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %16 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %conv.i.i.i
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %17 = call ptr @memcpy(ptr %14, ptr %h_source.i, i32 6)
  %network_header.i.i.i81 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %18 = ptrtoint ptr %network_header.i.i.i81 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %network_header.i.i.i81, align 4
  %conv.i.i.i5382 = zext i16 %19 to i32
  %add.ptr.i.i.i5483 = getelementptr i8, ptr %6, i32 %conv.i.i.i5382
  %ssap1.i84 = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i5483, i32 0, i32 1
  %20 = ptrtoint ptr %ssap1.i84 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ssap1.i84, align 1
  %22 = and i8 %21, -2
  %23 = ptrtoint ptr %saddr to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %saddr, align 1
  %24 = call ptr @memcpy(ptr %13, ptr %add.ptr.i.i.i, i32 6)
  br label %llc_pdu_decode_da.exit

llc_pdu_decode_da.exit:                           ; preds = %if.then.i61, %llc_pdu_decode_sa.exit
  %add.ptr.i.i.i5485 = phi ptr [ %add.ptr.i.i.i54, %llc_pdu_decode_sa.exit ], [ %add.ptr.i.i.i5483, %if.then.i61 ]
  %25 = ptrtoint ptr %add.ptr.i.i.i5485 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr.i.i.i5485, align 1
  %27 = and i8 %26, -2
  %28 = ptrtoint ptr %daddr to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %daddr, align 1
  %call.i = call fastcc ptr @__llc_lookup_established(ptr noundef %sap, ptr noundef nonnull %saddr, ptr noundef nonnull %daddr) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %cond.false.i, label %llc_pdu_decode_da.exit.if.end_crit_edge

llc_pdu_decode_da.exit.if.end_crit_edge:          ; preds = %llc_pdu_decode_da.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cond.false.i:                                     ; preds = %llc_pdu_decode_da.exit
  %call.i.i = call fastcc ptr @__llc_lookup_listener(ptr noundef %sap, ptr noundef nonnull %daddr) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %__llc_lookup.exit, label %cond.false.i.if.end_crit_edge

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

__llc_lookup.exit:                                ; preds = %cond.false.i
  %call1.i.i = tail call fastcc ptr @__llc_lookup_listener(ptr noundef %sap, ptr noundef nonnull @llc_lookup_listener.null_addr) #11
  %tobool.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not, label %drop, label %__llc_lookup.exit.if.end_crit_edge

__llc_lookup.exit.if.end_crit_edge:               ; preds = %__llc_lookup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %__llc_lookup.exit.if.end_crit_edge, %cond.false.i.if.end_crit_edge, %llc_pdu_decode_da.exit.if.end_crit_edge
  %cond.i89 = phi ptr [ %call1.i.i, %__llc_lookup.exit.if.end_crit_edge ], [ %call.i.i, %cond.false.i.if.end_crit_edge ], [ %call.i, %llc_pdu_decode_da.exit.if.end_crit_edge ]
  %sk_lock = getelementptr inbounds %struct.sock, ptr %cond.i89, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #11
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %cond.i89, i32 0, i32 4
  %29 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %30)
  %cmp = icmp eq i8 %30, 10
  br i1 %cmp, label %if.then7, label %if.else, !prof !83

if.then7:                                         ; preds = %if.end
  %31 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %call8 = call fastcc ptr @llc_create_incoming_sock(ptr noundef nonnull %cond.i89, ptr noundef %33, ptr noundef nonnull %saddr, ptr noundef nonnull %daddr)
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then7.drop_unlock_crit_edge, label %cleanup.thread

if.then7.drop_unlock_crit_edge:                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop_unlock

cleanup.thread:                                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @skb_set_owner_r(ptr noundef %skb, ptr noundef nonnull %call8)
  br label %if.end12

if.else:                                          ; preds = %if.end
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %34 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i66 = icmp eq ptr %35, null
  br i1 %tobool.not.i66, label %do.body.i, label %if.then.i67

if.then.i67:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %35(ptr noundef %skb) #11
  %36 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %destructor.i, align 4
  %37 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %37, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %if.else
  %39 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %tobool3.not.i = icmp eq ptr %41, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !84

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #11, !srcloc !96
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i67
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %cond.i89, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !82
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %skb_orphan.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !83

skb_orphan.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %skb_orphan.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %43 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %.not.i.i.i.i = icmp sgt i32 %43, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !84

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %skb_orphan.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %skb_orphan.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #11
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %44 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %cond.i89, ptr %44, align 4
  %46 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @sock_efree, ptr %destructor.i, align 4
  br label %if.end12

if.end12:                                         ; preds = %sock_hold.exit, %cleanup.thread
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %cond.i89, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %if.end12.sock_owned_by_user.exit_crit_edge

if.end12.sock_owned_by_user.exit_crit_edge:       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_owned_by_user.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %if.end12
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %cond.i89, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_owned_by_user.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %47 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.i68 = icmp eq i32 %47, 0
  br i1 %tobool.not.i.i68, label %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_user.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i69, !prof !84

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_owned_by_user.exit

if.then.i.i69:                                    ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 1750, i32 noundef 9, ptr noundef null) #11
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i69, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %if.end12.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr inbounds %struct.sock, ptr %cond.i89, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.i.not = icmp eq i32 %49, 0
  br i1 %tobool.i.not, label %if.then14, label %if.else16

if.then14:                                        ; preds = %sock_owned_by_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %50 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 4, ptr %cb.i.i, align 1
  %reason.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 3
  %51 = ptrtoint ptr %reason.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %reason.i, align 1
  %call1.i = tail call i32 @llc_conn_state_process(ptr noundef nonnull %cond.i89, ptr noundef %skb) #11
  br label %out

if.else16:                                        ; preds = %sock_owned_by_user.exit
  %arrayidx.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 47
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 2, ptr %arrayidx.i, align 1
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %cond.i89, i32 0, i32 15
  %53 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %sk_rcvbuf, align 8
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %cond.i89, i32 0, i32 9
  %len.i.i = getelementptr inbounds %struct.sock, ptr %cond.i89, i32 0, i32 9, i32 1
  %55 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len.i.i, align 4
  %call.i.i.i.i70 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i.i, i32 noundef 4) #11
  %57 = ptrtoint ptr %sk_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %sk_backlog.i.i, align 4
  %add.i.i = add i32 %58, %56
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %54)
  %cmp.i.i = icmp ugt i32 %add.i.i, %54
  br i1 %cmp.i.i, label %if.else16.drop_unlock_crit_edge, label %if.end.i

if.else16.drop_unlock_crit_edge:                  ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop_unlock

if.end.i:                                         ; preds = %if.else16
  %pfmemalloc.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %59 = ptrtoint ptr %pfmemalloc.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load.i.i = load i8, ptr %pfmemalloc.i.i, align 2
  %60 = and i8 %bf.load.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.i.not.i = icmp eq i8 %60, 0
  br i1 %tobool.i.not.i, label %if.end.i.if.end4.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %61 = getelementptr inbounds %struct.sock_common, ptr %cond.i89, i32 0, i32 13
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %61, align 4
  %64 = and i32 %63, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.i10.not.i = icmp eq i32 %64, 0
  br i1 %tobool.i10.not.i, label %land.lhs.true.i.drop_unlock_crit_edge, label %land.lhs.true.i.if.end4.i_crit_edge

land.lhs.true.i.if.end4.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

land.lhs.true.i.drop_unlock_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop_unlock

if.end4.i:                                        ; preds = %land.lhs.true.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  %65 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 8
  %and.i.i.i.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end4.i.skb_dst_force.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.end4.i.skb_dst_force.exit.i.i_crit_edge:       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst_force.exit.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end4.i
  %call.i.i.i.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.skb_dst_is_noref.exit.i.i.i_crit_edge

land.lhs.true.i.i.i.i.i.skb_dst_is_noref.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst_is_noref.exit.i.i.i

land.rhs.i.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.i
  %call2.i.i.i.i.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i.i)
  %tobool3.not.i.i.i.i.i = icmp eq i32 %call2.i.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i.i, label %do.end.i.i.i.i.i, label %land.rhs.i.i.i.i.i.skb_dst_is_noref.exit.i.i.i_crit_edge, !prof !83

land.rhs.i.i.i.i.i.skb_dst_is_noref.exit.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst_is_noref.exit.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst_is_noref.exit.i.i.i

skb_dst_is_noref.exit.i.i.i:                      ; preds = %do.end.i.i.i.i.i, %land.rhs.i.i.i.i.i.skb_dst_is_noref.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.skb_dst_is_noref.exit.i.i.i_crit_edge
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %65, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %69)
  %tobool1.i.i.i.i = icmp ugt i32 %69, 1
  br i1 %tobool1.i.i.i.i, label %if.then.i.i.i, label %skb_dst_is_noref.exit.i.i.i.skb_dst_force.exit.i.i_crit_edge

skb_dst_is_noref.exit.i.i.i.skb_dst_force.exit.i.i_crit_edge: ; preds = %skb_dst_is_noref.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst_force.exit.i.i

if.then.i.i.i:                                    ; preds = %skb_dst_is_noref.exit.i.i.i
  %and.i2.i.i.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i.i)
  %tobool.not.i3.i.i.i = icmp eq i32 %and.i2.i.i.i, 0
  br i1 %tobool.not.i3.i.i.i, label %if.then.i.i.i.skb_dst.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.i.i.skb_dst.exit.i.i.i_crit_edge:       ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i.i.i
  %call.i.i.i11.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i11.i)
  %tobool1.not.i.i.i.i71 = icmp eq i32 %call.i.i.i11.i, 0
  br i1 %tobool1.not.i.i.i.i71, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.skb_dst.exit.i.i.i_crit_edge

land.lhs.true.i.i.i.i.skb_dst.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %call2.i.i.i.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %do.end.i.i.i.i, label %land.rhs.i.i.i.i.skb_dst.exit.i.i.i_crit_edge, !prof !83

land.rhs.i.i.i.i.skb_dst.exit.i.i.i_crit_edge:    ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit.i.i.i

skb_dst.exit.i.i.i:                               ; preds = %do.end.i.i.i.i, %land.rhs.i.i.i.i.skb_dst.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.skb_dst.exit.i.i.i_crit_edge, %if.then.i.i.i.skb_dst.exit.i.i.i_crit_edge
  %70 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %65, align 8
  %and25.i.i.i.i = and i32 %71, -2
  %72 = inttoptr i32 %and25.i.i.i.i to ptr
  %call2.i.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool.not.i.i.i72 = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool.not.i.i.i72, label %do.end.i.i.i, label %skb_dst.exit.i.i.i.if.end.i.i.i_crit_edge, !prof !83

skb_dst.exit.i.i.i.if.end.i.i.i_crit_edge:        ; preds = %skb_dst.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %skb_dst.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 316, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %skb_dst.exit.i.i.i.if.end.i.i.i_crit_edge
  %__refcnt.i.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %72, i32 0, i32 18
  %call.i.i.i.i.i.i73 = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !97
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i.i.i, i32 1, i32 3, i32 1) #11
  %73 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i.i.i, ptr %__refcnt.i.i.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i.i.i) #11, !srcloc !98
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i.i, label %if.end.i.i.i.dst_hold_safe.exit.i.i.i_crit_edge, label %do.end11.i.i.i.i.i.i.i.i

if.end.i.i.i.dst_hold_safe.exit.i.i.i_crit_edge:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_hold_safe.exit.i.i.i

do.end11.i.i.i.i.i.i.i.i:                         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !99
  br label %dst_hold_safe.exit.i.i.i

dst_hold_safe.exit.i.i.i:                         ; preds = %do.end11.i.i.i.i.i.i.i.i, %if.end.i.i.i.dst_hold_safe.exit.i.i.i_crit_edge
  %spec.select.i.i.i = phi ptr [ null, %if.end.i.i.i.dst_hold_safe.exit.i.i.i_crit_edge ], [ %72, %do.end11.i.i.i.i.i.i.i.i ]
  %74 = ptrtoint ptr %spec.select.i.i.i to i32
  %75 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %65, align 8
  %tobool27.not.i.i.i = icmp eq ptr %spec.select.i.i.i, null
  %slow_gro.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %76 = ptrtoint ptr %slow_gro.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %bf.load.i.i.i = load i32, ptr %slow_gro.i.i.i, align 2
  %bf.load.mask.i.i.i = and i32 %bf.load.i.i.i, 4096
  %bf.shl.i.i.i = select i1 %tobool27.not.i.i.i, i32 %bf.load.mask.i.i.i, i32 4096
  %bf.clear34.i.i.i = and i32 %bf.load.i.i.i, -4097
  %bf.set.i.i.i = or i32 %bf.shl.i.i.i, %bf.clear34.i.i.i
  store i32 %bf.set.i.i.i, ptr %slow_gro.i.i.i, align 2
  br label %skb_dst_force.exit.i.i

skb_dst_force.exit.i.i:                           ; preds = %dst_hold_safe.exit.i.i.i, %skb_dst_is_noref.exit.i.i.i.skb_dst_force.exit.i.i_crit_edge, %if.end4.i.skb_dst_force.exit.i.i_crit_edge
  %tail.i.i = getelementptr inbounds %struct.sock, ptr %cond.i89, i32 0, i32 9, i32 3
  %77 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tail.i.i, align 4
  %tobool.not.i.i74 = icmp eq ptr %78, null
  br i1 %tobool.not.i.i74, label %do.body2.i.i, label %if.else.i.i

do.body2.i.i:                                     ; preds = %skb_dst_force.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %head.i.i = getelementptr inbounds %struct.sock, ptr %cond.i89, i32 0, i32 9, i32 2
  %79 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %skb, ptr %head.i.i, align 4
  br label %sk_add_backlog.exit

if.else.i.i:                                      ; preds = %skb_dst_force.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %skb, ptr %78, align 8
  br label %sk_add_backlog.exit

sk_add_backlog.exit:                              ; preds = %if.else.i.i, %do.body2.i.i
  %81 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %skb, ptr %tail.i.i, align 4
  %82 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %skb, align 8
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %83 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %truesize.i, align 8
  %85 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %len.i.i, align 4
  %add.i = add i32 %86, %84
  store i32 %add.i, ptr %len.i.i, align 4
  br label %out

out:                                              ; preds = %drop_unlock, %sk_add_backlog.exit, %if.then14
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #11
  %skc_refcnt.i75 = getelementptr inbounds %struct.sock_common, ptr %cond.i89, i32 0, i32 19
  %call.i.i.i.i.i.i76 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i75, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i75, i32 1, i32 3, i32 1) #11
  %87 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i75, ptr %skc_refcnt.i75, i32 1, ptr elementtype(i32) %skc_refcnt.i75) #11, !srcloc !86
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %87, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i78, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i77 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i77, label %if.end5.i.i.i.i.cleanup24_crit_edge, label %if.then10.i.i.i.i, !prof !84

if.end5.i.i.i.i.cleanup24_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup24

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i75, i32 noundef 3) #11
  br label %cleanup24

if.then.i78:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !87
  tail call void @sk_free(ptr noundef nonnull %cond.i89) #11
  br label %cleanup24

drop:                                             ; preds = %__llc_lookup.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup24

drop_unlock:                                      ; preds = %land.lhs.true.i.drop_unlock_crit_edge, %if.else16.drop_unlock_crit_edge, %if.then7.drop_unlock_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %out

cleanup24:                                        ; preds = %drop, %if.then.i78, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup24_crit_edge
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %daddr) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %saddr) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @llc_create_incoming_sock(ptr nocapture noundef readonly %sk, ptr noundef %dev, ptr nocapture noundef readonly %saddr, ptr nocapture noundef readonly %daddr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %skc_family, align 8
  %conv = zext i16 %3 to i32
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %4 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_prot, align 8
  %call2 = tail call ptr @llc_sk_alloc(ptr noundef %1, i32 noundef %conv, i32 noundef 2592, ptr noundef %5, i32 noundef 0)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %laddr = getelementptr inbounds %struct.llc_sock, ptr %call2, i32 0, i32 4
  %6 = call ptr @memcpy(ptr %laddr, ptr %daddr, i32 7)
  %daddr5 = getelementptr inbounds %struct.llc_sock, ptr %call2, i32 0, i32 5
  %7 = call ptr @memcpy(ptr %daddr5, ptr %saddr, i32 7)
  %dev6 = getelementptr inbounds %struct.llc_sock, ptr %call2, i32 0, i32 6
  %8 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %dev6, align 8
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %if.end.dev_hold.exit_crit_edge, label %do.body1.i

if.end.dev_hold.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_hold.exit

do.body1.i:                                       ; preds = %if.end
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !100
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %10 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcpu_refcnt.i, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !72) #11
  %and.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %18, %12
  %19 = inttoptr i32 %add.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add13.i = add i32 %21, 1
  store i32 %add13.i, ptr %19, align 4
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !101
  %and.i.i.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !83

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #11, !srcloc !102
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %if.end.dev_hold.exit_crit_edge
  %sap = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 3
  %23 = ptrtoint ptr %sap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sap, align 4
  tail call void @llc_sap_add_socket(ptr noundef %24, ptr noundef nonnull %call2)
  %25 = ptrtoint ptr %sap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sap, align 4
  %refcnt.i = getelementptr inbounds %struct.llc_sap, ptr %26, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #11
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #11, !srcloc !82
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %dev_hold.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !83

dev_hold.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %dev_hold.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %28 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %.not.i.i.i.i = icmp sgt i32 %28, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.out_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !84

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.out_crit_edge:                    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %dev_hold.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %dev_hold.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #11
  br label %out

out:                                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.out_crit_edge, %entry.out_crit_edge
  ret ptr %call2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @skb_set_owner_r(ptr noundef %skb, ptr noundef %sk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %0 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %1(ptr noundef %skb) #11
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %entry
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool3.not.i = icmp eq ptr %4, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !84

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #11, !srcloc !96
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i
  %5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %sk, ptr %5, align 4
  %7 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @sock_rfree, ptr %destructor.i, align 4
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %8 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %truesize, align 8
  %sk_backlog = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %sk_backlog, i32 1, i32 3, i32 1) #11
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog, ptr %sk_backlog, i32 %9, ptr elementtype(i32) %sk_backlog) #11, !srcloc !103
  %skc_prot.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %11 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skc_prot.i.i, align 8
  %memory_allocated.i.i = getelementptr inbounds %struct.proto, ptr %12, i32 0, i32 32
  %13 = ptrtoint ptr %memory_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %memory_allocated.i.i, align 4
  %tobool.i.not.i = icmp eq ptr %14, null
  br i1 %tobool.i.not.i, label %skb_orphan.exit.sk_mem_charge.exit_crit_edge, label %if.end.i

skb_orphan.exit.sk_mem_charge.exit_crit_edge:     ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sk_mem_charge.exit

if.end.i:                                         ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %truesize, align 8
  %sk_forward_alloc.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %17 = ptrtoint ptr %sk_forward_alloc.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sk_forward_alloc.i, align 8
  %sub.i = sub i32 %18, %16
  store i32 %sub.i, ptr %sk_forward_alloc.i, align 8
  br label %sk_mem_charge.exit

sk_mem_charge.exit:                               ; preds = %if.end.i, %skb_orphan.exit.sk_mem_charge.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_efree(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @llc_sk_alloc(ptr noundef %net, i32 noundef %family, i32 noundef %priority, ptr noundef %prot, i32 noundef %kern) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @sk_alloc(ptr noundef %net, i32 noundef %family, i32 noundef %priority, ptr noundef %prot, i32 noundef %kern) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %state.i = getelementptr inbounds %struct.llc_sock, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %state.i, align 8
  %dec_cntr.i = getelementptr inbounds %struct.llc_sock, ptr %call, i32 0, i32 36
  %1 = ptrtoint ptr %dec_cntr.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 2, ptr %dec_cntr.i, align 1
  %inc_cntr.i = getelementptr inbounds %struct.llc_sock, ptr %call, i32 0, i32 35
  %2 = ptrtoint ptr %inc_cntr.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %inc_cntr.i, align 2
  %connect_step.i = getelementptr inbounds %struct.llc_sock, ptr %call, i32 0, i32 37
  %3 = ptrtoint ptr %connect_step.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %connect_step.i, align 4
  %dec_step.i = getelementptr inbounds %struct.llc_sock, ptr %call, i32 0, i32 34
  %4 = ptrtoint ptr %dec_step.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %dec_step.i, align 1
  %ack_timer.i = getelementptr inbounds %struct.llc_sock, ptr %call, i32 0, i32 13
  tail call void @init_timer_key(ptr noundef %ack_timer.i, ptr noundef nonnull @llc_conn_ack_tmr_cb, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull @llc_sk_init.__key) #11
  %5 = load i32, ptr @sysctl_llc2_ack_timeout, align 4
  %expire.i = getelementptr inbounds %struct.llc_sock, ptr %call, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %expire.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %expire.i, align 8
  %pf_cycle_timer.i = getelementptr inbounds %struct.llc_sock, ptr %call, i32 0, i32 14
  tail call void @init_timer_key(ptr noundef %pf_cycle_timer.i, ptr noundef nonnull @llc_conn_pf_cycle_tmr_cb, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @llc_sk_init.__key.24) #11
  %7 = load i32, ptr @sysctl_llc2_p_timeout, align 4
  %expire7.i = getelementptr inbounds %struct.llc_sock, ptr %call, i32 0, i32 14, i32 1
  %8 = ptrtoint ptr %expire7.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %expire7.i, align 4
  %rej_sent_timer.i = getelementptr inbounds %struct.llc_sock, ptr %call, i32 0, i32 15
  tail call void @init_timer_key(ptr noundef %rej_sent_timer.i, ptr noundef nonnull @llc_conn_rej_tmr_cb, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @llc_sk_init.__key.26) #11
  %9 = load i32, ptr @sysctl_llc2_rej_timeout, align 4
  %expire13.i = getelementptr inbounds %struct.llc_sock, ptr %call, i32 0, i32 15, i32 1
  %10 = ptrtoint ptr %expire13.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %expire13.i, align 8
  %busy_state_timer.i = getelementptr inbounds %struct.llc_sock, ptr %call, i32 0, i32 16
  tail call void @init_timer_key(ptr noundef %busy_state_timer.i, ptr noundef nonnull @llc_conn_busy_tmr_cb, i32 noundef 0, ptr noundef nonnull @.str.29, ptr noundef nonnull @llc_sk_init.__key.28) #11
  %11 = load i32, ptr @sysctl_llc2_busy_timeout, align 4
  %expire19.i = getelementptr inbounds %struct.llc_sock, ptr %call, i32 0, i32 16, i32 1
  %12 = ptrtoint ptr %expire19.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %expire19.i, align 4
  %n2.i = getelementptr inbounds %struct.llc_sock, ptr %call, i32 0, i32 19
  %13 = ptrtoint ptr %n2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %n2.i, align 4
  %k.i = getelementptr inbounds %struct.llc_sock, ptr %call, i32 0, i32 21
  %14 = ptrtoint ptr %k.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %k.i, align 4
  %rw.i = getelementptr inbounds %struct.llc_sock, ptr %call, i32 0, i32 22
  %15 = ptrtoint ptr %rw.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -128, ptr %rw.i, align 1
  %pdu_unack_q.i = getelementptr inbounds %struct.llc_sock, ptr %call, i32 0, i32 29
  %lock.i.i = getelementptr inbounds %struct.llc_sock, ptr %call, i32 0, i32 29, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %16 = ptrtoint ptr %pdu_unack_q.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pdu_unack_q.i, ptr %pdu_unack_q.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.llc_sock, ptr %call, i32 0, i32 29, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %pdu_unack_q.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.llc_sock, ptr %call, i32 0, i32 29, i32 1
  %18 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %qlen.i.i.i, align 4
  %sk_backlog_rcv.i = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 80
  %19 = ptrtoint ptr %sk_backlog_rcv.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @llc_backlog_rcv, ptr %sk_backlog_rcv.i, align 4
  tail call void @sock_init_data(ptr noundef null, ptr noundef nonnull %call) #11
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @llc_sk_stop_all_timers(ptr noundef %sk, i1 noundef zeroext %sync) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pf_cycle_timer = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 14
  br i1 %sync, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @del_timer_sync(ptr noundef %pf_cycle_timer) #11
  %ack_timer = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 13
  %call3 = tail call i32 @del_timer_sync(ptr noundef %ack_timer) #11
  %rej_sent_timer = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 15
  %call5 = tail call i32 @del_timer_sync(ptr noundef %rej_sent_timer) #11
  %busy_state_timer = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 16
  %call7 = tail call i32 @del_timer_sync(ptr noundef %busy_state_timer) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = tail call i32 @del_timer(ptr noundef %pf_cycle_timer) #11
  %ack_timer11 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 13
  %call13 = tail call i32 @del_timer(ptr noundef %ack_timer11) #11
  %rej_sent_timer14 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 15
  %call16 = tail call i32 @del_timer(ptr noundef %rej_sent_timer14) #11
  %busy_state_timer17 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 16
  %call19 = tail call i32 @del_timer(ptr noundef %busy_state_timer17) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ack_must_be_send = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 10
  %0 = ptrtoint ptr %ack_must_be_send to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %ack_must_be_send, align 1
  %ack_pf = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 32
  %1 = ptrtoint ptr %ack_pf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %ack_pf, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @llc_sk_free(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %state, align 8
  %pf_cycle_timer.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 14
  %call1.i = tail call i32 @del_timer_sync(ptr noundef %pf_cycle_timer.i) #11
  %ack_timer.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 13
  %call3.i = tail call i32 @del_timer_sync(ptr noundef %ack_timer.i) #11
  %rej_sent_timer.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 15
  %call5.i = tail call i32 @del_timer_sync(ptr noundef %rej_sent_timer.i) #11
  %busy_state_timer.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 16
  %call7.i = tail call i32 @del_timer_sync(ptr noundef %busy_state_timer.i) #11
  %ack_must_be_send.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 10
  %1 = ptrtoint ptr %ack_must_be_send.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %ack_must_be_send.i, align 1
  %ack_pf.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 32
  %2 = ptrtoint ptr %ack_pf.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %ack_pf.i, align 1
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %sk_receive_queue) #11
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  tail call void @skb_queue_purge(ptr noundef %sk_write_queue) #11
  %pdu_unack_q = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 29
  tail call void @skb_queue_purge(ptr noundef %pdu_unack_q) #11
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !86
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !84

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #11
  br label %sock_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !87
  tail call void @sk_free(ptr noundef %sk) #11
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @llc_sk_reset(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @llc_conn_ac_stop_all_timers(ptr noundef %sk, ptr noundef null) #11
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  tail call void @skb_queue_purge(ptr noundef %sk_write_queue) #11
  %pdu_unack_q = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 29
  tail call void @skb_queue_purge(ptr noundef %pdu_unack_q) #11
  %remote_busy_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 27
  %0 = ptrtoint ptr %remote_busy_flag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %remote_busy_flag, align 2
  %cause_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 28
  %1 = ptrtoint ptr %cause_flag to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %cause_flag, align 1
  %retry_count = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 9
  %2 = ptrtoint ptr %retry_count to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %retry_count, align 4
  tail call void @llc_conn_set_p_flag(ptr noundef %sk, i8 noundef zeroext 0) #11
  %f_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 24
  %3 = ptrtoint ptr %f_flag to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %f_flag, align 1
  %s_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 25
  %4 = ptrtoint ptr %s_flag to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %s_flag, align 8
  %ack_pf = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 32
  %5 = ptrtoint ptr %ack_pf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %ack_pf, align 1
  %first_pdu_Ns = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 11
  %6 = ptrtoint ptr %first_pdu_Ns to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %first_pdu_Ns, align 2
  %ack_must_be_send = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 10
  %7 = ptrtoint ptr %ack_must_be_send to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %ack_must_be_send, align 1
  %dec_step = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 34
  %8 = ptrtoint ptr %dec_step to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %dec_step, align 1
  %inc_cntr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 35
  %9 = ptrtoint ptr %inc_cntr to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %inc_cntr, align 2
  %dec_cntr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 36
  %10 = ptrtoint ptr %dec_cntr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %dec_cntr, align 1
  %X = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 31
  %11 = ptrtoint ptr %X to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %X, align 2
  %failed_data_req = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 33
  %12 = ptrtoint ptr %failed_data_req to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %failed_data_req, align 8
  %last_nr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 38
  %13 = ptrtoint ptr %last_nr to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %last_nr, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_conn_ac_stop_all_timers(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_conn_set_p_flag(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

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
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

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
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_sap_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__llc_lookup_listener(ptr noundef %sap, ptr nocapture noundef readonly %laddr) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mac.i = getelementptr inbounds %struct.llc_addr, ptr %laddr, i32 0, i32 1
  %arrayidx58.i.i = getelementptr %struct.llc_addr, ptr %laddr, i32 0, i32 1, i32 5
  %0 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx58.i.i, align 1
  %conv59.i.i = zext i8 %1 to i32
  %shl60.i.i = shl nuw nsw i32 %conv59.i.i, 8
  %add61.i.i = add nuw nsw i32 %shl60.i.i, -559038731
  %arrayidx63.i.i = getelementptr %struct.llc_addr, ptr %laddr, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx63.i.i, align 1
  %conv64.i.i = zext i8 %3 to i32
  %add65.i.i = add nuw nsw i32 %add61.i.i, %conv64.i.i
  %arrayidx67.i.i = getelementptr %struct.llc_addr, ptr %laddr, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx67.i.i, align 1
  %conv68.i.i = zext i8 %5 to i32
  %shl69.i.i = shl nuw i32 %conv68.i.i, 24
  %add70.i.i = add i32 %shl69.i.i, -559038731
  %arrayidx72.i.i = getelementptr %struct.llc_addr, ptr %laddr, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %arrayidx72.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx72.i.i, align 1
  %conv73.i.i = zext i8 %7 to i32
  %shl74.i.i = shl nuw nsw i32 %conv73.i.i, 16
  %add75.i.i = add i32 %add70.i.i, %shl74.i.i
  %arrayidx77.i.i = getelementptr %struct.llc_addr, ptr %laddr, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx77.i.i, align 1
  %conv78.i.i = zext i8 %9 to i32
  %shl79.i.i = shl nuw nsw i32 %conv78.i.i, 8
  %add80.i.i = add i32 %add75.i.i, %shl79.i.i
  %10 = ptrtoint ptr %mac.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mac.i, align 1
  %conv83.i.i = zext i8 %11 to i32
  %add84.i.i = add i32 %add80.i.i, %conv83.i.i
  %xor85.i.i = xor i32 %add65.i.i, -559038731
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add65.i.i, i32 %add65.i.i, i32 14) #11
  %sub87.i.i = sub i32 %xor85.i.i, %or.i.i.i
  %xor88.i.i = xor i32 %add84.i.i, %sub87.i.i
  %or.i1.i.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i.i, i32 %sub87.i.i, i32 11) #11
  %sub90.i.i = sub i32 %xor88.i.i, %or.i1.i.i
  %xor91.i.i = xor i32 %sub90.i.i, %add65.i.i
  %or.i2.i.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i.i, i32 %sub90.i.i, i32 25) #11
  %sub93.i.i = sub i32 %xor91.i.i, %or.i2.i.i
  %xor94.i.i = xor i32 %sub93.i.i, %sub87.i.i
  %or.i3.i.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i.i, i32 %sub93.i.i, i32 16) #11
  %sub96.i.i = sub i32 %xor94.i.i, %or.i3.i.i
  %xor97.i.i = xor i32 %sub96.i.i, %sub90.i.i
  %or.i4.i.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i.i, i32 %sub96.i.i, i32 4) #11
  %sub99.i.i = sub i32 %xor97.i.i, %or.i4.i.i
  %xor100.i.i = xor i32 %sub99.i.i, %sub93.i.i
  %or.i5.i.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i.i, i32 %sub99.i.i, i32 14) #11
  %sub102.i.i = sub i32 %xor100.i.i, %or.i5.i.i
  %or.i6.i.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i.i, i32 %sub102.i.i, i32 24) #11
  %xor103.i.i = xor i32 %sub102.i.i, %sub96.i.i
  %sub105.i.i = sub i32 %xor103.i.i, %or.i6.i.i
  %mul.i.i.i = mul i32 %sub105.i.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 26
  %arrayidx = getelementptr %struct.llc_sap, ptr %sap, i32 0, i32 9, i32 %shr.i.i
  %12 = tail call i32 @llvm.read_register.i32(metadata !72) #11
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !91
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.again.preheader_crit_edge, label %land.lhs.true.i

entry.again.preheader_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %again.preheader

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.again.preheader_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.again.preheader_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %again.preheader

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.again.preheader_crit_edge, label %if.then.i

land.lhs.true2.i.again.preheader_crit_edge:       ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %again.preheader

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #11
  br label %again.preheader

again.preheader:                                  ; preds = %if.then.i, %land.lhs.true2.i.again.preheader_crit_edge, %land.lhs.true.i.again.preheader_crit_edge, %entry.again.preheader_crit_edge
  br label %again

again:                                            ; preds = %again.backedge, %again.preheader
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !104
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %node.093 = load volatile ptr, ptr %arrayidx, align 4
  %17 = ptrtoint ptr %node.093 to i32
  %and.i94 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i94)
  %tobool.not95 = icmp eq i32 %and.i94, 0
  br i1 %tobool.not95, label %again.land.rhs_crit_edge, label %again.for.end_crit_edge

again.for.end_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

again.land.rhs_crit_edge:                         ; preds = %again
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %again.land.rhs_crit_edge
  %node.096 = phi ptr [ %node.0, %for.inc.land.rhs_crit_edge ], [ %node.093, %again.land.rhs_crit_edge ]
  %add.ptr = getelementptr i8, ptr %node.096, i32 -84
  %sk_type.i = getelementptr i8, ptr %node.096, i32 550
  %18 = ptrtoint ptr %sk_type.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sk_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %19)
  %cmp.i = icmp eq i16 %19, 1
  br i1 %cmp.i, label %land.lhs.true.i56, label %land.rhs.for.inc_crit_edge

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.i56:                                ; preds = %land.rhs
  %skc_state.i = getelementptr i8, ptr %node.096, i32 -66
  %20 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %21)
  %cmp3.i = icmp eq i8 %21, 10
  br i1 %cmp3.i, label %land.lhs.true5.i, label %land.lhs.true.i56.for.inc_crit_edge

land.lhs.true.i56.for.inc_crit_edge:              ; preds = %land.lhs.true.i56
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i56
  %laddr6.i = getelementptr i8, ptr %node.096, i32 900
  %22 = ptrtoint ptr %laddr6.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %laddr6.i, align 8
  %24 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %laddr, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %25)
  %cmp10.i = icmp eq i8 %23, %25
  br i1 %cmp10.i, label %llc_listener_match.exit, label %land.lhs.true5.i.for.inc_crit_edge

land.lhs.true5.i.for.inc_crit_edge:               ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

llc_listener_match.exit:                          ; preds = %land.lhs.true5.i
  %mac.i57 = getelementptr i8, ptr %node.096, i32 901
  %26 = ptrtoint ptr %mac.i57 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mac.i57, align 4
  %28 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mac.i, align 4
  %xor.i.i = xor i32 %29, %27
  %add.ptr.i.i = getelementptr i8, ptr %node.096, i32 905
  %30 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i.i, align 2
  %32 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx63.i.i, align 2
  %xor37.i.i = xor i16 %33, %31
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %llc_listener_match.exit.for.inc_crit_edge

llc_listener_match.exit.for.inc_crit_edge:        ; preds = %llc_listener_match.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %llc_listener_match.exit
  %skc_refcnt = getelementptr i8, ptr %node.096, i32 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #11
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt, i32 noundef 4) #11
  %34 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %skc_refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.then
  %36 = phi i32 [ %35, %if.then ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %37 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i58 = add i32 %36, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #11
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #11
  %38 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %40 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 %39, i32 %add.i.i.i58, ptr elementtype(i32) %skc_refcnt) #11, !srcloc !93
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %40, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %40, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %39
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !84

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %41 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %42, 1
  %43 = or i32 %add5.i.i.i, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %.not.i.i.i = icmp sgt i32 %43, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !84

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 0) #11
  %44 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %45 = phi i32 [ %42, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool12.i.i.i.not = icmp eq i32 %45, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #11
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.again.backedge_crit_edge, label %if.end, !prof !83

refcount_inc_not_zero.exit.again.backedge_crit_edge: ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %again.backedge

if.end:                                           ; preds = %refcount_inc_not_zero.exit
  %sap13 = getelementptr i8, ptr %node.096, i32 896
  %46 = ptrtoint ptr %sap13 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sap13, align 4
  %cmp.not = icmp eq ptr %47, %sap
  br i1 %cmp.not, label %lor.rhs, label %if.end.if.then23_crit_edge, !prof !84

if.end.if.then23_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

lor.rhs:                                          ; preds = %if.end
  %48 = ptrtoint ptr %sk_type.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %sk_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %49)
  %cmp.i60 = icmp eq i16 %49, 1
  br i1 %cmp.i60, label %land.lhs.true.i63, label %lor.rhs.if.then23_crit_edge

lor.rhs.if.then23_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

land.lhs.true.i63:                                ; preds = %lor.rhs
  %50 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %51)
  %cmp3.i62 = icmp eq i8 %51, 10
  br i1 %cmp3.i62, label %land.lhs.true5.i66, label %land.lhs.true.i63.if.then23_crit_edge

land.lhs.true.i63.if.then23_crit_edge:            ; preds = %land.lhs.true.i63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

land.lhs.true5.i66:                               ; preds = %land.lhs.true.i63
  %52 = ptrtoint ptr %laddr6.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %laddr6.i, align 8
  %54 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %laddr, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %55)
  %cmp10.i65 = icmp eq i8 %53, %55
  br i1 %cmp10.i65, label %llc_listener_match.exit77, label %land.lhs.true5.i66.if.then23_crit_edge

land.lhs.true5.i66.if.then23_crit_edge:           ; preds = %land.lhs.true5.i66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

llc_listener_match.exit77:                        ; preds = %land.lhs.true5.i66
  %56 = ptrtoint ptr %mac.i57 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mac.i57, align 4
  %58 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mac.i, align 4
  %xor.i.i69 = xor i32 %59, %57
  %60 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %add.ptr.i.i, align 2
  %62 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx63.i.i, align 2
  %xor37.i.i72 = xor i16 %63, %61
  %xor3.i.i73 = zext i16 %xor37.i.i72 to i32
  %or.i.i74 = or i32 %xor.i.i69, %xor3.i.i73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i74)
  %cmp.i.i75.not = icmp eq i32 %or.i.i74, 0
  br i1 %cmp.i.i75.not, label %llc_listener_match.exit77.found_crit_edge, label %llc_listener_match.exit77.if.then23_crit_edge, !prof !84

llc_listener_match.exit77.if.then23_crit_edge:    ; preds = %llc_listener_match.exit77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

llc_listener_match.exit77.found_crit_edge:        ; preds = %llc_listener_match.exit77
  call void @__sanitizer_cov_trace_pc() #13
  br label %found

if.then23:                                        ; preds = %llc_listener_match.exit77.if.then23_crit_edge, %land.lhs.true5.i66.if.then23_crit_edge, %land.lhs.true.i63.if.then23_crit_edge, %lor.rhs.if.then23_crit_edge, %if.end.if.then23_crit_edge
  call fastcc void @sock_put(ptr noundef %add.ptr)
  br label %for.inc

for.inc:                                          ; preds = %if.then23, %llc_listener_match.exit.for.inc_crit_edge, %land.lhs.true5.i.for.inc_crit_edge, %land.lhs.true.i56.for.inc_crit_edge, %land.rhs.for.inc_crit_edge
  %64 = ptrtoint ptr %node.096 to i32
  call void @__asan_load4_noabort(i32 %64)
  %node.0 = load volatile ptr, ptr %node.096, align 4
  %65 = ptrtoint ptr %node.0 to i32
  %and.i = and i32 %65, 1
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %for.inc.land.rhs_crit_edge, label %for.end.loopexit

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %node.0 to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %again.for.end_crit_edge
  %.pre-phi = phi i32 [ %17, %again.for.end_crit_edge ], [ %66, %for.end.loopexit ]
  %shr.i = lshr i32 %.pre-phi, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %shr.i.i)
  %cmp32.not = icmp eq i32 %shr.i, %shr.i.i
  br i1 %cmp32.not, label %for.end.found_crit_edge, label %for.end.again.backedge_crit_edge, !prof !84

for.end.again.backedge_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %again.backedge

for.end.found_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %found

again.backedge:                                   ; preds = %for.end.again.backedge_crit_edge, %refcount_inc_not_zero.exit.again.backedge_crit_edge
  br label %again

found:                                            ; preds = %for.end.found_crit_edge, %llc_listener_match.exit77.found_crit_edge
  %rc.0 = phi ptr [ %add.ptr, %llc_listener_match.exit77.found_crit_edge ], [ null, %for.end.found_crit_edge ]
  %call.i78 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i78, label %found.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i81

found.rcu_read_unlock.exit_crit_edge:             ; preds = %found
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i81:                                ; preds = %found
  %call1.i79 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i79)
  %tobool.not.i80 = icmp eq i32 %call1.i79, 0
  br i1 %tobool.not.i80, label %land.lhs.true.i81.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i83

land.lhs.true.i81.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i83:                               ; preds = %land.lhs.true.i81
  %.b4.i82 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i82, label %land.lhs.true2.i83.rcu_read_unlock.exit_crit_edge, label %if.then.i84

land.lhs.true2.i83.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i83
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i84:                                      ; preds = %land.lhs.true2.i83
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i84, %land.lhs.true2.i83.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i81.rcu_read_unlock.exit_crit_edge, %found.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !94
  %67 = call i32 @llvm.read_register.i32(metadata !72) #11
  %and.i.i.i.i.i85 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i.i.i85 to ptr
  %preempt_count.i.i.i.i86 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i.i.i86, align 4
  %sub.i.i.i = add i32 %70, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i86, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_rfree(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_conn_ack_tmr_cb(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_conn_pf_cycle_tmr_cb(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_conn_rej_tmr_cb(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_conn_busy_tmr_cb(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @llc_backlog_rcv(ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 47
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %1, label %do.end [
    i8 2, label %if.then
    i8 1, label %if.then20
  ], !prof !105

if.then:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 2
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp5 = icmp ugt i8 %4, 1
  br i1 %cmp5, label %if.then13, label %if.then.out_kfree_skb_crit_edge, !prof !84

if.then.out_kfree_skb_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_kfree_skb

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %5 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 4, ptr %cb.i.i, align 1
  %reason.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %reason.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %reason.i, align 1
  %call1.i = tail call i32 @llc_conn_state_process(ptr noundef %sk, ptr noundef %skb) #11
  br label %out

if.then20:                                        ; preds = %entry
  %state21 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 2
  %7 = ptrtoint ptr %state21 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %state21, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp23 = icmp ugt i8 %8, 1
  br i1 %cmp23, label %if.then31, label %if.then20.out_kfree_skb_crit_edge, !prof !84

if.then20.out_kfree_skb_crit_edge:                ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_kfree_skb

if.then31:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  %call32 = tail call i32 @llc_conn_state_process(ptr noundef %sk, ptr noundef %skb)
  br label %out

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #14
  br label %out_kfree_skb

out:                                              ; preds = %out_kfree_skb, %if.then31, %if.then13
  %rc.0 = phi i32 [ %call1.i, %if.then13 ], [ 0, %out_kfree_skb ], [ %call32, %if.then31 ]
  ret i32 %rc.0

out_kfree_skb:                                    ; preds = %do.end, %if.then20.out_kfree_skb_crit_edge, %if.then.out_kfree_skb_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !35, !37, !38, !39, !41, !42, !44, !46, !48, !50, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !71}
!llvm.named.register.sp = !{!72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @sysctl_llc2_ack_timeout, !1, !"sysctl_llc2_ack_timeout", i1 false, i1 false}
!1 = !{!"../net/llc/llc_conn.c", i32 44, i32 5}
!2 = !{ptr @sysctl_llc2_p_timeout, !3, !"sysctl_llc2_p_timeout", i1 false, i1 false}
!3 = !{!"../net/llc/llc_conn.c", i32 45, i32 5}
!4 = !{ptr @sysctl_llc2_rej_timeout, !5, !"sysctl_llc2_rej_timeout", i1 false, i1 false}
!5 = !{!"../net/llc/llc_conn.c", i32 46, i32 5}
!6 = !{ptr @sysctl_llc2_busy_timeout, !7, !"sysctl_llc2_busy_timeout", i1 false, i1 false}
!7 = !{!"../net/llc/llc_conn.c", i32 47, i32 5}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/llc/llc_conn.c", i32 73, i32 3}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @llc_conn_state_process._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @llc_conn_state_process._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/llc/llc_conn.c", i32 85, i32 4}
!16 = !{ptr @llc_conn_state_process._entry.3, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @llc_conn_state_process._entry_ptr.5, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/llc/llc_conn.c", i32 119, i32 3}
!20 = !{ptr @llc_conn_state_process._entry.6, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @llc_conn_state_process._entry_ptr.8, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/llc/llc_conn.c", i32 123, i32 4}
!24 = !{ptr @llc_conn_state_process._entry.9, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @llc_conn_state_process._entry_ptr.11, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/llc/llc_conn.c", i32 163, i32 3}
!28 = !{ptr @llc_conn_state_process._entry.12, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @llc_conn_state_process._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @llc_conn_state_process._entry.15, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../net/llc/llc_conn.c", i32 167, i32 4}
!32 = !{ptr @llc_conn_state_process._entry_ptr.16, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @llc_offset_table, !34, !"llc_offset_table", i1 false, i1 false}
!34 = !{!"../net/llc/llc_conn.c", i32 42, i32 12}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/net/sock.h", i32 751, i32 3}
!44 = !{ptr @llc_lookup_listener.null_addr, !45, !"null_addr", i1 false, i1 false}
!45 = !{!"../net/llc/llc_conn.c", i32 586, i32 25}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../include/net/sock.h", i32 1750, i32 2}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/net/dst.h", i32 316, i32 3}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!52 = !{ptr @llc_sk_init.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../net/llc/llc_conn.c", i32 887, i32 2}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @llc_sk_init.__key.24, !56, !"__key", i1 false, i1 false}
!56 = !{!"../net/llc/llc_conn.c", i32 890, i32 2}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @llc_sk_init.__key.26, !59, !"__key", i1 false, i1 false}
!59 = !{!"../net/llc/llc_conn.c", i32 893, i32 2}
!60 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @llc_sk_init.__key.28, !62, !"__key", i1 false, i1 false}
!62 = !{!"../net/llc/llc_conn.c", i32 896, i32 2}
!63 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @skb_queue_head_init.__key, !65, !"__key", i1 false, i1 false}
!65 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!66 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/llc/llc_conn.c", i32 863, i32 3}
!69 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @llc_backlog_rcv._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @llc_backlog_rcv._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{!"sp"}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i64 2148608178, i64 2148608210, i64 2148608239, i64 2148608273, i64 2148608304, i64 2148608327}
!83 = !{!"branch_weights", i32 1, i32 2000}
!84 = !{!"branch_weights", i32 2000, i32 1}
!85 = !{i64 2148696203}
!86 = !{i64 2148610643, i64 2148610675, i64 2148610704, i64 2148610738, i64 2148610769, i64 2148610792}
!87 = !{i64 2149893976}
!88 = distinct !{!88, !89}
!89 = !{!"llvm.loop.peeled.count", i32 1}
!90 = distinct !{!90, !89}
!91 = !{i64 2149943519}
!92 = !{i64 2156985943}
!93 = !{i64 1092161, i64 1092185, i64 1092206, i64 1092223, i64 1092240}
!94 = !{i64 2149943785}
!95 = !{i64 2156026833}
!96 = !{i64 2154628867, i64 2154629355, i64 2154628904, i64 2154628960, i64 2154628994, i64 2154629018, i64 2154629059, i64 2154629080, i64 2154629108, i64 2154629142}
!97 = !{i64 2148606067}
!98 = !{i64 1092667, i64 1092692, i64 1092714, i64 1092730, i64 1092742, i64 1092762, i64 1092786, i64 1092802, i64 1092814}
!99 = !{i64 2148606255}
!100 = !{i64 1011328, i64 1011389}
!101 = !{i64 1014060}
!102 = !{i64 1014345}
!103 = !{i64 2148606648, i64 2148606674, i64 2148606703, i64 2148606737, i64 2148606768, i64 2148606791}
!104 = !{i64 2156998216}
!105 = !{!"branch_weights", i32 1, i32 4000, i32 1}
