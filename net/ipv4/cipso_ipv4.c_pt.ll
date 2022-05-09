; ModuleID = '/llk/IR_all_yes/net/ipv4/cipso_ipv4.c_pt.bc'
source_filename = "../net/ipv4/cipso_ipv4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cipso_v4_map_cache_bkt = type { %struct.spinlock, i32, %struct.list_head }
%struct.cipso_v4_map_cache_entry = type { i32, ptr, i32, ptr, i32, %struct.list_head }
%struct.netlbl_lsm_cache = type { %struct.refcount_struct, ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.netlbl_lsm_secattr = type { i32, i32, ptr, ptr, %struct.anon.2 }
%struct.anon.2 = type { %struct.anon.3, i32 }
%struct.anon.3 = type { ptr, i32 }
%struct.cipso_v4_doi = type { i32, i32, %union.anon.4, [5 x i8], %struct.refcount_struct, %struct.list_head, %struct.callback_head }
%union.anon.4 = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.anon.5 = type { ptr, ptr, i32, i32 }
%struct.cipso_v4_std_map_tbl = type { %struct.anon.5, %struct.anon.6 }
%struct.anon.6 = type { ptr, ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.7, %union.anon.173, %union.anon.174, [48 x i8], %union.anon.175, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.177, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { ptr, ptr, %union.anon.9 }
%union.anon.9 = type { ptr }
%union.anon.173 = type { ptr }
%union.anon.174 = type { i64 }
%union.anon.175 = type { %struct.anon.176 }
%struct.anon.176 = type { i32, ptr }
%union.anon.177 = type { %struct.anon.178 }
%struct.anon.178 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.179, i32, i32, i32, i16, i16, %union.anon.181, i32, %union.anon.182, %union.anon.183, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.179 = type { i32 }
%union.anon.181 = type { i32 }
%union.anon.182 = type { i32 }
%union.anon.183 = type { i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.10, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.172, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.10 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.172 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ip_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.ip_options_rcu = type { %struct.callback_head, %struct.ip_options }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.154, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.155, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.156, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.142, %union.anon.144, %union.anon.145, i16, i8, i8, i32, %union.anon.147, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.150, [0 x i32], %union.anon.151, i16, i16, %union.anon.152, %struct.refcount_struct, [0 x i32], %union.anon.153 }
%union.anon.142 = type { i64 }
%union.anon.144 = type { i32 }
%union.anon.145 = type { i32 }
%union.anon.147 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.33 }
%union.anon.33 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.150 = type { i32 }
%union.anon.151 = type { %struct.hlist_node }
%union.anon.152 = type { i32 }
%union.anon.153 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.154 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.155 = type { ptr }
%union.anon.156 = type { ptr }
%struct.sk_buff_head = type { %union.anon.101, i32, %struct.spinlock }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.28 }
%union.anon.28 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.197, %struct.anon.198, i32, i32, [13 x i64] }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.197 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.198 = type { i32, i32, i32, i32 }
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.199 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%union.anon.199 = type { %struct.anon.200 }
%struct.anon.200 = type { ptr, ptr }
%struct.netlbl_lsm_catmap = type { i32, [4 x i64], ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@cipso_v4_cache_enabled = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@cipso_v4_cache_bucketsize = dso_local global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@cipso_v4_rbm_strictvalid = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@cipso_v4_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@cipso_v4_doi_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@cipso_v4_doi_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @cipso_v4_doi_list, ptr @cipso_v4_doi_list }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"trans\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pass\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"local\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"(unknown)\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c" cipso_doi=%u cipso_type=%s res=%u\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" cipso_doi=%u res=%u\00", [43 x i8] zeroinitializer }, align 32
@cipso_v4_doi_walk.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/ipv4/cipso_ipv4.c\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@cipso_v4_sock_setattr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@cipso_v4_sock_getattr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__initcall__kmod_cipso_ipv4__609_2293_cipso_v4_init4 = internal global ptr @cipso_v4_init, section ".initcall4.init", align 4
@cipso_v4_rbm_optfmt = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cipso_v4_doi_list_lock\00", [41 x i8] zeroinitializer }, align 32
@cipso_v4_doi_search.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to initialize the CIPSO/IPv4 cache (%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@cipso_v4_cache_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&cipso_v4_cache[iter].lock\00", [37 x i8] zeroinitializer }, align 32
@switch.table.cipso_v4_doi_add = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 5, i64 128]
@__sancov_gen_cov_switch_values.17 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 5, i64 128]
@__sancov_gen_cov_switch_values.18 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 5, i64 128]
@__sancov_gen_cov_switch_values.19 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 5, i64 128]
@__sancov_gen_cov_switch_values.20 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 5, i64 128]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 5, i64 128]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 5, i64 128]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 5, i64 128]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.37 = private unnamed_addr constant [23 x i8] c"cipso_v4_cache_enabled\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 51, i32 5 }
@___asan_gen_.40 = private unnamed_addr constant [26 x i8] c"cipso_v4_cache_bucketsize\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 52, i32 5 }
@___asan_gen_.43 = private unnamed_addr constant [25 x i8] c"cipso_v4_rbm_strictvalid\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 77, i32 5 }
@___asan_gen_.46 = private unnamed_addr constant [15 x i8] c"cipso_v4_cache\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 73, i32 39 }
@___asan_gen_.49 = private unnamed_addr constant [23 x i8] c"cipso_v4_doi_list_lock\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"cipso_v4_doi_list\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 48, i32 8 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 435, i32 15 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 438, i32 15 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 441, i32 15 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 444, i32 15 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 447, i32 6 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 532, i32 6 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 609, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1880, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 2140, i32 8 }
@___asan_gen_.85 = private unnamed_addr constant [20 x i8] c"cipso_v4_rbm_optfmt\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 76, i32 5 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 47, i32 8 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 695, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 723, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 2287, i32 9 }
@___asan_gen_.103 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.107 = private constant [25 x i8] c"../net/ipv4/cipso_ipv4.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 178, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [30 x i8] c"switch.table.cipso_v4_doi_add\00", align 1
@llvm.compiler.used = appending global [26 x ptr] [ptr @__initcall__kmod_cipso_ipv4__609_2293_cipso_v4_init4, ptr @cipso_v4_cache_enabled, ptr @cipso_v4_cache_bucketsize, ptr @cipso_v4_rbm_strictvalid, ptr @cipso_v4_cache, ptr @cipso_v4_doi_list_lock, ptr @cipso_v4_doi_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @cipso_v4_rbm_optfmt, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @cipso_v4_cache_init.__key, ptr @.str.15, ptr @switch.table.cipso_v4_doi_add], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cipso_v4_cache_enabled to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cipso_v4_cache_bucketsize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cipso_v4_rbm_strictvalid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cipso_v4_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cipso_v4_doi_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cipso_v4_doi_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cipso_v4_rbm_optfmt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cipso_v4_cache_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cipso_v4_doi_add to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cipso_v4_cache_invalidate() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %iter.040 = phi i32 [ 0, %entry ], [ %inc, %for.end.for.body_crit_edge ]
  %0 = load ptr, ptr @cipso_v4_cache, align 4
  %arrayidx = getelementptr %struct.cipso_v4_map_cache_bkt, ptr %0, i32 %iter.040
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx) #14
  %1 = load ptr, ptr @cipso_v4_cache, align 4
  %list = getelementptr %struct.cipso_v4_map_cache_bkt, ptr %1, i32 %iter.040, i32 2
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %cmp12.not37 = icmp eq ptr %3, %list
  br i1 %cmp12.not37, label %for.body.for.end_crit_edge, label %for.body.for.body13_crit_edge

for.body.for.body13_crit_edge:                    ; preds = %for.body
  br label %for.body13

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body13:                                       ; preds = %list_del.exit.for.body13_crit_edge, %for.body.for.body13_crit_edge
  %.pn.in38 = phi ptr [ %.pn, %list_del.exit.for.body13_crit_edge ], [ %3, %for.body.for.body13_crit_edge ]
  %entry1.0 = getelementptr i8, ptr %.pn.in38, i32 -20
  %4 = ptrtoint ptr %.pn.in38 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in38, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in38) #14
  br i1 %call.i.i, label %if.end.i.i, label %for.body13.list_del.exit_crit_edge

for.body13.list_del.exit_crit_edge:               ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in38, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn.in38 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in38, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body13.list_del.exit_crit_edge
  %11 = ptrtoint ptr %.pn.in38 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in38, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in38, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call fastcc void @cipso_v4_cache_entry_free(ptr noundef %entry1.0)
  %13 = load ptr, ptr @cipso_v4_cache, align 4
  %list11 = getelementptr %struct.cipso_v4_map_cache_bkt, ptr %13, i32 %iter.040, i32 2
  %cmp12.not = icmp eq ptr %.pn, %list11
  br i1 %cmp12.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body13_crit_edge

list_del.exit.for.body13_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body13

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  %.lcssa = phi ptr [ %1, %for.body.for.end_crit_edge ], [ %13, %list_del.exit.for.end_crit_edge ]
  %size = getelementptr %struct.cipso_v4_map_cache_bkt, ptr %.lcssa, i32 %iter.040, i32 1
  %14 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %size, align 4
  %arrayidx21 = getelementptr %struct.cipso_v4_map_cache_bkt, ptr %.lcssa, i32 %iter.040
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx21) #14
  %inc = add nuw nsw i32 %iter.040, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end24, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end24:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cipso_v4_cache_entry_free(ptr noundef %entry1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lsm_data = getelementptr inbounds %struct.cipso_v4_map_cache_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %lsm_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lsm_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !65
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #14, !srcloc !66
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !67

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 3) #14
  br label %if.end

if.end.i:                                         ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !68
  %free.i = getelementptr inbounds %struct.netlbl_lsm_cache, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %free.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then1.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %data.i = getelementptr inbounds %struct.netlbl_lsm_cache, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  tail call void %4(ptr noundef %6) #14
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then1.i, %if.end.i.if.end3.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #14
  br label %if.end

if.end:                                           ; preds = %if.end3.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %key = getelementptr inbounds %struct.cipso_v4_map_cache_entry, ptr %entry1, i32 0, i32 1
  %7 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %key, align 4
  tail call void @kfree(ptr noundef %8) #14
  tail call void @kfree(ptr noundef %entry1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cipso_v4_cache_add(ptr noundef %cipso_ptr, ptr nocapture noundef readonly %secattr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @cipso_v4_cache_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr @cipso_v4_cache_bucketsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx = getelementptr i8, ptr %cipso_ptr, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2848, i32 noundef 28) #17
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @kmemdup(ptr noundef %cipso_ptr, i32 noundef %conv, i32 noundef 2592) #14
  %key = getelementptr inbounds %struct.cipso_v4_map_cache_entry, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %key, align 4
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.then32, label %if.end9

if.end9:                                          ; preds = %if.end4
  %key_len = getelementptr inbounds %struct.cipso_v4_map_cache_entry, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %key_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %key_len, align 8
  %call10 = tail call fastcc i32 @cipso_v4_map_cache_hash(ptr noundef %cipso_ptr, i32 noundef %conv)
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call10, ptr %call7.i.i, align 8
  %cache = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 3
  %8 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cache, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %9, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %9, i32 1, i32 3, i32 1) #14
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #14, !srcloc !69
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end9.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !70

if.end9.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end9
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !67

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end9.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end9.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef %.sink.i.i.i) #14
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %12 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cache, align 4
  %lsm_data = getelementptr inbounds %struct.cipso_v4_map_cache_entry, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %lsm_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %lsm_data, align 4
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call7.i.i, align 8
  %and = and i32 %16, 127
  %17 = load ptr, ptr @cipso_v4_cache, align 4
  %arrayidx13 = getelementptr %struct.cipso_v4_map_cache_bkt, ptr %17, i32 %and
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx13) #14
  %18 = load ptr, ptr @cipso_v4_cache, align 4
  %size = getelementptr %struct.cipso_v4_map_cache_bkt, ptr %18, i32 %and, i32 1
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size, align 4
  %21 = load i32, ptr @cipso_v4_cache_bucketsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %21)
  %cmp15 = icmp ult i32 %20, %21
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %refcount_inc.exit
  %list = getelementptr inbounds %struct.cipso_v4_map_cache_entry, ptr %call7.i.i, i32 0, i32 5
  %list19 = getelementptr %struct.cipso_v4_map_cache_bkt, ptr %18, i32 %and, i32 2
  %22 = ptrtoint ptr %list19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %list19, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %list19, ptr noundef %23) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then17.list_add.exit_crit_edge

if.then17.list_add.exit_crit_edge:                ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %list, ptr %prev1.i.i, align 4
  %25 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.cipso_v4_map_cache_entry, ptr %call7.i.i, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %list19, ptr %prev3.i.i, align 8
  %27 = ptrtoint ptr %list19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %list, ptr %list19, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then17.list_add.exit_crit_edge
  %28 = load ptr, ptr @cipso_v4_cache, align 4
  %size21 = getelementptr %struct.cipso_v4_map_cache_bkt, ptr %28, i32 %and, i32 1
  %29 = ptrtoint ptr %size21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size21, align 4
  %add = add i32 %30, 1
  store i32 %add, ptr %size21, align 4
  br label %if.end28

if.else:                                          ; preds = %refcount_inc.exit
  %prev = getelementptr %struct.cipso_v4_map_cache_bkt, ptr %18, i32 %and, i32 2, i32 1
  %31 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev, align 4
  %add.ptr = getelementptr i8, ptr %32, i32 -20
  %call.i.i60 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %32) #14
  br i1 %call.i.i60, label %if.end.i.i61, label %if.else.list_del.exit_crit_edge

if.else.list_del.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i61:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i61, %if.else.list_del.exit_crit_edge
  %39 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 256 to ptr), ptr %32, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %list25 = getelementptr inbounds %struct.cipso_v4_map_cache_entry, ptr %call7.i.i, i32 0, i32 5
  %41 = load ptr, ptr @cipso_v4_cache, align 4
  %list27 = getelementptr %struct.cipso_v4_map_cache_bkt, ptr %41, i32 %and, i32 2
  %42 = ptrtoint ptr %list27 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %list27, align 4
  %call.i.i62 = tail call zeroext i1 @__list_add_valid(ptr noundef %list25, ptr noundef %list27, ptr noundef %43) #14
  br i1 %call.i.i62, label %if.end.i.i65, label %list_del.exit.list_add.exit66_crit_edge

list_del.exit.list_add.exit66_crit_edge:          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit66

if.end.i.i65:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i63 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i63 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %list25, ptr %prev1.i.i63, align 4
  %45 = ptrtoint ptr %list25 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %list25, align 4
  %prev3.i.i64 = getelementptr inbounds %struct.cipso_v4_map_cache_entry, ptr %call7.i.i, i32 0, i32 5, i32 1
  %46 = ptrtoint ptr %prev3.i.i64 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %list27, ptr %prev3.i.i64, align 8
  %47 = ptrtoint ptr %list27 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %list25, ptr %list27, align 4
  br label %list_add.exit66

list_add.exit66:                                  ; preds = %if.end.i.i65, %list_del.exit.list_add.exit66_crit_edge
  tail call fastcc void @cipso_v4_cache_entry_free(ptr noundef %add.ptr)
  br label %if.end28

if.end28:                                         ; preds = %list_add.exit66, %list_add.exit
  %48 = load ptr, ptr @cipso_v4_cache, align 4
  %arrayidx29 = getelementptr %struct.cipso_v4_map_cache_bkt, ptr %48, i32 %and
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx29) #14
  br label %cleanup

if.then32:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @cipso_v4_cache_entry_free(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end28, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -12, %if.then32 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cipso_v4_map_cache_hash(ptr nocapture noundef readonly %key, i32 noundef %key_len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.i = add i32 %key_len, -559038737
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %key_len)
  %cmp13.i = icmp ugt i32 %key_len, 12
  br i1 %cmp13.i, label %entry.while.body.i_crit_edge, label %entry.while.end.i_crit_edge

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %k.018.i = phi ptr [ %add.ptr31.i, %while.body.i.while.body.i_crit_edge ], [ %key, %entry.while.body.i_crit_edge ]
  %c.017.i = phi i32 [ %xor28.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %entry.while.body.i_crit_edge ]
  %b.016.i = phi i32 [ %add29.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %entry.while.body.i_crit_edge ]
  %a.015.i = phi i32 [ %add25.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %entry.while.body.i_crit_edge ]
  %length.addr.014.i = phi i32 [ %sub30.i, %while.body.i.while.body.i_crit_edge ], [ %key_len, %entry.while.body.i_crit_edge ]
  %0 = ptrtoint ptr %k.018.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %k.018.i, align 1
  %add2.i = add i32 %1, %a.015.i
  %add.ptr.i = getelementptr i8, ptr %k.018.i, i32 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr.i, align 1
  %add4.i = add i32 %3, %b.016.i
  %add.ptr5.i = getelementptr i8, ptr %k.018.i, i32 8
  %4 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr5.i, align 1
  %add7.i = add i32 %5, %c.017.i
  %sub.i = sub i32 %add2.i, %add7.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add7.i, i32 %add7.i, i32 4) #14
  %xor.i = xor i32 %sub.i, %or.i.i
  %add9.i = add i32 %add7.i, %add4.i
  %sub10.i = sub i32 %add4.i, %xor.i
  %or.i1.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #14
  %xor12.i = xor i32 %sub10.i, %or.i1.i
  %add13.i = add i32 %xor.i, %add9.i
  %sub14.i = sub i32 %add9.i, %xor12.i
  %or.i2.i = tail call i32 @llvm.fshl.i32(i32 %xor12.i, i32 %xor12.i, i32 8) #14
  %xor16.i = xor i32 %sub14.i, %or.i2.i
  %add17.i = add i32 %xor12.i, %add13.i
  %sub18.i = sub i32 %add13.i, %xor16.i
  %or.i3.i = tail call i32 @llvm.fshl.i32(i32 %xor16.i, i32 %xor16.i, i32 16) #14
  %xor20.i = xor i32 %sub18.i, %or.i3.i
  %add21.i = add i32 %xor16.i, %add17.i
  %sub22.i = sub i32 %add17.i, %xor20.i
  %or.i4.i = tail call i32 @llvm.fshl.i32(i32 %xor20.i, i32 %xor20.i, i32 19) #14
  %xor24.i = xor i32 %sub22.i, %or.i4.i
  %add25.i = add i32 %xor20.i, %add21.i
  %sub26.i = sub i32 %add21.i, %xor24.i
  %or.i5.i = tail call i32 @llvm.fshl.i32(i32 %xor24.i, i32 %xor24.i, i32 4) #14
  %xor28.i = xor i32 %sub26.i, %or.i5.i
  %add29.i = add i32 %xor24.i, %add25.i
  %sub30.i = add i32 %length.addr.014.i, -12
  %add.ptr31.i = getelementptr i8, ptr %k.018.i, i32 12
  %cmp.i = icmp ugt i32 %sub30.i, 12
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %length.addr.0.lcssa.i = phi i32 [ %key_len, %entry.while.end.i_crit_edge ], [ %sub30.i, %while.body.i.while.end.i_crit_edge ]
  %a.0.lcssa.i = phi i32 [ %add.i, %entry.while.end.i_crit_edge ], [ %add25.i, %while.body.i.while.end.i_crit_edge ]
  %b.0.lcssa.i = phi i32 [ %add.i, %entry.while.end.i_crit_edge ], [ %add29.i, %while.body.i.while.end.i_crit_edge ]
  %c.0.lcssa.i = phi i32 [ %add.i, %entry.while.end.i_crit_edge ], [ %xor28.i, %while.body.i.while.end.i_crit_edge ]
  %k.0.lcssa.i = phi ptr [ %key, %entry.while.end.i_crit_edge ], [ %add.ptr31.i, %while.body.i.while.end.i_crit_edge ]
  %6 = zext i32 %length.addr.0.lcssa.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %length.addr.0.lcssa.i, label %while.end.i.jhash.exit_crit_edge [
    i32 12, label %sw.bb.i
    i32 11, label %while.end.i.sw.bb33.i_crit_edge
    i32 10, label %while.end.i.sw.bb38.i_crit_edge
    i32 9, label %while.end.i.sw.bb43.i_crit_edge
    i32 8, label %while.end.i.sw.bb47.i_crit_edge
    i32 7, label %while.end.i.sw.bb52.i_crit_edge
    i32 6, label %while.end.i.sw.bb57.i_crit_edge
    i32 5, label %while.end.i.sw.bb62.i_crit_edge
    i32 4, label %while.end.i.sw.bb66.i_crit_edge
    i32 3, label %while.end.i.sw.bb71.i_crit_edge
    i32 2, label %while.end.i.sw.bb76.i_crit_edge
    i32 1, label %while.end.i.sw.bb81.i_crit_edge
  ]

while.end.i.sw.bb81.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb81.i

while.end.i.sw.bb76.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb76.i

while.end.i.sw.bb71.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb71.i

while.end.i.sw.bb66.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb66.i

while.end.i.sw.bb62.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb62.i

while.end.i.sw.bb57.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb57.i

while.end.i.sw.bb52.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb52.i

while.end.i.sw.bb47.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb47.i

while.end.i.sw.bb43.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb43.i

while.end.i.sw.bb38.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb38.i

while.end.i.sw.bb33.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb33.i

while.end.i.jhash.exit_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %jhash.exit

sw.bb.i:                                          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i = getelementptr i8, ptr %k.0.lcssa.i, i32 11
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %8 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %add32.i = add i32 %shl.i, %c.0.lcssa.i
  br label %sw.bb33.i

sw.bb33.i:                                        ; preds = %sw.bb.i, %while.end.i.sw.bb33.i_crit_edge
  %c.1.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb33.i_crit_edge ], [ %add32.i, %sw.bb.i ]
  %arrayidx34.i = getelementptr i8, ptr %k.0.lcssa.i, i32 10
  %9 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx34.i, align 1
  %conv35.i = zext i8 %10 to i32
  %shl36.i = shl nuw nsw i32 %conv35.i, 16
  %add37.i = add i32 %shl36.i, %c.1.i
  br label %sw.bb38.i

sw.bb38.i:                                        ; preds = %sw.bb33.i, %while.end.i.sw.bb38.i_crit_edge
  %c.2.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb38.i_crit_edge ], [ %add37.i, %sw.bb33.i ]
  %arrayidx39.i = getelementptr i8, ptr %k.0.lcssa.i, i32 9
  %11 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx39.i, align 1
  %conv40.i = zext i8 %12 to i32
  %shl41.i = shl nuw nsw i32 %conv40.i, 8
  %add42.i = add i32 %shl41.i, %c.2.i
  br label %sw.bb43.i

sw.bb43.i:                                        ; preds = %sw.bb38.i, %while.end.i.sw.bb43.i_crit_edge
  %c.3.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb43.i_crit_edge ], [ %add42.i, %sw.bb38.i ]
  %arrayidx44.i = getelementptr i8, ptr %k.0.lcssa.i, i32 8
  %13 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx44.i, align 1
  %conv45.i = zext i8 %14 to i32
  %add46.i = add i32 %c.3.i, %conv45.i
  br label %sw.bb47.i

sw.bb47.i:                                        ; preds = %sw.bb43.i, %while.end.i.sw.bb47.i_crit_edge
  %c.4.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb47.i_crit_edge ], [ %add46.i, %sw.bb43.i ]
  %arrayidx48.i = getelementptr i8, ptr %k.0.lcssa.i, i32 7
  %15 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx48.i, align 1
  %conv49.i = zext i8 %16 to i32
  %shl50.i = shl nuw i32 %conv49.i, 24
  %add51.i = add i32 %shl50.i, %b.0.lcssa.i
  br label %sw.bb52.i

sw.bb52.i:                                        ; preds = %sw.bb47.i, %while.end.i.sw.bb52.i_crit_edge
  %b.1.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb52.i_crit_edge ], [ %add51.i, %sw.bb47.i ]
  %c.5.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb52.i_crit_edge ], [ %c.4.i, %sw.bb47.i ]
  %arrayidx53.i = getelementptr i8, ptr %k.0.lcssa.i, i32 6
  %17 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx53.i, align 1
  %conv54.i = zext i8 %18 to i32
  %shl55.i = shl nuw nsw i32 %conv54.i, 16
  %add56.i = add i32 %shl55.i, %b.1.i
  br label %sw.bb57.i

sw.bb57.i:                                        ; preds = %sw.bb52.i, %while.end.i.sw.bb57.i_crit_edge
  %b.2.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb57.i_crit_edge ], [ %add56.i, %sw.bb52.i ]
  %c.6.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb57.i_crit_edge ], [ %c.5.i, %sw.bb52.i ]
  %arrayidx58.i = getelementptr i8, ptr %k.0.lcssa.i, i32 5
  %19 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx58.i, align 1
  %conv59.i = zext i8 %20 to i32
  %shl60.i = shl nuw nsw i32 %conv59.i, 8
  %add61.i = add i32 %shl60.i, %b.2.i
  br label %sw.bb62.i

sw.bb62.i:                                        ; preds = %sw.bb57.i, %while.end.i.sw.bb62.i_crit_edge
  %b.3.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb62.i_crit_edge ], [ %add61.i, %sw.bb57.i ]
  %c.7.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb62.i_crit_edge ], [ %c.6.i, %sw.bb57.i ]
  %arrayidx63.i = getelementptr i8, ptr %k.0.lcssa.i, i32 4
  %21 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx63.i, align 1
  %conv64.i = zext i8 %22 to i32
  %add65.i = add i32 %b.3.i, %conv64.i
  br label %sw.bb66.i

sw.bb66.i:                                        ; preds = %sw.bb62.i, %while.end.i.sw.bb66.i_crit_edge
  %b.4.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb66.i_crit_edge ], [ %add65.i, %sw.bb62.i ]
  %c.8.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb66.i_crit_edge ], [ %c.7.i, %sw.bb62.i ]
  %arrayidx67.i = getelementptr i8, ptr %k.0.lcssa.i, i32 3
  %23 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx67.i, align 1
  %conv68.i = zext i8 %24 to i32
  %shl69.i = shl nuw i32 %conv68.i, 24
  %add70.i = add i32 %shl69.i, %a.0.lcssa.i
  br label %sw.bb71.i

sw.bb71.i:                                        ; preds = %sw.bb66.i, %while.end.i.sw.bb71.i_crit_edge
  %a.1.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %add70.i, %sw.bb66.i ]
  %b.5.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %b.4.i, %sw.bb66.i ]
  %c.9.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %c.8.i, %sw.bb66.i ]
  %arrayidx72.i = getelementptr i8, ptr %k.0.lcssa.i, i32 2
  %25 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx72.i, align 1
  %conv73.i = zext i8 %26 to i32
  %shl74.i = shl nuw nsw i32 %conv73.i, 16
  %add75.i = add i32 %shl74.i, %a.1.i
  br label %sw.bb76.i

sw.bb76.i:                                        ; preds = %sw.bb71.i, %while.end.i.sw.bb76.i_crit_edge
  %a.2.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %add75.i, %sw.bb71.i ]
  %b.6.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %b.5.i, %sw.bb71.i ]
  %c.10.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %c.9.i, %sw.bb71.i ]
  %arrayidx77.i = getelementptr i8, ptr %k.0.lcssa.i, i32 1
  %27 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx77.i, align 1
  %conv78.i = zext i8 %28 to i32
  %shl79.i = shl nuw nsw i32 %conv78.i, 8
  %add80.i = add i32 %shl79.i, %a.2.i
  br label %sw.bb81.i

sw.bb81.i:                                        ; preds = %sw.bb76.i, %while.end.i.sw.bb81.i_crit_edge
  %a.3.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %add80.i, %sw.bb76.i ]
  %b.7.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %b.6.i, %sw.bb76.i ]
  %c.11.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %c.10.i, %sw.bb76.i ]
  %29 = ptrtoint ptr %k.0.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %k.0.lcssa.i, align 1
  %conv83.i = zext i8 %30 to i32
  %add84.i = add i32 %a.3.i, %conv83.i
  %xor85.i = xor i32 %c.11.i, %b.7.i
  %or.i6.i = tail call i32 @llvm.fshl.i32(i32 %b.7.i, i32 %b.7.i, i32 14) #14
  %sub87.i = sub i32 %xor85.i, %or.i6.i
  %xor88.i = xor i32 %add84.i, %sub87.i
  %or.i7.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i, i32 %sub87.i, i32 11) #14
  %sub90.i = sub i32 %xor88.i, %or.i7.i
  %xor91.i = xor i32 %sub90.i, %b.7.i
  %or.i8.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i, i32 %sub90.i, i32 25) #14
  %sub93.i = sub i32 %xor91.i, %or.i8.i
  %xor94.i = xor i32 %sub93.i, %sub87.i
  %or.i9.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i, i32 %sub93.i, i32 16) #14
  %sub96.i = sub i32 %xor94.i, %or.i9.i
  %xor97.i = xor i32 %sub96.i, %sub90.i
  %or.i10.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i, i32 %sub96.i, i32 4) #14
  %sub99.i = sub i32 %xor97.i, %or.i10.i
  %xor100.i = xor i32 %sub99.i, %sub93.i
  %or.i11.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i, i32 %sub99.i, i32 14) #14
  %sub102.i = sub i32 %xor100.i, %or.i11.i
  %xor103.i = xor i32 %sub102.i, %sub96.i
  %or.i12.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i, i32 %sub102.i, i32 24) #14
  %sub105.i = sub i32 %xor103.i, %or.i12.i
  br label %jhash.exit

jhash.exit:                                       ; preds = %sw.bb81.i, %while.end.i.jhash.exit_crit_edge
  %c.12.i = phi i32 [ %c.0.lcssa.i, %while.end.i.jhash.exit_crit_edge ], [ %sub105.i, %sw.bb81.i ]
  ret i32 %c.12.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cipso_v4_doi_add(ptr noundef %doi_def, ptr noundef %audit_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %doi_def to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %doi_def, align 4
  %type = getelementptr inbounds %struct.cipso_v4_doi, ptr %doi_def, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.doi_add_return_crit_edge, label %for.cond.preheader

entry.doi_add_return_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %doi_add_return

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp11.not = icmp eq i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp5.not = icmp eq i32 %3, 2
  %arrayidx = getelementptr %struct.cipso_v4_doi, ptr %doi_def, i32 0, i32 3, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %5, label %for.cond.preheader.doi_add_return_crit_edge [
    i8 1, label %for.cond.preheader.for.inc_crit_edge
    i8 5, label %for.cond.preheader.sw.bb_crit_edge
    i8 2, label %for.cond.preheader.sw.bb_crit_edge57
    i8 -128, label %sw.bb9
  ]

for.cond.preheader.sw.bb_crit_edge57:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

for.cond.preheader.sw.bb_crit_edge:               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.cond.preheader.doi_add_return_crit_edge:      ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %doi_add_return

sw.bb:                                            ; preds = %for.cond.preheader.sw.bb_crit_edge, %for.cond.preheader.sw.bb_crit_edge57
  br i1 %cmp5.not, label %sw.bb.for.inc_crit_edge, label %sw.bb.doi_add_return_crit_edge

sw.bb.doi_add_return_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %doi_add_return

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

sw.bb9:                                           ; preds = %for.cond.preheader
  br i1 %cmp11.not, label %sw.bb9.for.inc_crit_edge, label %sw.bb9.doi_add_return_crit_edge

sw.bb9.doi_add_return_crit_edge:                  ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #16
  br label %doi_add_return

sw.bb9.for.inc_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %sw.bb9.for.inc_crit_edge, %sw.bb.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.cipso_v4_doi, ptr %doi_def, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.1, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %8, label %for.inc.doi_add_return_crit_edge [
    i8 1, label %for.inc.for.inc.1_crit_edge
    i8 5, label %for.inc.sw.bb.1_crit_edge
    i8 2, label %for.inc.sw.bb.1_crit_edge58
    i8 -128, label %sw.bb9.1
    i8 0, label %for.inc.for.inc.1_crit_edge59
  ]

for.inc.for.inc.1_crit_edge59:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

for.inc.sw.bb.1_crit_edge58:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.1

for.inc.sw.bb.1_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

for.inc.doi_add_return_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %doi_add_return

sw.bb9.1:                                         ; preds = %for.inc
  br i1 %cmp11.not, label %sw.bb9.1.for.inc.1_crit_edge, label %sw.bb9.1.doi_add_return_crit_edge

sw.bb9.1.doi_add_return_crit_edge:                ; preds = %sw.bb9.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %doi_add_return

sw.bb9.1.for.inc.1_crit_edge:                     ; preds = %sw.bb9.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

sw.bb.1:                                          ; preds = %for.inc.sw.bb.1_crit_edge, %for.inc.sw.bb.1_crit_edge58
  br i1 %cmp5.not, label %sw.bb.1.for.inc.1_crit_edge, label %sw.bb.1.doi_add_return_crit_edge

sw.bb.1.doi_add_return_crit_edge:                 ; preds = %sw.bb.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %doi_add_return

sw.bb.1.for.inc.1_crit_edge:                      ; preds = %sw.bb.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

for.inc.1:                                        ; preds = %sw.bb.1.for.inc.1_crit_edge, %sw.bb9.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge59
  %arrayidx.2 = getelementptr %struct.cipso_v4_doi, ptr %doi_def, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.2, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %11, label %for.inc.1.doi_add_return_crit_edge [
    i8 1, label %for.inc.1.for.inc.2_crit_edge
    i8 5, label %for.inc.1.sw.bb.2_crit_edge
    i8 2, label %for.inc.1.sw.bb.2_crit_edge60
    i8 -128, label %sw.bb9.2
    i8 0, label %for.inc.1.for.inc.2_crit_edge61
  ]

for.inc.1.for.inc.2_crit_edge61:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

for.inc.1.sw.bb.2_crit_edge60:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.2

for.inc.1.sw.bb.2_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

for.inc.1.doi_add_return_crit_edge:               ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %doi_add_return

sw.bb9.2:                                         ; preds = %for.inc.1
  br i1 %cmp11.not, label %sw.bb9.2.for.inc.2_crit_edge, label %sw.bb9.2.doi_add_return_crit_edge

sw.bb9.2.doi_add_return_crit_edge:                ; preds = %sw.bb9.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %doi_add_return

sw.bb9.2.for.inc.2_crit_edge:                     ; preds = %sw.bb9.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

sw.bb.2:                                          ; preds = %for.inc.1.sw.bb.2_crit_edge, %for.inc.1.sw.bb.2_crit_edge60
  br i1 %cmp5.not, label %sw.bb.2.for.inc.2_crit_edge, label %sw.bb.2.doi_add_return_crit_edge

sw.bb.2.doi_add_return_crit_edge:                 ; preds = %sw.bb.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %doi_add_return

sw.bb.2.for.inc.2_crit_edge:                      ; preds = %sw.bb.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

for.inc.2:                                        ; preds = %sw.bb.2.for.inc.2_crit_edge, %sw.bb9.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge61
  %arrayidx.3 = getelementptr %struct.cipso_v4_doi, ptr %doi_def, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.3, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %14, label %for.inc.2.doi_add_return_crit_edge [
    i8 1, label %for.inc.2.for.inc.3_crit_edge
    i8 5, label %for.inc.2.sw.bb.3_crit_edge
    i8 2, label %for.inc.2.sw.bb.3_crit_edge62
    i8 -128, label %sw.bb9.3
    i8 0, label %for.inc.2.for.inc.3_crit_edge63
  ]

for.inc.2.for.inc.3_crit_edge63:                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3

for.inc.2.sw.bb.3_crit_edge62:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.3

for.inc.2.sw.bb.3_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3

for.inc.2.doi_add_return_crit_edge:               ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %doi_add_return

sw.bb9.3:                                         ; preds = %for.inc.2
  br i1 %cmp11.not, label %sw.bb9.3.for.inc.3_crit_edge, label %sw.bb9.3.doi_add_return_crit_edge

sw.bb9.3.doi_add_return_crit_edge:                ; preds = %sw.bb9.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %doi_add_return

sw.bb9.3.for.inc.3_crit_edge:                     ; preds = %sw.bb9.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3

sw.bb.3:                                          ; preds = %for.inc.2.sw.bb.3_crit_edge, %for.inc.2.sw.bb.3_crit_edge62
  br i1 %cmp5.not, label %sw.bb.3.for.inc.3_crit_edge, label %sw.bb.3.doi_add_return_crit_edge

sw.bb.3.doi_add_return_crit_edge:                 ; preds = %sw.bb.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %doi_add_return

sw.bb.3.for.inc.3_crit_edge:                      ; preds = %sw.bb.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3

for.inc.3:                                        ; preds = %sw.bb.3.for.inc.3_crit_edge, %sw.bb9.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge63
  %arrayidx.4 = getelementptr %struct.cipso_v4_doi, ptr %doi_def, i32 0, i32 3, i32 4
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.4, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %17, label %for.inc.3.doi_add_return_crit_edge [
    i8 1, label %for.inc.3.for.inc.4_crit_edge
    i8 5, label %for.inc.3.sw.bb.4_crit_edge
    i8 2, label %for.inc.3.sw.bb.4_crit_edge64
    i8 -128, label %sw.bb9.4
    i8 0, label %for.inc.3.for.inc.4_crit_edge65
  ]

for.inc.3.for.inc.4_crit_edge65:                  ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.4

for.inc.3.sw.bb.4_crit_edge64:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.4

for.inc.3.sw.bb.4_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.4

for.inc.3.doi_add_return_crit_edge:               ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %doi_add_return

sw.bb9.4:                                         ; preds = %for.inc.3
  br i1 %cmp11.not, label %sw.bb9.4.for.inc.4_crit_edge, label %sw.bb9.4.doi_add_return_crit_edge

sw.bb9.4.doi_add_return_crit_edge:                ; preds = %sw.bb9.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %doi_add_return

sw.bb9.4.for.inc.4_crit_edge:                     ; preds = %sw.bb9.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.4

sw.bb.4:                                          ; preds = %for.inc.3.sw.bb.4_crit_edge, %for.inc.3.sw.bb.4_crit_edge64
  br i1 %cmp5.not, label %sw.bb.4.for.inc.4_crit_edge, label %sw.bb.4.doi_add_return_crit_edge

sw.bb.4.doi_add_return_crit_edge:                 ; preds = %sw.bb.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %doi_add_return

sw.bb.4.for.inc.4_crit_edge:                      ; preds = %sw.bb.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.4

for.inc.4:                                        ; preds = %sw.bb.4.for.inc.4_crit_edge, %sw.bb9.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge65
  %refcount = getelementptr inbounds %struct.cipso_v4_doi, ptr %doi_def, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #14
  %19 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 1, ptr %refcount, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @cipso_v4_doi_list_lock) #14
  %20 = ptrtoint ptr %doi_def to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %doi_def, align 4
  %call.i = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.inc.4.do.end.i_crit_edge

for.inc.4.do.end.i_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %for.inc.4
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b28.i = load i1, ptr @cipso_v4_doi_search.__warned, align 1
  br i1 %.b28.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cipso_v4_doi_search.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 362, ptr noundef nonnull @.str.7) #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %for.inc.4.do.end.i_crit_edge
  %.pn29.i = load volatile ptr, ptr @cipso_v4_doi_list, align 4
  %cmp.not31.i = icmp eq ptr %.pn29.i, @cipso_v4_doi_list
  br i1 %cmp.not31.i, label %do.end.i.if.end22_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.if.end22_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn32.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn29.i, %do.end.i.for.body.i_crit_edge ]
  %iter.033.i = getelementptr i8, ptr %.pn32.i, i32 -24
  %22 = ptrtoint ptr %iter.033.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iter.033.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %21)
  %cmp10.i = icmp eq i32 %23, %21
  br i1 %cmp10.i, label %land.lhs.true11.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true11.i:                                ; preds = %for.body.i
  %refcount.i = getelementptr i8, ptr %.pn32.i, i32 -4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #14
  %24 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool13.not.i = icmp eq i32 %25, 0
  br i1 %tobool13.not.i, label %land.lhs.true11.i.for.inc.i_crit_edge, label %cipso_v4_doi_search.exit

land.lhs.true11.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true11.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %26 = ptrtoint ptr %.pn32.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn.i = load volatile ptr, ptr %.pn32.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @cipso_v4_doi_list
  br i1 %cmp.not.i, label %for.inc.i.if.end22_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.if.end22_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

cipso_v4_doi_search.exit:                         ; preds = %land.lhs.true11.i
  %iter.033.i.le = getelementptr i8, ptr %.pn32.i, i32 -24
  %tobool.not = icmp eq ptr %iter.033.i.le, null
  br i1 %tobool.not, label %cipso_v4_doi_search.exit.if.end22_crit_edge, label %cipso_v4_doi_search.exit.doi_add_return.sink.split_crit_edge

cipso_v4_doi_search.exit.doi_add_return.sink.split_crit_edge: ; preds = %cipso_v4_doi_search.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %doi_add_return.sink.split

cipso_v4_doi_search.exit.if.end22_crit_edge:      ; preds = %cipso_v4_doi_search.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.end22:                                         ; preds = %cipso_v4_doi_search.exit.if.end22_crit_edge, %for.inc.i.if.end22_crit_edge, %do.end.i.if.end22_crit_edge
  %list = getelementptr inbounds %struct.cipso_v4_doi, ptr %doi_def, i32 0, i32 5
  %27 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @cipso_v4_doi_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %27, ptr noundef nonnull @cipso_v4_doi_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end22.doi_add_return.sink.split_crit_edge

if.end22.doi_add_return.sink.split_crit_edge:     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %doi_add_return.sink.split

if.end.i.i:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @cipso_v4_doi_list, ptr %list, align 4
  %prev2.i.i = getelementptr inbounds %struct.cipso_v4_doi, ptr %doi_def, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !71
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %list, ptr %27, align 4
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @cipso_v4_doi_list, i32 0, i32 1), align 4
  br label %doi_add_return.sink.split

doi_add_return.sink.split:                        ; preds = %if.end.i.i, %if.end22.doi_add_return.sink.split_crit_edge, %cipso_v4_doi_search.exit.doi_add_return.sink.split_crit_edge
  %cmp31.ph = phi i32 [ 0, %cipso_v4_doi_search.exit.doi_add_return.sink.split_crit_edge ], [ 1, %if.end22.doi_add_return.sink.split_crit_edge ], [ 1, %if.end.i.i ]
  %ret_val.0.ph = phi i32 [ -17, %cipso_v4_doi_search.exit.doi_add_return.sink.split_crit_edge ], [ 0, %if.end22.doi_add_return.sink.split_crit_edge ], [ 0, %if.end.i.i ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cipso_v4_doi_list_lock) #14
  br label %doi_add_return

doi_add_return:                                   ; preds = %doi_add_return.sink.split, %sw.bb.4.doi_add_return_crit_edge, %sw.bb9.4.doi_add_return_crit_edge, %for.inc.3.doi_add_return_crit_edge, %sw.bb.3.doi_add_return_crit_edge, %sw.bb9.3.doi_add_return_crit_edge, %for.inc.2.doi_add_return_crit_edge, %sw.bb.2.doi_add_return_crit_edge, %sw.bb9.2.doi_add_return_crit_edge, %for.inc.1.doi_add_return_crit_edge, %sw.bb.1.doi_add_return_crit_edge, %sw.bb9.1.doi_add_return_crit_edge, %for.inc.doi_add_return_crit_edge, %sw.bb9.doi_add_return_crit_edge, %sw.bb.doi_add_return_crit_edge, %for.cond.preheader.doi_add_return_crit_edge, %entry.doi_add_return_crit_edge
  %cmp31 = phi i32 [ 0, %entry.doi_add_return_crit_edge ], [ 0, %sw.bb.4.doi_add_return_crit_edge ], [ 0, %sw.bb9.4.doi_add_return_crit_edge ], [ 0, %for.inc.3.doi_add_return_crit_edge ], [ 0, %sw.bb.3.doi_add_return_crit_edge ], [ 0, %sw.bb9.3.doi_add_return_crit_edge ], [ 0, %for.inc.2.doi_add_return_crit_edge ], [ 0, %sw.bb.2.doi_add_return_crit_edge ], [ 0, %sw.bb9.2.doi_add_return_crit_edge ], [ 0, %for.inc.1.doi_add_return_crit_edge ], [ 0, %sw.bb.1.doi_add_return_crit_edge ], [ 0, %sw.bb9.1.doi_add_return_crit_edge ], [ 0, %for.inc.doi_add_return_crit_edge ], [ 0, %sw.bb.doi_add_return_crit_edge ], [ 0, %sw.bb9.doi_add_return_crit_edge ], [ 0, %for.cond.preheader.doi_add_return_crit_edge ], [ %cmp31.ph, %doi_add_return.sink.split ]
  %ret_val.0 = phi i32 [ -22, %entry.doi_add_return_crit_edge ], [ -22, %sw.bb.4.doi_add_return_crit_edge ], [ -22, %sw.bb9.4.doi_add_return_crit_edge ], [ -22, %for.inc.3.doi_add_return_crit_edge ], [ -22, %sw.bb.3.doi_add_return_crit_edge ], [ -22, %sw.bb9.3.doi_add_return_crit_edge ], [ -22, %for.inc.2.doi_add_return_crit_edge ], [ -22, %sw.bb.2.doi_add_return_crit_edge ], [ -22, %sw.bb9.2.doi_add_return_crit_edge ], [ -22, %for.inc.1.doi_add_return_crit_edge ], [ -22, %sw.bb.1.doi_add_return_crit_edge ], [ -22, %sw.bb9.1.doi_add_return_crit_edge ], [ -22, %for.inc.doi_add_return_crit_edge ], [ -22, %sw.bb.doi_add_return_crit_edge ], [ -22, %sw.bb9.doi_add_return_crit_edge ], [ -22, %for.cond.preheader.doi_add_return_crit_edge ], [ %ret_val.0.ph, %doi_add_return.sink.split ]
  %call23 = tail call ptr @netlbl_audit_start(i32 noundef 1407, ptr noundef %audit_info) #14
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %doi_add_return.if.end33_crit_edge, label %if.then25

doi_add_return.if.end33_crit_edge:                ; preds = %doi_add_return
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then25:                                        ; preds = %doi_add_return
  %switch.tableidx = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %31 = icmp ult i32 %switch.tableidx, 3
  br i1 %31, label %switch.lookup, label %if.then25.sw.epilog30_crit_edge

if.then25.sw.epilog30_crit_edge:                  ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog30

switch.lookup:                                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.cipso_v4_doi_add, i32 0, i32 %switch.tableidx
  %32 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %32)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog30

sw.epilog30:                                      ; preds = %switch.lookup, %if.then25.sw.epilog30_crit_edge
  %type_str.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.3, %if.then25.sw.epilog30_crit_edge ]
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call23, ptr noundef nonnull @.str.4, i32 noundef %1, ptr noundef nonnull %type_str.0, i32 noundef %cmp31) #14
  tail call void @audit_log_end(ptr noundef nonnull %call23) #14
  br label %if.end33

if.end33:                                         ; preds = %sw.epilog30, %doi_add_return.if.end33_crit_edge
  ret i32 %ret_val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netlbl_audit_start(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cipso_v4_doi_free(ptr noundef %doi_def) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %doi_def, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.cipso_v4_doi, ptr %doi_def, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %map = getelementptr inbounds %struct.cipso_v4_doi, ptr %doi_def, i32 0, i32 2
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %5) #14
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %local = getelementptr inbounds %struct.anon.5, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %local, align 4
  tail call void @kfree(ptr noundef %9) #14
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 4
  %cat = getelementptr inbounds %struct.cipso_v4_std_map_tbl, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %cat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cat, align 4
  tail call void @kfree(ptr noundef %13) #14
  %14 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map, align 4
  %local7 = getelementptr inbounds %struct.cipso_v4_std_map_tbl, ptr %15, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %local7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %local7, align 4
  tail call void @kfree(ptr noundef %17) #14
  %18 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map, align 4
  tail call void @kfree(ptr noundef %19) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end.sw.epilog_crit_edge
  tail call void @kfree(ptr noundef nonnull %doi_def) #14
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cipso_v4_doi_remove(i32 noundef %doi, ptr noundef %audit_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @cipso_v4_doi_list_lock) #14
  %call.i = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b28.i = load i1, ptr @cipso_v4_doi_search.__warned, align 1
  br i1 %.b28.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cipso_v4_doi_search.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 362, ptr noundef nonnull @.str.7) #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %.pn29.i = load volatile ptr, ptr @cipso_v4_doi_list, align 4
  %cmp.not31.i = icmp eq ptr %.pn29.i, @cipso_v4_doi_list
  br i1 %cmp.not31.i, label %do.end.i.if.then_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.if.then_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn32.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn29.i, %do.end.i.for.body.i_crit_edge ]
  %iter.033.i = getelementptr i8, ptr %.pn32.i, i32 -24
  %0 = ptrtoint ptr %iter.033.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iter.033.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %doi)
  %cmp10.i = icmp eq i32 %1, %doi
  br i1 %cmp10.i, label %land.lhs.true11.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true11.i:                                ; preds = %for.body.i
  %refcount.i = getelementptr i8, ptr %.pn32.i, i32 -4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #14
  %2 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool13.not.i = icmp eq i32 %3, 0
  br i1 %tobool13.not.i, label %land.lhs.true11.i.for.inc.i_crit_edge, label %cipso_v4_doi_search.exit

land.lhs.true11.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true11.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %4 = ptrtoint ptr %.pn32.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load volatile ptr, ptr %.pn32.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @cipso_v4_doi_list
  br i1 %cmp.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

cipso_v4_doi_search.exit:                         ; preds = %land.lhs.true11.i
  %iter.033.i.le = getelementptr i8, ptr %.pn32.i, i32 -24
  %tobool.not = icmp eq ptr %iter.033.i.le, null
  br i1 %tobool.not, label %cipso_v4_doi_search.exit.if.then_crit_edge, label %if.end

cipso_v4_doi_search.exit.if.then_crit_edge:       ; preds = %cipso_v4_doi_search.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %cipso_v4_doi_search.exit.if.then_crit_edge, %for.inc.i.if.then_crit_edge, %do.end.i.if.then_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cipso_v4_doi_list_lock) #14
  br label %doi_remove_return

if.end:                                           ; preds = %cipso_v4_doi_search.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn32.i) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn32.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn32.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn32.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i, %if.end.if.end.i_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn32.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cipso_v4_doi_list_lock) #14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !65
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !66
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.end2.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.doi_remove_return_crit_edge, label %if.then10.i.i.i.i, !prof !67

if.end5.i.i.i.i.doi_remove_return_crit_edge:      ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %doi_remove_return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #14
  br label %doi_remove_return

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !68
  tail call void @cipso_v4_cache_invalidate() #14
  %rcu.i = getelementptr i8, ptr %.pn32.i, i32 8
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @cipso_v4_doi_free_rcu) #14
  br label %doi_remove_return

doi_remove_return:                                ; preds = %if.end2.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.doi_remove_return_crit_edge, %if.then
  %tobool.not15 = phi i32 [ 0, %if.then ], [ 1, %if.end5.i.i.i.i.doi_remove_return_crit_edge ], [ 1, %if.then10.i.i.i.i ], [ 1, %if.end2.i ]
  %ret_val.0 = phi i32 [ -2, %if.then ], [ 0, %if.end5.i.i.i.i.doi_remove_return_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.end2.i ]
  %call1 = tail call ptr @netlbl_audit_start(i32 noundef 1408, ptr noundef %audit_info) #14
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %doi_remove_return.if.end4_crit_edge, label %if.then3

doi_remove_return.if.end4_crit_edge:              ; preds = %doi_remove_return
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then3:                                         ; preds = %doi_remove_return
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.5, i32 noundef %doi, i32 noundef %tobool.not15) #14
  tail call void @audit_log_end(ptr noundef nonnull %call1) #14
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %doi_remove_return.if.end4_crit_edge
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cipso_v4_doi_putdef(ptr noundef %doi_def) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %doi_def, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.cipso_v4_doi, ptr %doi_def, i32 0, i32 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !65
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #14, !srcloc !66
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end2, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !67

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #14
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !68
  tail call void @cipso_v4_cache_invalidate()
  %rcu = getelementptr inbounds %struct.cipso_v4_doi, ptr %doi_def, i32 0, i32 6
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @cipso_v4_doi_free_rcu) #14
  br label %return

return:                                           ; preds = %if.end2, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cipso_v4_doi_getdef(i32 noundef %doi) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !72
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call.i6 = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6)
  %tobool.not.i7 = icmp eq i32 %call.i6, 0
  br i1 %tobool.not.i7, label %land.lhs.true.i9, label %rcu_read_lock.exit.do.end.i_crit_edge

rcu_read_lock.exit.do.end.i_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true.i9:                                 ; preds = %rcu_read_lock.exit
  %call1.i8 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool2.not.i = icmp eq i32 %call1.i8, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i9.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i9.do.end.i_crit_edge:              ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i9
  %.b28.i = load i1, ptr @cipso_v4_doi_search.__warned, align 1
  br i1 %.b28.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i10

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

if.then.i10:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cipso_v4_doi_search.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 362, ptr noundef nonnull @.str.7) #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i10, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i9.do.end.i_crit_edge, %rcu_read_lock.exit.do.end.i_crit_edge
  %.pn29.i = load volatile ptr, ptr @cipso_v4_doi_list, align 4
  %cmp.not31.i = icmp eq ptr %.pn29.i, @cipso_v4_doi_list
  br i1 %cmp.not31.i, label %do.end.i.doi_getdef_return_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.doi_getdef_return_crit_edge:             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %doi_getdef_return

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn32.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn29.i, %do.end.i.for.body.i_crit_edge ]
  %iter.033.i = getelementptr i8, ptr %.pn32.i, i32 -24
  %4 = ptrtoint ptr %iter.033.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iter.033.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %doi)
  %cmp10.i = icmp eq i32 %5, %doi
  br i1 %cmp10.i, label %land.lhs.true11.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true11.i:                                ; preds = %for.body.i
  %refcount.i = getelementptr i8, ptr %.pn32.i, i32 -4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #14
  %6 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool13.not.i = icmp eq i32 %7, 0
  br i1 %tobool13.not.i, label %land.lhs.true11.i.for.inc.i_crit_edge, label %cipso_v4_doi_search.exit

land.lhs.true11.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true11.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %8 = ptrtoint ptr %.pn32.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load volatile ptr, ptr %.pn32.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @cipso_v4_doi_list
  br i1 %cmp.not.i, label %for.inc.i.doi_getdef_return_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.doi_getdef_return_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %doi_getdef_return

cipso_v4_doi_search.exit:                         ; preds = %land.lhs.true11.i
  %iter.033.i.le = getelementptr i8, ptr %.pn32.i, i32 -24
  %tobool.not = icmp eq ptr %iter.033.i.le, null
  br i1 %tobool.not, label %cipso_v4_doi_search.exit.doi_getdef_return_crit_edge, label %if.end

cipso_v4_doi_search.exit.doi_getdef_return_crit_edge: ; preds = %cipso_v4_doi_search.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %doi_getdef_return

if.end:                                           ; preds = %cipso_v4_doi_search.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #14
  %9 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %refcount.i, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.end
  %11 = phi i32 [ %10, %if.end ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %12 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i11 = add i32 %11, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #14
  %13 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %15 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 %14, i32 %add.i.i.i11, ptr elementtype(i32) %refcount.i) #14, !srcloc !73
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %14
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !67

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %16 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %17, 1
  %18 = or i32 %add5.i.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !67

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 0) #14
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %19 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool12.i.i.i.not = icmp eq i32 %20, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #14
  %spec.select = select i1 %tobool12.i.i.i.not, ptr null, ptr %iter.033.i.le
  br label %doi_getdef_return

doi_getdef_return:                                ; preds = %refcount_inc_not_zero.exit, %cipso_v4_doi_search.exit.doi_getdef_return_crit_edge, %for.inc.i.doi_getdef_return_crit_edge, %do.end.i.doi_getdef_return_crit_edge
  %doi_def.0 = phi ptr [ null, %cipso_v4_doi_search.exit.doi_getdef_return_crit_edge ], [ %spec.select, %refcount_inc_not_zero.exit ], [ null, %do.end.i.doi_getdef_return_crit_edge ], [ null, %for.inc.i.doi_getdef_return_crit_edge ]
  %call.i12 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i12, label %doi_getdef_return.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i15

doi_getdef_return.rcu_read_unlock.exit_crit_edge: ; preds = %doi_getdef_return
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i15:                                ; preds = %doi_getdef_return
  %call1.i13 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13)
  %tobool.not.i14 = icmp eq i32 %call1.i13, 0
  br i1 %tobool.not.i14, label %land.lhs.true.i15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i17

land.lhs.true.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i15
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i17:                               ; preds = %land.lhs.true.i15
  %.b4.i16 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i16, label %land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge, label %if.then.i18

land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i18:                                      ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i18, %land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i15.rcu_read_unlock.exit_crit_edge, %doi_getdef_return.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !74
  %21 = call i32 @llvm.read_register.i32(metadata !55) #14
  %and.i.i.i.i.i19 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i19 to ptr
  %preempt_count.i.i.i.i20 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i20, align 4
  %sub.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i20, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret ptr %doi_def.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cipso_v4_doi_free_rcu(ptr noundef %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %entry1, i32 -32
  tail call void @cipso_v4_doi_free(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cipso_v4_doi_walk(ptr nocapture noundef %skip_cnt, ptr nocapture noundef readonly %callback, ptr noundef %cb_arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !72
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b35 = load i1, ptr @cipso_v4_doi_walk.__warned, align 1
  br i1 %.b35, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cipso_v4_doi_walk.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 609, ptr noundef nonnull @.str.7) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %.pn45 = load volatile ptr, ptr @cipso_v4_doi_list, align 4
  %cmp.not47 = icmp eq ptr %.pn45, @cipso_v4_doi_list
  br i1 %cmp.not47, label %do.end.doi_walk_return_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.doi_walk_return_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %doi_walk_return

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn50 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn45, %do.end.for.body_crit_edge ]
  %ret_val.049 = phi i32 [ %ret_val.1, %for.inc.for.body_crit_edge ], [ -2, %do.end.for.body_crit_edge ]
  %doi_cnt.048 = phi i32 [ %doi_cnt.1, %for.inc.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %iter_doi.051 = getelementptr i8, ptr %.pn50, i32 -24
  %refcount = getelementptr i8, ptr %.pn50, i32 -4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #14
  %4 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10.not = icmp eq i32 %5, 0
  br i1 %cmp10.not, label %for.body.for.inc_crit_edge, label %if.then11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then11:                                        ; preds = %for.body
  %inc = add i32 %doi_cnt.048, 1
  %6 = ptrtoint ptr %skip_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %skip_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %doi_cnt.048, i32 %7)
  %cmp12 = icmp ult i32 %doi_cnt.048, %7
  br i1 %cmp12, label %if.then11.for.inc_crit_edge, label %if.end14

if.then11.for.inc_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end14:                                         ; preds = %if.then11
  %call15 = tail call i32 %callback(ptr noundef %iter_doi.051, ptr noundef %cb_arg) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end14.doi_walk_return_crit_edge, label %if.end14.for.inc_crit_edge

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end14.doi_walk_return_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %doi_walk_return

for.inc:                                          ; preds = %if.end14.for.inc_crit_edge, %if.then11.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %doi_cnt.1 = phi i32 [ %inc, %if.then11.for.inc_crit_edge ], [ %inc, %if.end14.for.inc_crit_edge ], [ %doi_cnt.048, %for.body.for.inc_crit_edge ]
  %ret_val.1 = phi i32 [ %ret_val.049, %if.then11.for.inc_crit_edge ], [ %call15, %if.end14.for.inc_crit_edge ], [ %ret_val.049, %for.body.for.inc_crit_edge ]
  %8 = ptrtoint ptr %.pn50 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load volatile ptr, ptr %.pn50, align 4
  %cmp.not = icmp eq ptr %.pn, @cipso_v4_doi_list
  br i1 %cmp.not, label %for.inc.doi_walk_return_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.doi_walk_return_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %doi_walk_return

doi_walk_return:                                  ; preds = %for.inc.doi_walk_return_crit_edge, %if.end14.doi_walk_return_crit_edge, %do.end.doi_walk_return_crit_edge
  %doi_cnt.0.lcssa = phi i32 [ 0, %do.end.doi_walk_return_crit_edge ], [ %doi_cnt.048, %if.end14.doi_walk_return_crit_edge ], [ %doi_cnt.1, %for.inc.doi_walk_return_crit_edge ]
  %ret_val.2 = phi i32 [ -2, %do.end.doi_walk_return_crit_edge ], [ %call15, %if.end14.doi_walk_return_crit_edge ], [ %ret_val.1, %for.inc.doi_walk_return_crit_edge ]
  %call.i36 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i36, label %doi_walk_return.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i39

doi_walk_return.rcu_read_unlock.exit_crit_edge:   ; preds = %doi_walk_return
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i39:                                ; preds = %doi_walk_return
  %call1.i37 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37)
  %tobool.not.i38 = icmp eq i32 %call1.i37, 0
  br i1 %tobool.not.i38, label %land.lhs.true.i39.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i41

land.lhs.true.i39.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i41:                               ; preds = %land.lhs.true.i39
  %.b4.i40 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i40, label %land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge, label %if.then.i42

land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i42:                                      ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i42, %land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i39.rcu_read_unlock.exit_crit_edge, %doi_walk_return.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !74
  %9 = tail call i32 @llvm.read_register.i32(metadata !55) #14
  %and.i.i.i.i.i43 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i43 to ptr
  %preempt_count.i.i.i.i44 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i44, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i44, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %13 = ptrtoint ptr %skip_cnt to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %doi_cnt.0.lcssa, ptr %skip_cnt, align 4
  ret i32 %ret_val.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cipso_v4_optptr(ptr nocapture noundef readonly %skb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear = shl i8 %bf.load, 2
  %5 = and i8 %bf.clear, 60
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %5)
  %cmp42 = icmp ugt i8 %5, 21
  br i1 %cmp42, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %mul = zext i8 %5 to i32
  %sub = add nsw i32 %mul, -20
  %arrayidx = getelementptr %struct.iphdr, ptr %add.ptr.i.i, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %for.body.preheader
  %optlen.045 = phi i32 [ %sub16, %if.end15.for.body_crit_edge ], [ %sub, %for.body.preheader ]
  %optptr.043 = phi ptr [ %add.ptr, %if.end15.for.body_crit_edge ], [ %arrayidx, %for.body.preheader ]
  %6 = ptrtoint ptr %optptr.043 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %optptr.043, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %7, label %sw.epilog [
    i8 0, label %for.body.cleanup_crit_edge
    i8 1, label %for.body.if.end15_crit_edge
  ]

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.epilog:                                        ; preds = %for.body
  %arrayidx6 = getelementptr i8, ptr %optptr.043, i32 1
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %optlen.045, i32 %conv7)
  %cmp8 = icmp ult i32 %optlen.045, %conv7
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp8
  br i1 %or.cond, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp1(i8 -122, i8 %7)
  %cmp12 = icmp eq i8 %7, -122
  br i1 %cmp12, label %if.end.cleanup_crit_edge, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end15:                                         ; preds = %if.end.if.end15_crit_edge, %for.body.if.end15_crit_edge
  %taglen.03841 = phi i32 [ %conv7, %if.end.if.end15_crit_edge ], [ 1, %for.body.if.end15_crit_edge ]
  %sub16 = sub nsw i32 %optlen.045, %taglen.03841
  %add.ptr = getelementptr i8, ptr %optptr.043, i32 %taglen.03841
  %cmp = icmp sgt i32 %sub16, 1
  br i1 %cmp, label %if.end15.for.body_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup:                                          ; preds = %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end15.cleanup_crit_edge ], [ %optptr.043, %if.end.cleanup_crit_edge ], [ null, %sw.epilog.cleanup_crit_edge ], [ null, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cipso_v4_validate(ptr noundef readonly %skb, ptr nocapture noundef %option) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %option, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %cmp = icmp ult i8 %3, 8
  br i1 %cmp, label %entry.validate_return_crit_edge, label %if.end

entry.validate_return_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %validate_return

if.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !55) #14
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !72
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %arrayidx2 = getelementptr i8, ptr %1, i32 2
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %arrayidx2, align 1
  %call.i227 = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i227)
  %tobool.not.i228 = icmp eq i32 %call.i227, 0
  br i1 %tobool.not.i228, label %land.lhs.true.i230, label %rcu_read_lock.exit.do.end.i_crit_edge

rcu_read_lock.exit.do.end.i_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true.i230:                               ; preds = %rcu_read_lock.exit
  %call1.i229 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i229)
  %tobool2.not.i = icmp eq i32 %call1.i229, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i230.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i230.do.end.i_crit_edge:            ; preds = %land.lhs.true.i230
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i230
  %.b28.i = load i1, ptr @cipso_v4_doi_search.__warned, align 1
  br i1 %.b28.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i231

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

if.then.i231:                                     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cipso_v4_doi_search.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 362, ptr noundef nonnull @.str.7) #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i231, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i230.do.end.i_crit_edge, %rcu_read_lock.exit.do.end.i_crit_edge
  %.pn29.i = load volatile ptr, ptr @cipso_v4_doi_list, align 4
  %cmp.not31.i = icmp eq ptr %.pn29.i, @cipso_v4_doi_list
  br i1 %cmp.not31.i, label %do.end.i.validate_return_locked_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.validate_return_locked_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %validate_return_locked

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn32.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn29.i, %do.end.i.for.body.i_crit_edge ]
  %iter.033.i = getelementptr i8, ptr %.pn32.i, i32 -24
  %10 = ptrtoint ptr %iter.033.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iter.033.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp10.i = icmp eq i32 %11, %9
  br i1 %cmp10.i, label %land.lhs.true11.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true11.i:                                ; preds = %for.body.i
  %refcount.i = getelementptr i8, ptr %.pn32.i, i32 -4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #14
  %12 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool13.not.i = icmp eq i32 %13, 0
  br i1 %tobool13.not.i, label %land.lhs.true11.i.for.inc.i_crit_edge, label %cipso_v4_doi_search.exit

land.lhs.true11.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true11.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %14 = ptrtoint ptr %.pn32.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i = load volatile ptr, ptr %.pn32.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @cipso_v4_doi_list
  br i1 %cmp.not.i, label %for.inc.i.validate_return_locked_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.validate_return_locked_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %validate_return_locked

cipso_v4_doi_search.exit:                         ; preds = %land.lhs.true11.i
  %iter.033.i.le = getelementptr i8, ptr %.pn32.i, i32 -24
  %tobool.not = icmp eq ptr %iter.033.i.le, null
  br i1 %tobool.not, label %cipso_v4_doi_search.exit.validate_return_locked_crit_edge, label %if.end5

cipso_v4_doi_search.exit.validate_return_locked_crit_edge: ; preds = %cipso_v4_doi_search.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %validate_return_locked

if.end5:                                          ; preds = %cipso_v4_doi_search.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %3)
  %cmp9338 = icmp ugt i8 %3, 6
  br i1 %cmp9338, label %for.cond.preheader.lr.ph, label %if.end5.validate_return_locked_crit_edge

if.end5.validate_return_locked_crit_edge:         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %validate_return_locked

for.cond.preheader.lr.ph:                         ; preds = %if.end5
  %add.ptr = getelementptr i8, ptr %1, i32 6
  %tobool146.not = icmp eq ptr %skb, null
  %15 = getelementptr inbounds %struct.anon.8, ptr %skb, i32 0, i32 2
  %type.i253 = getelementptr i8, ptr %.pn32.i, i32 -20
  %map.i255 = getelementptr i8, ptr %.pn32.i, i32 -16
  %arrayidx11 = getelementptr i8, ptr %.pn32.i, i32 -12
  %arrayidx11.1 = getelementptr i8, ptr %.pn32.i, i32 -11
  %arrayidx11.2 = getelementptr i8, ptr %.pn32.i, i32 -10
  %arrayidx11.3 = getelementptr i8, ptr %.pn32.i, i32 -9
  %arrayidx11.4 = getelementptr i8, ptr %.pn32.i, i32 -8
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %sw.epilog.for.cond.preheader_crit_edge, %for.cond.preheader.lr.ph
  %conv7343 = phi i32 [ 6, %for.cond.preheader.lr.ph ], [ %conv7, %sw.epilog.for.cond.preheader_crit_edge ]
  %opt_iter.0341 = phi i8 [ 6, %for.cond.preheader.lr.ph ], [ %add163, %sw.epilog.for.cond.preheader_crit_edge ]
  %tag.0339 = phi ptr [ %add.ptr, %for.cond.preheader.lr.ph ], [ %add.ptr160, %sw.epilog.for.cond.preheader_crit_edge ]
  %16 = ptrtoint ptr %tag.0339 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tag.0339, align 1
  %18 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx11, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %17)
  %cmp15.not = icmp eq i8 %19, %17
  br i1 %cmp15.not, label %for.cond.preheader.for.end_crit_edge, label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp20 = icmp eq i8 %19, 0
  br i1 %cmp20, label %for.body.validate_return_locked_crit_edge, label %for.cond.1

for.body.validate_return_locked_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %validate_return_locked

for.cond.1:                                       ; preds = %for.body
  %20 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx11.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %17)
  %cmp15.not.1 = icmp eq i8 %21, %17
  br i1 %cmp15.not.1, label %for.cond.1.for.end_crit_edge, label %for.body.1

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.1:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp20.1 = icmp eq i8 %21, 0
  br i1 %cmp20.1, label %for.body.1.validate_return_locked_crit_edge, label %for.cond.2

for.body.1.validate_return_locked_crit_edge:      ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %validate_return_locked

for.cond.2:                                       ; preds = %for.body.1
  %22 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx11.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %17)
  %cmp15.not.2 = icmp eq i8 %23, %17
  br i1 %cmp15.not.2, label %for.cond.2.for.end_crit_edge, label %for.body.2

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.2:                                       ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp20.2 = icmp eq i8 %23, 0
  br i1 %cmp20.2, label %for.body.2.validate_return_locked_crit_edge, label %for.cond.3

for.body.2.validate_return_locked_crit_edge:      ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %validate_return_locked

for.cond.3:                                       ; preds = %for.body.2
  %24 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx11.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %17)
  %cmp15.not.3 = icmp eq i8 %25, %17
  br i1 %cmp15.not.3, label %for.cond.3.for.end_crit_edge, label %for.body.3

for.cond.3.for.end_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.3:                                       ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp20.3 = icmp eq i8 %25, 0
  br i1 %cmp20.3, label %for.body.3.validate_return_locked_crit_edge, label %for.cond.4

for.body.3.validate_return_locked_crit_edge:      ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %validate_return_locked

for.cond.4:                                       ; preds = %for.body.3
  %26 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx11.4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %17)
  %cmp15.not.4 = icmp eq i8 %27, %17
  br i1 %cmp15.not.4, label %for.cond.4.for.end_crit_edge, label %for.cond.4.validate_return_locked_crit_edge

for.cond.4.validate_return_locked_crit_edge:      ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %validate_return_locked

for.cond.4.for.end_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.cond.4.for.end_crit_edge, %for.cond.3.for.end_crit_edge, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %add = add nuw nsw i32 %conv7343, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp28 = icmp eq i32 %add, %conv
  br i1 %cmp28, label %for.end.validate_return_locked_crit_edge, label %if.end31

for.end.validate_return_locked_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %validate_return_locked

if.end31:                                         ; preds = %for.end
  %arrayidx32 = getelementptr i8, ptr %tag.0339, i32 1
  %28 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %29 to i32
  %sub = sub nsw i32 %conv, %conv7343
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv33)
  %cmp36 = icmp slt i32 %sub, %conv33
  br i1 %cmp36, label %if.then38, label %if.end42

if.then38:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  %conv41 = trunc i32 %add to i8
  br label %validate_return_locked

if.end42:                                         ; preds = %if.end31
  %30 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %17, label %if.end42.validate_return_locked_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb79
    i8 5, label %sw.bb112
    i8 -128, label %sw.bb145
  ]

if.end42.validate_return_locked_crit_edge:        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %validate_return_locked

sw.bb:                                            ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %29)
  %cmp46 = icmp ult i8 %29, 4
  br i1 %cmp46, label %if.then48, label %if.end52

if.then48:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %conv51 = trunc i32 %add to i8
  br label %validate_return_locked

if.end52:                                         ; preds = %sw.bb
  %31 = load i32, ptr @cipso_v4_rbm_strictvalid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool53.not = icmp eq i32 %31, 0
  br i1 %tobool53.not, label %if.end52.sw.epilog_crit_edge, label %if.then54

if.end52.sw.epilog_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then54:                                        ; preds = %if.end52
  %32 = ptrtoint ptr %type.i253 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %type.i253, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %33, label %if.then54.if.then59_crit_edge [
    i32 2, label %if.then54.if.end63_crit_edge
    i32 1, label %sw.bb1.i
  ]

if.then54.if.end63_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.then54.if.then59_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then59

sw.bb1.i:                                         ; preds = %if.then54
  %arrayidx55 = getelementptr i8, ptr %tag.0339, i32 3
  %35 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx55, align 1
  %conv.i = zext i8 %36 to i32
  %37 = ptrtoint ptr %map.i255 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %map.i255, align 4
  %cipso_size.i = getelementptr inbounds %struct.anon.5, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %cipso_size.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cipso_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.i)
  %cmp.i = icmp ugt i32 %40, %conv.i
  br i1 %cmp.i, label %land.lhs.true.i232, label %sw.bb1.i.if.then59_crit_edge

sw.bb1.i.if.then59_crit_edge:                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then59

land.lhs.true.i232:                               ; preds = %sw.bb1.i
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %38, align 4
  %arrayidx.i = getelementptr i32, ptr %42, i32 %conv.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp5.i = icmp sgt i32 %44, -1
  br i1 %cmp5.i, label %land.lhs.true.i232.if.end63_crit_edge, label %land.lhs.true.i232.if.then59_crit_edge

land.lhs.true.i232.if.then59_crit_edge:           ; preds = %land.lhs.true.i232
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then59

land.lhs.true.i232.if.end63_crit_edge:            ; preds = %land.lhs.true.i232
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.then59:                                        ; preds = %land.lhs.true.i232.if.then59_crit_edge, %sw.bb1.i.if.then59_crit_edge, %if.then54.if.then59_crit_edge
  %add61 = add i8 %opt_iter.0341, 3
  br label %validate_return_locked

if.end63:                                         ; preds = %land.lhs.true.i232.if.end63_crit_edge, %if.then54.if.end63_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %29)
  %cmp65 = icmp ugt i8 %29, 4
  br i1 %cmp65, label %land.lhs.true, label %if.end63.sw.epilog_crit_edge

if.end63.sw.epilog_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

land.lhs.true:                                    ; preds = %if.end63
  %arrayidx67 = getelementptr i8, ptr %tag.0339, i32 4
  %sub69 = add nsw i32 %conv33, -4
  %call70 = tail call fastcc i32 @cipso_v4_map_cat_rbm_valid(ptr noundef nonnull %iter.033.i.le, ptr noundef %arrayidx67, i32 noundef %sub69)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.then73, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then73:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %add75 = add i8 %opt_iter.0341, 4
  br label %validate_return_locked

sw.bb79:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %29)
  %cmp81 = icmp ult i8 %29, 4
  br i1 %cmp81, label %if.then83, label %if.end87

if.then83:                                        ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #16
  %conv86 = trunc i32 %add to i8
  br label %validate_return_locked

if.end87:                                         ; preds = %sw.bb79
  %45 = ptrtoint ptr %type.i253 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %type.i253, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %46, label %if.end87.if.then92_crit_edge [
    i32 2, label %if.end87.if.end96_crit_edge
    i32 1, label %sw.bb1.i239
  ]

if.end87.if.end96_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end96

if.end87.if.then92_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then92

sw.bb1.i239:                                      ; preds = %if.end87
  %arrayidx88 = getelementptr i8, ptr %tag.0339, i32 3
  %48 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx88, align 1
  %conv.i235 = zext i8 %49 to i32
  %50 = ptrtoint ptr %map.i255 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %map.i255, align 4
  %cipso_size.i237 = getelementptr inbounds %struct.anon.5, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %cipso_size.i237 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cipso_size.i237, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %conv.i235)
  %cmp.i238 = icmp ugt i32 %53, %conv.i235
  br i1 %cmp.i238, label %land.lhs.true.i242, label %sw.bb1.i239.if.then92_crit_edge

sw.bb1.i239.if.then92_crit_edge:                  ; preds = %sw.bb1.i239
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then92

land.lhs.true.i242:                               ; preds = %sw.bb1.i239
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %51, align 4
  %arrayidx.i240 = getelementptr i32, ptr %55, i32 %conv.i235
  %56 = ptrtoint ptr %arrayidx.i240 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i240, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %cmp5.i241 = icmp sgt i32 %57, -1
  br i1 %cmp5.i241, label %land.lhs.true.i242.if.end96_crit_edge, label %land.lhs.true.i242.if.then92_crit_edge

land.lhs.true.i242.if.then92_crit_edge:           ; preds = %land.lhs.true.i242
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then92

land.lhs.true.i242.if.end96_crit_edge:            ; preds = %land.lhs.true.i242
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end96

if.then92:                                        ; preds = %land.lhs.true.i242.if.then92_crit_edge, %sw.bb1.i239.if.then92_crit_edge, %if.end87.if.then92_crit_edge
  %add94 = add i8 %opt_iter.0341, 3
  br label %validate_return_locked

if.end96:                                         ; preds = %land.lhs.true.i242.if.end96_crit_edge, %if.end87.if.end96_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %29)
  %cmp98 = icmp ugt i8 %29, 4
  br i1 %cmp98, label %land.lhs.true100, label %if.end96.sw.epilog_crit_edge

if.end96.sw.epilog_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

land.lhs.true100:                                 ; preds = %if.end96
  %arrayidx101 = getelementptr i8, ptr %tag.0339, i32 4
  %sub103 = add nsw i32 %conv33, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp.not.i247 = icmp eq i32 %46, 2
  %and.i = and i32 %conv33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i248 = icmp eq i32 %and.i, 0
  %or.cond.i = and i1 %tobool.not.i248, %cmp.not.i247
  br i1 %or.cond.i, label %for.cond.preheader.i, label %land.lhs.true100.if.then107_crit_edge

land.lhs.true100.if.then107_crit_edge:            ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then107

for.cond.preheader.i:                             ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub103)
  %cmp113.not.i = icmp eq i32 %sub103, 0
  br i1 %cmp113.not.i, label %for.cond.preheader.i.sw.epilog_crit_edge, label %for.cond.preheader.i.for.body.i251_crit_edge

for.cond.preheader.i.for.body.i251_crit_edge:     ; preds = %for.cond.preheader.i
  br label %for.body.i251

for.cond.preheader.i.sw.epilog_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

for.cond.i:                                       ; preds = %for.body.i251
  %add.i = add i32 %iter.015.i, 2
  %cmp1.i = icmp ult i32 %add.i, %sub103
  br i1 %cmp1.i, label %for.cond.i.for.body.i251_crit_edge, label %for.cond.i.sw.epilog_crit_edge

for.cond.i.sw.epilog_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

for.cond.i.for.body.i251_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i251

for.body.i251:                                    ; preds = %for.cond.i.for.body.i251_crit_edge, %for.cond.preheader.i.for.body.i251_crit_edge
  %iter.015.i = phi i32 [ %add.i, %for.cond.i.for.body.i251_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i251_crit_edge ]
  %cat_prev.014.i = phi i32 [ %conv.i250, %for.cond.i.for.body.i251_crit_edge ], [ -1, %for.cond.preheader.i.for.body.i251_crit_edge ]
  %arrayidx.i249 = getelementptr i8, ptr %arrayidx101, i32 %iter.015.i
  %58 = ptrtoint ptr %arrayidx.i249 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %arrayidx.i249, align 1
  %conv.i250 = zext i16 %59 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cat_prev.014.i, i32 %conv.i250)
  %cmp2.not.i = icmp slt i32 %cat_prev.014.i, %conv.i250
  br i1 %cmp2.not.i, label %for.cond.i, label %for.body.i251.if.then107_crit_edge

for.body.i251.if.then107_crit_edge:               ; preds = %for.body.i251
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then107

if.then107:                                       ; preds = %for.body.i251.if.then107_crit_edge, %land.lhs.true100.if.then107_crit_edge
  %add109 = add i8 %opt_iter.0341, 4
  br label %validate_return_locked

sw.bb112:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %29)
  %cmp114 = icmp ult i8 %29, 4
  br i1 %cmp114, label %if.then116, label %if.end120

if.then116:                                       ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #16
  %conv119 = trunc i32 %add to i8
  br label %validate_return_locked

if.end120:                                        ; preds = %sw.bb112
  %60 = ptrtoint ptr %type.i253 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %type.i253, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %61, label %if.end120.if.then125_crit_edge [
    i32 2, label %if.end120.if.end129_crit_edge
    i32 1, label %sw.bb1.i258
  ]

if.end120.if.end129_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end129

if.end120.if.then125_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then125

sw.bb1.i258:                                      ; preds = %if.end120
  %arrayidx121 = getelementptr i8, ptr %tag.0339, i32 3
  %63 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx121, align 1
  %conv.i254 = zext i8 %64 to i32
  %65 = ptrtoint ptr %map.i255 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %map.i255, align 4
  %cipso_size.i256 = getelementptr inbounds %struct.anon.5, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %cipso_size.i256 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cipso_size.i256, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %conv.i254)
  %cmp.i257 = icmp ugt i32 %68, %conv.i254
  br i1 %cmp.i257, label %land.lhs.true.i261, label %sw.bb1.i258.if.then125_crit_edge

sw.bb1.i258.if.then125_crit_edge:                 ; preds = %sw.bb1.i258
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then125

land.lhs.true.i261:                               ; preds = %sw.bb1.i258
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %66, align 4
  %arrayidx.i259 = getelementptr i32, ptr %70, i32 %conv.i254
  %71 = ptrtoint ptr %arrayidx.i259 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i259, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %72)
  %cmp5.i260 = icmp sgt i32 %72, -1
  br i1 %cmp5.i260, label %land.lhs.true.i261.if.end129_crit_edge, label %land.lhs.true.i261.if.then125_crit_edge

land.lhs.true.i261.if.then125_crit_edge:          ; preds = %land.lhs.true.i261
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then125

land.lhs.true.i261.if.end129_crit_edge:           ; preds = %land.lhs.true.i261
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end129

if.then125:                                       ; preds = %land.lhs.true.i261.if.then125_crit_edge, %sw.bb1.i258.if.then125_crit_edge, %if.end120.if.then125_crit_edge
  %add127 = add i8 %opt_iter.0341, 3
  br label %validate_return_locked

if.end129:                                        ; preds = %land.lhs.true.i261.if.end129_crit_edge, %if.end120.if.end129_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %29)
  %cmp131 = icmp ugt i8 %29, 4
  br i1 %cmp131, label %land.lhs.true133, label %if.end129.sw.epilog_crit_edge

if.end129.sw.epilog_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

land.lhs.true133:                                 ; preds = %if.end129
  %arrayidx134 = getelementptr i8, ptr %tag.0339, i32 4
  %sub136 = add nsw i32 %conv33, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %cmp.not.i266 = icmp eq i32 %61, 2
  %and.i267 = and i32 %conv33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i267)
  %tobool.not.i268 = icmp eq i32 %and.i267, 0
  %or.cond.i269 = and i1 %tobool.not.i268, %cmp.not.i266
  br i1 %or.cond.i269, label %for.cond.preheader.i270, label %land.lhs.true133.if.then140_crit_edge

land.lhs.true133.if.then140_crit_edge:            ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then140

for.cond.preheader.i270:                          ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub136)
  %cmp124.not.i = icmp eq i32 %sub136, 0
  br i1 %cmp124.not.i, label %for.cond.preheader.i270.sw.epilog_crit_edge, label %for.cond.preheader.i270.for.body.i276_crit_edge

for.cond.preheader.i270.for.body.i276_crit_edge:  ; preds = %for.cond.preheader.i270
  br label %for.body.i276

for.cond.preheader.i270.sw.epilog_crit_edge:      ; preds = %for.cond.preheader.i270
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

for.cond.i272:                                    ; preds = %if.end7.i
  %conv12.i = zext i16 %cat_low.0.i to i32
  %cmp1.i271 = icmp ult i32 %add.i274, %sub136
  br i1 %cmp1.i271, label %for.cond.i272.for.body.i276_crit_edge, label %for.cond.i272.sw.epilog_crit_edge

for.cond.i272.sw.epilog_crit_edge:                ; preds = %for.cond.i272
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

for.cond.i272.for.body.i276_crit_edge:            ; preds = %for.cond.i272
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i276

for.body.i276:                                    ; preds = %for.cond.i272.for.body.i276_crit_edge, %for.cond.preheader.i270.for.body.i276_crit_edge
  %iter.026.i = phi i32 [ %add.i274, %for.cond.i272.for.body.i276_crit_edge ], [ 0, %for.cond.preheader.i270.for.body.i276_crit_edge ]
  %cat_prev.025.i = phi i32 [ %conv12.i, %for.cond.i272.for.body.i276_crit_edge ], [ 65535, %for.cond.preheader.i270.for.body.i276_crit_edge ]
  %arrayidx.i273 = getelementptr i8, ptr %arrayidx134, i32 %iter.026.i
  %73 = ptrtoint ptr %arrayidx.i273 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %arrayidx.i273, align 1
  %add.i274 = add i32 %iter.026.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i274, i32 %sub136)
  %cmp2.not.i275 = icmp ugt i32 %add.i274, %sub136
  br i1 %cmp2.not.i275, label %for.body.i276.if.end7.i_crit_edge, label %if.then3.i

for.body.i276.if.end7.i_crit_edge:                ; preds = %for.body.i276
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

if.then3.i:                                       ; preds = %for.body.i276
  call void @__sanitizer_cov_trace_pc() #16
  %add4.i = or i32 %iter.026.i, 2
  %arrayidx5.i = getelementptr i8, ptr %arrayidx134, i32 %add4.i
  %75 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %arrayidx5.i, align 1
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then3.i, %for.body.i276.if.end7.i_crit_edge
  %cat_low.0.i = phi i16 [ %76, %if.then3.i ], [ 0, %for.body.i276.if.end7.i_crit_edge ]
  %conv.i277 = zext i16 %74 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cat_prev.025.i, i32 %conv.i277)
  %cmp8.i = icmp ult i32 %cat_prev.025.i, %conv.i277
  br i1 %cmp8.i, label %if.end7.i.if.then140_crit_edge, label %for.cond.i272

if.end7.i.if.then140_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then140

if.then140:                                       ; preds = %if.end7.i.if.then140_crit_edge, %land.lhs.true133.if.then140_crit_edge
  %add142 = add i8 %opt_iter.0341, 4
  br label %validate_return_locked

sw.bb145:                                         ; preds = %if.end42
  br i1 %tobool146.not, label %sw.bb145.validate_return_locked_crit_edge, label %lor.lhs.false147

sw.bb145.validate_return_locked_crit_edge:        ; preds = %sw.bb145
  call void @__sanitizer_cov_trace_pc() #16
  br label %validate_return_locked

lor.lhs.false147:                                 ; preds = %sw.bb145
  %77 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %15, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %78, i32 0, i32 14
  %79 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags, align 8
  %and = and i32 %80, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool148.not = icmp eq i32 %and, 0
  br i1 %tobool148.not, label %lor.lhs.false147.validate_return_locked_crit_edge, label %if.end150

lor.lhs.false147.validate_return_locked_crit_edge: ; preds = %lor.lhs.false147
  call void @__sanitizer_cov_trace_pc() #16
  br label %validate_return_locked

if.end150:                                        ; preds = %lor.lhs.false147
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %29)
  %cmp152.not = icmp eq i8 %29, 6
  br i1 %cmp152.not, label %if.end150.sw.epilog_crit_edge, label %if.then154

if.end150.sw.epilog_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then154:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #16
  %conv157 = trunc i32 %add to i8
  br label %validate_return_locked

sw.epilog:                                        ; preds = %if.end150.sw.epilog_crit_edge, %for.cond.i272.sw.epilog_crit_edge, %for.cond.preheader.i270.sw.epilog_crit_edge, %if.end129.sw.epilog_crit_edge, %for.cond.i.sw.epilog_crit_edge, %for.cond.preheader.i.sw.epilog_crit_edge, %if.end96.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %if.end63.sw.epilog_crit_edge, %if.end52.sw.epilog_crit_edge
  %add.ptr160 = getelementptr i8, ptr %tag.0339, i32 %conv33
  %add163 = add i8 %29, %opt_iter.0341
  %conv7 = zext i8 %add163 to i32
  %cmp9 = icmp ugt i8 %3, %add163
  br i1 %cmp9, label %sw.epilog.for.cond.preheader_crit_edge, label %sw.epilog.validate_return_locked_crit_edge

sw.epilog.validate_return_locked_crit_edge:       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %validate_return_locked

sw.epilog.for.cond.preheader_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader

validate_return_locked:                           ; preds = %sw.epilog.validate_return_locked_crit_edge, %if.then154, %lor.lhs.false147.validate_return_locked_crit_edge, %sw.bb145.validate_return_locked_crit_edge, %if.then140, %if.then125, %if.then116, %if.then107, %if.then92, %if.then83, %if.then73, %if.then59, %if.then48, %if.end42.validate_return_locked_crit_edge, %if.then38, %for.end.validate_return_locked_crit_edge, %for.cond.4.validate_return_locked_crit_edge, %for.body.3.validate_return_locked_crit_edge, %for.body.2.validate_return_locked_crit_edge, %for.body.1.validate_return_locked_crit_edge, %for.body.validate_return_locked_crit_edge, %if.end5.validate_return_locked_crit_edge, %cipso_v4_doi_search.exit.validate_return_locked_crit_edge, %for.inc.i.validate_return_locked_crit_edge, %do.end.i.validate_return_locked_crit_edge
  %err_offset.0 = phi i8 [ %conv41, %if.then38 ], [ %conv157, %if.then154 ], [ %conv119, %if.then116 ], [ %add127, %if.then125 ], [ %add142, %if.then140 ], [ %conv86, %if.then83 ], [ %add94, %if.then92 ], [ %add109, %if.then107 ], [ %conv51, %if.then48 ], [ %add61, %if.then59 ], [ %add75, %if.then73 ], [ 2, %cipso_v4_doi_search.exit.validate_return_locked_crit_edge ], [ 2, %do.end.i.validate_return_locked_crit_edge ], [ 0, %if.end5.validate_return_locked_crit_edge ], [ %opt_iter.0341, %for.body.3.validate_return_locked_crit_edge ], [ %opt_iter.0341, %for.body.2.validate_return_locked_crit_edge ], [ %opt_iter.0341, %for.body.1.validate_return_locked_crit_edge ], [ %opt_iter.0341, %for.body.validate_return_locked_crit_edge ], [ %opt_iter.0341, %for.cond.4.validate_return_locked_crit_edge ], [ 0, %sw.epilog.validate_return_locked_crit_edge ], [ %opt_iter.0341, %for.end.validate_return_locked_crit_edge ], [ %opt_iter.0341, %lor.lhs.false147.validate_return_locked_crit_edge ], [ %opt_iter.0341, %sw.bb145.validate_return_locked_crit_edge ], [ %opt_iter.0341, %if.end42.validate_return_locked_crit_edge ], [ 2, %for.inc.i.validate_return_locked_crit_edge ]
  %call.i279 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i279, label %validate_return_locked.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i282

validate_return_locked.rcu_read_unlock.exit_crit_edge: ; preds = %validate_return_locked
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i282:                               ; preds = %validate_return_locked
  %call1.i280 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i280)
  %tobool.not.i281 = icmp eq i32 %call1.i280, 0
  br i1 %tobool.not.i281, label %land.lhs.true.i282.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i284

land.lhs.true.i282.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i282
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i284:                              ; preds = %land.lhs.true.i282
  %.b4.i283 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i283, label %land.lhs.true2.i284.rcu_read_unlock.exit_crit_edge, label %if.then.i285

land.lhs.true2.i284.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i284
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i285:                                     ; preds = %land.lhs.true2.i284
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i285, %land.lhs.true2.i284.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i282.rcu_read_unlock.exit_crit_edge, %validate_return_locked.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !74
  %81 = tail call i32 @llvm.read_register.i32(metadata !55) #14
  %and.i.i.i.i.i286 = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i.i.i286 to ptr
  %preempt_count.i.i.i.i287 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %preempt_count.i.i.i.i287 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %preempt_count.i.i.i.i287, align 4
  %sub.i.i.i = add i32 %84, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i287, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %validate_return

validate_return:                                  ; preds = %rcu_read_unlock.exit, %entry.validate_return_crit_edge
  %err_offset.1 = phi i8 [ %err_offset.0, %rcu_read_unlock.exit ], [ 1, %entry.validate_return_crit_edge ]
  %conv165 = zext i8 %err_offset.1 to i32
  %add.ptr166 = getelementptr i8, ptr %1, i32 %conv165
  %85 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %add.ptr166, ptr %option, align 4
  ret i32 %conv165
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cipso_v4_map_cat_rbm_valid(ptr nocapture noundef readonly %doi_def, ptr noundef %bitmap, i32 noundef %bitmap_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %bitmap_len, 3
  %type = getelementptr inbounds %struct.cipso_v4_doi, ptr %doi_def, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 2, label %entry.cleanup_crit_edge
    i32 1, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %map = getelementptr inbounds %struct.cipso_v4_doi, ptr %doi_def, i32 0, i32 2
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  %cat2 = getelementptr inbounds %struct.cipso_v4_std_map_tbl, ptr %4, i32 0, i32 1
  %cipso_size = getelementptr inbounds %struct.cipso_v4_std_map_tbl, ptr %4, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %cipso_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cipso_size, align 4
  %7 = ptrtoint ptr %cat2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cat2, align 4
  br label %for.cond

for.cond:                                         ; preds = %lor.lhs.false.for.cond_crit_edge, %sw.bb1
  %cat.0 = phi i32 [ -1, %sw.bb1 ], [ %call, %lor.lhs.false.for.cond_crit_edge ]
  %add = add i32 %cat.0, 1
  %call = tail call i32 @netlbl_bitmap_walk(ptr noundef %bitmap, i32 noundef %mul, i32 noundef %add, i8 noundef zeroext 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %for.end, label %if.end

if.end:                                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %6)
  %cmp5.not = icmp ult i32 %call, %6
  br i1 %cmp5.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx = getelementptr i32, ptr %8, i32 %call
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %cmp6 = icmp slt i32 %10, 0
  br i1 %cmp6, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.for.cond_crit_edge

lor.lhs.false.for.cond_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp9 = icmp eq i32 %call, -1
  br i1 %cmp9, label %for.end.cleanup_crit_edge, label %for.end.sw.epilog_crit_edge

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.epilog:                                        ; preds = %for.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %for.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ -14, %lor.lhs.false.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cipso_v4_error(ptr noundef %skb, i32 noundef %error, i32 noundef %gateway) local_unnamed_addr #0 align 64 {
entry:
  %optbuf = alloca [56 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %optbuf) #14
  %0 = getelementptr inbounds i8, ptr %optbuf, i32 16
  %1 = call ptr @memset(ptr %0, i32 255, i32 40)
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
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp ne i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %error)
  %cmp2.not = icmp eq i32 %error, -13
  %or.cond = and i1 %cmp2.not, %cmp
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = call ptr @memset(ptr %optbuf, i32 0, i32 16)
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear = shl i8 %bf.load, 2
  %10 = and i8 %bf.clear, 60
  %sub = add nsw i8 %10, -20
  %optlen = getelementptr inbounds %struct.ip_options, ptr %optbuf, i32 0, i32 2
  %11 = ptrtoint ptr %optlen to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %sub, ptr %optlen, align 4
  %12 = tail call i32 @llvm.read_register.i32(metadata !55) #14
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !72
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %16 = getelementptr inbounds %struct.anon.8, ptr %skb, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 127
  %19 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nd_net.i, align 4
  %call8 = call i32 @__ip_options_compile(ptr noundef %20, ptr noundef nonnull %optbuf, ptr noundef %skb, ptr noundef null) #14
  %call.i29 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i29, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i32

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i32:                                ; preds = %rcu_read_lock.exit
  %call1.i30 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i34

land.lhs.true.i32.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i34:                               ; preds = %land.lhs.true.i32
  %.b4.i33 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33, label %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, label %if.then.i35

land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i35:                                      ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i35, %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !74
  %21 = call i32 @llvm.read_register.i32(metadata !55) #14
  %and.i.i.i.i.i36 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i36 to ptr
  %preempt_count.i.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i37, align 4
  %sub.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i37, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %rcu_read_unlock.exit.cleanup_crit_edge

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gateway)
  %tobool11.not = icmp eq i32 %gateway, 0
  %. = select i1 %tobool11.not, i32 10, i32 9
  call void @__icmp_send(ptr noundef %skb, i32 noundef 3, i32 noundef %., i32 noundef 0, ptr noundef nonnull %optbuf) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %rcu_read_unlock.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %optbuf) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ip_options_compile(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__icmp_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cipso_v4_sock_setattr(ptr noundef %sk, ptr nocapture noundef readonly %doi_def, ptr nocapture noundef readonly %secattr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sk, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 40) #17
  %tobool1.not = icmp eq ptr %call7.i, null
  br i1 %tobool1.not, label %if.end.socket_setattr_failure_crit_edge, label %if.end3

if.end.socket_setattr_failure_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %socket_setattr_failure

if.end3:                                          ; preds = %if.end
  %call4 = tail call fastcc i32 @cipso_v4_genopt(ptr noundef nonnull %call7.i, ptr noundef %doi_def, ptr noundef %secattr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end3.socket_setattr_failure_crit_edge, label %if.end6

if.end3.socket_setattr_failure_crit_edge:         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %socket_setattr_failure

if.end6:                                          ; preds = %if.end3
  %add = add nuw i32 %call4, 3
  %and = and i32 %add, -4
  %add7 = add nuw i32 %and, 24
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add7, i32 noundef 2848) #18
  %tobool9.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool9.not, label %if.end6.socket_setattr_failure_crit_edge, label %if.end11

if.end6.socket_setattr_failure_crit_edge:         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %socket_setattr_failure

if.end11:                                         ; preds = %if.end6
  %__data = getelementptr inbounds %struct.ip_options_rcu, ptr %call9.i.i, i32 1
  %1 = call ptr @memcpy(ptr %__data, ptr %call7.i, i32 %call4)
  %conv = trunc i32 %and to i8
  %optlen = getelementptr inbounds %struct.ip_options_rcu, ptr %call9.i.i, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %optlen to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %optlen, align 16
  %cipso = getelementptr inbounds %struct.ip_options_rcu, ptr %call9.i.i, i32 0, i32 1, i32 8
  %3 = ptrtoint ptr %cipso to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 20, ptr %cipso, align 2
  tail call void @kfree(ptr noundef nonnull %call7.i) #14
  %dep_map.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %lockdep_sock_is_held.exit, label %if.end11.do.end_crit_edge

if.end11.do.end_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

lockdep_sock_is_held.exit:                        ; preds = %if.end11
  %dep_map2.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i)
  %tobool4.i.not = icmp eq i32 %call.i6.i, 0
  br i1 %tobool4.i.not, label %land.lhs.true, label %lockdep_sock_is_held.exit.do.end_crit_edge

lockdep_sock_is_held.exit.do.end_crit_edge:       ; preds = %lockdep_sock_is_held.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %lockdep_sock_is_held.exit
  %call17 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true19

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true19:                                  ; preds = %land.lhs.true
  %.b132 = load i1, ptr @cipso_v4_sock_setattr.__warned, align 1
  br i1 %.b132, label %land.lhs.true19.do.end_crit_edge, label %if.then21

land.lhs.true19.do.end_crit_edge:                 ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cipso_v4_sock_setattr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1881, ptr noundef nonnull @.str.8) #14
  br label %do.end

do.end:                                           ; preds = %if.then21, %land.lhs.true19.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %lockdep_sock_is_held.exit.do.end_crit_edge, %if.end11.do.end_crit_edge
  %inet_opt = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 5
  %4 = ptrtoint ptr %inet_opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inet_opt, align 4
  %is_icsk = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 12
  %6 = ptrtoint ptr %is_icsk to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %is_icsk, align 8
  %7 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool23.not = icmp eq i16 %7, 0
  br i1 %tobool23.not, label %do.end.do.body43_crit_edge, label %if.then24

do.end.do.body43_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body43

if.then24:                                        ; preds = %do.end
  %tobool26.not = icmp eq ptr %5, null
  br i1 %tobool26.not, label %if.then24.if.end33_crit_edge, label %if.then27

if.then24.if.end33_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  %optlen29 = getelementptr inbounds %struct.ip_options_rcu, ptr %5, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %optlen29 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %optlen29, align 4
  %conv30 = zext i8 %9 to i16
  %icsk_ext_hdr_len = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 23
  %10 = ptrtoint ptr %icsk_ext_hdr_len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %icsk_ext_hdr_len, align 2
  %sub = sub i16 %11, %conv30
  store i16 %sub, ptr %icsk_ext_hdr_len, align 2
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %if.then24.if.end33_crit_edge
  %12 = ptrtoint ptr %optlen to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %optlen, align 16
  %conv36 = zext i8 %13 to i16
  %icsk_ext_hdr_len37 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 23
  %14 = ptrtoint ptr %icsk_ext_hdr_len37 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %icsk_ext_hdr_len37, align 2
  %add39 = add i16 %15, %conv36
  store i16 %add39, ptr %icsk_ext_hdr_len37, align 2
  %icsk_sync_mss = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 16
  %16 = ptrtoint ptr %icsk_sync_mss to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %icsk_sync_mss, align 8
  %icsk_pmtu_cookie = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 9
  %18 = ptrtoint ptr %icsk_pmtu_cookie to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %icsk_pmtu_cookie, align 8
  %call41 = tail call i32 %17(ptr noundef nonnull %sk, i32 noundef %19) #14
  br label %do.body43

do.body43:                                        ; preds = %if.end33, %do.end.do.body43_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !75
  %20 = ptrtoint ptr %inet_opt to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %call9.i.i, ptr %inet_opt, align 4
  %tobool83.not = icmp eq ptr %5, null
  br i1 %tobool83.not, label %do.body43.cleanup_crit_edge, label %do.end90

do.body43.cleanup_crit_edge:                      ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end90:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kvfree_call_rcu(ptr noundef nonnull %5, ptr noundef null) #14
  br label %cleanup

socket_setattr_failure:                           ; preds = %if.end6.socket_setattr_failure_crit_edge, %if.end3.socket_setattr_failure_crit_edge, %if.end.socket_setattr_failure_crit_edge
  %ret_val.0 = phi i32 [ %call4, %if.end3.socket_setattr_failure_crit_edge ], [ -12, %if.end.socket_setattr_failure_crit_edge ], [ -12, %if.end6.socket_setattr_failure_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i) #14
  tail call void @kfree(ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %socket_setattr_failure, %do.end90, %do.body43.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_val.0, %socket_setattr_failure ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end90 ], [ 0, %do.body43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cipso_v4_genopt(ptr noundef %buf, ptr nocapture noundef readonly %doi_def, ptr nocapture noundef readonly %secattr) unnamed_addr #0 align 64 {
entry:
  %array.i.i = alloca [16 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx7 = getelementptr i8, ptr %buf, i32 6
  %lvl.i22 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 4, i32 0, i32 1
  %type.i.i23 = getelementptr inbounds %struct.cipso_v4_doi, ptr %doi_def, i32 0, i32 1
  %map.i.i25 = getelementptr inbounds %struct.cipso_v4_doi, ptr %doi_def, i32 0, i32 2
  %arrayidx.i37 = getelementptr i8, ptr %buf, i32 10
  %attr.i.i38 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 4
  %arrayidx13.i50 = getelementptr i8, ptr %buf, i32 7
  %arrayidx15.i52 = getelementptr i8, ptr %buf, i32 9
  %arrayidx.1.i.i = getelementptr i8, ptr %buf, i32 12
  %arrayidx.2.i.i = getelementptr i8, ptr %buf, i32 14
  %arrayidx.3.i.i = getelementptr i8, ptr %buf, i32 16
  %arrayidx.4.i.i = getelementptr i8, ptr %buf, i32 18
  %arrayidx.5.i.i = getelementptr i8, ptr %buf, i32 20
  %arrayidx.6.i.i = getelementptr i8, ptr %buf, i32 22
  %arrayidx.7.i.i = getelementptr i8, ptr %buf, i32 24
  %arrayidx.8.i.i = getelementptr i8, ptr %buf, i32 26
  %arrayidx.9.i.i = getelementptr i8, ptr %buf, i32 28
  %arrayidx.10.i.i = getelementptr i8, ptr %buf, i32 30
  %arrayidx.11.i.i = getelementptr i8, ptr %buf, i32 32
  %arrayidx.12.i.i = getelementptr i8, ptr %buf, i32 34
  %arrayidx.13.i.i = getelementptr i8, ptr %buf, i32 36
  %arrayidx.14.i.i = getelementptr i8, ptr %buf, i32 38
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  %iter.0 = phi i32 [ 0, %entry ], [ %inc, %land.rhs.do.body_crit_edge ]
  %0 = call ptr @memset(ptr %buf, i32 0, i32 40)
  %arrayidx = getelementptr %struct.cipso_v4_doi, ptr %doi_def, i32 0, i32 3, i32 %iter.0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %2, label %do.body.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb2
    i8 5, label %sw.bb6
    i8 -128, label %sw.bb10
  ]

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %do.body
  %4 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %secattr, align 4
  %and.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %6 = ptrtoint ptr %lvl.i22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lvl.i22, align 4
  %8 = ptrtoint ptr %type.i.i23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type.i.i23, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %9, label %if.end.i.sw.epilog_crit_edge [
    i32 2, label %if.end3.thread.i
    i32 1, label %sw.bb1.i.i
  ]

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb1.i.i:                                       ; preds = %if.end.i
  %11 = ptrtoint ptr %map.i.i25 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map.i.i25, align 4
  %local_size.i.i = getelementptr inbounds %struct.anon.5, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %local_size.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %local_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %7)
  %cmp.i.i = icmp ugt i32 %14, %7
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %sw.bb1.i.i.sw.epilog_crit_edge

sw.bb1.i.i.sw.epilog_crit_edge:                   ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

land.lhs.true.i.i:                                ; preds = %sw.bb1.i.i
  %local.i.i = getelementptr inbounds %struct.anon.5, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %local.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %local.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %16, i32 %7
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp4.i.i = icmp sgt i32 %18, -1
  br i1 %cmp4.i.i, label %if.end3.i, label %land.lhs.true.i.i.sw.epilog_crit_edge

land.lhs.true.i.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end3.i:                                        ; preds = %land.lhs.true.i.i
  %and5.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool.not.i, label %if.end3.i.if.end18.i_crit_edge, label %if.then.i.i

if.end3.i.if.end18.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

if.end3.thread.i:                                 ; preds = %if.end.i
  %and514.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and514.i)
  %tobool.not15.i = icmp eq i32 %and514.i, 0
  br i1 %tobool.not15.i, label %if.end3.thread.i.if.end18.i_crit_edge, label %if.end3.thread.i.if.end.i.i_crit_edge

if.end3.thread.i.if.end.i.i_crit_edge:            ; preds = %if.end3.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.end3.thread.i.if.end18.i_crit_edge:            ; preds = %if.end3.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

if.then.i.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  %local_size.i5.i = getelementptr inbounds %struct.cipso_v4_std_map_tbl, ptr %12, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %local_size.i5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %local_size.i5.i, align 4
  %local.i6.i = getelementptr inbounds %struct.cipso_v4_std_map_tbl, ptr %12, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %local.i6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %local.i6.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end3.thread.i.if.end.i.i_crit_edge
  %.sink.i1621.i = phi i32 [ %18, %if.then.i.i ], [ %7, %if.end3.thread.i.if.end.i.i_crit_edge ]
  %host_cat_size.0.i.i = phi i32 [ %20, %if.then.i.i ], [ 0, %if.end3.thread.i.if.end.i.i_crit_edge ]
  %host_cat_array.0.i.i = phi ptr [ %22, %if.then.i.i ], [ null, %if.end3.thread.i.if.end.i.i_crit_edge ]
  %23 = ptrtoint ptr %attr.i.i38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %attr.i.i38, align 4
  %call4.i.i = tail call i32 @netlbl_catmap_walk(ptr noundef %24, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp45.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp45.i.i, label %if.end.i.i.if.then21.i.i_crit_edge, label %if.end.i.i.if.end6.i.i_crit_edge

if.end.i.i.if.end6.i.i_crit_edge:                 ; preds = %if.end.i.i
  br label %if.end6.i.i

if.end.i.i.if.then21.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then21.i.i

if.end6.i.i:                                      ; preds = %if.end17.i.i.if.end6.i.i_crit_edge, %if.end.i.i.if.end6.i.i_crit_edge
  %call8.i.i = phi i32 [ %call.i.i, %if.end17.i.i.if.end6.i.i_crit_edge ], [ %call4.i.i, %if.end.i.i.if.end6.i.i_crit_edge ]
  %net_spot_max.07.i.i = phi i32 [ %30, %if.end17.i.i.if.end6.i.i_crit_edge ], [ 0, %if.end.i.i.if.end6.i.i_crit_edge ]
  %net_spot.06.i.i = phi i32 [ %net_spot.1.i.i, %if.end17.i.i.if.end6.i.i_crit_edge ], [ -2147483648, %if.end.i.i.if.end6.i.i_crit_edge ]
  %25 = ptrtoint ptr %type.i.i23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type.i.i23, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %26, label %if.end6.i.i.sw.epilog.i.i_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb8.i.i
  ]

if.end6.i.i.sw.epilog.i.i_crit_edge:              ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

sw.bb8.i.i:                                       ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i.i, i32 %host_cat_size.0.i.i)
  %cmp9.not.i.i = icmp ult i32 %call8.i.i, %host_cat_size.0.i.i
  br i1 %cmp9.not.i.i, label %if.end11.i.i, label %sw.bb8.i.i.sw.epilog_crit_edge

sw.bb8.i.i.sw.epilog_crit_edge:                   ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end11.i.i:                                     ; preds = %sw.bb8.i.i
  %arrayidx.i7.i = getelementptr i32, ptr %host_cat_array.0.i.i, i32 %call8.i.i
  %28 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp12.i.i = icmp slt i32 %29, 0
  br i1 %cmp12.i.i, label %if.end11.i.i.sw.epilog_crit_edge, label %if.end11.i.i.sw.epilog.i.i_crit_edge

if.end11.i.i.sw.epilog.i.i_crit_edge:             ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

if.end11.i.i.sw.epilog_crit_edge:                 ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.epilog.i.i:                                    ; preds = %if.end11.i.i.sw.epilog.i.i_crit_edge, %sw.bb.i.i, %if.end6.i.i.sw.epilog.i.i_crit_edge
  %net_spot.1.i.i = phi i32 [ %net_spot.06.i.i, %if.end6.i.i.sw.epilog.i.i_crit_edge ], [ %29, %if.end11.i.i.sw.epilog.i.i_crit_edge ], [ %call8.i.i, %sw.bb.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 239, i32 %net_spot.1.i.i)
  %cmp15.i.i = icmp ugt i32 %net_spot.1.i.i, 239
  br i1 %cmp15.i.i, label %sw.epilog.i.i.sw.epilog_crit_edge, label %if.end17.i.i

sw.epilog.i.i.sw.epilog_crit_edge:                ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end17.i.i:                                     ; preds = %sw.epilog.i.i
  tail call void @netlbl_bitmap_setbit(ptr noundef %arrayidx.i37, i32 noundef %net_spot.1.i.i, i8 noundef zeroext 1) #14
  %30 = tail call i32 @llvm.umax.i32(i32 %net_spot.1.i.i, i32 %net_spot_max.07.i.i) #14
  %31 = ptrtoint ptr %attr.i.i38 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %attr.i.i38, align 4
  %add.i.i = add nuw i32 %call8.i.i, 1
  %call.i.i = tail call i32 @netlbl_catmap_walk(ptr noundef %32, i32 noundef %add.i.i) #14
  %cmp4.i8.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp4.i8.i, label %for.end.i.i, label %if.end17.i.i.if.end6.i.i_crit_edge

if.end17.i.i.if.end6.i.i_crit_edge:               ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i.i

for.end.i.i:                                      ; preds = %if.end17.i.i
  %phi.bo.i.i = add i32 %30, 1
  %rem.i.i = and i32 %phi.bo.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool.not.i.i, label %if.end23.i.i, label %for.end.i.i.if.then21.i.i_crit_edge

for.end.i.i.if.then21.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then21.i.i

if.then21.i.i:                                    ; preds = %for.end.i.i.if.then21.i.i_crit_edge, %if.end.i.i.if.then21.i.i_crit_edge
  %net_spot_max.0.lcssa12.i.i = phi i32 [ %phi.bo.i.i, %for.end.i.i.if.then21.i.i_crit_edge ], [ 1, %if.end.i.i.if.then21.i.i_crit_edge ]
  %div2.i.i = lshr i32 %net_spot_max.0.lcssa12.i.i, 3
  %add22.i.i = add nuw nsw i32 %div2.i.i, 1
  br label %if.end10.i

if.end23.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %div241.i.i = lshr i32 %phi.bo.i.i, 3
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end23.i.i, %if.then21.i.i
  %retval.0.i9.i = phi i32 [ %add22.i.i, %if.then21.i.i ], [ %div241.i.i, %if.end23.i.i ]
  %33 = load i32, ptr @cipso_v4_rbm_optfmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool11.not.i = icmp ne i32 %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i9.i)
  %cmp12.i = icmp ne i32 %retval.0.i9.i, 0
  %or.cond.i = select i1 %tobool11.not.i, i1 %cmp12.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %retval.0.i9.i)
  %cmp14.i = icmp ult i32 %retval.0.i9.i, 11
  %or.cond1.i = select i1 %or.cond.i, i1 %cmp14.i, i1 false
  %add.i = add nuw nsw i32 %retval.0.i9.i, 4
  %spec.select.i = select i1 %or.cond1.i, i32 14, i32 %add.i
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end10.i, %if.end3.thread.i.if.end18.i_crit_edge, %if.end3.i.if.end18.i_crit_edge
  %.sink.i17.i = phi i32 [ %.sink.i1621.i, %if.end10.i ], [ %18, %if.end3.i.if.end18.i_crit_edge ], [ %7, %if.end3.thread.i.if.end18.i_crit_edge ]
  %tag_len.0.i = phi i32 [ %spec.select.i, %if.end10.i ], [ 4, %if.end3.i.if.end18.i_crit_edge ], [ 4, %if.end3.thread.i.if.end18.i_crit_edge ]
  %34 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %arrayidx7, align 1
  %conv.i = trunc i32 %tag_len.0.i to i8
  %35 = ptrtoint ptr %arrayidx13.i50 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv.i, ptr %arrayidx13.i50, align 1
  %conv21.i = trunc i32 %.sink.i17.i to i8
  %36 = ptrtoint ptr %arrayidx15.i52 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv21.i, ptr %arrayidx15.i52, align 1
  br label %if.end26

sw.bb2:                                           ; preds = %do.body
  %37 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %secattr, align 4
  %and.i1 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1)
  %tobool.not.i2 = icmp eq i32 %and.i1, 0
  br i1 %tobool.not.i2, label %sw.bb2.sw.epilog_crit_edge, label %if.end.i5

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end.i5:                                        ; preds = %sw.bb2
  %39 = ptrtoint ptr %lvl.i22 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lvl.i22, align 4
  %41 = ptrtoint ptr %type.i.i23 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %type.i.i23, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %42, label %if.end.i5.sw.epilog_crit_edge [
    i32 2, label %if.end.i5.if.end2.i_crit_edge
    i32 1, label %sw.bb1.i.i9
  ]

if.end.i5.if.end2.i_crit_edge:                    ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end2.i

if.end.i5.sw.epilog_crit_edge:                    ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb1.i.i9:                                      ; preds = %if.end.i5
  %44 = ptrtoint ptr %map.i.i25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %map.i.i25, align 4
  %local_size.i.i7 = getelementptr inbounds %struct.anon.5, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %local_size.i.i7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %local_size.i.i7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %40)
  %cmp.i.i8 = icmp ugt i32 %47, %40
  br i1 %cmp.i.i8, label %land.lhs.true.i.i13, label %sw.bb1.i.i9.sw.epilog_crit_edge

sw.bb1.i.i9.sw.epilog_crit_edge:                  ; preds = %sw.bb1.i.i9
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

land.lhs.true.i.i13:                              ; preds = %sw.bb1.i.i9
  %local.i.i10 = getelementptr inbounds %struct.anon.5, ptr %45, i32 0, i32 1
  %48 = ptrtoint ptr %local.i.i10 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %local.i.i10, align 4
  %arrayidx.i.i11 = getelementptr i32, ptr %49, i32 %40
  %50 = ptrtoint ptr %arrayidx.i.i11 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %cmp4.i.i12 = icmp sgt i32 %51, -1
  br i1 %cmp4.i.i12, label %land.lhs.true.i.i13.if.end2.i_crit_edge, label %land.lhs.true.i.i13.sw.epilog_crit_edge

land.lhs.true.i.i13.sw.epilog_crit_edge:          ; preds = %land.lhs.true.i.i13
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

land.lhs.true.i.i13.if.end2.i_crit_edge:          ; preds = %land.lhs.true.i.i13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end2.i

if.end2.i:                                        ; preds = %land.lhs.true.i.i13.if.end2.i_crit_edge, %if.end.i5.if.end2.i_crit_edge
  %.sink.i.i = phi i32 [ %40, %if.end.i5.if.end2.i_crit_edge ], [ %51, %land.lhs.true.i.i13.if.end2.i_crit_edge ]
  %and4.i = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end2.i.if.end11.i_crit_edge, label %if.then6.i

if.end2.i.if.end11.i_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.then6.i:                                       ; preds = %if.end2.i
  %52 = ptrtoint ptr %attr.i.i38 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %attr.i.i38, align 4
  %call1.i.i = tail call i32 @netlbl_catmap_walk(ptr noundef %53, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %if.then6.i.if.end11.i_crit_edge, label %if.end.preheader.i.i

if.then6.i.if.end11.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.end.preheader.i.i:                             ; preds = %if.then6.i
  %conv.i.i = trunc i32 %call1.i.i to i16
  %54 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv.i.i, ptr %arrayidx.i37, align 2
  %55 = ptrtoint ptr %attr.i.i38 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %attr.i.i38, align 4
  %add.i.i15 = add nuw i32 %call1.i.i, 1
  %call.i.i16 = tail call i32 @netlbl_catmap_walk(ptr noundef %56, i32 noundef %add.i.i15) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i16)
  %cmp.i1.i = icmp slt i32 %call.i.i16, 0
  br i1 %cmp.i1.i, label %if.end.preheader.i.i.if.end11.i_crit_edge, label %if.end.1.i.i

if.end.preheader.i.i.if.end11.i_crit_edge:        ; preds = %if.end.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.end.1.i.i:                                     ; preds = %if.end.preheader.i.i
  %conv.1.i.i = trunc i32 %call.i.i16 to i16
  %57 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv.1.i.i, ptr %arrayidx.1.i.i, align 2
  %58 = ptrtoint ptr %attr.i.i38 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %attr.i.i38, align 4
  %add.1.i.i = add nuw i32 %call.i.i16, 1
  %call.1.i.i = tail call i32 @netlbl_catmap_walk(ptr noundef %59, i32 noundef %add.1.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i)
  %cmp.1.i.i = icmp slt i32 %call.1.i.i, 0
  br i1 %cmp.1.i.i, label %if.end.1.i.i.if.end11.i_crit_edge, label %if.end.2.i.i

if.end.1.i.i.if.end11.i_crit_edge:                ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.end.2.i.i:                                     ; preds = %if.end.1.i.i
  %conv.2.i.i = trunc i32 %call.1.i.i to i16
  %60 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv.2.i.i, ptr %arrayidx.2.i.i, align 2
  %61 = ptrtoint ptr %attr.i.i38 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %attr.i.i38, align 4
  %add.2.i.i = add nuw i32 %call.1.i.i, 1
  %call.2.i.i = tail call i32 @netlbl_catmap_walk(ptr noundef %62, i32 noundef %add.2.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i.i)
  %cmp.2.i.i = icmp slt i32 %call.2.i.i, 0
  br i1 %cmp.2.i.i, label %if.end.2.i.i.if.end11.i_crit_edge, label %if.end.3.i.i

if.end.2.i.i.if.end11.i_crit_edge:                ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.end.3.i.i:                                     ; preds = %if.end.2.i.i
  %conv.3.i.i = trunc i32 %call.2.i.i to i16
  %63 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv.3.i.i, ptr %arrayidx.3.i.i, align 2
  %64 = ptrtoint ptr %attr.i.i38 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %attr.i.i38, align 4
  %add.3.i.i = add nuw i32 %call.2.i.i, 1
  %call.3.i.i = tail call i32 @netlbl_catmap_walk(ptr noundef %65, i32 noundef %add.3.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i.i)
  %cmp.3.i.i = icmp slt i32 %call.3.i.i, 0
  br i1 %cmp.3.i.i, label %if.end.3.i.i.if.end11.i_crit_edge, label %if.end.4.i.i

if.end.3.i.i.if.end11.i_crit_edge:                ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.end.4.i.i:                                     ; preds = %if.end.3.i.i
  %conv.4.i.i = trunc i32 %call.3.i.i to i16
  %66 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv.4.i.i, ptr %arrayidx.4.i.i, align 2
  %67 = ptrtoint ptr %attr.i.i38 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %attr.i.i38, align 4
  %add.4.i.i = add nuw i32 %call.3.i.i, 1
  %call.4.i.i = tail call i32 @netlbl_catmap_walk(ptr noundef %68, i32 noundef %add.4.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i.i)
  %cmp.4.i.i = icmp slt i32 %call.4.i.i, 0
  br i1 %cmp.4.i.i, label %if.end.4.i.i.if.end11.i_crit_edge, label %if.end.5.i.i

if.end.4.i.i.if.end11.i_crit_edge:                ; preds = %if.end.4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.end.5.i.i:                                     ; preds = %if.end.4.i.i
  %conv.5.i.i = trunc i32 %call.4.i.i to i16
  %69 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv.5.i.i, ptr %arrayidx.5.i.i, align 2
  %70 = ptrtoint ptr %attr.i.i38 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %attr.i.i38, align 4
  %add.5.i.i = add nuw i32 %call.4.i.i, 1
  %call.5.i.i = tail call i32 @netlbl_catmap_walk(ptr noundef %71, i32 noundef %add.5.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i.i)
  %cmp.5.i.i = icmp slt i32 %call.5.i.i, 0
  br i1 %cmp.5.i.i, label %if.end.5.i.i.if.end11.i_crit_edge, label %if.end.6.i.i

if.end.5.i.i.if.end11.i_crit_edge:                ; preds = %if.end.5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.end.6.i.i:                                     ; preds = %if.end.5.i.i
  %conv.6.i.i = trunc i32 %call.5.i.i to i16
  %72 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv.6.i.i, ptr %arrayidx.6.i.i, align 2
  %73 = ptrtoint ptr %attr.i.i38 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %attr.i.i38, align 4
  %add.6.i.i = add nuw i32 %call.5.i.i, 1
  %call.6.i.i = tail call i32 @netlbl_catmap_walk(ptr noundef %74, i32 noundef %add.6.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i.i)
  %cmp.6.i.i = icmp slt i32 %call.6.i.i, 0
  br i1 %cmp.6.i.i, label %if.end.6.i.i.if.end11.i_crit_edge, label %if.end.7.i.i

if.end.6.i.i.if.end11.i_crit_edge:                ; preds = %if.end.6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.end.7.i.i:                                     ; preds = %if.end.6.i.i
  %conv.7.i.i = trunc i32 %call.6.i.i to i16
  %75 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv.7.i.i, ptr %arrayidx.7.i.i, align 2
  %76 = ptrtoint ptr %attr.i.i38 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %attr.i.i38, align 4
  %add.7.i.i = add nuw i32 %call.6.i.i, 1
  %call.7.i.i = tail call i32 @netlbl_catmap_walk(ptr noundef %77, i32 noundef %add.7.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7.i.i)
  %cmp.7.i.i = icmp slt i32 %call.7.i.i, 0
  br i1 %cmp.7.i.i, label %if.end.7.i.i.if.end11.i_crit_edge, label %if.end.8.i.i

if.end.7.i.i.if.end11.i_crit_edge:                ; preds = %if.end.7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.end.8.i.i:                                     ; preds = %if.end.7.i.i
  %conv.8.i.i = trunc i32 %call.7.i.i to i16
  %78 = ptrtoint ptr %arrayidx.8.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv.8.i.i, ptr %arrayidx.8.i.i, align 2
  %79 = ptrtoint ptr %attr.i.i38 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %attr.i.i38, align 4
  %add.8.i.i = add nuw i32 %call.7.i.i, 1
  %call.8.i.i = tail call i32 @netlbl_catmap_walk(ptr noundef %80, i32 noundef %add.8.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8.i.i)
  %cmp.8.i.i = icmp slt i32 %call.8.i.i, 0
  br i1 %cmp.8.i.i, label %if.end.8.i.i.if.end11.i_crit_edge, label %if.end.9.i.i

if.end.8.i.i.if.end11.i_crit_edge:                ; preds = %if.end.8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.end.9.i.i:                                     ; preds = %if.end.8.i.i
  %conv.9.i.i = trunc i32 %call.8.i.i to i16
  %81 = ptrtoint ptr %arrayidx.9.i.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv.9.i.i, ptr %arrayidx.9.i.i, align 2
  %82 = ptrtoint ptr %attr.i.i38 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %attr.i.i38, align 4
  %add.9.i.i = add nuw i32 %call.8.i.i, 1
  %call.9.i.i = tail call i32 @netlbl_catmap_walk(ptr noundef %83, i32 noundef %add.9.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.9.i.i)
  %cmp.9.i.i = icmp slt i32 %call.9.i.i, 0
  br i1 %cmp.9.i.i, label %if.end.9.i.i.if.end11.i_crit_edge, label %if.end.10.i.i

if.end.9.i.i.if.end11.i_crit_edge:                ; preds = %if.end.9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.end.10.i.i:                                    ; preds = %if.end.9.i.i
  %conv.10.i.i = trunc i32 %call.9.i.i to i16
  %84 = ptrtoint ptr %arrayidx.10.i.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv.10.i.i, ptr %arrayidx.10.i.i, align 2
  %85 = ptrtoint ptr %attr.i.i38 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %attr.i.i38, align 4
  %add.10.i.i = add nuw i32 %call.9.i.i, 1
  %call.10.i.i = tail call i32 @netlbl_catmap_walk(ptr noundef %86, i32 noundef %add.10.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.10.i.i)
  %cmp.10.i.i = icmp slt i32 %call.10.i.i, 0
  br i1 %cmp.10.i.i, label %if.end.10.i.i.if.end11.i_crit_edge, label %if.end.11.i.i

if.end.10.i.i.if.end11.i_crit_edge:               ; preds = %if.end.10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.end.11.i.i:                                    ; preds = %if.end.10.i.i
  %conv.11.i.i = trunc i32 %call.10.i.i to i16
  %87 = ptrtoint ptr %arrayidx.11.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv.11.i.i, ptr %arrayidx.11.i.i, align 2
  %88 = ptrtoint ptr %attr.i.i38 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %attr.i.i38, align 4
  %add.11.i.i = add nuw i32 %call.10.i.i, 1
  %call.11.i.i = tail call i32 @netlbl_catmap_walk(ptr noundef %89, i32 noundef %add.11.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.11.i.i)
  %cmp.11.i.i = icmp slt i32 %call.11.i.i, 0
  br i1 %cmp.11.i.i, label %if.end.11.i.i.if.end11.i_crit_edge, label %if.end.12.i.i

if.end.11.i.i.if.end11.i_crit_edge:               ; preds = %if.end.11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.end.12.i.i:                                    ; preds = %if.end.11.i.i
  %conv.12.i.i = trunc i32 %call.11.i.i to i16
  %90 = ptrtoint ptr %arrayidx.12.i.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %conv.12.i.i, ptr %arrayidx.12.i.i, align 2
  %91 = ptrtoint ptr %attr.i.i38 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %attr.i.i38, align 4
  %add.12.i.i = add nuw i32 %call.11.i.i, 1
  %call.12.i.i = tail call i32 @netlbl_catmap_walk(ptr noundef %92, i32 noundef %add.12.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.12.i.i)
  %cmp.12.i.i = icmp slt i32 %call.12.i.i, 0
  br i1 %cmp.12.i.i, label %if.end.12.i.i.if.end11.i_crit_edge, label %if.end.13.i.i

if.end.12.i.i.if.end11.i_crit_edge:               ; preds = %if.end.12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.end.13.i.i:                                    ; preds = %if.end.12.i.i
  %conv.13.i.i = trunc i32 %call.12.i.i to i16
  %93 = ptrtoint ptr %arrayidx.13.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %conv.13.i.i, ptr %arrayidx.13.i.i, align 2
  %94 = ptrtoint ptr %attr.i.i38 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %attr.i.i38, align 4
  %add.13.i.i = add nuw i32 %call.12.i.i, 1
  %call.13.i.i = tail call i32 @netlbl_catmap_walk(ptr noundef %95, i32 noundef %add.13.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.13.i.i)
  %cmp.13.i.i = icmp slt i32 %call.13.i.i, 0
  br i1 %cmp.13.i.i, label %if.end.13.i.i.if.end11.i_crit_edge, label %if.end.14.i.i

if.end.13.i.i.if.end11.i_crit_edge:               ; preds = %if.end.13.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.end.14.i.i:                                    ; preds = %if.end.13.i.i
  %conv.14.i.i = trunc i32 %call.13.i.i to i16
  %96 = ptrtoint ptr %arrayidx.14.i.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv.14.i.i, ptr %arrayidx.14.i.i, align 2
  %97 = ptrtoint ptr %attr.i.i38 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %attr.i.i38, align 4
  %add.14.i.i = add nuw i32 %call.13.i.i, 1
  %call.14.i.i = tail call i32 @netlbl_catmap_walk(ptr noundef %98, i32 noundef %add.14.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.14.i.i)
  %cmp.14.i.i = icmp slt i32 %call.14.i.i, 0
  br i1 %cmp.14.i.i, label %if.end.14.i.i.if.end11.i_crit_edge, label %if.end.14.i.i.sw.epilog_crit_edge

if.end.14.i.i.sw.epilog_crit_edge:                ; preds = %if.end.14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end.14.i.i.if.end11.i_crit_edge:               ; preds = %if.end.14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.14.i.i.if.end11.i_crit_edge, %if.end.13.i.i.if.end11.i_crit_edge, %if.end.12.i.i.if.end11.i_crit_edge, %if.end.11.i.i.if.end11.i_crit_edge, %if.end.10.i.i.if.end11.i_crit_edge, %if.end.9.i.i.if.end11.i_crit_edge, %if.end.8.i.i.if.end11.i_crit_edge, %if.end.7.i.i.if.end11.i_crit_edge, %if.end.6.i.i.if.end11.i_crit_edge, %if.end.5.i.i.if.end11.i_crit_edge, %if.end.4.i.i.if.end11.i_crit_edge, %if.end.3.i.i.if.end11.i_crit_edge, %if.end.2.i.i.if.end11.i_crit_edge, %if.end.1.i.i.if.end11.i_crit_edge, %if.end.preheader.i.i.if.end11.i_crit_edge, %if.then6.i.if.end11.i_crit_edge, %if.end2.i.if.end11.i_crit_edge
  %tag_len.0.i17 = phi i32 [ 4, %if.end2.i.if.end11.i_crit_edge ], [ 32, %if.end.13.i.i.if.end11.i_crit_edge ], [ 30, %if.end.12.i.i.if.end11.i_crit_edge ], [ 28, %if.end.11.i.i.if.end11.i_crit_edge ], [ 26, %if.end.10.i.i.if.end11.i_crit_edge ], [ 24, %if.end.9.i.i.if.end11.i_crit_edge ], [ 22, %if.end.8.i.i.if.end11.i_crit_edge ], [ 20, %if.end.7.i.i.if.end11.i_crit_edge ], [ 18, %if.end.6.i.i.if.end11.i_crit_edge ], [ 16, %if.end.5.i.i.if.end11.i_crit_edge ], [ 14, %if.end.4.i.i.if.end11.i_crit_edge ], [ 12, %if.end.3.i.i.if.end11.i_crit_edge ], [ 10, %if.end.2.i.i.if.end11.i_crit_edge ], [ 8, %if.end.1.i.i.if.end11.i_crit_edge ], [ 6, %if.end.preheader.i.i.if.end11.i_crit_edge ], [ 4, %if.then6.i.if.end11.i_crit_edge ], [ 34, %if.end.14.i.i.if.end11.i_crit_edge ]
  %99 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 2, ptr %arrayidx7, align 1
  %conv.i18 = trunc i32 %tag_len.0.i17 to i8
  %100 = ptrtoint ptr %arrayidx13.i50 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv.i18, ptr %arrayidx13.i50, align 1
  %conv14.i = trunc i32 %.sink.i.i to i8
  %101 = ptrtoint ptr %arrayidx15.i52 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv14.i, ptr %arrayidx15.i52, align 1
  br label %if.end26

sw.bb6:                                           ; preds = %do.body
  %102 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %secattr, align 4
  %and.i20 = and i32 %103, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20)
  %tobool.not.i21 = icmp eq i32 %and.i20, 0
  br i1 %tobool.not.i21, label %sw.bb6.sw.epilog_crit_edge, label %if.end.i24

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end.i24:                                       ; preds = %sw.bb6
  %104 = ptrtoint ptr %lvl.i22 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %lvl.i22, align 4
  %106 = ptrtoint ptr %type.i.i23 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %type.i.i23, align 4
  %108 = zext i32 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %107, label %if.end.i24.sw.epilog_crit_edge [
    i32 2, label %if.end.i24.if.end2.i36_crit_edge
    i32 1, label %sw.bb1.i.i28
  ]

if.end.i24.if.end2.i36_crit_edge:                 ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end2.i36

if.end.i24.sw.epilog_crit_edge:                   ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb1.i.i28:                                     ; preds = %if.end.i24
  %109 = ptrtoint ptr %map.i.i25 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %map.i.i25, align 4
  %local_size.i.i26 = getelementptr inbounds %struct.anon.5, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %local_size.i.i26 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %local_size.i.i26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %105)
  %cmp.i.i27 = icmp ugt i32 %112, %105
  br i1 %cmp.i.i27, label %land.lhs.true.i.i32, label %sw.bb1.i.i28.sw.epilog_crit_edge

sw.bb1.i.i28.sw.epilog_crit_edge:                 ; preds = %sw.bb1.i.i28
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

land.lhs.true.i.i32:                              ; preds = %sw.bb1.i.i28
  %local.i.i29 = getelementptr inbounds %struct.anon.5, ptr %110, i32 0, i32 1
  %113 = ptrtoint ptr %local.i.i29 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %local.i.i29, align 4
  %arrayidx.i.i30 = getelementptr i32, ptr %114, i32 %105
  %115 = ptrtoint ptr %arrayidx.i.i30 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %116)
  %cmp4.i.i31 = icmp sgt i32 %116, -1
  br i1 %cmp4.i.i31, label %land.lhs.true.i.i32.if.end2.i36_crit_edge, label %land.lhs.true.i.i32.sw.epilog_crit_edge

land.lhs.true.i.i32.sw.epilog_crit_edge:          ; preds = %land.lhs.true.i.i32
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

land.lhs.true.i.i32.if.end2.i36_crit_edge:        ; preds = %land.lhs.true.i.i32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end2.i36

if.end2.i36:                                      ; preds = %land.lhs.true.i.i32.if.end2.i36_crit_edge, %if.end.i24.if.end2.i36_crit_edge
  %.sink.i.i33 = phi i32 [ %105, %if.end.i24.if.end2.i36_crit_edge ], [ %116, %land.lhs.true.i.i32.if.end2.i36_crit_edge ]
  %and4.i34 = and i32 %103, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i34)
  %tobool5.not.i35 = icmp eq i32 %and4.i34, 0
  br i1 %tobool5.not.i35, label %if.end2.i36.if.end11.i53_crit_edge, label %if.then6.i41

if.end2.i36.if.end11.i53_crit_edge:               ; preds = %if.end2.i36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i53

if.then6.i41:                                     ; preds = %if.end2.i36
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %array.i.i) #14
  %117 = call ptr @memset(ptr %array.i.i, i32 255, i32 32)
  %118 = ptrtoint ptr %attr.i.i38 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %attr.i.i38, align 4
  %call4.i.i39 = tail call i32 @netlbl_catmap_walk(ptr noundef %119, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i39)
  %cmp15.i.i40 = icmp slt i32 %call4.i.i39, 0
  br i1 %cmp15.i.i40, label %if.then6.i41.cipso_v4_map_cat_rng_hton.exit.thread11.i_crit_edge, label %if.then6.i41.if.end3.i.i_crit_edge

if.then6.i41.if.end3.i.i_crit_edge:               ; preds = %if.then6.i41
  br label %if.end3.i.i

if.then6.i41.cipso_v4_map_cat_rng_hton.exit.thread11.i_crit_edge: ; preds = %if.then6.i41
  call void @__sanitizer_cov_trace_pc() #16
  br label %cipso_v4_map_cat_rng_hton.exit.thread11.i

for.cond25.preheader.i.i:                         ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc23.i.i)
  %cmp26.not10.i.i = icmp eq i32 %inc23.i.i, 0
  br i1 %cmp26.not10.i.i, label %for.cond25.preheader.i.i.cipso_v4_map_cat_rng_hton.exit.thread11.i_crit_edge, label %for.cond25.preheader.i.i.for.body.i.i_crit_edge

for.cond25.preheader.i.i.for.body.i.i_crit_edge:  ; preds = %for.cond25.preheader.i.i
  br label %for.body.i.i

for.cond25.preheader.i.i.cipso_v4_map_cat_rng_hton.exit.thread11.i_crit_edge: ; preds = %for.cond25.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cipso_v4_map_cat_rng_hton.exit.thread11.i

if.end3.i.i:                                      ; preds = %if.end21.i.i.if.end3.i.i_crit_edge, %if.then6.i41.if.end3.i.i_crit_edge
  %call8.i.i42 = phi i32 [ %call.i.i45, %if.end21.i.i.if.end3.i.i_crit_edge ], [ %call4.i.i39, %if.then6.i41.if.end3.i.i_crit_edge ]
  %cat_size.07.i.i = phi i32 [ %add17.i.i, %if.end21.i.i.if.end3.i.i_crit_edge ], [ 0, %if.then6.i41.if.end3.i.i_crit_edge ]
  %array_cnt.06.i.i = phi i32 [ %inc23.i.i, %if.end21.i.i.if.end3.i.i_crit_edge ], [ 0, %if.then6.i41.if.end3.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i42)
  %cmp4.i1.i = icmp eq i32 %call8.i.i42, 0
  %cond.i.i = select i1 %cmp4.i1.i, i32 0, i32 2
  %add5.i.i = add nuw nsw i32 %cond.i.i, %cat_size.07.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %add5.i.i)
  %cmp6.i.i = icmp ugt i32 %add5.i.i, 30
  br i1 %cmp6.i.i, label %if.end3.i.i.cipso_v4_map_cat_rng_hton.exit.thread.i_crit_edge, label %if.end8.i.i

if.end3.i.i.cipso_v4_map_cat_rng_hton.exit.thread.i_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cipso_v4_map_cat_rng_hton.exit.thread.i

if.end8.i.i:                                      ; preds = %if.end3.i.i
  %conv.i.i43 = trunc i32 %call8.i.i42 to i16
  %inc.i.i = or i32 %array_cnt.06.i.i, 1
  %arrayidx.i2.i = getelementptr [16 x i16], ptr %array.i.i, i32 0, i32 %array_cnt.06.i.i
  %120 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %conv.i.i43, ptr %arrayidx.i2.i, align 2
  %121 = ptrtoint ptr %attr.i.i38 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %attr.i.i38, align 4
  %call12.i.i = tail call i32 @netlbl_catmap_walkrng(ptr noundef %122, i32 noundef %call8.i.i42) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %if.end8.i.i.cipso_v4_map_cat_rng_hton.exit.thread.i_crit_edge, label %if.end16.i.i

if.end8.i.i.cipso_v4_map_cat_rng_hton.exit.thread.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cipso_v4_map_cat_rng_hton.exit.thread.i

if.end16.i.i:                                     ; preds = %if.end8.i.i
  %add17.i.i = add i32 %add5.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %add17.i.i)
  %cmp18.i.i = icmp ugt i32 %add17.i.i, 30
  br i1 %cmp18.i.i, label %if.end16.i.i.cipso_v4_map_cat_rng_hton.exit.thread.i_crit_edge, label %if.end21.i.i

if.end16.i.i.cipso_v4_map_cat_rng_hton.exit.thread.i_crit_edge: ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cipso_v4_map_cat_rng_hton.exit.thread.i

if.end21.i.i:                                     ; preds = %if.end16.i.i
  %conv22.i.i = trunc i32 %call12.i.i to i16
  %inc23.i.i = add i32 %array_cnt.06.i.i, 2
  %arrayidx24.i.i = getelementptr [16 x i16], ptr %array.i.i, i32 0, i32 %inc.i.i
  %123 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %conv22.i.i, ptr %arrayidx24.i.i, align 2
  %124 = ptrtoint ptr %attr.i.i38 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %attr.i.i38, align 4
  %add.i.i44 = add nuw i32 %call12.i.i, 1
  %call.i.i45 = tail call i32 @netlbl_catmap_walk(ptr noundef %125, i32 noundef %add.i.i44) #14
  %cmp1.i.i = icmp slt i32 %call.i.i45, 0
  br i1 %cmp1.i.i, label %for.cond25.preheader.i.i, label %if.end21.i.i.if.end3.i.i_crit_edge

if.end21.i.i.if.end3.i.i_crit_edge:               ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3.i.i

for.body.i.i:                                     ; preds = %if.end40.i.i.for.body.i.i_crit_edge, %for.cond25.preheader.i.i.for.body.i.i_crit_edge
  %array_cnt.112.i.i = phi i32 [ %dec31.i.i, %if.end40.i.i.for.body.i.i_crit_edge ], [ %inc23.i.i, %for.cond25.preheader.i.i.for.body.i.i_crit_edge ]
  %iter.111.i.i = phi i32 [ %iter.2.i.i, %if.end40.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond25.preheader.i.i.for.body.i.i_crit_edge ]
  %dec.i.i = add i32 %array_cnt.112.i.i, -1
  %arrayidx28.i.i = getelementptr [16 x i16], ptr %array.i.i, i32 0, i32 %dec.i.i
  %126 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %arrayidx28.i.i, align 2
  %arrayidx29.i.i = getelementptr i8, ptr %arrayidx.i37, i32 %iter.111.i.i
  %128 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %127, ptr %arrayidx29.i.i, align 2
  %add30.i.i = add i32 %iter.111.i.i, 2
  %dec31.i.i = add i32 %array_cnt.112.i.i, -2
  %arrayidx32.i.i = getelementptr [16 x i16], ptr %array.i.i, i32 0, i32 %dec31.i.i
  %129 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %arrayidx32.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %130)
  %cmp34.not.i.i = icmp eq i16 %130, 0
  br i1 %cmp34.not.i.i, label %for.body.i.i.if.end40.i.i_crit_edge, label %if.then36.i.i

for.body.i.i.if.end40.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40.i.i

if.then36.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx38.i.i = getelementptr i8, ptr %arrayidx.i37, i32 %add30.i.i
  %131 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %130, ptr %arrayidx38.i.i, align 2
  %add39.i.i = add i32 %iter.111.i.i, 4
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %if.then36.i.i, %for.body.i.i.if.end40.i.i_crit_edge
  %iter.2.i.i = phi i32 [ %add39.i.i, %if.then36.i.i ], [ %add30.i.i, %for.body.i.i.if.end40.i.i_crit_edge ]
  %cmp26.not.i.i = icmp eq i32 %dec31.i.i, 0
  br i1 %cmp26.not.i.i, label %cipso_v4_map_cat_rng_hton.exit.i, label %if.end40.i.i.for.body.i.i_crit_edge

if.end40.i.i.for.body.i.i_crit_edge:              ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

cipso_v4_map_cat_rng_hton.exit.thread.i:          ; preds = %if.end16.i.i.cipso_v4_map_cat_rng_hton.exit.thread.i_crit_edge, %if.end8.i.i.cipso_v4_map_cat_rng_hton.exit.thread.i_crit_edge, %if.end3.i.i.cipso_v4_map_cat_rng_hton.exit.thread.i_crit_edge
  %retval.0.i3.ph.i = phi i32 [ -28, %if.end3.i.i.cipso_v4_map_cat_rng_hton.exit.thread.i_crit_edge ], [ -14, %if.end8.i.i.cipso_v4_map_cat_rng_hton.exit.thread.i_crit_edge ], [ -28, %if.end16.i.i.cipso_v4_map_cat_rng_hton.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %array.i.i) #14
  br label %sw.epilog

cipso_v4_map_cat_rng_hton.exit.thread11.i:        ; preds = %for.cond25.preheader.i.i.cipso_v4_map_cat_rng_hton.exit.thread11.i_crit_edge, %if.then6.i41.cipso_v4_map_cat_rng_hton.exit.thread11.i_crit_edge
  %retval.0.i3.ph10.i = phi i32 [ 0, %if.then6.i41.cipso_v4_map_cat_rng_hton.exit.thread11.i_crit_edge ], [ %add17.i.i, %for.cond25.preheader.i.i.cipso_v4_map_cat_rng_hton.exit.thread11.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %array.i.i) #14
  br label %if.end10.i47

cipso_v4_map_cat_rng_hton.exit.i:                 ; preds = %if.end40.i.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %array.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add17.i.i)
  %cmp8.i = icmp slt i32 %add17.i.i, 0
  br i1 %cmp8.i, label %cipso_v4_map_cat_rng_hton.exit.i.sw.epilog_crit_edge, label %cipso_v4_map_cat_rng_hton.exit.i.if.end10.i47_crit_edge

cipso_v4_map_cat_rng_hton.exit.i.if.end10.i47_crit_edge: ; preds = %cipso_v4_map_cat_rng_hton.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i47

cipso_v4_map_cat_rng_hton.exit.i.sw.epilog_crit_edge: ; preds = %cipso_v4_map_cat_rng_hton.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end10.i47:                                     ; preds = %cipso_v4_map_cat_rng_hton.exit.i.if.end10.i47_crit_edge, %cipso_v4_map_cat_rng_hton.exit.thread11.i
  %retval.0.i314.i = phi i32 [ %retval.0.i3.ph10.i, %cipso_v4_map_cat_rng_hton.exit.thread11.i ], [ %add17.i.i, %cipso_v4_map_cat_rng_hton.exit.i.if.end10.i47_crit_edge ]
  %add.i46 = add nuw i32 %retval.0.i314.i, 4
  br label %if.end11.i53

if.end11.i53:                                     ; preds = %if.end10.i47, %if.end2.i36.if.end11.i53_crit_edge
  %tag_len.0.i48 = phi i32 [ %add.i46, %if.end10.i47 ], [ 4, %if.end2.i36.if.end11.i53_crit_edge ]
  %132 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 5, ptr %arrayidx7, align 1
  %conv.i49 = trunc i32 %tag_len.0.i48 to i8
  %133 = ptrtoint ptr %arrayidx13.i50 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv.i49, ptr %arrayidx13.i50, align 1
  %conv14.i51 = trunc i32 %.sink.i.i33 to i8
  %134 = ptrtoint ptr %arrayidx15.i52 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv14.i51, ptr %arrayidx15.i52, align 1
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.body
  %135 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %secattr, align 4
  %and.i55 = and i32 %136, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55)
  %tobool.not.i56 = icmp eq i32 %and.i55, 0
  br i1 %tobool.not.i56, label %sw.bb10.sw.epilog_crit_edge, label %if.end.i57

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end.i57:                                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #16
  %137 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 -128, ptr %arrayidx7, align 1
  %138 = ptrtoint ptr %arrayidx13.i50 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 6, ptr %arrayidx13.i50, align 1
  %secid.i = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 4, i32 1
  %139 = ptrtoint ptr %secid.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %secid.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %buf, i32 8
  %141 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %arrayidx2.i, align 4
  br label %if.end26

sw.epilog:                                        ; preds = %sw.bb10.sw.epilog_crit_edge, %if.end11.i53, %cipso_v4_map_cat_rng_hton.exit.i.sw.epilog_crit_edge, %cipso_v4_map_cat_rng_hton.exit.thread.i, %land.lhs.true.i.i32.sw.epilog_crit_edge, %sw.bb1.i.i28.sw.epilog_crit_edge, %if.end.i24.sw.epilog_crit_edge, %sw.bb6.sw.epilog_crit_edge, %if.end.14.i.i.sw.epilog_crit_edge, %land.lhs.true.i.i13.sw.epilog_crit_edge, %sw.bb1.i.i9.sw.epilog_crit_edge, %if.end.i5.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %sw.epilog.i.i.sw.epilog_crit_edge, %if.end11.i.i.sw.epilog_crit_edge, %sw.bb8.i.i.sw.epilog_crit_edge, %land.lhs.true.i.i.sw.epilog_crit_edge, %sw.bb1.i.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %ret_val.0 = phi i32 [ -1, %sw.bb.sw.epilog_crit_edge ], [ -22, %if.end.i.sw.epilog_crit_edge ], [ -1, %sw.bb1.i.i.sw.epilog_crit_edge ], [ -1, %land.lhs.true.i.i.sw.epilog_crit_edge ], [ -1, %sw.bb2.sw.epilog_crit_edge ], [ -28, %if.end.14.i.i.sw.epilog_crit_edge ], [ -22, %if.end.i5.sw.epilog_crit_edge ], [ -1, %sw.bb1.i.i9.sw.epilog_crit_edge ], [ -1, %land.lhs.true.i.i13.sw.epilog_crit_edge ], [ %tag_len.0.i48, %if.end11.i53 ], [ -1, %sw.bb6.sw.epilog_crit_edge ], [ %add17.i.i, %cipso_v4_map_cat_rng_hton.exit.i.sw.epilog_crit_edge ], [ %retval.0.i3.ph.i, %cipso_v4_map_cat_rng_hton.exit.thread.i ], [ -22, %if.end.i24.sw.epilog_crit_edge ], [ -1, %sw.bb1.i.i28.sw.epilog_crit_edge ], [ -1, %land.lhs.true.i.i32.sw.epilog_crit_edge ], [ -1, %sw.bb10.sw.epilog_crit_edge ], [ -1, %sw.bb8.i.i.sw.epilog_crit_edge ], [ -1, %if.end11.i.i.sw.epilog_crit_edge ], [ -28, %sw.epilog.i.i.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret_val.0)
  %cmp14 = icmp slt i32 %ret_val.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %iter.0)
  %cmp16 = icmp ult i32 %iter.0, 4
  %or.cond = select i1 %cmp14, i1 %cmp16, i1 false
  br i1 %or.cond, label %land.rhs, label %do.end

land.rhs:                                         ; preds = %sw.epilog
  %inc = add nuw nsw i32 %iter.0, 1
  %arrayidx19 = getelementptr %struct.cipso_v4_doi, ptr %doi_def, i32 0, i32 3, i32 %inc
  %142 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx19, align 1
  %cmp21.not = icmp eq i8 %143, 0
  br i1 %cmp21.not, label %land.rhs.cleanup_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %sw.epilog
  br i1 %cmp14, label %do.end.cleanup_crit_edge, label %do.end.if.end26_crit_edge

do.end.if.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end26:                                         ; preds = %do.end.if.end26_crit_edge, %if.end.i57, %if.end11.i, %if.end18.i
  %ret_val.06769 = phi i32 [ %ret_val.0, %do.end.if.end26_crit_edge ], [ 6, %if.end.i57 ], [ %tag_len.0.i17, %if.end11.i ], [ %tag_len.0.i, %if.end18.i ]
  %144 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 -122, ptr %buf, align 1
  %145 = trunc i32 %ret_val.06769 to i8
  %conv.i59 = add i8 %145, 6
  %arrayidx1.i60 = getelementptr i8, ptr %buf, i32 1
  %146 = ptrtoint ptr %arrayidx1.i60 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv.i59, ptr %arrayidx1.i60, align 1
  %147 = ptrtoint ptr %doi_def to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %doi_def, align 4
  %arrayidx2.i61 = getelementptr i8, ptr %buf, i32 2
  %149 = ptrtoint ptr %arrayidx2.i61 to i32
  call void @__asan_storeN_noabort(i32 %149, i32 4)
  store i32 %148, ptr %arrayidx2.i61, align 1
  %add = add i32 %ret_val.06769, 6
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end26 ], [ %ret_val.0, %do.end.cleanup_crit_edge ], [ %ret_val.0, %land.rhs.cleanup_crit_edge ], [ -1, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cipso_v4_req_setattr(ptr noundef %req, ptr nocapture noundef readonly %doi_def, ptr nocapture noundef readonly %secattr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 40) #17
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.req_setattr_failure_crit_edge, label %if.end

entry.req_setattr_failure_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %req_setattr_failure

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @cipso_v4_genopt(ptr noundef nonnull %call7.i, ptr noundef %doi_def, ptr noundef %secattr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.req_setattr_failure_crit_edge, label %if.end3

if.end.req_setattr_failure_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %req_setattr_failure

if.end3:                                          ; preds = %if.end
  %add = add nuw i32 %call1, 3
  %and = and i32 %add, -4
  %add4 = add nuw i32 %and, 24
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add4, i32 noundef 2848) #18
  %tobool6.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool6.not, label %if.end3.req_setattr_failure_crit_edge, label %if.end8

if.end3.req_setattr_failure_crit_edge:            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %req_setattr_failure

if.end8:                                          ; preds = %if.end3
  %__data = getelementptr inbounds %struct.ip_options_rcu, ptr %call9.i.i, i32 1
  %1 = call ptr @memcpy(ptr %__data, ptr %call7.i, i32 %call1)
  %conv = trunc i32 %and to i8
  %optlen = getelementptr inbounds %struct.ip_options_rcu, ptr %call9.i.i, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %optlen to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %optlen, align 16
  %cipso = getelementptr inbounds %struct.ip_options_rcu, ptr %call9.i.i, i32 0, i32 1, i32 8
  %3 = ptrtoint ptr %cipso to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 20, ptr %cipso, align 2
  tail call void @kfree(ptr noundef nonnull %call7.i) #14
  %4 = getelementptr inbounds %struct.inet_request_sock, ptr %req, i32 0, i32 3
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %4, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !76
  %5 = ptrtoint ptr %call9.i.i to i32
  tail call void @llvm.prefetch.p0(ptr %4, i32 1, i32 3, i32 1) #14
  %6 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %5, ptr %4) #14, !srcloc !77
  %asmresult.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool28.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool28.not, label %if.end8.cleanup_crit_edge, label %do.end35

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end35:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %7 = inttoptr i32 %asmresult.i to ptr
  tail call void @kvfree_call_rcu(ptr noundef nonnull %7, ptr noundef null) #14
  br label %cleanup

req_setattr_failure:                              ; preds = %if.end3.req_setattr_failure_crit_edge, %if.end.req_setattr_failure_crit_edge, %entry.req_setattr_failure_crit_edge
  %ret_val.0 = phi i32 [ %call1, %if.end.req_setattr_failure_crit_edge ], [ -12, %entry.req_setattr_failure_crit_edge ], [ -12, %if.end3.req_setattr_failure_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i) #14
  tail call void @kfree(ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %req_setattr_failure, %do.end35, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_val.0, %req_setattr_failure ], [ 0, %do.end35 ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cipso_v4_sock_delattr(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %inet_opt = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 5
  %call1 = tail call fastcc i32 @cipso_v4_delopt(ptr noundef %inet_opt)
  %is_icsk = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 12
  %0 = ptrtoint ptr %is_icsk to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %is_icsk, align 8
  %1 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp ne i16 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp sgt i32 %call1, 0
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %icsk_ext_hdr_len = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 23
  %2 = ptrtoint ptr %icsk_ext_hdr_len to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %icsk_ext_hdr_len, align 2
  %4 = trunc i32 %call1 to i16
  %conv5 = sub i16 %3, %4
  store i16 %conv5, ptr %icsk_ext_hdr_len, align 2
  %icsk_sync_mss = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 16
  %5 = ptrtoint ptr %icsk_sync_mss to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %icsk_sync_mss, align 8
  %icsk_pmtu_cookie = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 9
  %7 = ptrtoint ptr %icsk_pmtu_cookie to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %icsk_pmtu_cookie, align 8
  %call6 = tail call i32 %6(ptr noundef %sk, i32 noundef %8) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cipso_v4_delopt(ptr nocapture noundef %opt_ptr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %opt_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %opt_ptr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cipso = getelementptr inbounds %struct.ip_options_rcu, ptr %1, i32 0, i32 1, i32 8
  %2 = ptrtoint ptr %cipso to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cipso, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %srr = getelementptr inbounds %struct.ip_options_rcu, ptr %1, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %srr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %srr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %if.end.if.then18_crit_edge

if.end.if.then18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then18

lor.lhs.false6:                                   ; preds = %if.end
  %rr = getelementptr inbounds %struct.ip_options_rcu, ptr %1, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %rr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool9.not = icmp eq i8 %7, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %lor.lhs.false6.if.then18_crit_edge

lor.lhs.false6.if.then18_crit_edge:               ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then18

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %ts = getelementptr inbounds %struct.ip_options_rcu, ptr %1, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %ts to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ts, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool13.not = icmp eq i8 %9, 0
  br i1 %tobool13.not, label %lor.lhs.false14, label %lor.lhs.false10.if.then18_crit_edge

lor.lhs.false10.if.then18_crit_edge:              ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then18

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %router_alert = getelementptr inbounds %struct.ip_options_rcu, ptr %1, i32 0, i32 1, i32 7
  %10 = ptrtoint ptr %router_alert to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %router_alert, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool17.not = icmp eq i8 %11, 0
  br i1 %tobool17.not, label %if.else127, label %lor.lhs.false14.if.then18_crit_edge

lor.lhs.false14.if.then18_crit_edge:              ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false14.if.then18_crit_edge, %lor.lhs.false10.if.then18_crit_edge, %lor.lhs.false6.if.then18_crit_edge, %if.end.if.then18_crit_edge
  %sub = add i8 %3, -20
  %__data = getelementptr inbounds %struct.ip_options_rcu, ptr %1, i32 1
  %idxprom = zext i8 %sub to i32
  %arrayidx = getelementptr [0 x i8], ptr %__data, i32 0, i32 %idxprom
  %arrayidx24 = getelementptr i8, ptr %arrayidx, i32 1
  %12 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx24, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %3)
  %cmp31 = icmp ugt i8 %5, %3
  br i1 %cmp31, label %if.then33, label %if.then18.if.end40_crit_edge

if.then18.if.end40_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then33:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  %sub38 = sub i8 %5, %13
  %14 = ptrtoint ptr %srr to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %sub38, ptr %srr, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.then33, %if.then18.if.end40_crit_edge
  %rr42 = getelementptr inbounds %struct.ip_options_rcu, ptr %1, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %rr42 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rr42, align 2
  %17 = ptrtoint ptr %cipso to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %cipso, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %18)
  %cmp47 = icmp ugt i8 %16, %18
  br i1 %cmp47, label %if.then49, label %if.end40.if.end56_crit_edge

if.end40.if.end56_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

if.then49:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  %sub54 = sub i8 %16, %13
  %19 = ptrtoint ptr %rr42 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %sub54, ptr %rr42, align 2
  br label %if.end56

if.end56:                                         ; preds = %if.then49, %if.end40.if.end56_crit_edge
  %ts58 = getelementptr inbounds %struct.ip_options_rcu, ptr %1, i32 0, i32 1, i32 5
  %20 = ptrtoint ptr %ts58 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ts58, align 1
  %22 = ptrtoint ptr %cipso to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cipso, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp63 = icmp ugt i8 %21, %23
  br i1 %cmp63, label %if.then65, label %if.end56.if.end72_crit_edge

if.end56.if.end72_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72

if.then65:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  %sub70 = sub i8 %21, %13
  %24 = ptrtoint ptr %ts58 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %sub70, ptr %ts58, align 1
  br label %if.end72

if.end72:                                         ; preds = %if.then65, %if.end56.if.end72_crit_edge
  %router_alert74 = getelementptr inbounds %struct.ip_options_rcu, ptr %1, i32 0, i32 1, i32 7
  %25 = ptrtoint ptr %router_alert74 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %router_alert74, align 1
  %27 = ptrtoint ptr %cipso to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %cipso, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %28)
  %cmp79 = icmp ugt i8 %26, %28
  br i1 %cmp79, label %if.then81, label %if.end72.if.end88_crit_edge

if.end72.if.end88_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end88

if.then81:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #16
  %sub86 = sub i8 %26, %13
  %29 = ptrtoint ptr %router_alert74 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %sub86, ptr %router_alert74, align 1
  br label %if.end88

if.end88:                                         ; preds = %if.then81, %if.end72.if.end88_crit_edge
  %30 = ptrtoint ptr %cipso to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %cipso, align 2
  %conv91 = zext i8 %13 to i32
  %add.ptr = getelementptr i8, ptr %arrayidx, i32 %conv91
  %optlen = getelementptr inbounds %struct.ip_options_rcu, ptr %1, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %optlen to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %optlen, align 4
  %conv93 = zext i8 %32 to i32
  %33 = add nuw nsw i32 %conv91, %idxprom
  %sub97 = sub nsw i32 %conv93, %33
  %34 = call ptr @memmove(ptr %arrayidx, ptr %add.ptr, i32 %sub97)
  %35 = load i8, ptr %optlen, align 4
  %conv100 = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp101187.not = icmp eq i8 %35, 0
  br i1 %cmp101187.not, label %if.end88.while.end_crit_edge, label %if.end88.while.body_crit_edge

if.end88.while.body_crit_edge:                    ; preds = %if.end88
  br label %while.body

if.end88.while.end_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %if.end115.while.body_crit_edge, %if.end88.while.body_crit_edge
  %optlen_new.0189 = phi i32 [ %optlen_new.1, %if.end115.while.body_crit_edge ], [ 0, %if.end88.while.body_crit_edge ]
  %iter.0188 = phi i32 [ %iter.1, %if.end115.while.body_crit_edge ], [ 0, %if.end88.while.body_crit_edge ]
  %arrayidx105 = getelementptr [0 x i8], ptr %__data, i32 0, i32 %iter.0188
  %36 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx105, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp107.not = icmp eq i8 %37, 1
  %inc = add nsw i32 %iter.0188, 1
  br i1 %cmp107.not, label %while.body.if.end115_crit_edge, label %if.then109

while.body.if.end115_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end115

if.then109:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx112 = getelementptr [0 x i8], ptr %__data, i32 0, i32 %inc
  %38 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx112, align 1
  %conv113 = zext i8 %39 to i32
  %add114 = add i32 %iter.0188, %conv113
  br label %if.end115

if.end115:                                        ; preds = %if.then109, %while.body.if.end115_crit_edge
  %iter.1 = phi i32 [ %add114, %if.then109 ], [ %inc, %while.body.if.end115_crit_edge ]
  %optlen_new.1 = phi i32 [ %add114, %if.then109 ], [ %optlen_new.0189, %while.body.if.end115_crit_edge ]
  %cmp101 = icmp slt i32 %iter.1, %conv100
  br i1 %cmp101, label %if.end115.while.body_crit_edge, label %if.end115.while.end_crit_edge

if.end115.while.end_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end115.while.body_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %if.end115.while.end_crit_edge, %if.end88.while.end_crit_edge
  %optlen_new.0.lcssa = phi i32 [ 0, %if.end88.while.end_crit_edge ], [ %optlen_new.1, %if.end115.while.end_crit_edge ]
  %40 = trunc i32 %optlen_new.0.lcssa to i8
  %41 = add i8 %40, 3
  %conv120 = and i8 %41, -4
  %42 = ptrtoint ptr %optlen to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv120, ptr %optlen, align 4
  %conv125 = zext i8 %conv120 to i32
  %sub126 = sub nsw i32 %conv100, %conv125
  br label %cleanup

if.else127:                                       ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #16
  %43 = ptrtoint ptr %opt_ptr to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %opt_ptr, align 4
  %optlen129 = getelementptr inbounds %struct.ip_options_rcu, ptr %1, i32 0, i32 1, i32 2
  %44 = ptrtoint ptr %optlen129 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %optlen129, align 4
  %conv130 = zext i8 %45 to i32
  tail call void @kvfree_call_rcu(ptr noundef nonnull %1, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else127, %while.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %sub126, %while.end ], [ %conv130, %if.else127 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cipso_v4_req_delattr(ptr nocapture noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inet_request_sock, ptr %req, i32 0, i32 3
  %call1 = tail call fastcc i32 @cipso_v4_delopt(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cipso_v4_getattr(ptr noundef %cipso, ptr noundef %secattr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %cipso, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = load i32, ptr @cipso_v4_cache_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i43 = icmp eq i32 %2, 0
  br i1 %tobool.not.i43, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call.i44 = tail call fastcc i32 @cipso_v4_map_cache_hash(ptr noundef %cipso, i32 noundef %conv) #14
  %and.i = and i32 %call.i44, 127
  %3 = load ptr, ptr @cipso_v4_cache, align 4
  %arrayidx.i = getelementptr %struct.cipso_v4_map_cache_bkt, ptr %3, i32 %and.i
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx.i) #14
  %4 = load ptr, ptr @cipso_v4_cache, align 4
  %list.i = getelementptr %struct.cipso_v4_map_cache_bkt, ptr %4, i32 %and.i, i32 2
  %5 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn91.i = load ptr, ptr %list.i, align 4
  %cmp.not93.i = icmp eq ptr %.pn91.i, %list.i
  br i1 %cmp.not93.i, label %if.end.i.cipso_v4_cache_check.exit.thread146_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.cipso_v4_cache_check.exit.thread146_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cipso_v4_cache_check.exit.thread146

for.body.i:                                       ; preds = %if.end45.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn95.i = phi ptr [ %.pn.i, %if.end45.i.for.body.i_crit_edge ], [ %.pn91.i, %if.end.i.for.body.i_crit_edge ]
  %prev_entry.094.i = phi ptr [ %entry1.096.i, %if.end45.i.for.body.i_crit_edge ], [ null, %if.end.i.for.body.i_crit_edge ]
  %entry1.096.i = getelementptr i8, ptr %.pn95.i, i32 -20
  %6 = ptrtoint ptr %entry1.096.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %entry1.096.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %call.i44)
  %cmp7.i = icmp eq i32 %7, %call.i44
  br i1 %cmp7.i, label %land.lhs.true.i45, label %for.body.i.if.end45.i_crit_edge

for.body.i.if.end45.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45.i

land.lhs.true.i45:                                ; preds = %for.body.i
  %key_len8.i = getelementptr i8, ptr %.pn95.i, i32 -12
  %8 = ptrtoint ptr %key_len8.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %key_len8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp9.i = icmp eq i32 %9, %conv
  br i1 %cmp9.i, label %land.lhs.true10.i, label %land.lhs.true.i45.if.end45.i_crit_edge

land.lhs.true.i45.if.end45.i_crit_edge:           ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45.i

land.lhs.true10.i:                                ; preds = %land.lhs.true.i45
  %key11.i = getelementptr i8, ptr %.pn95.i, i32 -16
  %10 = ptrtoint ptr %key11.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %key11.i, align 4
  %bcmp.i = tail call i32 @bcmp(ptr %11, ptr %cipso, i32 %conv) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp13.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp13.i, label %if.then14.i, label %land.lhs.true10.i.if.end45.i_crit_edge

land.lhs.true10.i.if.end45.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45.i

if.then14.i:                                      ; preds = %land.lhs.true10.i
  %activity.i = getelementptr i8, ptr %.pn95.i, i32 -4
  %12 = ptrtoint ptr %activity.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %activity.i, align 4
  %add.i = add i32 %13, 1
  store i32 %add.i, ptr %activity.i, align 4
  %lsm_data.i = getelementptr i8, ptr %.pn95.i, i32 -8
  %14 = ptrtoint ptr %lsm_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lsm_data.i, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %15, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %15, i32 1, i32 3, i32 1) #14
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #14, !srcloc !69
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then14.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !70

if.then14.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then14.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %17 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !67

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.refcount_inc.exit.i_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc.exit.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then14.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then14.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef %.sink.i.i.i.i) #14
  br label %refcount_inc.exit.i

refcount_inc.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge
  %18 = ptrtoint ptr %lsm_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lsm_data.i, align 4
  %cache.i = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 3
  %20 = ptrtoint ptr %cache.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %cache.i, align 4
  %21 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %secattr, align 4
  %or.i = or i32 %22, 2
  store i32 %or.i, ptr %secattr, align 4
  %type.i = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 1
  %23 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %type.i, align 4
  %tobool16.not.i = icmp eq ptr %prev_entry.094.i, null
  br i1 %tobool16.not.i, label %refcount_inc.exit.i.cipso_v4_cache_check.exit_crit_edge, label %if.end20.i

refcount_inc.exit.i.cipso_v4_cache_check.exit_crit_edge: ; preds = %refcount_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cipso_v4_cache_check.exit

if.end20.i:                                       ; preds = %refcount_inc.exit.i
  %activity21.i = getelementptr inbounds %struct.cipso_v4_map_cache_entry, ptr %prev_entry.094.i, i32 0, i32 4
  %24 = ptrtoint ptr %activity21.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %activity21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp22.not.i = icmp eq i32 %25, 0
  br i1 %cmp22.not.i, label %if.end20.i.if.end25.i_crit_edge, label %if.then23.i

if.end20.i.if.end25.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i = add i32 %25, -1
  %26 = ptrtoint ptr %activity21.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub.i, ptr %activity21.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then23.i, %if.end20.i.if.end25.i_crit_edge
  %27 = ptrtoint ptr %activity.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %activity.i, align 4
  %29 = ptrtoint ptr %activity21.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %activity21.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp28.i = icmp ugt i32 %28, %30
  %sub32.i = sub i32 %28, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %sub32.i)
  %cmp33.i = icmp ugt i32 %sub32.i, 10
  %or.cond.i = and i1 %cmp28.i, %cmp33.i
  br i1 %or.cond.i, label %if.then34.i, label %if.end25.i.cipso_v4_cache_check.exit_crit_edge

if.end25.i.cipso_v4_cache_check.exit_crit_edge:   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cipso_v4_cache_check.exit

if.then34.i:                                      ; preds = %if.end25.i
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn95.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i, align 4
  %33 = ptrtoint ptr %.pn95.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %.pn95.i, align 4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  %list39.i = getelementptr inbounds %struct.cipso_v4_map_cache_entry, ptr %prev_entry.094.i, i32 0, i32 5
  %prev40.i = getelementptr inbounds %struct.cipso_v4_map_cache_entry, ptr %prev_entry.094.i, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %prev40.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev40.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn95.i, ptr noundef %38, ptr noundef %list39.i) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then34.i.cipso_v4_cache_check.exit_crit_edge

if.then34.i.cipso_v4_cache_check.exit_crit_edge:  ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cipso_v4_cache_check.exit

if.end.i.i:                                       ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %prev40.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %.pn95.i, ptr %prev40.i, align 4
  %40 = ptrtoint ptr %.pn95.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %list39.i, ptr %.pn95.i, align 4
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %.pn95.i, ptr %38, align 4
  br label %cipso_v4_cache_check.exit

if.end45.i:                                       ; preds = %land.lhs.true10.i.if.end45.i_crit_edge, %land.lhs.true.i45.if.end45.i_crit_edge, %for.body.i.if.end45.i_crit_edge
  %43 = ptrtoint ptr %.pn95.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn.i = load ptr, ptr %.pn95.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %list.i
  br i1 %cmp.not.i, label %if.end45.i.cipso_v4_cache_check.exit.thread146_crit_edge, label %if.end45.i.for.body.i_crit_edge

if.end45.i.for.body.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.end45.i.cipso_v4_cache_check.exit.thread146_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cipso_v4_cache_check.exit.thread146

cipso_v4_cache_check.exit.thread146:              ; preds = %if.end45.i.cipso_v4_cache_check.exit.thread146_crit_edge, %if.end.i.cipso_v4_cache_check.exit.thread146_crit_edge
  %arrayidx4.i149 = getelementptr %struct.cipso_v4_map_cache_bkt, ptr %4, i32 %and.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx4.i149) #14
  br label %if.end

cipso_v4_cache_check.exit:                        ; preds = %if.end.i.i, %if.then34.i.cipso_v4_cache_check.exit_crit_edge, %if.end25.i.cipso_v4_cache_check.exit_crit_edge, %refcount_inc.exit.i.cipso_v4_cache_check.exit_crit_edge
  %44 = load ptr, ptr @cipso_v4_cache, align 4
  %arrayidx4.i = getelementptr %struct.cipso_v4_map_cache_bkt, ptr %44, i32 %and.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx4.i) #14
  br label %cleanup

if.end:                                           ; preds = %cipso_v4_cache_check.exit.thread146, %entry.if.end_crit_edge
  %arrayidx2 = getelementptr i8, ptr %cipso, i32 2
  %45 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %arrayidx2, align 1
  %47 = tail call i32 @llvm.read_register.i32(metadata !55) #14
  %and.i.i.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %50, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !72
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call.i46 = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %tobool.not.i47 = icmp eq i32 %call.i46, 0
  br i1 %tobool.not.i47, label %land.lhs.true.i49, label %rcu_read_lock.exit.do.end.i_crit_edge

rcu_read_lock.exit.do.end.i_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true.i49:                                ; preds = %rcu_read_lock.exit
  %call1.i48 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48)
  %tobool2.not.i = icmp eq i32 %call1.i48, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i49.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i49.do.end.i_crit_edge:             ; preds = %land.lhs.true.i49
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i49
  %.b28.i = load i1, ptr @cipso_v4_doi_search.__warned, align 1
  br i1 %.b28.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i50

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

if.then.i50:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cipso_v4_doi_search.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 362, ptr noundef nonnull @.str.7) #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i50, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i49.do.end.i_crit_edge, %rcu_read_lock.exit.do.end.i_crit_edge
  %.pn29.i = load volatile ptr, ptr @cipso_v4_doi_list, align 4
  %cmp.not31.i = icmp eq ptr %.pn29.i, @cipso_v4_doi_list
  br i1 %cmp.not31.i, label %do.end.i.getattr_return_crit_edge, label %do.end.i.for.body.i51_crit_edge

do.end.i.for.body.i51_crit_edge:                  ; preds = %do.end.i
  br label %for.body.i51

do.end.i.getattr_return_crit_edge:                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %getattr_return

for.body.i51:                                     ; preds = %for.inc.i.for.body.i51_crit_edge, %do.end.i.for.body.i51_crit_edge
  %.pn32.i = phi ptr [ %.pn.i52, %for.inc.i.for.body.i51_crit_edge ], [ %.pn29.i, %do.end.i.for.body.i51_crit_edge ]
  %iter.033.i = getelementptr i8, ptr %.pn32.i, i32 -24
  %51 = ptrtoint ptr %iter.033.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %iter.033.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %46)
  %cmp10.i = icmp eq i32 %52, %46
  br i1 %cmp10.i, label %land.lhs.true11.i, label %for.body.i51.for.inc.i_crit_edge

for.body.i51.for.inc.i_crit_edge:                 ; preds = %for.body.i51
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true11.i:                                ; preds = %for.body.i51
  %refcount.i = getelementptr i8, ptr %.pn32.i, i32 -4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #14
  %53 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool13.not.i = icmp eq i32 %54, 0
  br i1 %tobool13.not.i, label %land.lhs.true11.i.for.inc.i_crit_edge, label %cipso_v4_doi_search.exit

land.lhs.true11.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true11.i.for.inc.i_crit_edge, %for.body.i51.for.inc.i_crit_edge
  %55 = ptrtoint ptr %.pn32.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn.i52 = load volatile ptr, ptr %.pn32.i, align 4
  %cmp.not.i53 = icmp eq ptr %.pn.i52, @cipso_v4_doi_list
  br i1 %cmp.not.i53, label %for.inc.i.getattr_return_crit_edge, label %for.inc.i.for.body.i51_crit_edge

for.inc.i.for.body.i51_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i51

for.inc.i.getattr_return_crit_edge:               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %getattr_return

cipso_v4_doi_search.exit:                         ; preds = %land.lhs.true11.i
  %iter.033.i.le = getelementptr i8, ptr %.pn32.i, i32 -24
  %tobool.not = icmp eq ptr %iter.033.i.le, null
  br i1 %tobool.not, label %cipso_v4_doi_search.exit.getattr_return_crit_edge, label %if.end6

cipso_v4_doi_search.exit.getattr_return_crit_edge: ; preds = %cipso_v4_doi_search.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %getattr_return

if.end6:                                          ; preds = %cipso_v4_doi_search.exit
  %arrayidx7 = getelementptr i8, ptr %cipso, i32 6
  %56 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx7, align 1
  %58 = zext i8 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %57, label %if.end6.getattr_return_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb11
    i8 5, label %sw.bb14
    i8 -128, label %sw.bb17
  ]

if.end6.getattr_return_crit_edge:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %getattr_return

sw.bb:                                            ; preds = %if.end6
  %arrayidx.i55 = getelementptr i8, ptr %cipso, i32 7
  %59 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i55, align 1
  %arrayidx1.i = getelementptr i8, ptr %cipso, i32 9
  %61 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx1.i, align 1
  %conv.i = zext i8 %62 to i32
  %type.i.i = getelementptr i8, ptr %.pn32.i, i32 -20
  %63 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %type.i.i, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %64, label %sw.bb.getattr_return_crit_edge [
    i32 2, label %sw.bb.if.end.i57_crit_edge
    i32 1, label %sw.bb1.i.i
  ]

sw.bb.if.end.i57_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i57

sw.bb.getattr_return_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %getattr_return

sw.bb1.i.i:                                       ; preds = %sw.bb
  %map.i.i = getelementptr i8, ptr %.pn32.i, i32 -16
  %66 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %map.i.i, align 4
  %cipso_size.i.i = getelementptr inbounds %struct.anon.5, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %cipso_size.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cipso_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %conv.i)
  %cmp.i.i = icmp ugt i32 %69, %conv.i
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %sw.bb1.i.i.getattr_return_crit_edge

sw.bb1.i.i.getattr_return_crit_edge:              ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %getattr_return

land.lhs.true.i.i:                                ; preds = %sw.bb1.i.i
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %67, align 4
  %arrayidx.i.i = getelementptr i32, ptr %71, i32 %conv.i
  %72 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %73)
  %cmp3.i.i = icmp sgt i32 %73, -1
  br i1 %cmp3.i.i, label %land.lhs.true.i.i.if.end.i57_crit_edge, label %land.lhs.true.i.i.getattr_return_crit_edge

land.lhs.true.i.i.getattr_return_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %getattr_return

land.lhs.true.i.i.if.end.i57_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i57

if.end.i57:                                       ; preds = %land.lhs.true.i.i.if.end.i57_crit_edge, %sw.bb.if.end.i57_crit_edge
  %.sink.i.i = phi i32 [ %conv.i, %sw.bb.if.end.i57_crit_edge ], [ %73, %land.lhs.true.i.i.if.end.i57_crit_edge ]
  %attr.i = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 4
  %lvl.i = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 4, i32 0, i32 1
  %74 = ptrtoint ptr %lvl.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %.sink.i.i, ptr %lvl.i, align 4
  %75 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %secattr, align 4
  %or.i56 = or i32 %76, 4
  store i32 %or.i56, ptr %secattr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %60)
  %cmp4.i = icmp ugt i8 %60, 4
  br i1 %cmp4.i, label %if.then6.i, label %if.end.i57.if.then22_crit_edge

if.end.i57.if.then22_crit_edge:                   ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then22

if.then6.i:                                       ; preds = %if.end.i57
  %conv3.i = zext i8 %60 to i32
  %arrayidx7.i = getelementptr i8, ptr %cipso, i32 10
  %sub.i58 = shl nuw nsw i32 %conv3.i, 3
  %mul.i.i = add nsw i32 %sub.i58, -32
  %77 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %cmp.i39.i = icmp eq i32 %78, 1
  br i1 %cmp.i39.i, label %if.then.i.i, label %if.then6.i.if.end.i.i59_crit_edge

if.then6.i.if.end.i.i59_crit_edge:                ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i59

if.then.i.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #16
  %map.i40.i = getelementptr i8, ptr %.pn32.i, i32 -16
  %79 = ptrtoint ptr %map.i40.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %map.i40.i, align 4
  %cat.i.i = getelementptr inbounds %struct.cipso_v4_std_map_tbl, ptr %80, i32 0, i32 1
  %cipso_size.i41.i = getelementptr inbounds %struct.cipso_v4_std_map_tbl, ptr %80, i32 0, i32 1, i32 2
  %81 = ptrtoint ptr %cipso_size.i41.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cipso_size.i41.i, align 4
  %83 = ptrtoint ptr %cat.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cat.i.i, align 4
  br label %if.end.i.i59

if.end.i.i59:                                     ; preds = %if.then.i.i, %if.then6.i.if.end.i.i59_crit_edge
  %net_cat_size.0.i.i = phi i32 [ %82, %if.then.i.i ], [ 0, %if.then6.i.if.end.i.i59_crit_edge ]
  %net_cat_array.0.i.i = phi ptr [ %84, %if.then.i.i ], [ null, %if.then6.i.if.end.i.i59_crit_edge ]
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %sw.epilog.i.i.for.cond.i.i_crit_edge, %if.end.i.i59
  %net_spot.0.i.i = phi i32 [ -1, %if.end.i.i59 ], [ %call.i.i60, %sw.epilog.i.i.for.cond.i.i_crit_edge ]
  %host_spot.0.i.i = phi i32 [ -2147483648, %if.end.i.i59 ], [ %host_spot.1.i.i, %sw.epilog.i.i.for.cond.i.i_crit_edge ]
  %add.i.i = add i32 %net_spot.0.i.i, 1
  %call.i.i60 = tail call i32 @netlbl_bitmap_walk(ptr noundef %arrayidx7.i, i32 noundef %mul.i.i, i32 noundef %add.i.i, i8 noundef zeroext 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i60)
  %cmp3.i42.i = icmp slt i32 %call.i.i60, 0
  br i1 %cmp3.i42.i, label %if.then4.i.i, label %if.end8.i.i

if.then4.i.i:                                     ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call.i.i60)
  %cmp5.i.i = icmp eq i32 %call.i.i60, -2
  br i1 %cmp5.i.i, label %if.then4.i.i.if.then12.i_crit_edge, label %if.end15.i

if.then4.i.i.if.then12.i_crit_edge:               ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12.i

if.end8.i.i:                                      ; preds = %for.cond.i.i
  %85 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %type.i.i, align 4
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %86, label %if.end8.i.i.sw.epilog.i.i_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb10.i.i
  ]

if.end8.i.i.sw.epilog.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

sw.bb10.i.i:                                      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i60, i32 %net_cat_size.0.i.i)
  %cmp11.not.i.i = icmp ult i32 %call.i.i60, %net_cat_size.0.i.i
  br i1 %cmp11.not.i.i, label %if.end13.i.i, label %sw.bb10.i.i.if.then12.i_crit_edge

sw.bb10.i.i.if.then12.i_crit_edge:                ; preds = %sw.bb10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12.i

if.end13.i.i:                                     ; preds = %sw.bb10.i.i
  %arrayidx.i43.i = getelementptr i32, ptr %net_cat_array.0.i.i, i32 %call.i.i60
  %88 = ptrtoint ptr %arrayidx.i43.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp14.i.i = icmp slt i32 %89, 0
  br i1 %cmp14.i.i, label %if.end13.i.i.if.then12.i_crit_edge, label %if.end13.i.i.sw.epilog.i.i_crit_edge

if.end13.i.i.sw.epilog.i.i_crit_edge:             ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

if.end13.i.i.if.then12.i_crit_edge:               ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12.i

sw.epilog.i.i:                                    ; preds = %if.end13.i.i.sw.epilog.i.i_crit_edge, %sw.bb.i.i, %if.end8.i.i.sw.epilog.i.i_crit_edge
  %host_spot.1.i.i = phi i32 [ %host_spot.0.i.i, %if.end8.i.i.sw.epilog.i.i_crit_edge ], [ %89, %if.end13.i.i.sw.epilog.i.i_crit_edge ], [ %call.i.i60, %sw.bb.i.i ]
  %call18.i.i = tail call i32 @netlbl_catmap_setbit(ptr noundef %attr.i, i32 noundef %host_spot.1.i.i, i32 noundef 2592) #14
  %cmp19.not.i.i = icmp eq i32 %call18.i.i, 0
  br i1 %cmp19.not.i.i, label %sw.epilog.i.i.for.cond.i.i_crit_edge, label %sw.epilog.i.i.if.then12.i_crit_edge

sw.epilog.i.i.if.then12.i_crit_edge:              ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12.i

sw.epilog.i.i.for.cond.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i

if.then12.i:                                      ; preds = %sw.epilog.i.i.if.then12.i_crit_edge, %if.end13.i.i.if.then12.i_crit_edge, %sw.bb10.i.i.if.then12.i_crit_edge, %if.then4.i.i.if.then12.i_crit_edge
  %retval.0.i44.ph.i = phi i32 [ -14, %if.then4.i.i.if.then12.i_crit_edge ], [ -1, %sw.bb10.i.i.if.then12.i_crit_edge ], [ -1, %if.end13.i.i.if.then12.i_crit_edge ], [ %call18.i.i, %sw.epilog.i.i.if.then12.i_crit_edge ]
  %90 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %attr.i, align 4
  %tobool.not3.i.i = icmp eq ptr %91, null
  br i1 %tobool.not3.i.i, label %if.then12.i.getattr_return_crit_edge, label %if.then12.i.while.body.i.i_crit_edge

if.then12.i.while.body.i.i_crit_edge:             ; preds = %if.then12.i
  br label %while.body.i.i

if.then12.i.getattr_return_crit_edge:             ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %getattr_return

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then12.i.while.body.i.i_crit_edge
  %catmap.addr.04.i.i = phi ptr [ %93, %while.body.i.i.while.body.i.i_crit_edge ], [ %91, %if.then12.i.while.body.i.i_crit_edge ]
  %next.i.i = getelementptr inbounds %struct.netlbl_lsm_catmap, ptr %catmap.addr.04.i.i, i32 0, i32 2
  %92 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %next.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %catmap.addr.04.i.i) #14
  %tobool.not.i.i = icmp eq ptr %93, null
  br i1 %tobool.not.i.i, label %while.body.i.i.sw.epilog_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

while.body.i.i.sw.epilog_crit_edge:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end15.i:                                       ; preds = %if.then4.i.i
  %94 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %attr.i, align 4
  %tobool.not.i61 = icmp eq ptr %95, null
  br i1 %tobool.not.i61, label %if.end15.i.if.then22_crit_edge, label %if.end15.i.if.then22.sink.split_crit_edge

if.end15.i.if.then22.sink.split_crit_edge:        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then22.sink.split

if.end15.i.if.then22_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then22

sw.bb11:                                          ; preds = %if.end6
  %arrayidx.i63 = getelementptr i8, ptr %cipso, i32 7
  %96 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx.i63, align 1
  %arrayidx1.i64 = getelementptr i8, ptr %cipso, i32 9
  %98 = ptrtoint ptr %arrayidx1.i64 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx1.i64, align 1
  %conv.i65 = zext i8 %99 to i32
  %type.i.i66 = getelementptr i8, ptr %.pn32.i, i32 -20
  %100 = ptrtoint ptr %type.i.i66 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %type.i.i66, align 4
  %102 = zext i32 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %101, label %sw.bb11.getattr_return_crit_edge [
    i32 2, label %sw.bb11.if.end.i79_crit_edge
    i32 1, label %sw.bb1.i.i70
  ]

sw.bb11.if.end.i79_crit_edge:                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i79

sw.bb11.getattr_return_crit_edge:                 ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #16
  br label %getattr_return

sw.bb1.i.i70:                                     ; preds = %sw.bb11
  %map.i.i67 = getelementptr i8, ptr %.pn32.i, i32 -16
  %103 = ptrtoint ptr %map.i.i67 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %map.i.i67, align 4
  %cipso_size.i.i68 = getelementptr inbounds %struct.anon.5, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %cipso_size.i.i68 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %cipso_size.i.i68, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %conv.i65)
  %cmp.i.i69 = icmp ugt i32 %106, %conv.i65
  br i1 %cmp.i.i69, label %land.lhs.true.i.i73, label %sw.bb1.i.i70.getattr_return_crit_edge

sw.bb1.i.i70.getattr_return_crit_edge:            ; preds = %sw.bb1.i.i70
  call void @__sanitizer_cov_trace_pc() #16
  br label %getattr_return

land.lhs.true.i.i73:                              ; preds = %sw.bb1.i.i70
  %107 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %104, align 4
  %arrayidx.i.i71 = getelementptr i32, ptr %108, i32 %conv.i65
  %109 = ptrtoint ptr %arrayidx.i.i71 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx.i.i71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %110)
  %cmp3.i.i72 = icmp sgt i32 %110, -1
  br i1 %cmp3.i.i72, label %land.lhs.true.i.i73.if.end.i79_crit_edge, label %land.lhs.true.i.i73.getattr_return_crit_edge

land.lhs.true.i.i73.getattr_return_crit_edge:     ; preds = %land.lhs.true.i.i73
  call void @__sanitizer_cov_trace_pc() #16
  br label %getattr_return

land.lhs.true.i.i73.if.end.i79_crit_edge:         ; preds = %land.lhs.true.i.i73
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i79

if.end.i79:                                       ; preds = %land.lhs.true.i.i73.if.end.i79_crit_edge, %sw.bb11.if.end.i79_crit_edge
  %.sink.i.i74 = phi i32 [ %conv.i65, %sw.bb11.if.end.i79_crit_edge ], [ %110, %land.lhs.true.i.i73.if.end.i79_crit_edge ]
  %attr.i75 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 4
  %lvl.i76 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 4, i32 0, i32 1
  %111 = ptrtoint ptr %lvl.i76 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %.sink.i.i74, ptr %lvl.i76, align 4
  %112 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %secattr, align 4
  %or.i77 = or i32 %113, 4
  store i32 %or.i77, ptr %secattr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %97)
  %cmp4.i78 = icmp ugt i8 %97, 4
  br i1 %cmp4.i78, label %if.then6.i83, label %if.end.i79.if.then22_crit_edge

if.end.i79.if.then22_crit_edge:                   ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then22

if.then6.i83:                                     ; preds = %if.end.i79
  %conv3.i80 = zext i8 %97 to i32
  %arrayidx7.i81 = getelementptr i8, ptr %cipso, i32 10
  %sub.i82 = add nsw i32 %conv3.i80, -4
  br label %for.body.i.i

for.cond.i.i85:                                   ; preds = %for.body.i.i
  %add.i.i84 = add i32 %iter.02.i.i, 2
  %cmp.i32.i = icmp ult i32 %add.i.i84, %sub.i82
  br i1 %cmp.i32.i, label %for.cond.i.i85.for.body.i.i_crit_edge, label %for.cond.i.i85.if.then22.sink.split_crit_edge

for.cond.i.i85.if.then22.sink.split_crit_edge:    ; preds = %for.cond.i.i85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then22.sink.split

for.cond.i.i85.for.body.i.i_crit_edge:            ; preds = %for.cond.i.i85
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i85.for.body.i.i_crit_edge, %if.then6.i83
  %iter.02.i.i = phi i32 [ %add.i.i84, %for.cond.i.i85.for.body.i.i_crit_edge ], [ 0, %if.then6.i83 ]
  %arrayidx.i33.i = getelementptr i8, ptr %arrayidx7.i81, i32 %iter.02.i.i
  %114 = ptrtoint ptr %arrayidx.i33.i to i32
  call void @__asan_loadN_noabort(i32 %114, i32 2)
  %115 = load i16, ptr %arrayidx.i33.i, align 1
  %conv.i.i = zext i16 %115 to i32
  %call1.i.i = tail call i32 @netlbl_catmap_setbit(ptr noundef %attr.i75, i32 noundef %conv.i.i, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp2.not.i.i, label %for.cond.i.i85, label %if.then12.i87

if.then12.i87:                                    ; preds = %for.body.i.i
  %116 = ptrtoint ptr %attr.i75 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %attr.i75, align 4
  %tobool.not3.i.i86 = icmp eq ptr %117, null
  br i1 %tobool.not3.i.i86, label %if.then12.i87.getattr_return_crit_edge, label %if.then12.i87.while.body.i.i91_crit_edge

if.then12.i87.while.body.i.i91_crit_edge:         ; preds = %if.then12.i87
  br label %while.body.i.i91

if.then12.i87.getattr_return_crit_edge:           ; preds = %if.then12.i87
  call void @__sanitizer_cov_trace_pc() #16
  br label %getattr_return

while.body.i.i91:                                 ; preds = %while.body.i.i91.while.body.i.i91_crit_edge, %if.then12.i87.while.body.i.i91_crit_edge
  %catmap.addr.04.i.i88 = phi ptr [ %119, %while.body.i.i91.while.body.i.i91_crit_edge ], [ %117, %if.then12.i87.while.body.i.i91_crit_edge ]
  %next.i.i89 = getelementptr inbounds %struct.netlbl_lsm_catmap, ptr %catmap.addr.04.i.i88, i32 0, i32 2
  %118 = ptrtoint ptr %next.i.i89 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %next.i.i89, align 8
  tail call void @kfree(ptr noundef nonnull %catmap.addr.04.i.i88) #14
  %tobool.not.i.i90 = icmp eq ptr %119, null
  br i1 %tobool.not.i.i90, label %while.body.i.i91.sw.epilog_crit_edge, label %while.body.i.i91.while.body.i.i91_crit_edge

while.body.i.i91.while.body.i.i91_crit_edge:      ; preds = %while.body.i.i91
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i91

while.body.i.i91.sw.epilog_crit_edge:             ; preds = %while.body.i.i91
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end6
  %arrayidx.i94 = getelementptr i8, ptr %cipso, i32 7
  %120 = ptrtoint ptr %arrayidx.i94 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx.i94, align 1
  %arrayidx1.i95 = getelementptr i8, ptr %cipso, i32 9
  %122 = ptrtoint ptr %arrayidx1.i95 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx1.i95, align 1
  %conv.i96 = zext i8 %123 to i32
  %type.i.i97 = getelementptr i8, ptr %.pn32.i, i32 -20
  %124 = ptrtoint ptr %type.i.i97 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %type.i.i97, align 4
  %126 = zext i32 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %125, label %sw.bb14.getattr_return_crit_edge [
    i32 2, label %sw.bb14.if.end.i110_crit_edge
    i32 1, label %sw.bb1.i.i101
  ]

sw.bb14.if.end.i110_crit_edge:                    ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i110

sw.bb14.getattr_return_crit_edge:                 ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #16
  br label %getattr_return

sw.bb1.i.i101:                                    ; preds = %sw.bb14
  %map.i.i98 = getelementptr i8, ptr %.pn32.i, i32 -16
  %127 = ptrtoint ptr %map.i.i98 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %map.i.i98, align 4
  %cipso_size.i.i99 = getelementptr inbounds %struct.anon.5, ptr %128, i32 0, i32 2
  %129 = ptrtoint ptr %cipso_size.i.i99 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %cipso_size.i.i99, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %conv.i96)
  %cmp.i.i100 = icmp ugt i32 %130, %conv.i96
  br i1 %cmp.i.i100, label %land.lhs.true.i.i104, label %sw.bb1.i.i101.getattr_return_crit_edge

sw.bb1.i.i101.getattr_return_crit_edge:           ; preds = %sw.bb1.i.i101
  call void @__sanitizer_cov_trace_pc() #16
  br label %getattr_return

land.lhs.true.i.i104:                             ; preds = %sw.bb1.i.i101
  %131 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %128, align 4
  %arrayidx.i.i102 = getelementptr i32, ptr %132, i32 %conv.i96
  %133 = ptrtoint ptr %arrayidx.i.i102 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx.i.i102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %134)
  %cmp3.i.i103 = icmp sgt i32 %134, -1
  br i1 %cmp3.i.i103, label %land.lhs.true.i.i104.if.end.i110_crit_edge, label %land.lhs.true.i.i104.getattr_return_crit_edge

land.lhs.true.i.i104.getattr_return_crit_edge:    ; preds = %land.lhs.true.i.i104
  call void @__sanitizer_cov_trace_pc() #16
  br label %getattr_return

land.lhs.true.i.i104.if.end.i110_crit_edge:       ; preds = %land.lhs.true.i.i104
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i110

if.end.i110:                                      ; preds = %land.lhs.true.i.i104.if.end.i110_crit_edge, %sw.bb14.if.end.i110_crit_edge
  %.sink.i.i105 = phi i32 [ %conv.i96, %sw.bb14.if.end.i110_crit_edge ], [ %134, %land.lhs.true.i.i104.if.end.i110_crit_edge ]
  %attr.i106 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 4
  %lvl.i107 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 4, i32 0, i32 1
  %135 = ptrtoint ptr %lvl.i107 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %.sink.i.i105, ptr %lvl.i107, align 4
  %136 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %secattr, align 4
  %or.i108 = or i32 %137, 4
  store i32 %or.i108, ptr %secattr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %121)
  %cmp4.i109 = icmp ugt i8 %121, 4
  br i1 %cmp4.i109, label %if.then6.i114, label %if.end.i110.if.then22_crit_edge

if.end.i110.if.then22_crit_edge:                  ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then22

if.then6.i114:                                    ; preds = %if.end.i110
  %conv3.i111 = zext i8 %121 to i32
  %arrayidx7.i112 = getelementptr i8, ptr %cipso, i32 10
  %sub.i113 = add nsw i32 %conv3.i111, -4
  br label %for.cond.i.i115

for.cond.i.i115:                                  ; preds = %if.end.i.i120.for.cond.i.i115_crit_edge, %if.then6.i114
  %net_iter.0.i.i = phi i32 [ 0, %if.then6.i114 ], [ %add.i.i116, %if.end.i.i120.for.cond.i.i115_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %net_iter.0.i.i, i32 %sub.i113)
  %cmp.i38.i = icmp ult i32 %net_iter.0.i.i, %sub.i113
  br i1 %cmp.i38.i, label %for.body.i.i117, label %if.end15.i128

for.body.i.i117:                                  ; preds = %for.cond.i.i115
  %arrayidx.i39.i = getelementptr i8, ptr %arrayidx7.i112, i32 %net_iter.0.i.i
  %138 = ptrtoint ptr %arrayidx.i39.i to i32
  call void @__asan_loadN_noabort(i32 %138, i32 2)
  %139 = load i16, ptr %arrayidx.i39.i, align 1
  %add.i.i116 = add i32 %net_iter.0.i.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i116, i32 %sub.i113)
  %cmp1.not.i.i = icmp ugt i32 %add.i.i116, %sub.i113
  br i1 %cmp1.not.i.i, label %for.body.i.i117.if.end.i.i120_crit_edge, label %if.then.i.i118

for.body.i.i117.if.end.i.i120_crit_edge:          ; preds = %for.body.i.i117
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i120

if.then.i.i118:                                   ; preds = %for.body.i.i117
  call void @__sanitizer_cov_trace_pc() #16
  %add2.i.i = or i32 %net_iter.0.i.i, 2
  %arrayidx3.i.i = getelementptr i8, ptr %arrayidx7.i112, i32 %add2.i.i
  %140 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_loadN_noabort(i32 %140, i32 2)
  %141 = load i16, ptr %arrayidx3.i.i, align 1
  br label %if.end.i.i120

if.end.i.i120:                                    ; preds = %if.then.i.i118, %for.body.i.i117.if.end.i.i120_crit_edge
  %cat_low.0.i.i = phi i16 [ %141, %if.then.i.i118 ], [ 0, %for.body.i.i117.if.end.i.i120_crit_edge ]
  %conv.i.i119 = zext i16 %cat_low.0.i.i to i32
  %conv5.i.i = zext i16 %139 to i32
  %call6.i.i = tail call i32 @netlbl_catmap_setrng(ptr noundef %attr.i106, i32 noundef %conv.i.i119, i32 noundef %conv5.i.i, i32 noundef 2592) #14
  %cmp7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %cmp7.not.i.i, label %if.end.i.i120.for.cond.i.i115_crit_edge, label %if.then12.i122

if.end.i.i120.for.cond.i.i115_crit_edge:          ; preds = %if.end.i.i120
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i115

if.then12.i122:                                   ; preds = %if.end.i.i120
  %142 = ptrtoint ptr %attr.i106 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %attr.i106, align 4
  %tobool.not3.i.i121 = icmp eq ptr %143, null
  br i1 %tobool.not3.i.i121, label %if.then12.i122.getattr_return_crit_edge, label %if.then12.i122.while.body.i.i126_crit_edge

if.then12.i122.while.body.i.i126_crit_edge:       ; preds = %if.then12.i122
  br label %while.body.i.i126

if.then12.i122.getattr_return_crit_edge:          ; preds = %if.then12.i122
  call void @__sanitizer_cov_trace_pc() #16
  br label %getattr_return

while.body.i.i126:                                ; preds = %while.body.i.i126.while.body.i.i126_crit_edge, %if.then12.i122.while.body.i.i126_crit_edge
  %catmap.addr.04.i.i123 = phi ptr [ %145, %while.body.i.i126.while.body.i.i126_crit_edge ], [ %143, %if.then12.i122.while.body.i.i126_crit_edge ]
  %next.i.i124 = getelementptr inbounds %struct.netlbl_lsm_catmap, ptr %catmap.addr.04.i.i123, i32 0, i32 2
  %144 = ptrtoint ptr %next.i.i124 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %next.i.i124, align 8
  tail call void @kfree(ptr noundef nonnull %catmap.addr.04.i.i123) #14
  %tobool.not.i.i125 = icmp eq ptr %145, null
  br i1 %tobool.not.i.i125, label %while.body.i.i126.sw.epilog_crit_edge, label %while.body.i.i126.while.body.i.i126_crit_edge

while.body.i.i126.while.body.i.i126_crit_edge:    ; preds = %while.body.i.i126
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i126

while.body.i.i126.sw.epilog_crit_edge:            ; preds = %while.body.i.i126
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end15.i128:                                    ; preds = %for.cond.i.i115
  %146 = ptrtoint ptr %attr.i106 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %attr.i106, align 4
  %tobool.not.i127 = icmp eq ptr %147, null
  br i1 %tobool.not.i127, label %if.end15.i128.if.then22_crit_edge, label %if.end15.i128.if.then22.sink.split_crit_edge

if.end15.i128.if.then22.sink.split_crit_edge:     ; preds = %if.end15.i128
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then22.sink.split

if.end15.i128.if.then22_crit_edge:                ; preds = %if.end15.i128
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then22

sw.bb17:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i132 = getelementptr i8, ptr %cipso, i32 8
  %148 = ptrtoint ptr %arrayidx.i132 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx.i132, align 4
  %secid.i = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 4, i32 1
  %150 = ptrtoint ptr %secid.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %secid.i, align 4
  br label %if.then22.sink.split

sw.epilog:                                        ; preds = %while.body.i.i126.sw.epilog_crit_edge, %while.body.i.i91.sw.epilog_crit_edge, %while.body.i.i.sw.epilog_crit_edge
  %ret_val.0 = phi i32 [ %retval.0.i44.ph.i, %while.body.i.i.sw.epilog_crit_edge ], [ %call1.i.i, %while.body.i.i91.sw.epilog_crit_edge ], [ %call6.i.i, %while.body.i.i126.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret_val.0)
  %cmp20 = icmp eq i32 %ret_val.0, 0
  br i1 %cmp20, label %sw.epilog.if.then22_crit_edge, label %sw.epilog.getattr_return_crit_edge

sw.epilog.getattr_return_crit_edge:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %getattr_return

sw.epilog.if.then22_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then22

if.then22.sink.split:                             ; preds = %sw.bb17, %if.end15.i128.if.then22.sink.split_crit_edge, %for.cond.i.i85.if.then22.sink.split_crit_edge, %if.end15.i.if.then22.sink.split_crit_edge
  %.sink186 = phi i32 [ 16, %sw.bb17 ], [ 8, %if.end15.i.if.then22.sink.split_crit_edge ], [ 8, %if.end15.i128.if.then22.sink.split_crit_edge ], [ 8, %for.cond.i.i85.if.then22.sink.split_crit_edge ]
  %151 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %secattr, align 4
  %or21.i129 = or i32 %152, %.sink186
  store i32 %or21.i129, ptr %secattr, align 4
  br label %if.then22

if.then22:                                        ; preds = %if.then22.sink.split, %sw.epilog.if.then22_crit_edge, %if.end15.i128.if.then22_crit_edge, %if.end.i110.if.then22_crit_edge, %if.end.i79.if.then22_crit_edge, %if.end15.i.if.then22_crit_edge, %if.end.i57.if.then22_crit_edge
  %type = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 1
  %153 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 3, ptr %type, align 4
  br label %getattr_return

getattr_return:                                   ; preds = %if.then22, %sw.epilog.getattr_return_crit_edge, %if.then12.i122.getattr_return_crit_edge, %land.lhs.true.i.i104.getattr_return_crit_edge, %sw.bb1.i.i101.getattr_return_crit_edge, %sw.bb14.getattr_return_crit_edge, %if.then12.i87.getattr_return_crit_edge, %land.lhs.true.i.i73.getattr_return_crit_edge, %sw.bb1.i.i70.getattr_return_crit_edge, %sw.bb11.getattr_return_crit_edge, %if.then12.i.getattr_return_crit_edge, %land.lhs.true.i.i.getattr_return_crit_edge, %sw.bb1.i.i.getattr_return_crit_edge, %sw.bb.getattr_return_crit_edge, %if.end6.getattr_return_crit_edge, %cipso_v4_doi_search.exit.getattr_return_crit_edge, %for.inc.i.getattr_return_crit_edge, %do.end.i.getattr_return_crit_edge
  %ret_val.1 = phi i32 [ 0, %if.then22 ], [ %ret_val.0, %sw.epilog.getattr_return_crit_edge ], [ -42, %cipso_v4_doi_search.exit.getattr_return_crit_edge ], [ -42, %do.end.i.getattr_return_crit_edge ], [ -1, %land.lhs.true.i.i104.getattr_return_crit_edge ], [ -1, %sw.bb1.i.i101.getattr_return_crit_edge ], [ -22, %sw.bb14.getattr_return_crit_edge ], [ %call6.i.i, %if.then12.i122.getattr_return_crit_edge ], [ -1, %land.lhs.true.i.i73.getattr_return_crit_edge ], [ -1, %sw.bb1.i.i70.getattr_return_crit_edge ], [ -22, %sw.bb11.getattr_return_crit_edge ], [ %call1.i.i, %if.then12.i87.getattr_return_crit_edge ], [ -1, %land.lhs.true.i.i.getattr_return_crit_edge ], [ -1, %sw.bb1.i.i.getattr_return_crit_edge ], [ -22, %sw.bb.getattr_return_crit_edge ], [ %retval.0.i44.ph.i, %if.then12.i.getattr_return_crit_edge ], [ -42, %if.end6.getattr_return_crit_edge ], [ -42, %for.inc.i.getattr_return_crit_edge ]
  %call.i134 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i134, label %getattr_return.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i137

getattr_return.rcu_read_unlock.exit_crit_edge:    ; preds = %getattr_return
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i137:                               ; preds = %getattr_return
  %call1.i135 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i135)
  %tobool.not.i136 = icmp eq i32 %call1.i135, 0
  br i1 %tobool.not.i136, label %land.lhs.true.i137.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i139

land.lhs.true.i137.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i137
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i139:                              ; preds = %land.lhs.true.i137
  %.b4.i138 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i138, label %land.lhs.true2.i139.rcu_read_unlock.exit_crit_edge, label %if.then.i140

land.lhs.true2.i139.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i139
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i140:                                     ; preds = %land.lhs.true2.i139
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i140, %land.lhs.true2.i139.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i137.rcu_read_unlock.exit_crit_edge, %getattr_return.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !74
  %154 = tail call i32 @llvm.read_register.i32(metadata !55) #14
  %and.i.i.i.i.i141 = and i32 %154, -16384
  %155 = inttoptr i32 %and.i.i.i.i.i141 to ptr
  %preempt_count.i.i.i.i142 = getelementptr inbounds %struct.thread_info, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %preempt_count.i.i.i.i142 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile i32, ptr %preempt_count.i.i.i.i142, align 4
  %sub.i.i.i = add i32 %157, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i142, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %cipso_v4_cache_check.exit
  %retval.0 = phi i32 [ %ret_val.1, %rcu_read_unlock.exit ], [ 0, %cipso_v4_cache_check.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cipso_v4_sock_getattr(ptr noundef %sk, ptr noundef %secattr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !72
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %inet_opt = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 5
  %4 = ptrtoint ptr %inet_opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %inet_opt, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b25 = load i1, ptr @cipso_v4_sock_getattr.__warned, align 1
  br i1 %.b25, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cipso_v4_sock_getattr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 2140, ptr noundef nonnull @.str.9) #14
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end8.if.end21_crit_edge, label %land.lhs.true11

do.end8.if.end21_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

land.lhs.true11:                                  ; preds = %do.end8
  %cipso = getelementptr inbounds %struct.ip_options_rcu, ptr %5, i32 0, i32 1, i32 8
  %6 = ptrtoint ptr %cipso to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cipso, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool13.not = icmp eq i8 %7, 0
  br i1 %tobool13.not, label %land.lhs.true11.if.end21_crit_edge, label %if.then14

land.lhs.true11.if.end21_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then14:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i8 %7 to i32
  %__data = getelementptr inbounds %struct.ip_options_rcu, ptr %5, i32 1
  %add.ptr = getelementptr i8, ptr %__data, i32 %conv
  %add.ptr19 = getelementptr i8, ptr %add.ptr, i32 -20
  %call20 = tail call i32 @cipso_v4_getattr(ptr noundef %add.ptr19, ptr noundef %secattr)
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %land.lhs.true11.if.end21_crit_edge, %do.end8.if.end21_crit_edge
  %res.0 = phi i32 [ %call20, %if.then14 ], [ -42, %land.lhs.true11.if.end21_crit_edge ], [ -42, %do.end8.if.end21_crit_edge ]
  %call.i26 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i26, label %if.end21.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i29

if.end21.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i29:                                ; preds = %if.end21
  %call1.i27 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i27)
  %tobool.not.i28 = icmp eq i32 %call1.i27, 0
  br i1 %tobool.not.i28, label %land.lhs.true.i29.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i31

land.lhs.true.i29.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i31:                               ; preds = %land.lhs.true.i29
  %.b4.i30 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i30, label %land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge, label %if.then.i32

land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i32:                                      ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i32, %land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i29.rcu_read_unlock.exit_crit_edge, %if.end21.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !74
  %8 = tail call i32 @llvm.read_register.i32(metadata !55) #14
  %and.i.i.i.i.i33 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i33 to ptr
  %preempt_count.i.i.i.i34 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i34, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i34, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cipso_v4_skbuff_setattr(ptr noundef %skb, ptr nocapture noundef readonly %doi_def, ptr nocapture noundef readonly %secattr) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %opt1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %buf) #14
  %0 = call ptr @memset(ptr %buf, i32 255, i32 40)
  %call = call fastcc i32 @cipso_v4_genopt(ptr noundef nonnull %buf, ptr noundef %doi_def, ptr noundef %secattr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add nuw i32 %call, 3
  %and = and i32 %add, -4
  %optlen = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %1 = ptrtoint ptr %optlen to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %optlen, align 4
  %conv = zext i8 %2 to i32
  %sub = sub i32 %and, %conv
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add4 = add i32 %sub.ptr.sub.i, %sub
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %7 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end.skb_cloned.exit.i_crit_edge, label %land.rhs.i.i

if.end.skb_cloned.exit.i_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_cloned.exit.i

land.rhs.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %8 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 10
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #14
  %10 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %11, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br label %skb_cloned.exit.i

skb_cloned.exit.i:                                ; preds = %land.rhs.i.i, %if.end.skb_cloned.exit.i_crit_edge
  %12 = phi i1 [ true, %if.end.skb_cloned.exit.i_crit_edge ], [ %cmp.i.not.i, %land.rhs.i.i ]
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %15 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %add4)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %add4
  %or.cond.i.i = and i1 %12, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_cloned.exit.i.if.end9_crit_edge, label %skb_cow.exit

skb_cloned.exit.i.if.end9_crit_edge:              ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

skb_cow.exit:                                     ; preds = %skb_cloned.exit.i
  %17 = call i32 @llvm.usub.sat.i32(i32 %add4, i32 %sub.ptr.sub.i.i.i) #14
  %add.i.i = add i32 %17, 127
  %and.i4.i = and i32 %add.i.i, -128
  %call4.i.i = call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp6 = icmp slt i32 %call4.i.i, 0
  br i1 %cmp6, label %skb_cow.exit.cleanup_crit_edge, label %skb_cow.exit.if.end9_crit_edge

skb_cow.exit.if.end9_crit_edge:                   ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

skb_cow.exit.cleanup_crit_edge:                   ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %skb_cow.exit.if.end9_crit_edge, %skb_cloned.exit.i.if.end9_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp10 = icmp sgt i32 %sub, 0
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %20 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %21 to i32
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %conv.i.i
  %call14 = call ptr @skb_push(ptr noundef %skb, i32 noundef %sub) #14
  %idx.neg = sub nsw i32 0, %sub
  %add.ptr = getelementptr i8, ptr %add.ptr.i.i, i32 %idx.neg
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear = shl i8 %bf.load, 2
  %23 = and i8 %bf.clear, 60
  %shl = zext i8 %23 to i32
  %24 = call ptr @memmove(ptr %add.ptr, ptr %add.ptr.i.i, i32 %shl)
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  %27 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i106 = ptrtoint ptr %26 to i32
  %sub.ptr.rhs.cast.i107 = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i108 = sub i32 %sub.ptr.lhs.cast.i106, %sub.ptr.rhs.cast.i107
  %conv.i = trunc i32 %sub.ptr.sub.i108 to i16
  %29 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i, ptr %network_header.i.i, align 4
  %conv.i.i111 = and i32 %sub.ptr.sub.i108, 65535
  %add.ptr.i.i112 = getelementptr i8, ptr %28, i32 %conv.i.i111
  br label %if.end27

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp17 = icmp slt i32 %sub, 0
  %30 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %head.i, align 8
  %network_header.i.i114 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %32 = ptrtoint ptr %network_header.i.i114 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %network_header.i.i114, align 4
  %conv.i.i115 = zext i16 %33 to i32
  %add.ptr.i.i116 = getelementptr i8, ptr %31, i32 %conv.i.i115
  br i1 %cmp17, label %if.then19, label %if.else.if.end27_crit_edge

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr21 = getelementptr %struct.iphdr, ptr %add.ptr.i.i116, i32 1
  %34 = ptrtoint ptr %optlen to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %optlen, align 4
  %conv23 = zext i8 %35 to i32
  %36 = call ptr @memset(ptr %add.ptr21, i32 1, i32 %conv23)
  br label %if.end27

if.end27:                                         ; preds = %if.then19, %if.else.if.end27_crit_edge, %if.then12
  %iph.0 = phi ptr [ %add.ptr.i.i112, %if.then12 ], [ %add.ptr.i.i116, %if.then19 ], [ %add.ptr.i.i116, %if.else.if.end27_crit_edge ]
  %37 = ptrtoint ptr %optlen to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %optlen, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp30.not = icmp eq i8 %38, 0
  br i1 %cmp30.not, label %if.end27.if.end33_crit_edge, label %if.then32

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %39 = call ptr @memset(ptr %opt1, i32 0, i32 16)
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end27.if.end33_crit_edge
  %conv34 = trunc i32 %and to i8
  %40 = ptrtoint ptr %optlen to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv34, ptr %optlen, align 4
  %cipso = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 18
  %41 = ptrtoint ptr %cipso to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 20, ptr %cipso, align 2
  %is_changed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %42 = ptrtoint ptr %is_changed to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load36 = load i8, ptr %is_changed, align 4
  %bf.set = or i8 %bf.load36, 32
  store i8 %bf.set, ptr %is_changed, align 4
  %add.ptr38 = getelementptr %struct.iphdr, ptr %iph.0, i32 1
  %43 = call ptr @memcpy(ptr %add.ptr38, ptr %buf, i32 %call)
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %call)
  %cmp40 = icmp ugt i32 %and, %call
  br i1 %cmp40, label %if.then42, label %if.end33.if.end46_crit_edge

if.end33.if.end46_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.then42:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr44 = getelementptr i8, ptr %add.ptr38, i32 %call
  %sub45 = sub i32 %and, %call
  %44 = call ptr @memset(ptr %add.ptr44, i32 0, i32 %sub45)
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end33.if.end46_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv)
  %cmp47.not = icmp eq i32 %and, %conv
  br i1 %cmp47.not, label %if.end46.if.end56_crit_edge, label %if.then49

if.end46.if.end56_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  %45 = trunc i32 %add to i8
  %46 = lshr i8 %45, 2
  %conv51 = add nuw nsw i8 %46, 5
  %47 = ptrtoint ptr %iph.0 to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load52 = load i8, ptr %iph.0, align 4
  %bf.value = and i8 %conv51, 15
  %bf.clear53 = and i8 %bf.load52, -16
  %bf.set54 = or i8 %bf.clear53, %bf.value
  store i8 %bf.set54, ptr %iph.0, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %48 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len, align 4
  %conv55 = trunc i32 %49 to i16
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %iph.0, i32 0, i32 2
  %50 = ptrtoint ptr %tot_len to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv55, ptr %tot_len, align 2
  br label %if.end56

if.end56:                                         ; preds = %if.then49, %if.end46.if.end56_crit_edge
  call void @ip_send_check(ptr noundef %iph.0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %skb_cow.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end56 ], [ %call, %entry.cleanup_crit_edge ], [ %call4.i.i, %skb_cow.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %buf) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_send_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cipso_v4_skbuff_delattr(ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cipso = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 18
  %0 = ptrtoint ptr %cipso to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cipso, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %6 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end.skb_cloned.exit.i_crit_edge, label %land.rhs.i.i

if.end.skb_cloned.exit.i_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_cloned.exit.i

land.rhs.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %7 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %8, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #14
  %9 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %10, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br label %skb_cloned.exit.i

skb_cloned.exit.i:                                ; preds = %land.rhs.i.i, %if.end.skb_cloned.exit.i_crit_edge
  %11 = phi i1 [ true, %if.end.skb_cloned.exit.i_crit_edge ], [ %cmp.i.not.i, %land.rhs.i.i ]
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %14 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %sub.ptr.sub.i)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %sub.ptr.sub.i
  %or.cond.i.i = and i1 %11, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_cloned.exit.i.if.end7_crit_edge, label %skb_cow.exit

skb_cloned.exit.i.if.end7_crit_edge:              ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

skb_cow.exit:                                     ; preds = %skb_cloned.exit.i
  %16 = tail call i32 @llvm.usub.sat.i32(i32 %sub.ptr.sub.i, i32 %sub.ptr.sub.i.i.i) #14
  %add.i.i = add i32 %16, 127
  %and.i4.i = and i32 %add.i.i, -128
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp4 = icmp slt i32 %call4.i.i, 0
  br i1 %cmp4, label %skb_cow.exit.cleanup_crit_edge, label %skb_cow.exit.if.end7_crit_edge

skb_cow.exit.if.end7_crit_edge:                   ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

skb_cow.exit.cleanup_crit_edge:                   ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %skb_cow.exit.if.end7_crit_edge, %skb_cloned.exit.i.if.end7_crit_edge
  %17 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %19 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %20 to i32
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %conv.i.i
  %21 = ptrtoint ptr %cipso to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cipso, align 2
  %conv10 = zext i8 %22 to i32
  %add.ptr = getelementptr i8, ptr %add.ptr.i.i, i32 %conv10
  %arrayidx = getelementptr i8, ptr %add.ptr, i32 1
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx, align 1
  %conv11 = zext i8 %24 to i32
  %25 = call ptr @memset(ptr %add.ptr, i32 1, i32 %conv11)
  store i8 0, ptr %cipso, align 2
  %is_changed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %26 = ptrtoint ptr %is_changed to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load = load i8, ptr %is_changed, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %is_changed, align 4
  tail call void @ip_send_check(ptr noundef %add.ptr.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %skb_cow.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ 0, %entry.cleanup_crit_edge ], [ %call4.i.i, %skb_cow.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cipso_v4_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cipso_v4_cache_init() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.14, i32 noundef %call) #21
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_bitmap_walk(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_catmap_walk(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlbl_bitmap_setbit(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_catmap_walkrng(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_catmap_setbit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_catmap_setrng(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cipso_v4_cache_init() unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 7168) #17
  store ptr %call7.i.i.i, ptr @cipso_v4_cache, align 4
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry.do.body_crit_edge
  %iter.08 = phi i32 [ %inc, %do.body.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  %1 = load ptr, ptr @cipso_v4_cache, align 4
  %arrayidx = getelementptr %struct.cipso_v4_map_cache_bkt, ptr %1, i32 %iter.08
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.15, ptr noundef nonnull @cipso_v4_cache_init.__key, i16 noundef signext 3) #14
  %2 = load ptr, ptr @cipso_v4_cache, align 4
  %size = getelementptr %struct.cipso_v4_map_cache_bkt, ptr %2, i32 %iter.08, i32 1
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %size, align 4
  %list = getelementptr %struct.cipso_v4_map_cache_bkt, ptr %2, i32 %iter.08, i32 2
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr %struct.cipso_v4_map_cache_bkt, ptr %2, i32 %iter.08, i32 2, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %prev.i, align 4
  %inc = add nuw nsw i32 %iter.08, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %do.body.cleanup_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { cold }
attributes #21 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !24, !25, !27, !28, !30, !32, !34, !36, !37, !39, !41, !43, !44, !45, !47, !48, !50, !52, !54}
!llvm.named.register.sp = !{!55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @cipso_v4_cache_enabled, !1, !"cipso_v4_cache_enabled", i1 false, i1 false}
!1 = !{!"../net/ipv4/cipso_ipv4.c", i32 51, i32 5}
!2 = !{ptr @cipso_v4_cache_bucketsize, !3, !"cipso_v4_cache_bucketsize", i1 false, i1 false}
!3 = !{!"../net/ipv4/cipso_ipv4.c", i32 52, i32 5}
!4 = !{ptr @cipso_v4_rbm_strictvalid, !5, !"cipso_v4_rbm_strictvalid", i1 false, i1 false}
!5 = !{!"../net/ipv4/cipso_ipv4.c", i32 77, i32 5}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/ipv4/cipso_ipv4.c", i32 435, i32 15}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/ipv4/cipso_ipv4.c", i32 438, i32 15}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/ipv4/cipso_ipv4.c", i32 441, i32 15}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/ipv4/cipso_ipv4.c", i32 444, i32 15}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/ipv4/cipso_ipv4.c", i32 447, i32 6}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/ipv4/cipso_ipv4.c", i32 532, i32 6}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../net/ipv4/cipso_ipv4.c", i32 609, i32 2}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../net/ipv4/cipso_ipv4.c", i32 1880, i32 8}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../net/ipv4/cipso_ipv4.c", i32 2140, i32 8}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__initcall__kmod_cipso_ipv4__609_2293_cipso_v4_init4, !29, !"__initcall__kmod_cipso_ipv4__609_2293_cipso_v4_init4", i1 false, i1 false}
!29 = !{!"../net/ipv4/cipso_ipv4.c", i32 2293, i32 1}
!30 = !{ptr @cipso_v4_cache, !31, !"cipso_v4_cache", i1 false, i1 false}
!31 = !{!"../net/ipv4/cipso_ipv4.c", i32 73, i32 39}
!32 = !{ptr @cipso_v4_rbm_optfmt, !33, !"cipso_v4_rbm_optfmt", i1 false, i1 false}
!33 = !{!"../net/ipv4/cipso_ipv4.c", i32 76, i32 5}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/ipv4/cipso_ipv4.c", i32 47, i32 8}
!36 = !{ptr @cipso_v4_doi_list_lock, !35, !"cipso_v4_doi_list_lock", i1 false, i1 false}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../net/ipv4/cipso_ipv4.c", i32 362, i32 2}
!39 = !{ptr @cipso_v4_doi_list, !40, !"cipso_v4_doi_list", i1 false, i1 false}
!40 = !{!"../net/ipv4/cipso_ipv4.c", i32 48, i32 8}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!43 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!47 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../net/ipv4/cipso_ipv4.c", i32 1980, i32 31}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/ipv4/cipso_ipv4.c", i32 2287, i32 9}
!52 = !{ptr @cipso_v4_cache_init.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../net/ipv4/cipso_ipv4.c", i32 178, i32 3}
!54 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!55 = !{!"sp"}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 2148318406}
!66 = !{i64 2148232870, i64 2148232902, i64 2148232931, i64 2148232965, i64 2148232996, i64 2148233019}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{i64 2149645612}
!69 = !{i64 2148230405, i64 2148230437, i64 2148230466, i64 2148230500, i64 2148230531, i64 2148230554}
!70 = !{!"branch_weights", i32 1, i32 2000}
!71 = !{i64 2149453254}
!72 = !{i64 2149195046}
!73 = !{i64 639870, i64 639894, i64 639915, i64 639932, i64 639949}
!74 = !{i64 2149195312}
!75 = !{i64 2158923808}
!76 = !{i64 2158929929}
!77 = !{i64 735643, i64 735660, i64 735684, i64 735710, i64 735728}
!78 = !{i64 2158930274}
