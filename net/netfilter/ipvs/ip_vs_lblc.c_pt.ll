; ModuleID = '/llk/IR_all_yes/net/netfilter/ipvs/ip_vs_lblc.c_pt.bc'
source_filename = "../net/netfilter/ipvs/ip_vs_lblc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ip_vs_scheduler = type { %struct.list_head, ptr, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.98, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.98 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_ieee802154_lowpan = type { %struct.netns_sysctl_lowpan, ptr }
%struct.netns_sysctl_lowpan = type { ptr }
%struct.netns_sctp = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netns_nf = type { ptr, [13 x ptr], ptr, [5 x ptr], [5 x ptr], [3 x ptr], [5 x ptr], [7 x ptr], i32, i32 }
%struct.netns_ct = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.nf_ip_net, i32 }
%struct.nf_ip_net = type { %struct.nf_generic_net, %struct.nf_tcp_net, %struct.nf_udp_net, %struct.nf_icmp_net, %struct.nf_icmp_net, %struct.nf_dccp_net, %struct.nf_sctp_net, %struct.nf_gre_net }
%struct.nf_generic_net = type { i32 }
%struct.nf_tcp_net = type { [14 x i32], i8, i8, i8, i8, i32 }
%struct.nf_udp_net = type { [2 x i32], i32 }
%struct.nf_icmp_net = type { i32 }
%struct.nf_dccp_net = type { i8, [10 x i32] }
%struct.nf_sctp_net = type { [10 x i32] }
%struct.nf_gre_net = type { %struct.list_head, [2 x i32] }
%struct.netns_nftables = type { i8 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.35 }
%union.anon.35 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.ip_vs_service = type { %struct.hlist_node, %struct.hlist_node, %struct.atomic_t, i16, i16, %union.nf_inet_addr, i16, i32, i32, i32, i32, ptr, %struct.list_head, i32, %struct.ip_vs_stats, ptr, %struct.spinlock, ptr, ptr, i32, %struct.callback_head }
%union.nf_inet_addr = type { [4 x i32] }
%struct.ip_vs_stats = type { %struct.ip_vs_kstats, %struct.ip_vs_estimator, ptr, %struct.spinlock, %struct.ip_vs_kstats }
%struct.ip_vs_estimator = type { %struct.list_head, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ip_vs_kstats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.callback_head = type { ptr, ptr }
%struct.ip_vs_lblc_table = type { %struct.callback_head, [1024 x %struct.hlist_head], %struct.timer_list, ptr, %struct.atomic_t, i32, i32, i32, i8 }
%struct.ip_vs_lblc_entry = type { %struct.hlist_node, i32, %union.nf_inet_addr, ptr, i32, %struct.callback_head }
%struct.ip_vs_iphdr = type { i32, i32, i32, i16, i16, i32, %union.nf_inet_addr, %union.nf_inet_addr }
%struct.ip_vs_dest = type { %struct.list_head, %struct.hlist_node, i16, i16, %union.nf_inet_addr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i16, i16, i16, %struct.refcount_struct, %struct.ip_vs_stats, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, ptr, ptr, i16, i16, %union.nf_inet_addr, i32, %struct.list_head, i8 }
%struct.netns_ipvs = type { i32, i32, [16 x %struct.hlist_head], %struct.list_head, [32 x ptr], [16 x %struct.list_head], [16 x %struct.list_head], [16 x %struct.list_head], %struct.atomic_t, %struct.ip_vs_stats, i32, i32, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work, %struct.delayed_work, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.spinlock, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.mutex, %struct.ipvs_sync_daemon_cfg, %struct.ipvs_sync_daemon_cfg, ptr, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ipvs_sync_daemon_cfg = type { %union.nf_inet_addr, i32, i16, i16, i8, i8, [16 x i8] }

@ip_vs_lblc_scheduler = internal global { %struct.ip_vs_scheduler, [52 x i8] } { %struct.ip_vs_scheduler { %struct.list_head { ptr @ip_vs_lblc_scheduler, ptr @ip_vs_lblc_scheduler }, ptr @.str, %struct.atomic_t zeroinitializer, ptr null, ptr @ip_vs_lblc_init_svc, ptr @ip_vs_lblc_done_svc, ptr null, ptr null, ptr null, ptr @ip_vs_lblc_schedule }, [52 x i8] zeroinitializer }, align 32
@ip_vs_lblc_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @__ip_vs_lblc_init, ptr null, ptr @__ip_vs_lblc_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_ip_vs_lblc__595_628_ip_vs_lblc_init6 = internal global ptr @ip_vs_lblc_init, section ".initcall6.init", align 4
@__exitcall_ip_vs_lblc_cleanup = internal global ptr @ip_vs_lblc_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_file596 = internal constant [46 x i8] c"ip_vs_lblc.file=net/netfilter/ipvs/ip_vs_lblc\00", section ".modinfo", align 1
@__UNIQUE_ID_license597 = internal constant [23 x i8] c"ip_vs_lblc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lblc\00", [27 x i8] zeroinitializer }, align 32
@ip_vs_lblc_init_svc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\017IPVS: LBLC hash table (memory=%zdbytes) allocated for current service\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ip_vs_lblc_init_svc\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/netfilter/ipvs/ip_vs_lblc.c\00", [32 x i8] zeroinitializer }, align 32
@ip_vs_lblc_init_svc._entry_ptr = internal global ptr @ip_vs_lblc_init_svc._entry, section ".printk_index", align 4
@ip_vs_lblc_init_svc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&tbl->periodic_timer)\00", [41 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ip_vs_lblc_done_svc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017IPVS: LBLC hash table (memory=%zdbytes) released\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ip_vs_lblc_done_svc\00", [44 x i8] zeroinitializer }, align 32
@ip_vs_lblc_done_svc._entry_ptr = internal global ptr @ip_vs_lblc_done_svc._entry, section ".printk_index", align 4
@ip_vs_lblc_schedule._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017IPVS: %s(): Scheduling...\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ip_vs_lblc_schedule\00", [44 x i8] zeroinitializer }, align 32
@ip_vs_lblc_schedule._entry_ptr = internal global ptr @ip_vs_lblc_schedule._entry, section ".printk_index", align 4
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no destination available\00", [39 x i8] zeroinitializer }, align 32
@ip_vs_lblc_schedule._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.3, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017IPVS: LBLC: destination IP address %s --> server %s:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@ip_vs_lblc_schedule._entry_ptr.12 = internal global ptr @ip_vs_lblc_schedule._entry.10, section ".printk_index", align 4
@ip_vs_lblc_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@is_overloaded.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__ip_vs_lblc_schedule.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__ip_vs_lblc_schedule._entry = internal constant %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 450, ptr null, ptr null }, align 1
@.str.14 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\017IPVS: LBLC: server %s:%d activeconns %d refcnt %d weight %d overhead %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__ip_vs_lblc_schedule\00", [42 x i8] zeroinitializer }, align 32
@__ip_vs_lblc_schedule._entry_ptr = internal global ptr @__ip_vs_lblc_schedule._entry, section ".printk_index", align 4
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[%pI6c]\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI4\00", [27 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@vs_vars_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.19, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"net/ipv4/vs\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lblc_expiration\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [21 x i8] c"ip_vs_lblc_scheduler\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 536, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"ip_vs_lblc_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 601, i32 33 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 537, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 356, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 375, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 394, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 488, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 514, i32 28 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 525, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 185, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 444, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 196, i32 46 }
@___asan_gen_.87 = private unnamed_addr constant [23 x i8] c"../include/net/ip_vs.h\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 200, i32 46 }
@___asan_gen_.89 = private unnamed_addr constant [14 x i8] c"vs_vars_table\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 118, i32 25 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 574, i32 28 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private constant [35 x i8] c"../net/netfilter/ipvs/ip_vs_lblc.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 120, i32 15 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_file596, ptr @__UNIQUE_ID_license597, ptr @__exitcall_ip_vs_lblc_cleanup, ptr @__initcall__kmod_ip_vs_lblc__595_628_ip_vs_lblc_init6, ptr @__ip_vs_lblc_schedule._entry, ptr @__ip_vs_lblc_schedule._entry_ptr, ptr @ip_vs_lblc_cleanup, ptr @ip_vs_lblc_done_svc._entry, ptr @ip_vs_lblc_done_svc._entry_ptr, ptr @ip_vs_lblc_init_svc._entry, ptr @ip_vs_lblc_init_svc._entry_ptr, ptr @ip_vs_lblc_schedule._entry, ptr @ip_vs_lblc_schedule._entry.10, ptr @ip_vs_lblc_schedule._entry_ptr, ptr @ip_vs_lblc_schedule._entry_ptr.12, ptr @ip_vs_lblc_scheduler, ptr @ip_vs_lblc_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ip_vs_lblc_init_svc.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @vs_vars_table, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_lblc_scheduler to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_lblc_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_lblc_init_svc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_lblc_init_svc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_lblc_done_svc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_lblc_schedule._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_lblc_schedule._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vs_vars_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ip_vs_lblc_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @unregister_ip_vs_scheduler(ptr noundef nonnull @ip_vs_lblc_scheduler) #9
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ip_vs_lblc_ops) #9
  tail call void @rcu_barrier() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_ip_vs_scheduler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_vs_lblc_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ip_vs_lblc_ops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_ip_vs_scheduler(ptr noundef nonnull @ip_vs_lblc_scheduler) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ip_vs_lblc_ops) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_vs_lblc_init_svc(ptr noundef %svc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4176) #12
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sched_data = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 17
  %1 = ptrtoint ptr %sched_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i, ptr %sched_data, align 8
  %call1 = tail call i32 @ip_vs_get_debug_level() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call1)
  %cmp2 = icmp sgt i32 %call1, 5
  br i1 %cmp2, label %do.end, label %if.end.do.end8_crit_edge

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 4176) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %if.end.do.end8_crit_edge
  %uglygep = getelementptr i8, ptr %call7.i, i32 8
  %2 = call ptr @memset(ptr %uglygep, i32 0, i32 4096)
  %max_size = getelementptr inbounds %struct.ip_vs_lblc_table, ptr %call7.i, i32 0, i32 5
  %3 = ptrtoint ptr %max_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 16384, ptr %max_size, align 8
  %rover = getelementptr inbounds %struct.ip_vs_lblc_table, ptr %call7.i, i32 0, i32 6
  %4 = ptrtoint ptr %rover to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rover, align 4
  %counter = getelementptr inbounds %struct.ip_vs_lblc_table, ptr %call7.i, i32 0, i32 7
  %5 = ptrtoint ptr %counter to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %counter, align 8
  %dead = getelementptr inbounds %struct.ip_vs_lblc_table, ptr %call7.i, i32 0, i32 8
  %6 = ptrtoint ptr %dead to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %dead, align 4
  %svc10 = getelementptr inbounds %struct.ip_vs_lblc_table, ptr %call7.i, i32 0, i32 3
  %7 = ptrtoint ptr %svc10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %svc, ptr %svc10, align 8
  %entries = getelementptr inbounds %struct.ip_vs_lblc_table, ptr %call7.i, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %entries, i32 noundef 4) #9
  %8 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %entries, align 4
  %periodic_timer = getelementptr inbounds %struct.ip_vs_lblc_table, ptr %call7.i, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %periodic_timer, ptr noundef nonnull @ip_vs_lblc_check_expire, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @ip_vs_lblc_init_svc.__key) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %9, 6000
  %call15 = tail call i32 @mod_timer(ptr noundef %periodic_timer, i32 noundef %add) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip_vs_lblc_done_svc(ptr noundef %svc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_data = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 17
  %0 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_data, align 8
  %periodic_timer = getelementptr inbounds %struct.ip_vs_lblc_table, ptr %1, i32 0, i32 2
  %call = tail call i32 @del_timer_sync(ptr noundef %periodic_timer) #9
  %2 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sched_data, align 8
  %sched_lock.i = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %sched_lock.i) #9
  %dead.i = getelementptr inbounds %struct.ip_vs_lblc_table, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %dead.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %dead.i, align 4
  %entries.i = getelementptr inbounds %struct.ip_vs_lblc_table, ptr %3, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc18.i.for.body.i_crit_edge, %entry
  %i.034.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc18.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ip_vs_lblc_table, ptr %3, i32 0, i32 1, i32 %i.034.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not32.i = icmp eq ptr %6, null
  br i1 %tobool3.not32.i, label %for.body.i.for.inc18.i_crit_edge, label %land.rhs.i.preheader

for.body.i.for.inc18.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc18.i

land.rhs.i.preheader:                             ; preds = %for.body.i
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %pprev2.i.i.i.i17 = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %pprev2.i.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pprev2.i.i.i.i17, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %8, ptr %10, align 4
  %tobool.not.i.i.i.i18 = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i.i18, label %land.rhs.i.preheader.for.inc18.loopexit.critedge.i_crit_edge, label %land.rhs.i.preheader.do.body13.i.i.i.i_crit_edge

land.rhs.i.preheader.do.body13.i.i.i.i_crit_edge: ; preds = %land.rhs.i.preheader
  br label %do.body13.i.i.i.i

land.rhs.i.preheader.for.inc18.loopexit.critedge.i_crit_edge: ; preds = %land.rhs.i.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc18.loopexit.critedge.i

do.body13.i.i.i.i:                                ; preds = %do.body13.i.i.i.i.do.body13.i.i.i.i_crit_edge, %land.rhs.i.preheader.do.body13.i.i.i.i_crit_edge
  %12 = phi ptr [ %20, %do.body13.i.i.i.i.do.body13.i.i.i.i_crit_edge ], [ %10, %land.rhs.i.preheader.do.body13.i.i.i.i_crit_edge ]
  %pprev2.i.i.i.i20 = phi ptr [ %pprev14.i.i.i.i, %do.body13.i.i.i.i.do.body13.i.i.i.i_crit_edge ], [ %pprev2.i.i.i.i17, %land.rhs.i.preheader.do.body13.i.i.i.i_crit_edge ]
  %13 = phi ptr [ %18, %do.body13.i.i.i.i.do.body13.i.i.i.i_crit_edge ], [ %8, %land.rhs.i.preheader.do.body13.i.i.i.i_crit_edge ]
  %en.033.i19 = phi ptr [ %13, %do.body13.i.i.i.i.do.body13.i.i.i.i_crit_edge ], [ %6, %land.rhs.i.preheader.do.body13.i.i.i.i_crit_edge ]
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %pprev14.i.i.i.i, align 4
  %15 = ptrtoint ptr %pprev2.i.i.i.i20 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i20, align 4
  %callback_head.i.c35.i = getelementptr inbounds %struct.ip_vs_lblc_entry, ptr %en.033.i19, i32 0, i32 5
  tail call void @call_rcu(ptr noundef %callback_head.i.c35.i, ptr noundef nonnull @ip_vs_lblc_rcu_free) #9
  %call.i.i.c36.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %entries.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %entries.i, i32 1, i32 3, i32 1) #9
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %entries.i, ptr %entries.i, i32 1, ptr elementtype(i32) %entries.i) #9, !srcloc !69
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %13, align 4
  %19 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pprev14.i.i.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %18, ptr %20, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.i.i, label %do.body13.i.i.i.i.for.inc18.loopexit.critedge.i_crit_edge, label %do.body13.i.i.i.i.do.body13.i.i.i.i_crit_edge

do.body13.i.i.i.i.do.body13.i.i.i.i_crit_edge:    ; preds = %do.body13.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body13.i.i.i.i

do.body13.i.i.i.i.for.inc18.loopexit.critedge.i_crit_edge: ; preds = %do.body13.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc18.loopexit.critedge.i

for.inc18.loopexit.critedge.i:                    ; preds = %do.body13.i.i.i.i.for.inc18.loopexit.critedge.i_crit_edge, %land.rhs.i.preheader.for.inc18.loopexit.critedge.i_crit_edge
  %en.033.i.lcssa = phi ptr [ %6, %land.rhs.i.preheader.for.inc18.loopexit.critedge.i_crit_edge ], [ %13, %do.body13.i.i.i.i.for.inc18.loopexit.critedge.i_crit_edge ]
  %pprev2.i.i.i.i.lcssa = phi ptr [ %pprev2.i.i.i.i17, %land.rhs.i.preheader.for.inc18.loopexit.critedge.i_crit_edge ], [ %pprev14.i.i.i.i, %do.body13.i.i.i.i.for.inc18.loopexit.critedge.i_crit_edge ]
  %22 = ptrtoint ptr %pprev2.i.i.i.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i.lcssa, align 4
  %callback_head.i.c.i = getelementptr inbounds %struct.ip_vs_lblc_entry, ptr %en.033.i.lcssa, i32 0, i32 5
  tail call void @call_rcu(ptr noundef %callback_head.i.c.i, ptr noundef nonnull @ip_vs_lblc_rcu_free) #9
  %call.i.i.c.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %entries.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %entries.i, i32 1, i32 3, i32 1) #9
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %entries.i, ptr %entries.i, i32 1, ptr elementtype(i32) %entries.i) #9, !srcloc !69
  br label %for.inc18.i

for.inc18.i:                                      ; preds = %for.inc18.loopexit.critedge.i, %for.body.i.for.inc18.i_crit_edge
  %inc.i = add nuw nsw i32 %i.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %ip_vs_lblc_flush.exit, label %for.inc18.i.for.body.i_crit_edge

for.inc18.i.for.body.i_crit_edge:                 ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

ip_vs_lblc_flush.exit:                            ; preds = %for.inc18.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %sched_lock.i) #9
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %ip_vs_lblc_flush.exit.if.end_crit_edge, label %do.end

ip_vs_lblc_flush.exit.if.end_crit_edge:           ; preds = %ip_vs_lblc_flush.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %ip_vs_lblc_flush.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kvfree_call_rcu(ptr noundef nonnull %1, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %ip_vs_lblc_flush.exit.if.end_crit_edge
  %call5 = tail call i32 @ip_vs_get_debug_level() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call5)
  %cmp = icmp sgt i32 %call5, 5
  br i1 %cmp, label %do.end9, label %if.end.do.end13_crit_edge

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4176) #13
  br label %do.end13

do.end13:                                         ; preds = %do.end9, %if.end.do.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ip_vs_lblc_schedule(ptr noundef %svc, ptr nocapture noundef readnone %skb, ptr noundef %iph) #2 align 64 {
entry:
  %ip_vs_dbg_buf.i = alloca [160 x i8], align 1
  %ip_vs_dbg_buf = alloca [160 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_data = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 17
  %0 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_data, align 8
  %call = tail call i32 @ip_vs_get_debug_level() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call)
  %cmp = icmp sgt i32 %call, 5
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %af = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 3
  %2 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %af, align 4
  %daddr = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7
  %4 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %daddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %cmp.i.i = icmp eq i16 %3, 10
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end4.ip_vs_lblc_hashkey.exit.i_crit_edge

do.end4.ip_vs_lblc_hashkey.exit.i_crit_edge:      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %ip_vs_lblc_hashkey.exit.i

if.then.i.i:                                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx1.i.i = getelementptr %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1.i.i, align 4
  %xor.i.i = xor i32 %7, %5
  %arrayidx2.i.i = getelementptr %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2.i.i, align 4
  %xor3.i.i = xor i32 %xor.i.i, %9
  %arrayidx4.i.i = getelementptr %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4.i.i, align 4
  %xor5.i.i = xor i32 %xor3.i.i, %11
  br label %ip_vs_lblc_hashkey.exit.i

ip_vs_lblc_hashkey.exit.i:                        ; preds = %if.then.i.i, %do.end4.ip_vs_lblc_hashkey.exit.i_crit_edge
  %addr_fold.0.i.i = phi i32 [ %xor5.i.i, %if.then.i.i ], [ %5, %do.end4.ip_vs_lblc_hashkey.exit.i_crit_edge ]
  %mul.i.i.i.i = mul i32 %addr_fold.0.i.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 22
  %call1.i = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %ip_vs_lblc_hashkey.exit.i.do.end.i_crit_edge

ip_vs_lblc_hashkey.exit.i.do.end.i_crit_edge:     ; preds = %ip_vs_lblc_hashkey.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %ip_vs_lblc_hashkey.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b43.i = load i1, ptr @ip_vs_lblc_get.__warned, align 1
  br i1 %.b43.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ip_vs_lblc_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 185, ptr noundef nonnull @.str.13) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %ip_vs_lblc_hashkey.exit.i.do.end.i_crit_edge
  %arrayidx.i = getelementptr %struct.ip_vs_lblc_table, ptr %1, i32 0, i32 1, i32 %shr.i.i.i
  %arrayidx6.i.i.i = getelementptr %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7, i32 0, i32 1
  %arrayidx11.i.i.i = getelementptr %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7, i32 0, i32 2
  %arrayidx17.i.i.i = getelementptr %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %en.0.i130 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool13.not.i131 = icmp eq ptr %en.0.i130, null
  br i1 %tobool13.not.i131, label %do.end.i.if.end17_crit_edge, label %for.body.i.lr.ph

do.end.i.if.end17_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

for.body.i.lr.ph:                                 ; preds = %do.end.i
  %13 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %daddr, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.backedge.i.for.body.i_crit_edge, %for.body.i.lr.ph
  %en.0.i132 = phi ptr [ %en.0.i130, %for.body.i.lr.ph ], [ %en.0.i, %for.cond.backedge.i.for.body.i_crit_edge ]
  %addr14.i = getelementptr inbounds %struct.ip_vs_lblc_entry, ptr %en.0.i132, i32 0, i32 2
  %15 = ptrtoint ptr %addr14.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr14.i, align 4
  br i1 %cmp.i.i, label %if.then.i46.i, label %ip_vs_addr_equal.exit.i

if.then.i46.i:                                    ; preds = %for.body.i
  %xor.i.i.i = xor i32 %14, %16
  %arrayidx4.i.i.i = getelementptr %struct.ip_vs_lblc_entry, ptr %en.0.i132, i32 0, i32 2, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx4.i.i.i, align 4
  %19 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx6.i.i.i, align 4
  %xor7.i.i.i = xor i32 %20, %18
  %or.i.i.i = or i32 %xor7.i.i.i, %xor.i.i.i
  %arrayidx9.i.i.i = getelementptr %struct.ip_vs_lblc_entry, ptr %en.0.i132, i32 0, i32 2, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx9.i.i.i, align 4
  %23 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx11.i.i.i, align 4
  %xor12.i.i.i = xor i32 %24, %22
  %or13.i.i.i = or i32 %or.i.i.i, %xor12.i.i.i
  %arrayidx15.i.i.i = getelementptr %struct.ip_vs_lblc_entry, ptr %en.0.i132, i32 0, i32 2, i32 0, i32 3
  %25 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx15.i.i.i, align 4
  %27 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx17.i.i.i, align 4
  %xor18.i.i.i = xor i32 %28, %26
  %or19.i.i.i = or i32 %or13.i.i.i, %xor18.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or19.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i46.i.if.then6_crit_edge, label %if.then.i46.i.for.cond.backedge.i_crit_edge

if.then.i46.i.for.cond.backedge.i_crit_edge:      ; preds = %if.then.i46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge.i

if.then.i46.i.if.then6_crit_edge:                 ; preds = %if.then.i46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

ip_vs_addr_equal.exit.i:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp1.i.i = icmp eq i32 %16, %14
  br i1 %cmp1.i.i, label %ip_vs_addr_equal.exit.i.if.then6_crit_edge, label %ip_vs_addr_equal.exit.i.for.cond.backedge.i_crit_edge

ip_vs_addr_equal.exit.i.for.cond.backedge.i_crit_edge: ; preds = %ip_vs_addr_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge.i

ip_vs_addr_equal.exit.i.if.then6_crit_edge:       ; preds = %ip_vs_addr_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

for.cond.backedge.i:                              ; preds = %ip_vs_addr_equal.exit.i.for.cond.backedge.i_crit_edge, %if.then.i46.i.for.cond.backedge.i_crit_edge
  %29 = ptrtoint ptr %en.0.i132 to i32
  call void @__asan_load4_noabort(i32 %29)
  %en.0.i = load volatile ptr, ptr %en.0.i132, align 4
  %tobool13.not.i = icmp eq ptr %en.0.i, null
  br i1 %tobool13.not.i, label %for.cond.backedge.i.if.end17_crit_edge, label %for.cond.backedge.i.for.body.i_crit_edge

for.cond.backedge.i.for.body.i_crit_edge:         ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.backedge.i.if.end17_crit_edge:           ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then6:                                         ; preds = %ip_vs_addr_equal.exit.i.if.then6_crit_edge, %if.then.i46.i.if.then6_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %lastuse = getelementptr inbounds %struct.ip_vs_lblc_entry, ptr %en.0.i132, i32 0, i32 4
  %31 = ptrtoint ptr %lastuse to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %lastuse, align 4
  %dest7 = getelementptr inbounds %struct.ip_vs_lblc_entry, ptr %en.0.i132, i32 0, i32 3
  %32 = ptrtoint ptr %dest7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dest7, align 4
  %flags = getelementptr inbounds %struct.ip_vs_dest, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags, align 4
  %and = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.then6.if.end17_crit_edge, label %land.lhs.true

if.then6.if.end17_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true:                                    ; preds = %if.then6
  %weight = getelementptr inbounds %struct.ip_vs_dest, ptr %33, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %weight, i32 noundef 4) #9
  %36 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %weight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp10 = icmp sgt i32 %37, 0
  br i1 %cmp10, label %land.lhs.true12, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true12:                                  ; preds = %land.lhs.true
  %activeconns.i = getelementptr inbounds %struct.ip_vs_dest, ptr %33, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %activeconns.i, i32 noundef 4) #9
  %38 = ptrtoint ptr %activeconns.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %activeconns.i, align 4
  %call.i.i37.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %weight, i32 noundef 4) #9
  %40 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %weight, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp.i = icmp sgt i32 %39, %41
  br i1 %cmp.i, label %if.then.i77, label %land.lhs.true12.do.body29_crit_edge

land.lhs.true12.do.body29_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29

if.then.i77:                                      ; preds = %land.lhs.true12
  %call2.i75 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i75)
  %tobool.not.i76 = icmp eq i32 %call2.i75, 0
  br i1 %tobool.not.i76, label %land.lhs.true.i78, label %if.then.i77.do.end.i79_crit_edge

if.then.i77.do.end.i79_crit_edge:                 ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i79

land.lhs.true.i78:                                ; preds = %if.then.i77
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i78.do.end.i79_crit_edge, label %land.lhs.true5.i

land.lhs.true.i78.do.end.i79_crit_edge:           ; preds = %land.lhs.true.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i79

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i78
  %.b36.i = load i1, ptr @is_overloaded.__warned, align 1
  br i1 %.b36.i, label %land.lhs.true5.i.do.end.i79_crit_edge, label %if.then7.i

land.lhs.true5.i.do.end.i79_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i79

if.then7.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @is_overloaded.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 466, ptr noundef nonnull @.str.13) #9
  br label %do.end.i79

do.end.i79:                                       ; preds = %if.then7.i, %land.lhs.true5.i.do.end.i79_crit_edge, %land.lhs.true.i78.do.end.i79_crit_edge, %if.then.i77.do.end.i79_crit_edge
  %destinations.i = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 12
  br label %for.cond.i80

for.cond.i80:                                     ; preds = %for.body.i81.for.cond.i80_crit_edge, %do.end.i79
  %d.0.in.i = phi ptr [ %destinations.i, %do.end.i79 ], [ %d.0.i, %for.body.i81.for.cond.i80_crit_edge ]
  %42 = ptrtoint ptr %d.0.in.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %d.0.i = load volatile ptr, ptr %d.0.in.i, align 8
  %cmp13.not.i = icmp eq ptr %d.0.i, %destinations.i
  br i1 %cmp13.not.i, label %for.cond.i80.do.body29_crit_edge, label %for.body.i81

for.cond.i80.do.body29_crit_edge:                 ; preds = %for.cond.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29

for.body.i81:                                     ; preds = %for.cond.i80
  %activeconns14.i = getelementptr inbounds %struct.ip_vs_dest, ptr %d.0.i, i32 0, i32 15
  %call.i.i38.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %activeconns14.i, i32 noundef 4) #9
  %43 = ptrtoint ptr %activeconns14.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %activeconns14.i, align 4
  %mul.i = shl i32 %44, 1
  %weight16.i = getelementptr inbounds %struct.ip_vs_dest, ptr %d.0.i, i32 0, i32 7
  %call.i.i39.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %weight16.i, i32 noundef 4) #9
  %45 = ptrtoint ptr %weight16.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %weight16.i, align 4
  %cmp18.i = icmp slt i32 %mul.i, %46
  br i1 %cmp18.i, label %for.body.i81.if.end17_crit_edge, label %for.body.i81.for.cond.i80_crit_edge

for.body.i81.for.cond.i80_crit_edge:              ; preds = %for.body.i81
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i80

for.body.i81.if.end17_crit_edge:                  ; preds = %for.body.i81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end17:                                         ; preds = %for.body.i81.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %if.then6.if.end17_crit_edge, %for.cond.backedge.i.if.end17_crit_edge, %do.end.i.if.end17_crit_edge
  %call.i = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i82 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i82, label %land.lhs.true.i84, label %if.end17.do.end.i87_crit_edge

if.end17.do.end.i87_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i87

land.lhs.true.i84:                                ; preds = %if.end17
  %call1.i83 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i83)
  %tobool2.not.i = icmp eq i32 %call1.i83, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i84.do.end.i87_crit_edge, label %land.lhs.true3.i

land.lhs.true.i84.do.end.i87_crit_edge:           ; preds = %land.lhs.true.i84
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i87

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i84
  %.b116.i = load i1, ptr @__ip_vs_lblc_schedule.__warned, align 1
  br i1 %.b116.i, label %land.lhs.true3.i.do.end.i87_crit_edge, label %if.then.i85

land.lhs.true3.i.do.end.i87_crit_edge:            ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i87

if.then.i85:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__ip_vs_lblc_schedule.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 417, ptr noundef nonnull @.str.13) #9
  br label %do.end.i87

do.end.i87:                                       ; preds = %if.then.i85, %land.lhs.true3.i.do.end.i87_crit_edge, %land.lhs.true.i84.do.end.i87_crit_edge, %if.end17.do.end.i87_crit_edge
  %destinations.i86 = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 12
  %47 = ptrtoint ptr %destinations.i86 to i32
  call void @__asan_load4_noabort(i32 %47)
  %dest.0131.i = load volatile ptr, ptr %destinations.i86, align 8
  %cmp.not132.i = icmp eq ptr %dest.0131.i, %destinations.i86
  br i1 %cmp.not132.i, label %do.end.i87.if.then20_crit_edge, label %do.end.i87.for.body.i88_crit_edge

do.end.i87.for.body.i88_crit_edge:                ; preds = %do.end.i87
  br label %for.body.i88

do.end.i87.if.then20_crit_edge:                   ; preds = %do.end.i87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

for.body.i88:                                     ; preds = %for.inc.i.for.body.i88_crit_edge, %do.end.i87.for.body.i88_crit_edge
  %dest.0133.i = phi ptr [ %dest.0.i, %for.inc.i.for.body.i88_crit_edge ], [ %dest.0131.i, %do.end.i87.for.body.i88_crit_edge ]
  %flags.i = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.0133.i, i32 0, i32 5
  %48 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %flags.i, align 4
  %and.i = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %for.body.i88.for.inc.i_crit_edge

for.body.i88.for.inc.i_crit_edge:                 ; preds = %for.body.i88
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end12.i:                                       ; preds = %for.body.i88
  %weight.i89 = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.0133.i, i32 0, i32 7
  %call.i.i.i90 = tail call zeroext i1 @__kasan_check_read(ptr noundef %weight.i89, i32 noundef 4) #9
  %50 = ptrtoint ptr %weight.i89 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %weight.i89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp14.i = icmp sgt i32 %51, 0
  br i1 %cmp14.i, label %if.then15.i, label %if.end12.i.for.inc.i_crit_edge

if.end12.i.for.inc.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then15.i:                                      ; preds = %if.end12.i
  %activeconns.i.i = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.0133.i, i32 0, i32 15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %activeconns.i.i, i32 noundef 4) #9
  %52 = ptrtoint ptr %activeconns.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %activeconns.i.i, align 4
  %shl.i.i = shl i32 %53, 8
  %inactconns.i.i = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.0133.i, i32 0, i32 16
  %call.i.i3.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %inactconns.i.i, i32 noundef 4) #9
  %54 = ptrtoint ptr %inactconns.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %inactconns.i.i, align 4
  %add.i.i = add i32 %55, %shl.i.i
  %56 = ptrtoint ptr %dest.0133.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %dest.1134.i = load volatile ptr, ptr %dest.0133.i, align 8
  %cmp39.not135.i = icmp eq ptr %dest.1134.i, %destinations.i86
  br i1 %cmp39.not135.i, label %if.then15.i.do.body70.i_crit_edge, label %if.then15.i.for.body40.i_crit_edge

if.then15.i.for.body40.i_crit_edge:               ; preds = %if.then15.i
  br label %for.body40.i

if.then15.i.do.body70.i_crit_edge:                ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body70.i

for.inc.i:                                        ; preds = %if.end12.i.for.inc.i_crit_edge, %for.body.i88.for.inc.i_crit_edge
  %57 = ptrtoint ptr %dest.0133.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %dest.0.i = load volatile ptr, ptr %dest.0133.i, align 8
  %cmp.not.i = icmp eq ptr %dest.0.i, %destinations.i86
  br i1 %cmp.not.i, label %for.inc.i.if.then20_crit_edge, label %for.inc.i.for.body.i88_crit_edge

for.inc.i.for.body.i88_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i88

for.inc.i.if.then20_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

for.body40.i:                                     ; preds = %for.inc59.i.for.body40.i_crit_edge, %if.then15.i.for.body40.i_crit_edge
  %dest.1138.i = phi ptr [ %dest.1.i, %for.inc59.i.for.body40.i_crit_edge ], [ %dest.1134.i, %if.then15.i.for.body40.i_crit_edge ]
  %least.0137.i = phi ptr [ %least.1.i, %for.inc59.i.for.body40.i_crit_edge ], [ %dest.0133.i, %if.then15.i.for.body40.i_crit_edge ]
  %loh.0136.i = phi i32 [ %loh.1.i, %for.inc59.i.for.body40.i_crit_edge ], [ %add.i.i, %if.then15.i.for.body40.i_crit_edge ]
  %flags41.i = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.1138.i, i32 0, i32 5
  %58 = ptrtoint ptr %flags41.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %flags41.i, align 4
  %and42.i = and i32 %59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %if.end45.i, label %for.body40.i.for.inc59.i_crit_edge

for.body40.i.for.inc59.i_crit_edge:               ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc59.i

if.end45.i:                                       ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #11
  %activeconns.i122.i = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.1138.i, i32 0, i32 15
  %call.i.i.i123.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %activeconns.i122.i, i32 noundef 4) #9
  %60 = ptrtoint ptr %activeconns.i122.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %activeconns.i122.i, align 4
  %shl.i124.i = shl i32 %61, 8
  %inactconns.i125.i = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.1138.i, i32 0, i32 16
  %call.i.i3.i126.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %inactconns.i125.i, i32 noundef 4) #9
  %62 = ptrtoint ptr %inactconns.i125.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %inactconns.i125.i, align 4
  %add.i127.i = add i32 %63, %shl.i124.i
  %conv.i = sext i32 %loh.0136.i to i64
  %weight47.i = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.1138.i, i32 0, i32 7
  %call.i.i118.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %weight47.i, i32 noundef 4) #9
  %64 = ptrtoint ptr %weight47.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %weight47.i, align 4
  %conv49.i = sext i32 %65 to i64
  %mul.i91 = mul nsw i64 %conv49.i, %conv.i
  %conv50.i = sext i32 %add.i127.i to i64
  %weight51.i = getelementptr inbounds %struct.ip_vs_dest, ptr %least.0137.i, i32 0, i32 7
  %call.i.i119.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %weight51.i, i32 noundef 4) #9
  %66 = ptrtoint ptr %weight51.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %weight51.i, align 4
  %conv53.i = sext i32 %67 to i64
  %mul54.i = mul nsw i64 %conv53.i, %conv50.i
  call void @__sanitizer_cov_trace_cmp8(i64 %mul.i91, i64 %mul54.i)
  %cmp55.i = icmp sgt i64 %mul.i91, %mul54.i
  %spec.select.i = select i1 %cmp55.i, i32 %add.i127.i, i32 %loh.0136.i
  %spec.select117.i = select i1 %cmp55.i, ptr %dest.1138.i, ptr %least.0137.i
  br label %for.inc59.i

for.inc59.i:                                      ; preds = %if.end45.i, %for.body40.i.for.inc59.i_crit_edge
  %loh.1.i = phi i32 [ %loh.0136.i, %for.body40.i.for.inc59.i_crit_edge ], [ %spec.select.i, %if.end45.i ]
  %least.1.i = phi ptr [ %least.0137.i, %for.body40.i.for.inc59.i_crit_edge ], [ %spec.select117.i, %if.end45.i ]
  %68 = ptrtoint ptr %dest.1138.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %dest.1.i = load volatile ptr, ptr %dest.1138.i, align 8
  %cmp39.not.i = icmp eq ptr %dest.1.i, %destinations.i86
  br i1 %cmp39.not.i, label %for.inc59.i.do.body70.i_crit_edge, label %for.inc59.i.for.body40.i_crit_edge

for.inc59.i.for.body40.i_crit_edge:               ; preds = %for.inc59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body40.i

for.inc59.i.do.body70.i_crit_edge:                ; preds = %for.inc59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body70.i

do.body70.i:                                      ; preds = %for.inc59.i.do.body70.i_crit_edge, %if.then15.i.do.body70.i_crit_edge
  %loh.0.lcssa.i = phi i32 [ %add.i.i, %if.then15.i.do.body70.i_crit_edge ], [ %loh.1.i, %for.inc59.i.do.body70.i_crit_edge ]
  %least.0.lcssa.i = phi ptr [ %dest.0133.i, %if.then15.i.do.body70.i_crit_edge ], [ %least.1.i, %for.inc59.i.do.body70.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf.i) #9
  %69 = call ptr @memset(ptr %ip_vs_dbg_buf.i, i32 255, i32 160)
  %call71.i = tail call i32 @ip_vs_get_debug_level() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call71.i)
  %cmp72.i = icmp sgt i32 %call71.i, 5
  br i1 %cmp72.i, label %do.end77.i, label %do.body70.i.__ip_vs_lblc_schedule.exit_crit_edge

do.body70.i.__ip_vs_lblc_schedule.exit_crit_edge: ; preds = %do.body70.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ip_vs_lblc_schedule.exit

do.end77.i:                                       ; preds = %do.body70.i
  %af.i = getelementptr inbounds %struct.ip_vs_dest, ptr %least.0.lcssa.i, i32 0, i32 2
  %70 = ptrtoint ptr %af.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %af.i, align 8
  %addr.i = getelementptr inbounds %struct.ip_vs_dest, ptr %least.0.lcssa.i, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %71)
  %cmp.i.i92 = icmp eq i16 %71, 10
  %.str.16..str.17.i.i = select i1 %cmp.i.i92, ptr @.str.16, ptr @.str.17
  %call3.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf.i, i32 noundef 160, ptr noundef nonnull %.str.16..str.17.i.i, ptr noundef %addr.i) #9
  %72 = add i32 %call3.i.i, -161
  call void @__sanitizer_cov_trace_const_cmp4(i32 -162, i32 %72)
  %cmp7.i.i = icmp ult i32 %72, -162
  br i1 %cmp7.i.i, label %do.body10.i.i, label %ip_vs_dbg_addr.exit.i, !prof !70

do.body10.i.i:                                    ; preds = %do.end77.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #9, !srcloc !71
  unreachable

ip_vs_dbg_addr.exit.i:                            ; preds = %do.end77.i
  call void @__sanitizer_cov_trace_pc() #11
  %port.i = getelementptr inbounds %struct.ip_vs_dest, ptr %least.0.lcssa.i, i32 0, i32 3
  %73 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %port.i, align 2
  %conv81.i = zext i16 %74 to i32
  %activeconns.i93 = getelementptr inbounds %struct.ip_vs_dest, ptr %least.0.lcssa.i, i32 0, i32 15
  %call.i.i120.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %activeconns.i93, i32 noundef 4) #9
  %75 = ptrtoint ptr %activeconns.i93 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %activeconns.i93, align 4
  %refcnt.i = getelementptr inbounds %struct.ip_vs_dest, ptr %least.0.lcssa.i, i32 0, i32 12
  %call.i.i.i128.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #9
  %77 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %refcnt.i, align 4
  %weight84.i = getelementptr inbounds %struct.ip_vs_dest, ptr %least.0.lcssa.i, i32 0, i32 7
  %call.i.i121.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %weight84.i, i32 noundef 4) #9
  %79 = ptrtoint ptr %weight84.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %weight84.i, align 4
  %call86.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull %ip_vs_dbg_buf.i, i32 noundef %conv81.i, i32 noundef %76, i32 noundef %78, i32 noundef %80, i32 noundef %loh.0.lcssa.i) #13
  br label %__ip_vs_lblc_schedule.exit

__ip_vs_lblc_schedule.exit:                       ; preds = %ip_vs_dbg_addr.exit.i, %do.body70.i.__ip_vs_lblc_schedule.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf.i) #9
  %tobool19.not = icmp eq ptr %least.0.lcssa.i, null
  br i1 %tobool19.not, label %__ip_vs_lblc_schedule.exit.if.then20_crit_edge, label %if.end21

__ip_vs_lblc_schedule.exit.if.then20_crit_edge:   ; preds = %__ip_vs_lblc_schedule.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

if.then20:                                        ; preds = %__ip_vs_lblc_schedule.exit.if.then20_crit_edge, %for.inc.i.if.then20_crit_edge, %do.end.i87.if.then20_crit_edge
  call void @ip_vs_scheduler_err(ptr noundef %svc, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end21:                                         ; preds = %__ip_vs_lblc_schedule.exit
  %sched_lock = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 16
  call void @_raw_spin_lock_bh(ptr noundef %sched_lock) #9
  %dead = getelementptr inbounds %struct.ip_vs_lblc_table, ptr %1, i32 0, i32 8
  %81 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %dead, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool22.not = icmp eq i8 %82, 0
  br i1 %tobool22.not, label %if.then23, label %if.end21.if.end27_crit_edge

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then23:                                        ; preds = %if.end21
  %83 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %af, align 4
  %conv.i94 = zext i16 %84 to i32
  %85 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %daddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %84)
  %cmp.i.i.i95 = icmp eq i16 %84, 10
  br i1 %cmp.i.i.i95, label %if.then.i.i.i, label %if.then23.ip_vs_lblc_hashkey.exit.i.i_crit_edge

if.then23.ip_vs_lblc_hashkey.exit.i.i_crit_edge:  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %ip_vs_lblc_hashkey.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %87 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx6.i.i.i, align 4
  %xor.i.i.i96 = xor i32 %88, %86
  %89 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx11.i.i.i, align 4
  %xor3.i.i.i = xor i32 %xor.i.i.i96, %90
  %91 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx17.i.i.i, align 4
  %xor5.i.i.i = xor i32 %xor3.i.i.i, %92
  br label %ip_vs_lblc_hashkey.exit.i.i

ip_vs_lblc_hashkey.exit.i.i:                      ; preds = %if.then.i.i.i, %if.then23.ip_vs_lblc_hashkey.exit.i.i_crit_edge
  %addr_fold.0.i.i.i = phi i32 [ %xor5.i.i.i, %if.then.i.i.i ], [ %86, %if.then23.ip_vs_lblc_hashkey.exit.i.i_crit_edge ]
  %mul.i.i.i.i.i = mul i32 %addr_fold.0.i.i.i, 1640531527
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i.i, 22
  %call1.i.i = call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %ip_vs_lblc_hashkey.exit.i.i.do.end.i.i_crit_edge

ip_vs_lblc_hashkey.exit.i.i.do.end.i.i_crit_edge: ; preds = %ip_vs_lblc_hashkey.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %ip_vs_lblc_hashkey.exit.i.i
  %call2.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b43.i.i = load i1, ptr @ip_vs_lblc_get.__warned, align 1
  br i1 %.b43.i.i, label %land.lhs.true4.i.i.do.end.i.i_crit_edge, label %if.then.i.i98

land.lhs.true4.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

if.then.i.i98:                                    ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ip_vs_lblc_get.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 185, ptr noundef nonnull @.str.13) #9
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i98, %land.lhs.true4.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %ip_vs_lblc_hashkey.exit.i.i.do.end.i.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.ip_vs_lblc_table, ptr %1, i32 0, i32 1, i32 %shr.i.i.i.i
  %93 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %en.0.i16.i = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool13.not.i17.i = icmp eq ptr %en.0.i16.i, null
  br i1 %tobool13.not.i17.i, label %do.end.i.i.if.end4.i_crit_edge, label %for.body.i.lr.ph.i

do.end.i.i.if.end4.i_crit_edge:                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

for.body.i.lr.ph.i:                               ; preds = %do.end.i.i
  %94 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %daddr, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.backedge.i.i.for.body.i.i_crit_edge, %for.body.i.lr.ph.i
  %en.0.i18.i = phi ptr [ %en.0.i16.i, %for.body.i.lr.ph.i ], [ %en.0.i.i, %for.cond.backedge.i.i.for.body.i.i_crit_edge ]
  %addr14.i.i = getelementptr inbounds %struct.ip_vs_lblc_entry, ptr %en.0.i18.i, i32 0, i32 2
  %96 = ptrtoint ptr %addr14.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %addr14.i.i, align 4
  br i1 %cmp.i.i.i95, label %if.then.i46.i.i, label %ip_vs_addr_equal.exit.i.i

if.then.i46.i.i:                                  ; preds = %for.body.i.i
  %xor.i.i.i.i = xor i32 %97, %95
  %arrayidx4.i.i.i.i = getelementptr %struct.ip_vs_lblc_entry, ptr %en.0.i18.i, i32 0, i32 2, i32 0, i32 1
  %98 = ptrtoint ptr %arrayidx4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx4.i.i.i.i, align 4
  %100 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx6.i.i.i, align 4
  %xor7.i.i.i.i = xor i32 %101, %99
  %or.i.i.i.i = or i32 %xor7.i.i.i.i, %xor.i.i.i.i
  %arrayidx9.i.i.i.i = getelementptr %struct.ip_vs_lblc_entry, ptr %en.0.i18.i, i32 0, i32 2, i32 0, i32 2
  %102 = ptrtoint ptr %arrayidx9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx9.i.i.i.i, align 4
  %104 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx11.i.i.i, align 4
  %xor12.i.i.i.i = xor i32 %105, %103
  %or13.i.i.i.i = or i32 %or.i.i.i.i, %xor12.i.i.i.i
  %arrayidx15.i.i.i.i = getelementptr %struct.ip_vs_lblc_entry, ptr %en.0.i18.i, i32 0, i32 2, i32 0, i32 3
  %106 = ptrtoint ptr %arrayidx15.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx15.i.i.i.i, align 4
  %108 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx17.i.i.i, align 4
  %xor18.i.i.i.i = xor i32 %109, %107
  %or19.i.i.i.i = or i32 %or13.i.i.i.i, %xor18.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %or19.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then.i46.i.i.if.then.i100_crit_edge, label %if.then.i46.i.i.for.cond.backedge.i.i_crit_edge

if.then.i46.i.i.for.cond.backedge.i.i_crit_edge:  ; preds = %if.then.i46.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge.i.i

if.then.i46.i.i.if.then.i100_crit_edge:           ; preds = %if.then.i46.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i100

ip_vs_addr_equal.exit.i.i:                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %95)
  %cmp1.i.i.i = icmp eq i32 %97, %95
  br i1 %cmp1.i.i.i, label %ip_vs_addr_equal.exit.i.i.if.then.i100_crit_edge, label %ip_vs_addr_equal.exit.i.i.for.cond.backedge.i.i_crit_edge

ip_vs_addr_equal.exit.i.i.for.cond.backedge.i.i_crit_edge: ; preds = %ip_vs_addr_equal.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge.i.i

ip_vs_addr_equal.exit.i.i.if.then.i100_crit_edge: ; preds = %ip_vs_addr_equal.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i100

for.cond.backedge.i.i:                            ; preds = %ip_vs_addr_equal.exit.i.i.for.cond.backedge.i.i_crit_edge, %if.then.i46.i.i.for.cond.backedge.i.i_crit_edge
  %110 = ptrtoint ptr %en.0.i18.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %en.0.i.i = load volatile ptr, ptr %en.0.i18.i, align 4
  %tobool13.not.i.i = icmp eq ptr %en.0.i.i, null
  br i1 %tobool13.not.i.i, label %for.cond.backedge.i.i.if.end4.i_crit_edge, label %for.cond.backedge.i.i.for.body.i.i_crit_edge

for.cond.backedge.i.i.for.body.i.i_crit_edge:     ; preds = %for.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.cond.backedge.i.i.if.end4.i_crit_edge:        ; preds = %for.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.then.i100:                                     ; preds = %ip_vs_addr_equal.exit.i.i.if.then.i100_crit_edge, %if.then.i46.i.i.if.then.i100_crit_edge
  %dest1.i = getelementptr inbounds %struct.ip_vs_lblc_entry, ptr %en.0.i18.i, i32 0, i32 3
  %111 = ptrtoint ptr %dest1.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dest1.i, align 4
  %cmp.i99 = icmp eq ptr %112, %least.0.lcssa.i
  br i1 %cmp.i99, label %if.then.i100.if.end27_crit_edge, label %if.end.i

if.then.i100.if.end27_crit_edge:                  ; preds = %if.then.i100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end.i:                                         ; preds = %if.then.i100
  %113 = ptrtoint ptr %en.0.i18.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %en.0.i18.i, align 4
  %pprev2.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %en.0.i18.i, i32 0, i32 1
  %115 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pprev2.i.i.i.i, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %114, ptr %116, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %114, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.ip_vs_lblc_del.exit.i_crit_edge, label %do.body13.i.i.i.i

if.end.i.ip_vs_lblc_del.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ip_vs_lblc_del.exit.i

do.body13.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %114, i32 0, i32 1
  %118 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %116, ptr %pprev14.i.i.i.i, align 4
  br label %ip_vs_lblc_del.exit.i

ip_vs_lblc_del.exit.i:                            ; preds = %do.body13.i.i.i.i, %if.end.i.ip_vs_lblc_del.exit.i_crit_edge
  %119 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i, align 4
  %callback_head.i.i = getelementptr inbounds %struct.ip_vs_lblc_entry, ptr %en.0.i18.i, i32 0, i32 5
  call void @call_rcu(ptr noundef %callback_head.i.i, ptr noundef nonnull @ip_vs_lblc_rcu_free) #9
  br label %if.end4.i

if.end4.i:                                        ; preds = %ip_vs_lblc_del.exit.i, %for.cond.backedge.i.i.if.end4.i_crit_edge, %do.end.i.i.if.end4.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %120 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %120, i32 noundef 2592, i32 noundef 44) #12
  %tobool6.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not.i, label %if.end4.i.if.end27_crit_edge, label %if.end8.i

if.end4.i.if.end27_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end8.i:                                        ; preds = %if.end4.i
  %af10.i = getelementptr inbounds %struct.ip_vs_lblc_entry, ptr %call7.i.i, i32 0, i32 1
  %121 = ptrtoint ptr %af10.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %conv.i94, ptr %af10.i, align 8
  %addr.i101 = getelementptr inbounds %struct.ip_vs_lblc_entry, ptr %call7.i.i, i32 0, i32 2
  br i1 %cmp.i.i.i95, label %if.then.i1.i, label %if.else.i.i

if.then.i1.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %122 = call ptr @memcpy(ptr %addr.i101, ptr %daddr, i32 16)
  br label %ip_vs_addr_copy.exit.i

if.else.i.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %123 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %daddr, align 4
  %125 = ptrtoint ptr %addr.i101 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %addr.i101, align 4
  br label %ip_vs_addr_copy.exit.i

ip_vs_addr_copy.exit.i:                           ; preds = %if.else.i.i, %if.then.i1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %126 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i = getelementptr inbounds %struct.ip_vs_lblc_entry, ptr %call7.i.i, i32 0, i32 4
  %127 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %lastuse.i, align 8
  %refcnt.i.i = getelementptr inbounds %struct.ip_vs_dest, ptr %least.0.lcssa.i, i32 0, i32 12
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #9
  %128 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %128, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %ip_vs_addr_copy.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !70

ip_vs_addr_copy.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %ip_vs_addr_copy.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %ip_vs_addr_copy.exit.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %129 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %129)
  %.not.i.i.i.i.i = icmp sgt i32 %129, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.ip_vs_dest_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !74

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.ip_vs_dest_hold.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ip_vs_dest_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %ip_vs_addr_copy.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %ip_vs_addr_copy.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %ip_vs_dest_hold.exit.i

ip_vs_dest_hold.exit.i:                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.ip_vs_dest_hold.exit.i_crit_edge
  %dest12.i = getelementptr inbounds %struct.ip_vs_lblc_entry, ptr %call7.i.i, i32 0, i32 3
  %130 = ptrtoint ptr %dest12.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %least.0.lcssa.i, ptr %dest12.i, align 4
  %131 = ptrtoint ptr %af10.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %af10.i, align 8
  %133 = ptrtoint ptr %addr.i101 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %addr.i101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %132)
  %cmp.i.i2.i = icmp eq i32 %132, 10
  br i1 %cmp.i.i2.i, label %if.then.i.i9.i, label %ip_vs_dest_hold.exit.i.ip_vs_lblc_hashkey.exit.i14.i_crit_edge

ip_vs_dest_hold.exit.i.ip_vs_lblc_hashkey.exit.i14.i_crit_edge: ; preds = %ip_vs_dest_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ip_vs_lblc_hashkey.exit.i14.i

if.then.i.i9.i:                                   ; preds = %ip_vs_dest_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx1.i.i3.i = getelementptr %struct.ip_vs_lblc_entry, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %135 = ptrtoint ptr %arrayidx1.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx1.i.i3.i, align 8
  %xor.i.i4.i = xor i32 %136, %134
  %arrayidx2.i.i5.i = getelementptr %struct.ip_vs_lblc_entry, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %137 = ptrtoint ptr %arrayidx2.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx2.i.i5.i, align 4
  %xor3.i.i6.i = xor i32 %xor.i.i4.i, %138
  %arrayidx4.i.i7.i = getelementptr %struct.ip_vs_lblc_entry, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 3
  %139 = ptrtoint ptr %arrayidx4.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx4.i.i7.i, align 8
  %xor5.i.i8.i = xor i32 %xor3.i.i6.i, %140
  br label %ip_vs_lblc_hashkey.exit.i14.i

ip_vs_lblc_hashkey.exit.i14.i:                    ; preds = %if.then.i.i9.i, %ip_vs_dest_hold.exit.i.ip_vs_lblc_hashkey.exit.i14.i_crit_edge
  %addr_fold.0.i.i10.i = phi i32 [ %xor5.i.i8.i, %if.then.i.i9.i ], [ %134, %ip_vs_dest_hold.exit.i.ip_vs_lblc_hashkey.exit.i14.i_crit_edge ]
  %mul.i.i.i.i11.i = mul i32 %addr_fold.0.i.i10.i, 1640531527
  %shr.i.i.i12.i = lshr i32 %mul.i.i.i.i11.i, 22
  %arrayidx.i13.i = getelementptr %struct.ip_vs_lblc_table, ptr %1, i32 0, i32 1, i32 %shr.i.i.i12.i
  %141 = ptrtoint ptr %arrayidx.i13.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx.i13.i, align 4
  %143 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %142, ptr %call7.i.i, align 8
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %144 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %arrayidx.i13.i, ptr %pprev.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  %145 = ptrtoint ptr %arrayidx.i13.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile ptr %call7.i.i, ptr %arrayidx.i13.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %142, null
  br i1 %tobool.not.i.i.i, label %ip_vs_lblc_hashkey.exit.i14.i.ip_vs_lblc_hash.exit.i_crit_edge, label %do.body49.i.i.i

ip_vs_lblc_hashkey.exit.i14.i.ip_vs_lblc_hash.exit.i_crit_edge: ; preds = %ip_vs_lblc_hashkey.exit.i14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ip_vs_lblc_hash.exit.i

do.body49.i.i.i:                                  ; preds = %ip_vs_lblc_hashkey.exit.i14.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev51.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %142, i32 0, i32 1
  %146 = ptrtoint ptr %pprev51.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %call7.i.i, ptr %pprev51.i.i.i, align 4
  br label %ip_vs_lblc_hash.exit.i

ip_vs_lblc_hash.exit.i:                           ; preds = %do.body49.i.i.i, %ip_vs_lblc_hashkey.exit.i14.i.ip_vs_lblc_hash.exit.i_crit_edge
  %entries.i.i = getelementptr inbounds %struct.ip_vs_lblc_table, ptr %1, i32 0, i32 4
  %call.i.i.i.i102 = call zeroext i1 @__kasan_check_write(ptr noundef %entries.i.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %entries.i.i, i32 1, i32 3, i32 1) #9
  %147 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %entries.i.i, ptr %entries.i.i, i32 1, ptr elementtype(i32) %entries.i.i) #9, !srcloc !76
  br label %if.end27

if.end27:                                         ; preds = %ip_vs_lblc_hash.exit.i, %if.end4.i.if.end27_crit_edge, %if.then.i100.if.end27_crit_edge, %if.end21.if.end27_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %sched_lock) #9
  br label %do.body29

do.body29:                                        ; preds = %if.end27, %for.cond.i80.do.body29_crit_edge, %land.lhs.true12.do.body29_crit_edge
  %dest.0 = phi ptr [ %least.0.lcssa.i, %if.end27 ], [ %33, %land.lhs.true12.do.body29_crit_edge ], [ %33, %for.cond.i80.do.body29_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #9
  %148 = call ptr @memset(ptr %ip_vs_dbg_buf, i32 255, i32 160)
  %call30 = call i32 @ip_vs_get_debug_level() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call30)
  %cmp31 = icmp sgt i32 %call30, 5
  br i1 %cmp31, label %do.end36, label %do.body29.if.end48_crit_edge

do.body29.if.end48_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

do.end36:                                         ; preds = %do.body29
  %149 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %af, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %150)
  %cmp.i103 = icmp eq i16 %150, 10
  %.str.16..str.17.i = select i1 %cmp.i103, ptr @.str.16, ptr @.str.17
  %call3.i105 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef 160, ptr noundef nonnull %.str.16..str.17.i, ptr noundef %daddr) #9
  %len.0.i = add i32 %call3.i105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i)
  %cmp7.i = icmp ugt i32 %len.0.i, 161
  br i1 %cmp7.i, label %do.body10.i, label %ip_vs_dbg_addr.exit, !prof !70

do.body10.i:                                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #9, !srcloc !71
  unreachable

ip_vs_dbg_addr.exit:                              ; preds = %do.end36
  %af42 = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.0, i32 0, i32 2
  %151 = ptrtoint ptr %af42 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %af42, align 8
  %addr = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.0, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %152)
  %cmp.i106 = icmp eq i16 %152, 10
  %arrayidx.i107 = getelementptr i8, ptr %ip_vs_dbg_buf, i32 %len.0.i
  %sub.i108 = sub nsw i32 159, %call3.i105
  %.str.16..str.17.i109 = select i1 %cmp.i106, ptr @.str.16, ptr @.str.17
  %call3.i110 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i107, i32 noundef %sub.i108, ptr noundef nonnull %.str.16..str.17.i109, ptr noundef %addr) #9
  %len.0.i111 = add nsw i32 %call3.i105, 2
  %add5.i112 = add i32 %len.0.i111, %call3.i110
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i112)
  %cmp7.i113 = icmp ugt i32 %add5.i112, 161
  br i1 %cmp7.i113, label %do.body10.i114, label %ip_vs_dbg_addr.exit116, !prof !70

do.body10.i114:                                   ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #9, !srcloc !71
  unreachable

ip_vs_dbg_addr.exit116:                           ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  %port = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.0, i32 0, i32 3
  %153 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %port, align 2
  %conv46 = zext i16 %154 to i32
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %ip_vs_dbg_buf, ptr noundef %arrayidx.i107, i32 noundef %conv46) #13
  br label %if.end48

if.end48:                                         ; preds = %ip_vs_dbg_addr.exit116, %do.body29.if.end48_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then20
  %retval.0 = phi ptr [ %dest.0, %if.end48 ], [ null, %if.then20 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_get_debug_level() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip_vs_lblc_check_expire(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %svc1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %svc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %svc1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %counter = getelementptr i8, ptr %t, i32 64
  %3 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %counter, align 4
  %rem = srem i32 %4, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %sched_data.i = getelementptr inbounds %struct.ip_vs_service, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %sched_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sched_data.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %rover.i = getelementptr inbounds %struct.ip_vs_lblc_table, ptr %6, i32 0, i32 6
  %8 = ptrtoint ptr %rover.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rover.i, align 4
  %sched_lock.i = getelementptr inbounds %struct.ip_vs_service, ptr %1, i32 0, i32 16
  %ipvs.i.i = getelementptr inbounds %struct.ip_vs_service, ptr %1, i32 0, i32 11
  %entries.i = getelementptr inbounds %struct.ip_vs_lblc_table, ptr %6, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %if.then
  %i.044.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.end.i.for.body.i_crit_edge ]
  %j.043.i = phi i32 [ %9, %if.then ], [ %and.i, %for.end.i.for.body.i_crit_edge ]
  %add.i = add i32 %j.043.i, 1
  %and.i = and i32 %add.i, 1023
  tail call void @_raw_spin_lock(ptr noundef %sched_lock.i) #9
  %arrayidx.i = getelementptr %struct.ip_vs_lblc_table, ptr %6, i32 0, i32 1, i32 %and.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not41.i = icmp eq ptr %11, null
  br i1 %tobool3.not41.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.land.rhs.i_crit_edge

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  br label %land.rhs.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %for.body.i.land.rhs.i_crit_edge
  %en.042.i = phi ptr [ %13, %for.inc.i.land.rhs.i_crit_edge ], [ %11, %for.body.i.land.rhs.i_crit_edge ]
  %12 = ptrtoint ptr %en.042.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %en.042.i, align 4
  %lastuse.i = getelementptr inbounds %struct.ip_vs_lblc_entry, ptr %en.042.i, i32 0, i32 4
  %14 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lastuse.i, align 4
  %16 = ptrtoint ptr %ipvs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ipvs.i.i, align 4
  %sysctl_lblc_expiration.i.i = getelementptr inbounds %struct.netns_ipvs, ptr %17, i32 0, i32 56
  %18 = ptrtoint ptr %sysctl_lblc_expiration.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sysctl_lblc_expiration.i.i, align 4
  %20 = add i32 %15, %19
  %sub.i = sub i32 %7, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp9.i = icmp slt i32 %sub.i, 0
  br i1 %cmp9.i, label %land.rhs.i.for.inc.i_crit_edge, label %if.end.i

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %land.rhs.i
  %pprev2.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %en.042.i, i32 0, i32 1
  %21 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pprev2.i.i.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %13, ptr %22, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.ip_vs_lblc_del.exit.i_crit_edge, label %do.body13.i.i.i.i

if.end.i.ip_vs_lblc_del.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ip_vs_lblc_del.exit.i

do.body13.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  %24 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %pprev14.i.i.i.i, align 4
  br label %ip_vs_lblc_del.exit.i

ip_vs_lblc_del.exit.i:                            ; preds = %do.body13.i.i.i.i, %if.end.i.ip_vs_lblc_del.exit.i_crit_edge
  %25 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i, align 4
  %callback_head.i.i = getelementptr inbounds %struct.ip_vs_lblc_entry, ptr %en.042.i, i32 0, i32 5
  tail call void @call_rcu(ptr noundef %callback_head.i.i, ptr noundef nonnull @ip_vs_lblc_rcu_free) #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %entries.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %entries.i, i32 1, i32 3, i32 1) #9
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %entries.i, ptr %entries.i, i32 1, ptr elementtype(i32) %entries.i) #9, !srcloc !69
  br label %for.inc.i

for.inc.i:                                        ; preds = %ip_vs_lblc_del.exit.i, %land.rhs.i.for.inc.i_crit_edge
  %tobool3.not.i = icmp eq ptr %13, null
  br i1 %tobool3.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sched_lock.i) #9
  %inc.i = add nuw nsw i32 %i.044.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %ip_vs_lblc_full_check.exit, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

ip_vs_lblc_full_check.exit:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %rover.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and.i, ptr %rover.i, align 4
  %28 = ptrtoint ptr %counter to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %counter, align 4
  br label %out

if.end:                                           ; preds = %entry
  %entries = getelementptr i8, ptr %t, i32 52
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %entries, i32 noundef 4) #9
  %29 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %entries, align 4
  %max_size = getelementptr i8, ptr %t, i32 56
  %31 = ptrtoint ptr %max_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp3.not = icmp sgt i32 %30, %32
  br i1 %cmp3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %counter, align 4
  %inc = add i32 %34, 1
  store i32 %inc, ptr %counter, align 4
  br label %out

if.end6:                                          ; preds = %if.end
  %call.i.i83 = tail call zeroext i1 @__kasan_check_read(ptr noundef %entries, i32 noundef 4) #9
  %35 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %entries, align 4
  %37 = ptrtoint ptr %max_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_size, align 4
  %sub = sub i32 %36, %38
  %mul = shl i32 %sub, 2
  %div = sdiv i32 %mul, 3
  %div11 = sdiv i32 %38, 2
  %39 = tail call i32 @llvm.smin.i32(i32 %div, i32 %div11)
  %rover = getelementptr i8, ptr %t, i32 60
  %40 = ptrtoint ptr %rover to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rover, align 4
  %sched_lock = getelementptr inbounds %struct.ip_vs_service, ptr %1, i32 0, i32 16
  %bucket = getelementptr i8, ptr %t, i32 -4096
  %add28.neg = add i32 %2, -36000
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %if.end6
  %goal.193 = phi i32 [ %39, %if.end6 ], [ %goal.2.lcssa, %for.end.for.body_crit_edge ]
  %i.092 = phi i32 [ 0, %if.end6 ], [ %inc49, %for.end.for.body_crit_edge ]
  %j.091 = phi i32 [ %41, %if.end6 ], [ %and, %for.end.for.body_crit_edge ]
  %add = add i32 %j.091, 1
  %and = and i32 %add, 1023
  tail call void @_raw_spin_lock(ptr noundef %sched_lock) #9
  %arrayidx = getelementptr [1024 x %struct.hlist_head], ptr %bucket, i32 0, i32 %and
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx, align 4
  %tobool23.not88 = icmp eq ptr %43, null
  br i1 %tobool23.not88, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %goal.290 = phi i32 [ %goal.3, %for.inc.land.rhs_crit_edge ], [ %goal.193, %for.body.land.rhs_crit_edge ]
  %en.089 = phi ptr [ %45, %for.inc.land.rhs_crit_edge ], [ %43, %for.body.land.rhs_crit_edge ]
  %44 = ptrtoint ptr %en.089 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %en.089, align 4
  %lastuse = getelementptr inbounds %struct.ip_vs_lblc_entry, ptr %en.089, i32 0, i32 4
  %46 = ptrtoint ptr %lastuse to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %lastuse, align 4
  %sub29 = sub i32 %add28.neg, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub29)
  %cmp30 = icmp slt i32 %sub29, 0
  br i1 %cmp30, label %land.rhs.for.inc_crit_edge, label %if.end32

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end32:                                         ; preds = %land.rhs
  %pprev2.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %en.089, i32 0, i32 1
  %48 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pprev2.i.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %45, ptr %49, align 4
  %tobool.not.i.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i.i, label %if.end32.ip_vs_lblc_del.exit_crit_edge, label %do.body13.i.i.i

if.end32.ip_vs_lblc_del.exit_crit_edge:           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %ip_vs_lblc_del.exit

do.body13.i.i.i:                                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %45, i32 0, i32 1
  %51 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %pprev14.i.i.i, align 4
  br label %ip_vs_lblc_del.exit

ip_vs_lblc_del.exit:                              ; preds = %do.body13.i.i.i, %if.end32.ip_vs_lblc_del.exit_crit_edge
  %52 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %callback_head.i = getelementptr inbounds %struct.ip_vs_lblc_entry, ptr %en.089, i32 0, i32 5
  tail call void @call_rcu(ptr noundef %callback_head.i, ptr noundef nonnull @ip_vs_lblc_rcu_free) #9
  %call.i.i84 = tail call zeroext i1 @__kasan_check_write(ptr noundef %entries, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %entries, i32 1, i32 3, i32 1) #9
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %entries, ptr %entries, i32 1, ptr elementtype(i32) %entries) #9, !srcloc !69
  %dec = add i32 %goal.290, -1
  br label %for.inc

for.inc:                                          ; preds = %ip_vs_lblc_del.exit, %land.rhs.for.inc_crit_edge
  %goal.3 = phi i32 [ %goal.290, %land.rhs.for.inc_crit_edge ], [ %dec, %ip_vs_lblc_del.exit ]
  %tobool23.not = icmp eq ptr %45, null
  br i1 %tobool23.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %goal.2.lcssa = phi i32 [ %goal.193, %for.body.for.end_crit_edge ], [ %goal.3, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %sched_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %goal.2.lcssa)
  %cmp45 = icmp slt i32 %goal.2.lcssa, 1
  %inc49 = add nuw nsw i32 %i.092, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc49)
  %exitcond.not = icmp eq i32 %inc49, 1024
  %or.cond = select i1 %cmp45, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.end50, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end50:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %rover to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and, ptr %rover, align 4
  br label %out

out:                                              ; preds = %for.end50, %if.then4, %ip_vs_lblc_full_check.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %add52 = add i32 %55, 6000
  %call53 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add52) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip_vs_lblc_rcu_free(ptr noundef %head) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dest = getelementptr i8, ptr %head, i32 -8
  %0 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dest, align 4
  %refcnt.i = getelementptr inbounds %struct.ip_vs_dest, ptr %1, i32 0, i32 12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #9, !srcloc !78
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.ip_vs_dest_put_and_free.exit_crit_edge, label %if.then10.i.i.i.i, !prof !74

if.end5.i.i.i.i.ip_vs_dest_put_and_free.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ip_vs_dest_put_and_free.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #9
  br label %ip_vs_dest_put_and_free.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !79
  tail call void @kfree(ptr noundef %1) #9
  br label %ip_vs_dest_put_and_free.exit

ip_vs_dest_put_and_free.exit:                     ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.ip_vs_dest_put_and_free.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %head, i32 -36
  tail call void @kfree(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_scheduler_err(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__ip_vs_lblc_init(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ipvs.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 48
  %0 = ptrtoint ptr %ipvs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipvs.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.i.not = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call ptr @kmemdup(ptr noundef nonnull @vs_vars_table, i32 noundef 72, i32 noundef 3264) #9
  %lblc_ctl_table = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %lblc_ctl_table to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %lblc_ctl_table, align 4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then3.cleanup_crit_edge, label %if.end7

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.then3
  %user_ns = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 11
  %3 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %user_ns, align 4
  %cmp8.not = icmp eq ptr %4, @init_user_ns
  br i1 %cmp8.not, label %if.end7.if.end13_crit_edge, label %if.then9

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %call4, align 4
  br label %if.end13

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %lblc_ctl_table12 = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 58
  %6 = ptrtoint ptr %lblc_ctl_table12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @vs_vars_table, ptr %lblc_ctl_table12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then9, %if.end7.if.end13_crit_edge
  %sysctl_lblc_expiration = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 56
  %7 = ptrtoint ptr %sysctl_lblc_expiration to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8640000, ptr %sysctl_lblc_expiration, align 4
  %lblc_ctl_table15 = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 58
  %8 = ptrtoint ptr %lblc_ctl_table15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lblc_ctl_table15, align 4
  %data = getelementptr inbounds %struct.ctl_table, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sysctl_lblc_expiration, ptr %data, align 4
  %11 = load ptr, ptr %lblc_ctl_table15, align 4
  %call18 = tail call ptr @register_net_sysctl(ptr noundef %net, ptr noundef nonnull @.str.18, ptr noundef %11) #9
  %lblc_ctl_header = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 57
  %12 = ptrtoint ptr %lblc_ctl_header to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call18, ptr %lblc_ctl_header, align 8
  %tobool20.not = icmp ne ptr %call18, null
  %brmerge = or i1 %cmp.i.not, %tobool20.not
  %.mux = select i1 %tobool20.not, i32 0, i32 -12
  br i1 %brmerge, label %if.end13.cleanup_crit_edge, label %if.then24

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then24:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %lblc_ctl_table15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lblc_ctl_table15, align 4
  tail call void @kfree(ptr noundef %14) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end13.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ -12, %if.then3.cleanup_crit_edge ], [ -12, %if.then24 ], [ %.mux, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__ip_vs_lblc_exit(ptr noundef readonly %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ipvs.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 48
  %0 = ptrtoint ptr %ipvs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipvs.i, align 8
  %lblc_ctl_header = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %lblc_ctl_header to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lblc_ctl_header, align 8
  tail call void @unregister_net_sysctl_table(ptr noundef %3) #9
  %cmp.i.not = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lblc_ctl_table = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 58
  %4 = ptrtoint ptr %lblc_ctl_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lblc_ctl_table, align 4
  tail call void @kfree(ptr noundef %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_ip_vs_scheduler(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !34, !35, !36, !38, !39, !41, !43, !45, !46, !47, !48, !50, !52, !54, !56, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__initcall__kmod_ip_vs_lblc__595_628_ip_vs_lblc_init6, !1, !"__initcall__kmod_ip_vs_lblc__595_628_ip_vs_lblc_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipvs/ip_vs_lblc.c", i32 628, i32 1}
!2 = !{ptr @__exitcall_ip_vs_lblc_cleanup, !3, !"__exitcall_ip_vs_lblc_cleanup", i1 false, i1 false}
!3 = !{!"../net/netfilter/ipvs/ip_vs_lblc.c", i32 629, i32 1}
!4 = !{ptr @__UNIQUE_ID_file596, !5, !"__UNIQUE_ID_file596", i1 false, i1 false}
!5 = !{!"../net/netfilter/ipvs/ip_vs_lblc.c", i32 630, i32 1}
!6 = !{ptr @__UNIQUE_ID_license597, !5, !"__UNIQUE_ID_license597", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/netfilter/ipvs/ip_vs_lblc.c", i32 537, i32 12}
!9 = !{ptr @ip_vs_lblc_scheduler, !10, !"ip_vs_lblc_scheduler", i1 false, i1 false}
!10 = !{!"../net/netfilter/ipvs/ip_vs_lblc.c", i32 536, i32 31}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/netfilter/ipvs/ip_vs_lblc.c", i32 356, i32 2}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ip_vs_lblc_init_svc._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @ip_vs_lblc_init_svc._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @ip_vs_lblc_init_svc.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../net/netfilter/ipvs/ip_vs_lblc.c", i32 375, i32 2}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/netfilter/ipvs/ip_vs_lblc.c", i32 394, i32 2}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ip_vs_lblc_done_svc._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @ip_vs_lblc_done_svc._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/netfilter/ipvs/ip_vs_lblc.c", i32 488, i32 2}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ip_vs_lblc_schedule._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @ip_vs_lblc_schedule._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/netfilter/ipvs/ip_vs_lblc.c", i32 514, i32 28}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/netfilter/ipvs/ip_vs_lblc.c", i32 525, i32 2}
!34 = !{ptr @ip_vs_lblc_schedule._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ip_vs_lblc_schedule._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../net/netfilter/ipvs/ip_vs_lblc.c", i32 185, i32 2}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../net/netfilter/ipvs/ip_vs_lblc.c", i32 466, i32 3}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../net/netfilter/ipvs/ip_vs_lblc.c", i32 417, i32 2}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/netfilter/ipvs/ip_vs_lblc.c", i32 444, i32 2}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @__ip_vs_lblc_schedule._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @__ip_vs_lblc_schedule._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/net/ip_vs.h", i32 196, i32 46}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../include/net/ip_vs.h", i32 200, i32 46}
!52 = !{ptr @ip_vs_lblc_ops, !53, !"ip_vs_lblc_ops", i1 false, i1 false}
!53 = !{!"../net/netfilter/ipvs/ip_vs_lblc.c", i32 601, i32 33}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/netfilter/ipvs/ip_vs_lblc.c", i32 574, i32 28}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/netfilter/ipvs/ip_vs_lblc.c", i32 120, i32 15}
!58 = !{ptr @vs_vars_table, !59, !"vs_vars_table", i1 false, i1 false}
!59 = !{!"../net/netfilter/ipvs/ip_vs_lblc.c", i32 118, i32 25}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i64 2148366160, i64 2148366186, i64 2148366215, i64 2148366249, i64 2148366280, i64 2148366303}
!70 = !{!"branch_weights", i32 1, i32 2000}
!71 = !{i64 2158045032, i64 2158045516, i64 2158045069, i64 2158045125, i64 2158045159, i64 2158045183, i64 2158045224, i64 2158045245, i64 2158045273, i64 2158045307}
!72 = !{i8 0, i8 2}
!73 = !{i64 2148365225, i64 2148365257, i64 2148365286, i64 2148365320, i64 2148365351, i64 2148365374}
!74 = !{!"branch_weights", i32 2000, i32 1}
!75 = !{i64 2149761943}
!76 = !{i64 2148363695, i64 2148363721, i64 2148363750, i64 2148363784, i64 2148363815, i64 2148363838}
!77 = !{i64 2148453226}
!78 = !{i64 2148367690, i64 2148367722, i64 2148367751, i64 2148367785, i64 2148367816, i64 2148367839}
!79 = !{i64 2150534879}
