; ModuleID = '/llk/IR_all_yes/net/netfilter/ipvs/ip_vs_lblcr.c_pt.bc'
source_filename = "../net/netfilter/ipvs/ip_vs_lblcr.c"
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
%struct.ip_vs_lblcr_table = type { %struct.callback_head, [1024 x %struct.hlist_head], %struct.atomic_t, i32, %struct.timer_list, ptr, i32, i32, i8 }
%struct.ip_vs_lblcr_entry = type { %struct.hlist_node, i32, %union.nf_inet_addr, %struct.ip_vs_dest_set, i32, %struct.callback_head }
%struct.ip_vs_dest_set = type { %struct.atomic_t, i32, %struct.list_head }
%struct.ip_vs_dest_set_elem = type { %struct.list_head, ptr, %struct.callback_head }
%struct.ip_vs_iphdr = type { i32, i32, i32, i16, i16, i32, %union.nf_inet_addr, %union.nf_inet_addr }
%struct.ip_vs_dest = type { %struct.list_head, %struct.hlist_node, i16, i16, %union.nf_inet_addr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i16, i16, i16, %struct.refcount_struct, %struct.ip_vs_stats, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, ptr, ptr, i16, i16, %union.nf_inet_addr, i32, %struct.list_head, i8 }
%struct.netns_ipvs = type { i32, i32, [16 x %struct.hlist_head], %struct.list_head, [32 x ptr], [16 x %struct.list_head], [16 x %struct.list_head], [16 x %struct.list_head], %struct.atomic_t, %struct.ip_vs_stats, i32, i32, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work, %struct.delayed_work, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.spinlock, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.mutex, %struct.ipvs_sync_daemon_cfg, %struct.ipvs_sync_daemon_cfg, ptr, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ipvs_sync_daemon_cfg = type { %union.nf_inet_addr, i32, i16, i16, i8, i8, [16 x i8] }

@ip_vs_lblcr_scheduler = internal global { %struct.ip_vs_scheduler, [52 x i8] } { %struct.ip_vs_scheduler { %struct.list_head { ptr @ip_vs_lblcr_scheduler, ptr @ip_vs_lblcr_scheduler }, ptr @.str, %struct.atomic_t zeroinitializer, ptr null, ptr @ip_vs_lblcr_init_svc, ptr @ip_vs_lblcr_done_svc, ptr null, ptr null, ptr null, ptr @ip_vs_lblcr_schedule }, [52 x i8] zeroinitializer }, align 32
@ip_vs_lblcr_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @__ip_vs_lblcr_init, ptr null, ptr @__ip_vs_lblcr_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_ip_vs_lblcr__600_813_ip_vs_lblcr_init6 = internal global ptr @ip_vs_lblcr_init, section ".initcall6.init", align 4
@__exitcall_ip_vs_lblcr_cleanup = internal global ptr @ip_vs_lblcr_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_file601 = internal constant [48 x i8] c"ip_vs_lblcr.file=net/netfilter/ipvs/ip_vs_lblcr\00", section ".modinfo", align 1
@__UNIQUE_ID_license602 = internal constant [24 x i8] c"ip_vs_lblcr.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lblcr\00", [26 x i8] zeroinitializer }, align 32
@ip_vs_lblcr_init_svc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\017IPVS: LBLCR hash table (memory=%zdbytes) allocated for current service\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ip_vs_lblcr_init_svc\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"net/netfilter/ipvs/ip_vs_lblcr.c\00", [63 x i8] zeroinitializer }, align 32
@ip_vs_lblcr_init_svc._entry_ptr = internal global ptr @ip_vs_lblcr_init_svc._entry, section ".printk_index", align 4
@ip_vs_lblcr_init_svc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&tbl->periodic_timer)\00", [41 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ip_vs_lblcr_done_svc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017IPVS: LBLCR hash table (memory=%zdbytes) released\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ip_vs_lblcr_done_svc\00", [43 x i8] zeroinitializer }, align 32
@ip_vs_lblcr_done_svc._entry_ptr = internal global ptr @ip_vs_lblcr_done_svc._entry, section ".printk_index", align 4
@ip_vs_lblcr_schedule._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017IPVS: %s(): Scheduling...\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ip_vs_lblcr_schedule\00", [43 x i8] zeroinitializer }, align 32
@ip_vs_lblcr_schedule._entry_ptr = internal global ptr @ip_vs_lblcr_schedule._entry, section ".printk_index", align 4
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no destination available\00", [39 x i8] zeroinitializer }, align 32
@ip_vs_lblcr_schedule._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.3, i32 699, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017IPVS: no destination available\0A\00", [62 x i8] zeroinitializer }, align 32
@ip_vs_lblcr_schedule._entry_ptr.12 = internal global ptr @ip_vs_lblcr_schedule._entry.10, section ".printk_index", align 4
@ip_vs_lblcr_schedule._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.3, i32 712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017IPVS: LBLCR: destination IP address %s --> server %s:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@ip_vs_lblcr_schedule._entry_ptr.15 = internal global ptr @ip_vs_lblcr_schedule._entry.13, section ".printk_index", align 4
@ip_vs_lblcr_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@ip_vs_dest_set_min.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_vs_dest_set_min._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\017IPVS: %s(): server %s:%d activeconns %d refcnt %d weight %d overhead %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ip_vs_dest_set_min\00", [45 x i8] zeroinitializer }, align 32
@ip_vs_dest_set_min._entry_ptr = internal global ptr @ip_vs_dest_set_min._entry, section ".printk_index", align 4
@ip_vs_dest_set_max._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.19, ptr @.str.3, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ip_vs_dest_set_max\00", [45 x i8] zeroinitializer }, align 32
@ip_vs_dest_set_max._entry_ptr = internal global ptr @ip_vs_dest_set_max._entry, section ".printk_index", align 4
@is_overloaded.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__ip_vs_lblcr_schedule.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__ip_vs_lblcr_schedule._entry = internal constant %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 614, ptr null, ptr null }, align 1
@.str.20 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\017IPVS: LBLCR: server %s:%d activeconns %d refcnt %d weight %d overhead %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__ip_vs_lblcr_schedule\00", [41 x i8] zeroinitializer }, align 32
@__ip_vs_lblcr_schedule._entry_ptr = internal global ptr @__ip_vs_lblcr_schedule._entry, section ".printk_index", align 4
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[%pI6c]\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI4\00", [27 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@vs_vars_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.25, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"net/ipv4/vs\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lblcr_expiration\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant [22 x i8] c"ip_vs_lblcr_scheduler\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 721, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"ip_vs_lblcr_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 786, i32 33 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 723, i32 12 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 519, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 538, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 557, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 652, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 684, i32 29 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 699, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 710, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 348, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 197, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 243, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 608, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 196, i32 46 }
@___asan_gen_.114 = private unnamed_addr constant [23 x i8] c"../include/net/ip_vs.h\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 200, i32 46 }
@___asan_gen_.116 = private unnamed_addr constant [14 x i8] c"vs_vars_table\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 289, i32 25 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 759, i32 28 }
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.123 = private constant [36 x i8] c"../net/netfilter/ipvs/ip_vs_lblcr.c\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 291, i32 15 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_file601, ptr @__UNIQUE_ID_license602, ptr @__exitcall_ip_vs_lblcr_cleanup, ptr @__initcall__kmod_ip_vs_lblcr__600_813_ip_vs_lblcr_init6, ptr @__ip_vs_lblcr_schedule._entry, ptr @__ip_vs_lblcr_schedule._entry_ptr, ptr @ip_vs_dest_set_max._entry, ptr @ip_vs_dest_set_max._entry_ptr, ptr @ip_vs_dest_set_min._entry, ptr @ip_vs_dest_set_min._entry_ptr, ptr @ip_vs_lblcr_cleanup, ptr @ip_vs_lblcr_done_svc._entry, ptr @ip_vs_lblcr_done_svc._entry_ptr, ptr @ip_vs_lblcr_init_svc._entry, ptr @ip_vs_lblcr_init_svc._entry_ptr, ptr @ip_vs_lblcr_schedule._entry, ptr @ip_vs_lblcr_schedule._entry.10, ptr @ip_vs_lblcr_schedule._entry.13, ptr @ip_vs_lblcr_schedule._entry_ptr, ptr @ip_vs_lblcr_schedule._entry_ptr.12, ptr @ip_vs_lblcr_schedule._entry_ptr.15, ptr @ip_vs_lblcr_scheduler, ptr @ip_vs_lblcr_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ip_vs_lblcr_init_svc.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @vs_vars_table, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_lblcr_scheduler to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_lblcr_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_lblcr_init_svc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_lblcr_init_svc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_lblcr_done_svc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_lblcr_schedule._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_lblcr_schedule._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_lblcr_schedule._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_dest_set_min._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_dest_set_max._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vs_vars_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ip_vs_lblcr_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @unregister_ip_vs_scheduler(ptr noundef nonnull @ip_vs_lblcr_scheduler) #10
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ip_vs_lblcr_ops) #10
  tail call void @rcu_barrier() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_ip_vs_scheduler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_vs_lblcr_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ip_vs_lblcr_ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_ip_vs_scheduler(ptr noundef nonnull @ip_vs_lblcr_scheduler) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ip_vs_lblcr_ops) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_vs_lblcr_init_svc(ptr noundef %svc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4176) #13
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %sched_data = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 17
  %1 = ptrtoint ptr %sched_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i, ptr %sched_data, align 8
  %call1 = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call1)
  %cmp2 = icmp sgt i32 %call1, 5
  br i1 %cmp2, label %do.end, label %if.end.do.end8_crit_edge

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 4176) #14
  br label %do.end8

do.end8:                                          ; preds = %do.end, %if.end.do.end8_crit_edge
  %uglygep = getelementptr i8, ptr %call7.i, i32 8
  %2 = call ptr @memset(ptr %uglygep, i32 0, i32 4096)
  %max_size = getelementptr inbounds %struct.ip_vs_lblcr_table, ptr %call7.i, i32 0, i32 3
  %3 = ptrtoint ptr %max_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 16384, ptr %max_size, align 4
  %rover = getelementptr inbounds %struct.ip_vs_lblcr_table, ptr %call7.i, i32 0, i32 6
  %4 = ptrtoint ptr %rover to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rover, align 4
  %counter = getelementptr inbounds %struct.ip_vs_lblcr_table, ptr %call7.i, i32 0, i32 7
  %5 = ptrtoint ptr %counter to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %counter, align 8
  %dead = getelementptr inbounds %struct.ip_vs_lblcr_table, ptr %call7.i, i32 0, i32 8
  %6 = ptrtoint ptr %dead to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %dead, align 4
  %svc10 = getelementptr inbounds %struct.ip_vs_lblcr_table, ptr %call7.i, i32 0, i32 5
  %7 = ptrtoint ptr %svc10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %svc, ptr %svc10, align 8
  %entries = getelementptr inbounds %struct.ip_vs_lblcr_table, ptr %call7.i, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %entries, i32 noundef 4) #10
  %8 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %entries, align 8
  %periodic_timer = getelementptr inbounds %struct.ip_vs_lblcr_table, ptr %call7.i, i32 0, i32 4
  tail call void @init_timer_key(ptr noundef %periodic_timer, ptr noundef nonnull @ip_vs_lblcr_check_expire, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @ip_vs_lblcr_init_svc.__key) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %9, 6000
  %call15 = tail call i32 @mod_timer(ptr noundef %periodic_timer, i32 noundef %add) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip_vs_lblcr_done_svc(ptr noundef %svc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_data = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 17
  %0 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_data, align 8
  %periodic_timer = getelementptr inbounds %struct.ip_vs_lblcr_table, ptr %1, i32 0, i32 4
  %call = tail call i32 @del_timer_sync(ptr noundef %periodic_timer) #10
  %2 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sched_data, align 8
  %sched_lock.i = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %sched_lock.i) #10
  %dead.i = getelementptr inbounds %struct.ip_vs_lblcr_table, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %dead.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %dead.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc18.i.for.body.i_crit_edge, %entry
  %i.033.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc18.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ip_vs_lblcr_table, ptr %3, i32 0, i32 1, i32 %i.033.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not31.i = icmp eq ptr %6, null
  br i1 %tobool3.not31.i, label %for.body.i.for.inc18.i_crit_edge, label %for.body.i.land.rhs.i_crit_edge

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  br label %land.rhs.i

for.body.i.for.inc18.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc18.i

land.rhs.i:                                       ; preds = %ip_vs_lblcr_free.exit.i.land.rhs.i_crit_edge, %for.body.i.land.rhs.i_crit_edge
  %en.032.i = phi ptr [ %8, %ip_vs_lblcr_free.exit.i.land.rhs.i_crit_edge ], [ %6, %for.body.i.land.rhs.i_crit_edge ]
  %7 = ptrtoint ptr %en.032.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %en.032.i, align 4
  %pprev2.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %en.032.i, i32 0, i32 1
  %9 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pprev2.i.i.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %8, ptr %10, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i.i, label %land.rhs.i.hlist_del_rcu.exit.i.i_crit_edge, label %do.body13.i.i.i.i

land.rhs.i.hlist_del_rcu.exit.i.i_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del_rcu.exit.i.i

do.body13.i.i.i.i:                                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %pprev14.i.i.i.i, align 4
  br label %hlist_del_rcu.exit.i.i

hlist_del_rcu.exit.i.i:                           ; preds = %do.body13.i.i.i.i, %land.rhs.i.hlist_del_rcu.exit.i.i_crit_edge
  %13 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i, align 4
  %list.i.i.i = getelementptr inbounds %struct.ip_vs_lblcr_entry, ptr %en.032.i, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %list.i.i.i, align 4
  %cmp.not19.i.i.i = icmp eq ptr %15, %list.i.i.i
  br i1 %cmp.not19.i.i.i, label %hlist_del_rcu.exit.i.i.ip_vs_lblcr_free.exit.i_crit_edge, label %hlist_del_rcu.exit.i.i.for.body.i.i.i_crit_edge

hlist_del_rcu.exit.i.i.for.body.i.i.i_crit_edge:  ; preds = %hlist_del_rcu.exit.i.i
  br label %for.body.i.i.i

hlist_del_rcu.exit.i.i.ip_vs_lblcr_free.exit.i_crit_edge: ; preds = %hlist_del_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ip_vs_lblcr_free.exit.i

for.body.i.i.i:                                   ; preds = %list_del_rcu.exit.i.i.i.for.body.i.i.i_crit_edge, %hlist_del_rcu.exit.i.i.for.body.i.i.i_crit_edge
  %e.020.i.i.i = phi ptr [ %ep.0.i.i.i, %list_del_rcu.exit.i.i.i.for.body.i.i.i_crit_edge ], [ %15, %hlist_del_rcu.exit.i.i.for.body.i.i.i_crit_edge ]
  %16 = ptrtoint ptr %e.020.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %ep.0.i.i.i = load ptr, ptr %e.020.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %e.020.i.i.i) #10
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %for.body.i.i.i.list_del_rcu.exit.i.i.i_crit_edge

for.body.i.i.i.list_del_rcu.exit.i.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %e.020.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %e.020.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %e.020.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del_rcu.exit.i.i.i

list_del_rcu.exit.i.i.i:                          ; preds = %if.end.i.i.i.i.i, %for.body.i.i.i.list_del_rcu.exit.i.i.i_crit_edge
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %e.020.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  %callback_head.i.i.i = getelementptr inbounds %struct.ip_vs_dest_set_elem, ptr %e.020.i.i.i, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %callback_head.i.i.i, ptr noundef nonnull @ip_vs_lblcr_elem_rcu_free) #10
  %cmp.not.i.i.i = icmp eq ptr %ep.0.i.i.i, %list.i.i.i
  br i1 %cmp.not.i.i.i, label %list_del_rcu.exit.i.i.i.ip_vs_lblcr_free.exit.i_crit_edge, label %list_del_rcu.exit.i.i.i.for.body.i.i.i_crit_edge

list_del_rcu.exit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %list_del_rcu.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

list_del_rcu.exit.i.i.i.ip_vs_lblcr_free.exit.i_crit_edge: ; preds = %list_del_rcu.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ip_vs_lblcr_free.exit.i

ip_vs_lblcr_free.exit.i:                          ; preds = %list_del_rcu.exit.i.i.i.ip_vs_lblcr_free.exit.i_crit_edge, %hlist_del_rcu.exit.i.i.ip_vs_lblcr_free.exit.i_crit_edge
  %callback_head.i.i = getelementptr inbounds %struct.ip_vs_lblcr_entry, ptr %en.032.i, i32 0, i32 5
  tail call void @kvfree_call_rcu(ptr noundef %callback_head.i.i, ptr noundef nonnull inttoptr (i32 48 to ptr)) #10
  br i1 %tobool.not.i.i.i.i, label %ip_vs_lblcr_free.exit.i.for.inc18.i_crit_edge, label %ip_vs_lblcr_free.exit.i.land.rhs.i_crit_edge

ip_vs_lblcr_free.exit.i.land.rhs.i_crit_edge:     ; preds = %ip_vs_lblcr_free.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

ip_vs_lblcr_free.exit.i.for.inc18.i_crit_edge:    ; preds = %ip_vs_lblcr_free.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc18.i

for.inc18.i:                                      ; preds = %ip_vs_lblcr_free.exit.i.for.inc18.i_crit_edge, %for.body.i.for.inc18.i_crit_edge
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %ip_vs_lblcr_flush.exit, label %for.inc18.i.for.body.i_crit_edge

for.inc18.i.for.body.i_crit_edge:                 ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

ip_vs_lblcr_flush.exit:                           ; preds = %for.inc18.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %sched_lock.i) #10
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %ip_vs_lblcr_flush.exit.if.end_crit_edge, label %do.end

ip_vs_lblcr_flush.exit.if.end_crit_edge:          ; preds = %ip_vs_lblcr_flush.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %ip_vs_lblcr_flush.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kvfree_call_rcu(ptr noundef nonnull %1, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %ip_vs_lblcr_flush.exit.if.end_crit_edge
  %call5 = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call5)
  %cmp = icmp sgt i32 %call5, 5
  br i1 %cmp, label %do.end9, label %if.end.do.end13_crit_edge

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4176) #14
  br label %do.end13

do.end13:                                         ; preds = %do.end9, %if.end.do.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ip_vs_lblcr_schedule(ptr noundef %svc, ptr nocapture noundef readnone %skb, ptr noundef %iph) #2 align 64 {
entry:
  %ip_vs_dbg_buf.i144 = alloca [160 x i8], align 1
  %ip_vs_dbg_buf.i = alloca [160 x i8], align 1
  %ip_vs_dbg_buf = alloca [160 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_data = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 17
  %0 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_data, align 8
  %call = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call)
  %cmp = icmp sgt i32 %call, 5
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #14
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
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end4.ip_vs_lblcr_hashkey.exit.i_crit_edge

do.end4.ip_vs_lblcr_hashkey.exit.i_crit_edge:     ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %ip_vs_lblcr_hashkey.exit.i

if.then.i.i:                                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
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
  br label %ip_vs_lblcr_hashkey.exit.i

ip_vs_lblcr_hashkey.exit.i:                       ; preds = %if.then.i.i, %do.end4.ip_vs_lblcr_hashkey.exit.i_crit_edge
  %addr_fold.0.i.i = phi i32 [ %xor5.i.i, %if.then.i.i ], [ %5, %do.end4.ip_vs_lblcr_hashkey.exit.i_crit_edge ]
  %mul.i.i.i.i = mul i32 %addr_fold.0.i.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 22
  %call1.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %ip_vs_lblcr_hashkey.exit.i.do.end.i_crit_edge

ip_vs_lblcr_hashkey.exit.i.do.end.i_crit_edge:    ; preds = %ip_vs_lblcr_hashkey.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %ip_vs_lblcr_hashkey.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b43.i = load i1, ptr @ip_vs_lblcr_get.__warned, align 1
  br i1 %.b43.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ip_vs_lblcr_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 348, ptr noundef nonnull @.str.16) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %ip_vs_lblcr_hashkey.exit.i.do.end.i_crit_edge
  %arrayidx.i = getelementptr %struct.ip_vs_lblcr_table, ptr %1, i32 0, i32 1, i32 %shr.i.i.i
  %arrayidx6.i.i.i = getelementptr %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7, i32 0, i32 1
  %arrayidx11.i.i.i = getelementptr %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7, i32 0, i32 2
  %arrayidx17.i.i.i = getelementptr %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %en.0.i238 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool13.not.i239 = icmp eq ptr %en.0.i238, null
  br i1 %tobool13.not.i239, label %do.end.i.if.end48_crit_edge, label %for.body.i.lr.ph

do.end.i.if.end48_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

for.body.i.lr.ph:                                 ; preds = %do.end.i
  %13 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %daddr, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.backedge.i.for.body.i_crit_edge, %for.body.i.lr.ph
  %en.0.i240 = phi ptr [ %en.0.i238, %for.body.i.lr.ph ], [ %en.0.i, %for.cond.backedge.i.for.body.i_crit_edge ]
  %addr14.i = getelementptr inbounds %struct.ip_vs_lblcr_entry, ptr %en.0.i240, i32 0, i32 2
  %15 = ptrtoint ptr %addr14.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr14.i, align 4
  br i1 %cmp.i.i, label %if.then.i46.i, label %ip_vs_addr_equal.exit.i

if.then.i46.i:                                    ; preds = %for.body.i
  %xor.i.i.i = xor i32 %14, %16
  %arrayidx4.i.i.i = getelementptr %struct.ip_vs_lblcr_entry, ptr %en.0.i240, i32 0, i32 2, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx4.i.i.i, align 4
  %19 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx6.i.i.i, align 4
  %xor7.i.i.i = xor i32 %20, %18
  %or.i.i.i = or i32 %xor7.i.i.i, %xor.i.i.i
  %arrayidx9.i.i.i = getelementptr %struct.ip_vs_lblcr_entry, ptr %en.0.i240, i32 0, i32 2, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx9.i.i.i, align 4
  %23 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx11.i.i.i, align 4
  %xor12.i.i.i = xor i32 %24, %22
  %or13.i.i.i = or i32 %or.i.i.i, %xor12.i.i.i
  %arrayidx15.i.i.i = getelementptr %struct.ip_vs_lblcr_entry, ptr %en.0.i240, i32 0, i32 2, i32 0, i32 3
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i

if.then.i46.i.if.then6_crit_edge:                 ; preds = %if.then.i46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

ip_vs_addr_equal.exit.i:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp1.i.i = icmp eq i32 %16, %14
  br i1 %cmp1.i.i, label %ip_vs_addr_equal.exit.i.if.then6_crit_edge, label %ip_vs_addr_equal.exit.i.for.cond.backedge.i_crit_edge

ip_vs_addr_equal.exit.i.for.cond.backedge.i_crit_edge: ; preds = %ip_vs_addr_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i

ip_vs_addr_equal.exit.i.if.then6_crit_edge:       ; preds = %ip_vs_addr_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

for.cond.backedge.i:                              ; preds = %ip_vs_addr_equal.exit.i.for.cond.backedge.i_crit_edge, %if.then.i46.i.for.cond.backedge.i_crit_edge
  %29 = ptrtoint ptr %en.0.i240 to i32
  call void @__asan_load4_noabort(i32 %29)
  %en.0.i = load volatile ptr, ptr %en.0.i240, align 4
  %tobool13.not.i = icmp eq ptr %en.0.i, null
  br i1 %tobool13.not.i, label %for.cond.backedge.i.if.end48_crit_edge, label %for.cond.backedge.i.for.body.i_crit_edge

for.cond.backedge.i.for.body.i_crit_edge:         ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.backedge.i.if.end48_crit_edge:           ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then6:                                         ; preds = %ip_vs_addr_equal.exit.i.if.then6_crit_edge, %if.then.i46.i.if.then6_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %lastuse = getelementptr inbounds %struct.ip_vs_lblcr_entry, ptr %en.0.i240, i32 0, i32 4
  %31 = ptrtoint ptr %lastuse to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %lastuse, align 4
  %set = getelementptr inbounds %struct.ip_vs_lblcr_entry, ptr %en.0.i240, i32 0, i32 3
  %call.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i137 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i137, label %land.lhs.true.i139, label %if.then6.do.end.i141_crit_edge

if.then6.do.end.i141_crit_edge:                   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i141

land.lhs.true.i139:                               ; preds = %if.then6
  %call1.i138 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i138)
  %tobool2.not.i = icmp eq i32 %call1.i138, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i139.do.end.i141_crit_edge, label %land.lhs.true3.i

land.lhs.true.i139.do.end.i141_crit_edge:         ; preds = %land.lhs.true.i139
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i141

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i139
  %.b130.i = load i1, ptr @ip_vs_dest_set_min.__warned, align 1
  br i1 %.b130.i, label %land.lhs.true3.i.do.end.i141_crit_edge, label %if.then.i140

land.lhs.true3.i.do.end.i141_crit_edge:           ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i141

if.then.i140:                                     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ip_vs_dest_set_min.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 168, ptr noundef nonnull @.str.16) #10
  br label %do.end.i141

do.end.i141:                                      ; preds = %if.then.i140, %land.lhs.true3.i.do.end.i141_crit_edge, %land.lhs.true.i139.do.end.i141_crit_edge, %if.then6.do.end.i141_crit_edge
  %list.i = getelementptr inbounds %struct.ip_vs_lblcr_entry, ptr %en.0.i240, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %e.0145.i = load volatile ptr, ptr %list.i, align 4
  %cmp.not146.i = icmp eq ptr %e.0145.i, %list.i
  br i1 %cmp.not146.i, label %do.end.i141.ip_vs_dest_set_min.exit_crit_edge, label %do.end.i141.for.body.i142_crit_edge

do.end.i141.for.body.i142_crit_edge:              ; preds = %do.end.i141
  br label %for.body.i142

do.end.i141.ip_vs_dest_set_min.exit_crit_edge:    ; preds = %do.end.i141
  call void @__sanitizer_cov_trace_pc() #12
  br label %ip_vs_dest_set_min.exit

for.body.i142:                                    ; preds = %for.inc.i.for.body.i142_crit_edge, %do.end.i141.for.body.i142_crit_edge
  %e.0147.i = phi ptr [ %e.0.i, %for.inc.i.for.body.i142_crit_edge ], [ %e.0145.i, %do.end.i141.for.body.i142_crit_edge ]
  %dest11.i = getelementptr inbounds %struct.ip_vs_dest_set_elem, ptr %e.0147.i, i32 0, i32 1
  %33 = ptrtoint ptr %dest11.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dest11.i, align 4
  %flags.i = getelementptr inbounds %struct.ip_vs_dest, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %flags.i, align 4
  %and.i = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %for.body.i142.for.inc.i_crit_edge

for.body.i142.for.inc.i_crit_edge:                ; preds = %for.body.i142
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end14.i:                                       ; preds = %for.body.i142
  %weight.i = getelementptr inbounds %struct.ip_vs_dest, ptr %34, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %weight.i, i32 noundef 4) #10
  %37 = ptrtoint ptr %weight.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %weight.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp16.i = icmp sgt i32 %38, 0
  br i1 %cmp16.i, label %land.lhs.true17.i, label %if.end14.i.for.inc.i_crit_edge

if.end14.i.for.inc.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true17.i:                                ; preds = %if.end14.i
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %flags.i, align 4
  %and19.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %land.lhs.true17.i.for.inc.i_crit_edge, label %if.then21.i

land.lhs.true17.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then21.i:                                      ; preds = %land.lhs.true17.i
  %activeconns.i.i = getelementptr inbounds %struct.ip_vs_dest, ptr %34, i32 0, i32 15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %activeconns.i.i, i32 noundef 4) #10
  %41 = ptrtoint ptr %activeconns.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %activeconns.i.i, align 4
  %shl.i.i = shl i32 %42, 8
  %inactconns.i.i = getelementptr inbounds %struct.ip_vs_dest, ptr %34, i32 0, i32 16
  %call.i.i3.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %inactconns.i.i, i32 noundef 4) #10
  %43 = ptrtoint ptr %inactconns.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %inactconns.i.i, align 4
  %add.i.i = add i32 %44, %shl.i.i
  %45 = ptrtoint ptr %e.0147.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %e.1148.i = load volatile ptr, ptr %e.0147.i, align 4
  %cmp45.not149.i = icmp eq ptr %e.1148.i, %list.i
  br i1 %cmp45.not149.i, label %if.then21.i.do.body81.i_crit_edge, label %if.then21.i.for.body46.i_crit_edge

if.then21.i.for.body46.i_crit_edge:               ; preds = %if.then21.i
  br label %for.body46.i

if.then21.i.do.body81.i_crit_edge:                ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body81.i

for.inc.i:                                        ; preds = %land.lhs.true17.i.for.inc.i_crit_edge, %if.end14.i.for.inc.i_crit_edge, %for.body.i142.for.inc.i_crit_edge
  %46 = ptrtoint ptr %e.0147.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %e.0.i = load volatile ptr, ptr %e.0147.i, align 4
  %cmp.not.i = icmp eq ptr %e.0.i, %list.i
  br i1 %cmp.not.i, label %for.inc.i.ip_vs_dest_set_min.exit_crit_edge, label %for.inc.i.for.body.i142_crit_edge

for.inc.i.for.body.i142_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i142

for.inc.i.ip_vs_dest_set_min.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ip_vs_dest_set_min.exit

for.body46.i:                                     ; preds = %for.inc70.i.for.body46.i_crit_edge, %if.then21.i.for.body46.i_crit_edge
  %e.1152.i = phi ptr [ %e.1.i, %for.inc70.i.for.body46.i_crit_edge ], [ %e.1148.i, %if.then21.i.for.body46.i_crit_edge ]
  %least.0151.i = phi ptr [ %least.1.i, %for.inc70.i.for.body46.i_crit_edge ], [ %34, %if.then21.i.for.body46.i_crit_edge ]
  %loh.0150.i = phi i32 [ %loh.1.i, %for.inc70.i.for.body46.i_crit_edge ], [ %add.i.i, %if.then21.i.for.body46.i_crit_edge ]
  %dest47.i = getelementptr inbounds %struct.ip_vs_dest_set_elem, ptr %e.1152.i, i32 0, i32 1
  %47 = ptrtoint ptr %dest47.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dest47.i, align 4
  %flags48.i = getelementptr inbounds %struct.ip_vs_dest, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %flags48.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %flags48.i, align 4
  %and49.i = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %if.end52.i, label %for.body46.i.for.inc70.i_crit_edge

for.body46.i.for.inc70.i_crit_edge:               ; preds = %for.body46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc70.i

if.end52.i:                                       ; preds = %for.body46.i
  %activeconns.i136.i = getelementptr inbounds %struct.ip_vs_dest, ptr %48, i32 0, i32 15
  %call.i.i.i137.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %activeconns.i136.i, i32 noundef 4) #10
  %51 = ptrtoint ptr %activeconns.i136.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %activeconns.i136.i, align 4
  %shl.i138.i = shl i32 %52, 8
  %inactconns.i139.i = getelementptr inbounds %struct.ip_vs_dest, ptr %48, i32 0, i32 16
  %call.i.i3.i140.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %inactconns.i139.i, i32 noundef 4) #10
  %53 = ptrtoint ptr %inactconns.i139.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %inactconns.i139.i, align 4
  %add.i141.i = add i32 %54, %shl.i138.i
  %conv.i = sext i32 %loh.0150.i to i64
  %weight54.i = getelementptr inbounds %struct.ip_vs_dest, ptr %48, i32 0, i32 7
  %call.i.i132.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %weight54.i, i32 noundef 4) #10
  %55 = ptrtoint ptr %weight54.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %weight54.i, align 4
  %conv56.i = sext i32 %56 to i64
  %mul.i = mul nsw i64 %conv56.i, %conv.i
  %conv57.i = sext i32 %add.i141.i to i64
  %weight58.i = getelementptr inbounds %struct.ip_vs_dest, ptr %least.0151.i, i32 0, i32 7
  %call.i.i133.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %weight58.i, i32 noundef 4) #10
  %57 = ptrtoint ptr %weight58.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %weight58.i, align 4
  %conv60.i = sext i32 %58 to i64
  %mul61.i = mul nsw i64 %conv60.i, %conv57.i
  call void @__sanitizer_cov_trace_cmp8(i64 %mul.i, i64 %mul61.i)
  %cmp62.i = icmp sgt i64 %mul.i, %mul61.i
  br i1 %cmp62.i, label %land.lhs.true64.i, label %if.end52.i.for.inc70.i_crit_edge

if.end52.i.for.inc70.i_crit_edge:                 ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc70.i

land.lhs.true64.i:                                ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %flags48.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %flags48.i, align 4
  %and66.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i)
  %tobool67.not.i = icmp eq i32 %and66.i, 0
  %spec.select.i = select i1 %tobool67.not.i, i32 %loh.0150.i, i32 %add.i141.i
  %spec.select131.i = select i1 %tobool67.not.i, ptr %least.0151.i, ptr %48
  br label %for.inc70.i

for.inc70.i:                                      ; preds = %land.lhs.true64.i, %if.end52.i.for.inc70.i_crit_edge, %for.body46.i.for.inc70.i_crit_edge
  %loh.1.i = phi i32 [ %loh.0150.i, %for.body46.i.for.inc70.i_crit_edge ], [ %loh.0150.i, %if.end52.i.for.inc70.i_crit_edge ], [ %spec.select.i, %land.lhs.true64.i ]
  %least.1.i = phi ptr [ %least.0151.i, %for.body46.i.for.inc70.i_crit_edge ], [ %least.0151.i, %if.end52.i.for.inc70.i_crit_edge ], [ %spec.select131.i, %land.lhs.true64.i ]
  %61 = ptrtoint ptr %e.1152.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %e.1.i = load volatile ptr, ptr %e.1152.i, align 4
  %cmp45.not.i = icmp eq ptr %e.1.i, %list.i
  br i1 %cmp45.not.i, label %for.inc70.i.do.body81.i_crit_edge, label %for.inc70.i.for.body46.i_crit_edge

for.inc70.i.for.body46.i_crit_edge:               ; preds = %for.inc70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body46.i

for.inc70.i.do.body81.i_crit_edge:                ; preds = %for.inc70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body81.i

do.body81.i:                                      ; preds = %for.inc70.i.do.body81.i_crit_edge, %if.then21.i.do.body81.i_crit_edge
  %loh.0.lcssa.i = phi i32 [ %add.i.i, %if.then21.i.do.body81.i_crit_edge ], [ %loh.1.i, %for.inc70.i.do.body81.i_crit_edge ]
  %least.0.lcssa.i = phi ptr [ %34, %if.then21.i.do.body81.i_crit_edge ], [ %least.1.i, %for.inc70.i.do.body81.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf.i) #10
  %62 = call ptr @memset(ptr %ip_vs_dbg_buf.i, i32 255, i32 160)
  %call82.i = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call82.i)
  %cmp83.i = icmp sgt i32 %call82.i, 5
  br i1 %cmp83.i, label %do.end88.i, label %do.body81.i.if.end98.i_crit_edge

do.body81.i.if.end98.i_crit_edge:                 ; preds = %do.body81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98.i

do.end88.i:                                       ; preds = %do.body81.i
  %af.i = getelementptr inbounds %struct.ip_vs_dest, ptr %least.0.lcssa.i, i32 0, i32 2
  %63 = ptrtoint ptr %af.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %af.i, align 8
  %addr.i = getelementptr inbounds %struct.ip_vs_dest, ptr %least.0.lcssa.i, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %64)
  %cmp.i.i143 = icmp eq i16 %64, 10
  %.str.22..str.23.i.i = select i1 %cmp.i.i143, ptr @.str.22, ptr @.str.23
  %call3.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf.i, i32 noundef 160, ptr noundef nonnull %.str.22..str.23.i.i, ptr noundef %addr.i) #10
  %65 = add i32 %call3.i.i, -161
  call void @__sanitizer_cov_trace_const_cmp4(i32 -162, i32 %65)
  %cmp7.i.i = icmp ult i32 %65, -162
  br i1 %cmp7.i.i, label %do.body10.i.i, label %ip_vs_dbg_addr.exit.i, !prof !84

do.body10.i.i:                                    ; preds = %do.end88.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #10, !srcloc !85
  unreachable

ip_vs_dbg_addr.exit.i:                            ; preds = %do.end88.i
  call void @__sanitizer_cov_trace_pc() #12
  %port.i = getelementptr inbounds %struct.ip_vs_dest, ptr %least.0.lcssa.i, i32 0, i32 3
  %66 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %port.i, align 2
  %conv92.i = zext i16 %67 to i32
  %activeconns.i = getelementptr inbounds %struct.ip_vs_dest, ptr %least.0.lcssa.i, i32 0, i32 15
  %call.i.i134.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %activeconns.i, i32 noundef 4) #10
  %68 = ptrtoint ptr %activeconns.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %activeconns.i, align 4
  %refcnt.i = getelementptr inbounds %struct.ip_vs_dest, ptr %least.0.lcssa.i, i32 0, i32 12
  %call.i.i.i142.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #10
  %70 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %refcnt.i, align 4
  %weight95.i = getelementptr inbounds %struct.ip_vs_dest, ptr %least.0.lcssa.i, i32 0, i32 7
  %call.i.i135.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %weight95.i, i32 noundef 4) #10
  %72 = ptrtoint ptr %weight95.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %weight95.i, align 4
  %call97.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull %ip_vs_dbg_buf.i, i32 noundef %conv92.i, i32 noundef %69, i32 noundef %71, i32 noundef %73, i32 noundef %loh.0.lcssa.i) #14
  br label %if.end98.i

if.end98.i:                                       ; preds = %ip_vs_dbg_addr.exit.i, %do.body81.i.if.end98.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf.i) #10
  br label %ip_vs_dest_set_min.exit

ip_vs_dest_set_min.exit:                          ; preds = %if.end98.i, %for.inc.i.ip_vs_dest_set_min.exit_crit_edge, %do.end.i141.ip_vs_dest_set_min.exit_crit_edge
  %retval.0.i = phi ptr [ %least.0.lcssa.i, %if.end98.i ], [ null, %do.end.i141.ip_vs_dest_set_min.exit_crit_edge ], [ null, %for.inc.i.ip_vs_dest_set_min.exit_crit_edge ]
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %set, i32 noundef 4) #10
  %74 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %set, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %75)
  %cmp10 = icmp sgt i32 %75, 1
  br i1 %cmp10, label %land.lhs.true, label %ip_vs_dest_set_min.exit.if.end31_crit_edge

ip_vs_dest_set_min.exit.if.end31_crit_edge:       ; preds = %ip_vs_dest_set_min.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true:                                    ; preds = %ip_vs_dest_set_min.exit
  %lastmod = getelementptr inbounds %struct.ip_vs_lblcr_entry, ptr %en.0.i240, i32 0, i32 3, i32 1
  %76 = ptrtoint ptr %lastmod to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %lastmod, align 4
  %ipvs.i = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 11
  %78 = ptrtoint ptr %ipvs.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ipvs.i, align 4
  %sysctl_lblcr_expiration.i = getelementptr inbounds %struct.netns_ipvs, ptr %79, i32 0, i32 59
  %80 = ptrtoint ptr %sysctl_lblcr_expiration.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sysctl_lblcr_expiration.i, align 8
  %add = add i32 %81, %77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %82 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp14 = icmp slt i32 %sub, 0
  br i1 %cmp14, label %if.then16, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then16:                                        ; preds = %land.lhs.true
  %sched_lock = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 16
  call void @_raw_spin_lock_bh(ptr noundef %sched_lock) #10
  %call.i.i136 = call zeroext i1 @__kasan_check_read(ptr noundef %set, i32 noundef 4) #10
  %83 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %set, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %84)
  %cmp20 = icmp slt i32 %84, 2
  %cmp.i = icmp eq ptr %set, null
  %or.cond = select i1 %cmp20, i1 true, i1 %cmp.i
  br i1 %or.cond, label %if.then16.if.end29_crit_edge, label %if.then16.for.cond.i147_crit_edge

if.then16.for.cond.i147_crit_edge:                ; preds = %if.then16
  br label %for.cond.i147

if.then16.if.end29_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

for.cond.i147:                                    ; preds = %for.body.i150.for.cond.i147_crit_edge, %if.then16.for.cond.i147_crit_edge
  %e.0.in.i = phi ptr [ %e.0.i146, %for.body.i150.for.cond.i147_crit_edge ], [ %list.i, %if.then16.for.cond.i147_crit_edge ]
  %85 = ptrtoint ptr %e.0.in.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %e.0.i146 = load ptr, ptr %e.0.in.i, align 4
  %cmp3.not.i = icmp eq ptr %e.0.i146, %list.i
  br i1 %cmp3.not.i, label %for.cond.i147.if.end29_crit_edge, label %for.body.i150

for.cond.i147.if.end29_crit_edge:                 ; preds = %for.cond.i147
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

for.body.i150:                                    ; preds = %for.cond.i147
  %dest4.i = getelementptr inbounds %struct.ip_vs_dest_set_elem, ptr %e.0.i146, i32 0, i32 1
  %86 = ptrtoint ptr %dest4.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dest4.i, align 4
  %weight.i148 = getelementptr inbounds %struct.ip_vs_dest, ptr %87, i32 0, i32 7
  %call.i.i.i149 = call zeroext i1 @__kasan_check_read(ptr noundef %weight.i148, i32 noundef 4) #10
  %88 = ptrtoint ptr %weight.i148 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %weight.i148, align 4
  %cmp5.i = icmp sgt i32 %89, 0
  br i1 %cmp5.i, label %if.then6.i, label %for.body.i150.for.cond.i147_crit_edge

for.body.i150.for.cond.i147_crit_edge:            ; preds = %for.body.i150
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i147

if.then6.i:                                       ; preds = %for.body.i150
  %activeconns.i.i151 = getelementptr inbounds %struct.ip_vs_dest, ptr %87, i32 0, i32 15
  %call.i.i.i.i152 = call zeroext i1 @__kasan_check_read(ptr noundef %activeconns.i.i151, i32 noundef 4) #10
  %90 = ptrtoint ptr %activeconns.i.i151 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %activeconns.i.i151, align 4
  %shl.i.i153 = shl i32 %91, 8
  %inactconns.i.i154 = getelementptr inbounds %struct.ip_vs_dest, ptr %87, i32 0, i32 16
  %call.i.i3.i.i155 = call zeroext i1 @__kasan_check_read(ptr noundef %inactconns.i.i154, i32 noundef 4) #10
  %92 = ptrtoint ptr %inactconns.i.i154 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %inactconns.i.i154, align 4
  %add.i.i156 = add i32 %93, %shl.i.i153
  %94 = ptrtoint ptr %e.0.i146 to i32
  call void @__asan_load4_noabort(i32 %94)
  %e.1109.i = load ptr, ptr %e.0.i146, align 4
  %cmp22.not110.i = icmp eq ptr %e.1109.i, %list.i
  br i1 %cmp22.not110.i, label %if.then6.i.do.body.i_crit_edge, label %if.then6.i.for.body24.i_crit_edge

if.then6.i.for.body24.i_crit_edge:                ; preds = %if.then6.i
  br label %for.body24.i

if.then6.i.do.body.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

for.body24.i:                                     ; preds = %for.inc43.i.for.body24.i_crit_edge, %if.then6.i.for.body24.i_crit_edge
  %e.1113.i = phi ptr [ %e.1.i161, %for.inc43.i.for.body24.i_crit_edge ], [ %e.1109.i, %if.then6.i.for.body24.i_crit_edge ]
  %most.0112.i = phi ptr [ %most.1.i, %for.inc43.i.for.body24.i_crit_edge ], [ %87, %if.then6.i.for.body24.i_crit_edge ]
  %moh.0111.i = phi i32 [ %moh.1.i, %for.inc43.i.for.body24.i_crit_edge ], [ %add.i.i156, %if.then6.i.for.body24.i_crit_edge ]
  %dest25.i = getelementptr inbounds %struct.ip_vs_dest_set_elem, ptr %e.1113.i, i32 0, i32 1
  %95 = ptrtoint ptr %dest25.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dest25.i, align 4
  %activeconns.i100.i = getelementptr inbounds %struct.ip_vs_dest, ptr %96, i32 0, i32 15
  %call.i.i.i101.i = call zeroext i1 @__kasan_check_read(ptr noundef %activeconns.i100.i, i32 noundef 4) #10
  %97 = ptrtoint ptr %activeconns.i100.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %activeconns.i100.i, align 4
  %shl.i102.i = shl i32 %98, 8
  %inactconns.i103.i = getelementptr inbounds %struct.ip_vs_dest, ptr %96, i32 0, i32 16
  %call.i.i3.i104.i = call zeroext i1 @__kasan_check_read(ptr noundef %inactconns.i103.i, i32 noundef 4) #10
  %99 = ptrtoint ptr %inactconns.i103.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %inactconns.i103.i, align 4
  %add.i105.i = add i32 %100, %shl.i102.i
  %conv.i157 = sext i32 %moh.0111.i to i64
  %weight27.i = getelementptr inbounds %struct.ip_vs_dest, ptr %96, i32 0, i32 7
  %call.i.i95.i = call zeroext i1 @__kasan_check_read(ptr noundef %weight27.i, i32 noundef 4) #10
  %101 = ptrtoint ptr %weight27.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %weight27.i, align 4
  %conv29.i = sext i32 %102 to i64
  %mul.i158 = mul nsw i64 %conv29.i, %conv.i157
  %conv30.i = sext i32 %add.i105.i to i64
  %weight31.i = getelementptr inbounds %struct.ip_vs_dest, ptr %most.0112.i, i32 0, i32 7
  %call.i.i96.i = call zeroext i1 @__kasan_check_read(ptr noundef %weight31.i, i32 noundef 4) #10
  %103 = ptrtoint ptr %weight31.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %weight31.i, align 4
  %conv33.i = sext i32 %104 to i64
  %mul34.i = mul nsw i64 %conv33.i, %conv30.i
  call void @__sanitizer_cov_trace_cmp8(i64 %mul.i158, i64 %mul34.i)
  %cmp35.i = icmp slt i64 %mul.i158, %mul34.i
  br i1 %cmp35.i, label %land.lhs.true.i160, label %for.body24.i.for.inc43.i_crit_edge

for.body24.i.for.inc43.i_crit_edge:               ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc43.i

land.lhs.true.i160:                               ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i97.i = call zeroext i1 @__kasan_check_read(ptr noundef %weight27.i, i32 noundef 4) #10
  %105 = ptrtoint ptr %weight27.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %weight27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp39.i = icmp sgt i32 %106, 0
  %spec.select.i159 = select i1 %cmp39.i, i32 %add.i105.i, i32 %moh.0111.i
  %spec.select94.i = select i1 %cmp39.i, ptr %96, ptr %most.0112.i
  br label %for.inc43.i

for.inc43.i:                                      ; preds = %land.lhs.true.i160, %for.body24.i.for.inc43.i_crit_edge
  %moh.1.i = phi i32 [ %moh.0111.i, %for.body24.i.for.inc43.i_crit_edge ], [ %spec.select.i159, %land.lhs.true.i160 ]
  %most.1.i = phi ptr [ %most.0112.i, %for.body24.i.for.inc43.i_crit_edge ], [ %spec.select94.i, %land.lhs.true.i160 ]
  %107 = ptrtoint ptr %e.1113.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %e.1.i161 = load ptr, ptr %e.1113.i, align 4
  %cmp22.not.i = icmp eq ptr %e.1.i161, %list.i
  br i1 %cmp22.not.i, label %for.inc43.i.do.body.i_crit_edge, label %for.inc43.i.for.body24.i_crit_edge

for.inc43.i.for.body24.i_crit_edge:               ; preds = %for.inc43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body24.i

for.inc43.i.do.body.i_crit_edge:                  ; preds = %for.inc43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc43.i.do.body.i_crit_edge, %if.then6.i.do.body.i_crit_edge
  %moh.0.lcssa.i = phi i32 [ %add.i.i156, %if.then6.i.do.body.i_crit_edge ], [ %moh.1.i, %for.inc43.i.do.body.i_crit_edge ]
  %most.0.lcssa.i = phi ptr [ %87, %if.then6.i.do.body.i_crit_edge ], [ %most.1.i, %for.inc43.i.do.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf.i144) #10
  %108 = call ptr @memset(ptr %ip_vs_dbg_buf.i144, i32 255, i32 160)
  %call50.i = call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call50.i)
  %cmp51.i = icmp sgt i32 %call50.i, 5
  br i1 %cmp51.i, label %do.end.i168, label %do.body.i.ip_vs_dest_set_max.exit_crit_edge

do.body.i.ip_vs_dest_set_max.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ip_vs_dest_set_max.exit

do.end.i168:                                      ; preds = %do.body.i
  %af.i162 = getelementptr inbounds %struct.ip_vs_dest, ptr %most.0.lcssa.i, i32 0, i32 2
  %109 = ptrtoint ptr %af.i162 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %af.i162, align 8
  %addr.i163 = getelementptr inbounds %struct.ip_vs_dest, ptr %most.0.lcssa.i, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %110)
  %cmp.i.i164 = icmp eq i16 %110, 10
  %.str.22..str.23.i.i165 = select i1 %cmp.i.i164, ptr @.str.22, ptr @.str.23
  %call3.i.i166 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf.i144, i32 noundef 160, ptr noundef nonnull %.str.22..str.23.i.i165, ptr noundef %addr.i163) #10
  %111 = add i32 %call3.i.i166, -161
  call void @__sanitizer_cov_trace_const_cmp4(i32 -162, i32 %111)
  %cmp7.i.i167 = icmp ult i32 %111, -162
  br i1 %cmp7.i.i167, label %do.body10.i.i169, label %ip_vs_dbg_addr.exit.i173, !prof !84

do.body10.i.i169:                                 ; preds = %do.end.i168
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #10, !srcloc !85
  unreachable

ip_vs_dbg_addr.exit.i173:                         ; preds = %do.end.i168
  call void @__sanitizer_cov_trace_pc() #12
  %port.i170 = getelementptr inbounds %struct.ip_vs_dest, ptr %most.0.lcssa.i, i32 0, i32 3
  %112 = ptrtoint ptr %port.i170 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %port.i170, align 2
  %conv58.i = zext i16 %113 to i32
  %activeconns.i171 = getelementptr inbounds %struct.ip_vs_dest, ptr %most.0.lcssa.i, i32 0, i32 15
  %call.i.i98.i = call zeroext i1 @__kasan_check_read(ptr noundef %activeconns.i171, i32 noundef 4) #10
  %114 = ptrtoint ptr %activeconns.i171 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %activeconns.i171, align 4
  %refcnt.i172 = getelementptr inbounds %struct.ip_vs_dest, ptr %most.0.lcssa.i, i32 0, i32 12
  %call.i.i.i106.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i172, i32 noundef 4) #10
  %116 = ptrtoint ptr %refcnt.i172 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %refcnt.i172, align 4
  %weight61.i = getelementptr inbounds %struct.ip_vs_dest, ptr %most.0.lcssa.i, i32 0, i32 7
  %call.i.i99.i = call zeroext i1 @__kasan_check_read(ptr noundef %weight61.i, i32 noundef 4) #10
  %118 = ptrtoint ptr %weight61.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %weight61.i, align 4
  %call63.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.19, ptr noundef nonnull %ip_vs_dbg_buf.i144, i32 noundef %conv58.i, i32 noundef %115, i32 noundef %117, i32 noundef %119, i32 noundef %moh.0.lcssa.i) #14
  br label %ip_vs_dest_set_max.exit

ip_vs_dest_set_max.exit:                          ; preds = %ip_vs_dbg_addr.exit.i173, %do.body.i.ip_vs_dest_set_max.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf.i144) #10
  %tobool25.not = icmp eq ptr %most.0.lcssa.i, null
  br i1 %tobool25.not, label %ip_vs_dest_set_max.exit.if.end29_crit_edge, label %ip_vs_dest_set_max.exit.for.cond.i179_crit_edge

ip_vs_dest_set_max.exit.for.cond.i179_crit_edge:  ; preds = %ip_vs_dest_set_max.exit
  br label %for.cond.i179

ip_vs_dest_set_max.exit.if.end29_crit_edge:       ; preds = %ip_vs_dest_set_max.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

for.cond.i179:                                    ; preds = %for.body.i180.for.cond.i179_crit_edge, %ip_vs_dest_set_max.exit.for.cond.i179_crit_edge
  %e.0.in.i176 = phi ptr [ %e.0.i177, %for.body.i180.for.cond.i179_crit_edge ], [ %list.i, %ip_vs_dest_set_max.exit.for.cond.i179_crit_edge ]
  %120 = ptrtoint ptr %e.0.in.i176 to i32
  call void @__asan_load4_noabort(i32 %120)
  %e.0.i177 = load ptr, ptr %e.0.in.i176, align 4
  %cmp.not.i178 = icmp eq ptr %e.0.i177, %list.i
  br i1 %cmp.not.i178, label %for.cond.i179.if.end29_crit_edge, label %for.body.i180

for.cond.i179.if.end29_crit_edge:                 ; preds = %for.cond.i179
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

for.body.i180:                                    ; preds = %for.cond.i179
  %dest3.i = getelementptr inbounds %struct.ip_vs_dest_set_elem, ptr %e.0.i177, i32 0, i32 1
  %121 = ptrtoint ptr %dest3.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dest3.i, align 4
  %cmp4.i = icmp eq ptr %122, %most.0.lcssa.i
  br i1 %cmp4.i, label %if.then.i182, label %for.body.i180.for.cond.i179_crit_edge

for.body.i180.for.cond.i179_crit_edge:            ; preds = %for.body.i180
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i179

if.then.i182:                                     ; preds = %for.body.i180
  %call.i.i.i181 = call zeroext i1 @__kasan_check_write(ptr noundef %set, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %set, i32 1, i32 3, i32 1) #10
  %123 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %set, ptr %set, i32 1, ptr elementtype(i32) %set) #10, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %124 = load volatile i32, ptr @jiffies, align 128
  %125 = ptrtoint ptr %lastmod to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %lastmod, align 4
  %call.i.i18.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %e.0.i177) #10
  br i1 %call.i.i18.i, label %if.end.i.i.i, label %if.then.i182.list_del_rcu.exit.i_crit_edge

if.then.i182.list_del_rcu.exit.i_crit_edge:       ; preds = %if.then.i182
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i182
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %e.0.i177, i32 0, i32 1
  %126 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %prev.i.i.i, align 4
  %128 = ptrtoint ptr %e.0.i177 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %e.0.i177, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %127, ptr %prev1.i.i.i.i, align 4
  %131 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile ptr %129, ptr %127, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %if.then.i182.list_del_rcu.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %e.0.i177, i32 0, i32 1
  %132 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %callback_head.i = getelementptr inbounds %struct.ip_vs_dest_set_elem, ptr %e.0.i177, i32 0, i32 2
  call void @call_rcu(ptr noundef %callback_head.i, ptr noundef nonnull @ip_vs_lblcr_elem_rcu_free) #10
  br label %if.end29

if.end29:                                         ; preds = %list_del_rcu.exit.i, %for.cond.i179.if.end29_crit_edge, %ip_vs_dest_set_max.exit.if.end29_crit_edge, %for.cond.i147.if.end29_crit_edge, %if.then16.if.end29_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %sched_lock) #10
  br label %if.end31

if.end31:                                         ; preds = %if.end29, %land.lhs.true.if.end31_crit_edge, %ip_vs_dest_set_min.exit.if.end31_crit_edge
  %tobool32.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool32.not, label %if.end31.if.end37_crit_edge, label %land.lhs.true33

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

land.lhs.true33:                                  ; preds = %if.end31
  %activeconns.i183 = getelementptr inbounds %struct.ip_vs_dest, ptr %retval.0.i, i32 0, i32 15
  %call.i.i.i184 = call zeroext i1 @__kasan_check_read(ptr noundef %activeconns.i183, i32 noundef 4) #10
  %133 = ptrtoint ptr %activeconns.i183 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %activeconns.i183, align 4
  %weight.i185 = getelementptr inbounds %struct.ip_vs_dest, ptr %retval.0.i, i32 0, i32 7
  %call.i.i37.i = call zeroext i1 @__kasan_check_read(ptr noundef %weight.i185, i32 noundef 4) #10
  %135 = ptrtoint ptr %weight.i185 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %weight.i185, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %136)
  %cmp.i186 = icmp sgt i32 %134, %136
  br i1 %cmp.i186, label %if.then.i189, label %land.lhs.true33.do.body75_crit_edge

land.lhs.true33.do.body75_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body75

if.then.i189:                                     ; preds = %land.lhs.true33
  %call2.i187 = call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i187)
  %tobool.not.i188 = icmp eq i32 %call2.i187, 0
  br i1 %tobool.not.i188, label %land.lhs.true.i190, label %if.then.i189.do.end.i191_crit_edge

if.then.i189.do.end.i191_crit_edge:               ; preds = %if.then.i189
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i191

land.lhs.true.i190:                               ; preds = %if.then.i189
  %call3.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i190.do.end.i191_crit_edge, label %land.lhs.true5.i

land.lhs.true.i190.do.end.i191_crit_edge:         ; preds = %land.lhs.true.i190
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i191

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i190
  %.b36.i = load i1, ptr @is_overloaded.__warned, align 1
  br i1 %.b36.i, label %land.lhs.true5.i.do.end.i191_crit_edge, label %if.then7.i

land.lhs.true5.i.do.end.i191_crit_edge:           ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i191

if.then7.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @is_overloaded.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 630, ptr noundef nonnull @.str.16) #10
  br label %do.end.i191

do.end.i191:                                      ; preds = %if.then7.i, %land.lhs.true5.i.do.end.i191_crit_edge, %land.lhs.true.i190.do.end.i191_crit_edge, %if.then.i189.do.end.i191_crit_edge
  %destinations.i = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 12
  br label %for.cond.i192

for.cond.i192:                                    ; preds = %for.body.i194.for.cond.i192_crit_edge, %do.end.i191
  %d.0.in.i = phi ptr [ %destinations.i, %do.end.i191 ], [ %d.0.i, %for.body.i194.for.cond.i192_crit_edge ]
  %137 = ptrtoint ptr %d.0.in.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %d.0.i = load volatile ptr, ptr %d.0.in.i, align 8
  %cmp13.not.i = icmp eq ptr %d.0.i, %destinations.i
  br i1 %cmp13.not.i, label %for.cond.i192.do.body75_crit_edge, label %for.body.i194

for.cond.i192.do.body75_crit_edge:                ; preds = %for.cond.i192
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body75

for.body.i194:                                    ; preds = %for.cond.i192
  %activeconns14.i = getelementptr inbounds %struct.ip_vs_dest, ptr %d.0.i, i32 0, i32 15
  %call.i.i38.i = call zeroext i1 @__kasan_check_read(ptr noundef %activeconns14.i, i32 noundef 4) #10
  %138 = ptrtoint ptr %activeconns14.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %activeconns14.i, align 4
  %mul.i193 = shl i32 %139, 1
  %weight16.i = getelementptr inbounds %struct.ip_vs_dest, ptr %d.0.i, i32 0, i32 7
  %call.i.i39.i = call zeroext i1 @__kasan_check_read(ptr noundef %weight16.i, i32 noundef 4) #10
  %140 = ptrtoint ptr %weight16.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load volatile i32, ptr %weight16.i, align 4
  %cmp18.i = icmp slt i32 %mul.i193, %141
  br i1 %cmp18.i, label %for.body.i194.if.end37_crit_edge, label %for.body.i194.for.cond.i192_crit_edge

for.body.i194.for.cond.i192_crit_edge:            ; preds = %for.body.i194
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i192

for.body.i194.if.end37_crit_edge:                 ; preds = %for.body.i194
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.end37:                                         ; preds = %for.body.i194.if.end37_crit_edge, %if.end31.if.end37_crit_edge
  %call38 = call fastcc ptr @__ip_vs_lblcr_schedule(ptr noundef %svc)
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  call void @ip_vs_scheduler_err(ptr noundef %svc, ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %sched_lock42 = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 16
  call void @_raw_spin_lock_bh(ptr noundef %sched_lock42) #10
  %dead = getelementptr inbounds %struct.ip_vs_lblcr_table, ptr %1, i32 0, i32 8
  %142 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %dead, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool43.not = icmp eq i8 %143, 0
  br i1 %tobool43.not, label %if.then44, label %if.end41.if.end46_crit_edge

if.end41.if.end46_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @ip_vs_dest_set_insert(ptr noundef %set, ptr noundef nonnull %call38, i1 noundef zeroext true)
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end41.if.end46_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %sched_lock42) #10
  br label %do.body75

if.end48:                                         ; preds = %for.cond.backedge.i.if.end48_crit_edge, %do.end.i.if.end48_crit_edge
  %call49 = tail call fastcc ptr @__ip_vs_lblcr_schedule(ptr noundef %svc)
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %do.body52, label %if.end65

do.body52:                                        ; preds = %if.end48
  %call53 = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp sgt i32 %call53, 0
  br i1 %cmp54, label %do.end59, label %do.body52.cleanup_crit_edge

do.body52.cleanup_crit_edge:                      ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end59:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #14
  br label %cleanup

if.end65:                                         ; preds = %if.end48
  %sched_lock66 = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %sched_lock66) #10
  %dead67 = getelementptr inbounds %struct.ip_vs_lblcr_table, ptr %1, i32 0, i32 8
  %144 = ptrtoint ptr %dead67 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %dead67, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool68.not = icmp eq i8 %145, 0
  br i1 %tobool68.not, label %if.then69, label %if.end65.if.end73_crit_edge

if.end65.if.end73_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then69:                                        ; preds = %if.end65
  %146 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %af, align 4
  %conv.i195 = zext i16 %147 to i32
  %148 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %daddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %147)
  %cmp.i.i.i196 = icmp eq i16 %147, 10
  br i1 %cmp.i.i.i196, label %if.then.i.i.i, label %if.then69.ip_vs_lblcr_hashkey.exit.i.i_crit_edge

if.then69.ip_vs_lblcr_hashkey.exit.i.i_crit_edge: ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  br label %ip_vs_lblcr_hashkey.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  %150 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx6.i.i.i, align 4
  %xor.i.i.i197 = xor i32 %151, %149
  %152 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx11.i.i.i, align 4
  %xor3.i.i.i = xor i32 %xor.i.i.i197, %153
  %154 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx17.i.i.i, align 4
  %xor5.i.i.i = xor i32 %xor3.i.i.i, %155
  br label %ip_vs_lblcr_hashkey.exit.i.i

ip_vs_lblcr_hashkey.exit.i.i:                     ; preds = %if.then.i.i.i, %if.then69.ip_vs_lblcr_hashkey.exit.i.i_crit_edge
  %addr_fold.0.i.i.i = phi i32 [ %xor5.i.i.i, %if.then.i.i.i ], [ %149, %if.then69.ip_vs_lblcr_hashkey.exit.i.i_crit_edge ]
  %mul.i.i.i.i.i = mul i32 %addr_fold.0.i.i.i, 1640531527
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i.i, 22
  %call1.i.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %ip_vs_lblcr_hashkey.exit.i.i.do.end.i.i_crit_edge

ip_vs_lblcr_hashkey.exit.i.i.do.end.i.i_crit_edge: ; preds = %ip_vs_lblcr_hashkey.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %ip_vs_lblcr_hashkey.exit.i.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b43.i.i = load i1, ptr @ip_vs_lblcr_get.__warned, align 1
  br i1 %.b43.i.i, label %land.lhs.true4.i.i.do.end.i.i_crit_edge, label %if.then.i.i199

land.lhs.true4.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

if.then.i.i199:                                   ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ip_vs_lblcr_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 348, ptr noundef nonnull @.str.16) #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i199, %land.lhs.true4.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %ip_vs_lblcr_hashkey.exit.i.i.do.end.i.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.ip_vs_lblcr_table, ptr %1, i32 0, i32 1, i32 %shr.i.i.i.i
  %156 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %en.0.i16.i = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool13.not.i17.i = icmp eq ptr %en.0.i16.i, null
  br i1 %tobool13.not.i17.i, label %do.end.i.i.if.then.i201_crit_edge, label %for.body.i.lr.ph.i

do.end.i.i.if.then.i201_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i201

for.body.i.lr.ph.i:                               ; preds = %do.end.i.i
  %157 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %daddr, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.backedge.i.i.for.body.i.i_crit_edge, %for.body.i.lr.ph.i
  %en.0.i18.i = phi ptr [ %en.0.i16.i, %for.body.i.lr.ph.i ], [ %en.0.i.i, %for.cond.backedge.i.i.for.body.i.i_crit_edge ]
  %addr14.i.i = getelementptr inbounds %struct.ip_vs_lblcr_entry, ptr %en.0.i18.i, i32 0, i32 2
  %159 = ptrtoint ptr %addr14.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %addr14.i.i, align 4
  br i1 %cmp.i.i.i196, label %if.then.i46.i.i, label %ip_vs_addr_equal.exit.i.i

if.then.i46.i.i:                                  ; preds = %for.body.i.i
  %xor.i.i.i.i = xor i32 %160, %158
  %arrayidx4.i.i.i.i = getelementptr %struct.ip_vs_lblcr_entry, ptr %en.0.i18.i, i32 0, i32 2, i32 0, i32 1
  %161 = ptrtoint ptr %arrayidx4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx4.i.i.i.i, align 4
  %163 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx6.i.i.i, align 4
  %xor7.i.i.i.i = xor i32 %164, %162
  %or.i.i.i.i = or i32 %xor7.i.i.i.i, %xor.i.i.i.i
  %arrayidx9.i.i.i.i = getelementptr %struct.ip_vs_lblcr_entry, ptr %en.0.i18.i, i32 0, i32 2, i32 0, i32 2
  %165 = ptrtoint ptr %arrayidx9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx9.i.i.i.i, align 4
  %167 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx11.i.i.i, align 4
  %xor12.i.i.i.i = xor i32 %168, %166
  %or13.i.i.i.i = or i32 %or.i.i.i.i, %xor12.i.i.i.i
  %arrayidx15.i.i.i.i = getelementptr %struct.ip_vs_lblcr_entry, ptr %en.0.i18.i, i32 0, i32 2, i32 0, i32 3
  %169 = ptrtoint ptr %arrayidx15.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx15.i.i.i.i, align 4
  %171 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx17.i.i.i, align 4
  %xor18.i.i.i.i = xor i32 %172, %170
  %or19.i.i.i.i = or i32 %or13.i.i.i.i, %xor18.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %or19.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then.i46.i.i.if.end9.i_crit_edge, label %if.then.i46.i.i.for.cond.backedge.i.i_crit_edge

if.then.i46.i.i.for.cond.backedge.i.i_crit_edge:  ; preds = %if.then.i46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i.i

if.then.i46.i.i.if.end9.i_crit_edge:              ; preds = %if.then.i46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

ip_vs_addr_equal.exit.i.i:                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %158)
  %cmp1.i.i.i = icmp eq i32 %160, %158
  br i1 %cmp1.i.i.i, label %ip_vs_addr_equal.exit.i.i.if.end9.i_crit_edge, label %ip_vs_addr_equal.exit.i.i.for.cond.backedge.i.i_crit_edge

ip_vs_addr_equal.exit.i.i.for.cond.backedge.i.i_crit_edge: ; preds = %ip_vs_addr_equal.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i.i

ip_vs_addr_equal.exit.i.i.if.end9.i_crit_edge:    ; preds = %ip_vs_addr_equal.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

for.cond.backedge.i.i:                            ; preds = %ip_vs_addr_equal.exit.i.i.for.cond.backedge.i.i_crit_edge, %if.then.i46.i.i.for.cond.backedge.i.i_crit_edge
  %173 = ptrtoint ptr %en.0.i18.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %en.0.i.i = load volatile ptr, ptr %en.0.i18.i, align 4
  %tobool13.not.i.i = icmp eq ptr %en.0.i.i, null
  br i1 %tobool13.not.i.i, label %for.cond.backedge.i.i.if.then.i201_crit_edge, label %for.cond.backedge.i.i.for.body.i.i_crit_edge

for.cond.backedge.i.i.for.body.i.i_crit_edge:     ; preds = %for.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.cond.backedge.i.i.if.then.i201_crit_edge:     ; preds = %for.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i201

if.then.i201:                                     ; preds = %for.cond.backedge.i.i.if.then.i201_crit_edge, %do.end.i.i.if.then.i201_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %174 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %174, i32 noundef 2592, i32 noundef 56) #13
  %tobool2.not.i200 = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not.i200, label %if.then.i201.if.end73_crit_edge, label %if.end.i203

if.then.i201.if.end73_crit_edge:                  ; preds = %if.then.i201
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.end.i203:                                      ; preds = %if.then.i201
  %af5.i = getelementptr inbounds %struct.ip_vs_lblcr_entry, ptr %call7.i.i, i32 0, i32 1
  %175 = ptrtoint ptr %af5.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %conv.i195, ptr %af5.i, align 8
  %addr.i202 = getelementptr inbounds %struct.ip_vs_lblcr_entry, ptr %call7.i.i, i32 0, i32 2
  br i1 %cmp.i.i.i196, label %if.then.i1.i, label %if.else.i.i

if.then.i1.i:                                     ; preds = %if.end.i203
  call void @__sanitizer_cov_trace_pc() #12
  %176 = call ptr @memcpy(ptr %addr.i202, ptr %daddr, i32 16)
  br label %ip_vs_addr_copy.exit.i

if.else.i.i:                                      ; preds = %if.end.i203
  call void @__sanitizer_cov_trace_pc() #12
  %177 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %daddr, align 4
  %179 = ptrtoint ptr %addr.i202 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %addr.i202, align 4
  br label %ip_vs_addr_copy.exit.i

ip_vs_addr_copy.exit.i:                           ; preds = %if.else.i.i, %if.then.i1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %180 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i = getelementptr inbounds %struct.ip_vs_lblcr_entry, ptr %call7.i.i, i32 0, i32 4
  %181 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %180, ptr %lastuse.i, align 4
  %set.i = getelementptr inbounds %struct.ip_vs_lblcr_entry, ptr %call7.i.i, i32 0, i32 3
  %call.i.i.i204 = tail call zeroext i1 @__kasan_check_write(ptr noundef %set.i, i32 noundef 4) #10
  %182 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store volatile i32 0, ptr %set.i, align 4
  %list.i205 = getelementptr inbounds %struct.ip_vs_lblcr_entry, ptr %call7.i.i, i32 0, i32 3, i32 2
  %183 = ptrtoint ptr %list.i205 to i32
  call void @__asan_store4_noabort(i32 %183)
  store volatile ptr %list.i205, ptr %list.i205, align 4
  %prev.i.i206 = getelementptr inbounds %struct.ip_vs_lblcr_entry, ptr %call7.i.i, i32 0, i32 3, i32 2, i32 1
  %184 = ptrtoint ptr %prev.i.i206 to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %list.i205, ptr %prev.i.i206, align 8
  tail call fastcc void @ip_vs_dest_set_insert(ptr noundef %set.i, ptr noundef nonnull %call49, i1 noundef zeroext false) #10
  %185 = ptrtoint ptr %af5.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %af5.i, align 8
  %187 = ptrtoint ptr %addr.i202 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %addr.i202, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %186)
  %cmp.i.i2.i = icmp eq i32 %186, 10
  br i1 %cmp.i.i2.i, label %if.then.i.i9.i, label %ip_vs_addr_copy.exit.i.ip_vs_lblcr_hashkey.exit.i14.i_crit_edge

ip_vs_addr_copy.exit.i.ip_vs_lblcr_hashkey.exit.i14.i_crit_edge: ; preds = %ip_vs_addr_copy.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ip_vs_lblcr_hashkey.exit.i14.i

if.then.i.i9.i:                                   ; preds = %ip_vs_addr_copy.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx1.i.i3.i = getelementptr %struct.ip_vs_lblcr_entry, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %189 = ptrtoint ptr %arrayidx1.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx1.i.i3.i, align 8
  %xor.i.i4.i = xor i32 %190, %188
  %arrayidx2.i.i5.i = getelementptr %struct.ip_vs_lblcr_entry, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %191 = ptrtoint ptr %arrayidx2.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx2.i.i5.i, align 4
  %xor3.i.i6.i = xor i32 %xor.i.i4.i, %192
  %arrayidx4.i.i7.i = getelementptr %struct.ip_vs_lblcr_entry, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 3
  %193 = ptrtoint ptr %arrayidx4.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx4.i.i7.i, align 8
  %xor5.i.i8.i = xor i32 %xor3.i.i6.i, %194
  br label %ip_vs_lblcr_hashkey.exit.i14.i

ip_vs_lblcr_hashkey.exit.i14.i:                   ; preds = %if.then.i.i9.i, %ip_vs_addr_copy.exit.i.ip_vs_lblcr_hashkey.exit.i14.i_crit_edge
  %addr_fold.0.i.i10.i = phi i32 [ %xor5.i.i8.i, %if.then.i.i9.i ], [ %188, %ip_vs_addr_copy.exit.i.ip_vs_lblcr_hashkey.exit.i14.i_crit_edge ]
  %mul.i.i.i.i11.i = mul i32 %addr_fold.0.i.i10.i, 1640531527
  %shr.i.i.i12.i = lshr i32 %mul.i.i.i.i11.i, 22
  %arrayidx.i13.i = getelementptr %struct.ip_vs_lblcr_table, ptr %1, i32 0, i32 1, i32 %shr.i.i.i12.i
  %195 = ptrtoint ptr %arrayidx.i13.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %arrayidx.i13.i, align 4
  %197 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %196, ptr %call7.i.i, align 8
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %198 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store volatile ptr %arrayidx.i13.i, ptr %pprev.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !88
  %199 = ptrtoint ptr %arrayidx.i13.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store volatile ptr %call7.i.i, ptr %arrayidx.i13.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %196, null
  br i1 %tobool.not.i.i.i, label %ip_vs_lblcr_hashkey.exit.i14.i.ip_vs_lblcr_hash.exit.i_crit_edge, label %do.body49.i.i.i

ip_vs_lblcr_hashkey.exit.i14.i.ip_vs_lblcr_hash.exit.i_crit_edge: ; preds = %ip_vs_lblcr_hashkey.exit.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ip_vs_lblcr_hash.exit.i

do.body49.i.i.i:                                  ; preds = %ip_vs_lblcr_hashkey.exit.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev51.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %196, i32 0, i32 1
  %200 = ptrtoint ptr %pprev51.i.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store volatile ptr %call7.i.i, ptr %pprev51.i.i.i, align 4
  br label %ip_vs_lblcr_hash.exit.i

ip_vs_lblcr_hash.exit.i:                          ; preds = %do.body49.i.i.i, %ip_vs_lblcr_hashkey.exit.i14.i.ip_vs_lblcr_hash.exit.i_crit_edge
  %entries.i.i = getelementptr inbounds %struct.ip_vs_lblcr_table, ptr %1, i32 0, i32 2
  %call.i.i.i.i207 = tail call zeroext i1 @__kasan_check_write(ptr noundef %entries.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %entries.i.i, i32 1, i32 3, i32 1) #10
  %201 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %entries.i.i, ptr %entries.i.i, i32 1, ptr elementtype(i32) %entries.i.i) #10, !srcloc !89
  br label %if.end73

if.end9.i:                                        ; preds = %ip_vs_addr_equal.exit.i.i.if.end9.i_crit_edge, %if.then.i46.i.i.if.end9.i_crit_edge
  %set10.i = getelementptr inbounds %struct.ip_vs_lblcr_entry, ptr %en.0.i18.i, i32 0, i32 3
  tail call fastcc void @ip_vs_dest_set_insert(ptr noundef %set10.i, ptr noundef nonnull %call49, i1 noundef zeroext true) #10
  br label %if.end73

if.end73:                                         ; preds = %if.end9.i, %ip_vs_lblcr_hash.exit.i, %if.then.i201.if.end73_crit_edge, %if.end65.if.end73_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sched_lock66) #10
  br label %do.body75

do.body75:                                        ; preds = %if.end73, %if.end46, %for.cond.i192.do.body75_crit_edge, %land.lhs.true33.do.body75_crit_edge
  %dest.0 = phi ptr [ %call38, %if.end46 ], [ %call49, %if.end73 ], [ %retval.0.i, %land.lhs.true33.do.body75_crit_edge ], [ %retval.0.i, %for.cond.i192.do.body75_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #10
  %202 = call ptr @memset(ptr %ip_vs_dbg_buf, i32 255, i32 160)
  %call76 = call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call76)
  %cmp77 = icmp sgt i32 %call76, 5
  br i1 %cmp77, label %do.end82, label %do.body75.if.end94_crit_edge

do.body75.if.end94_crit_edge:                     ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

do.end82:                                         ; preds = %do.body75
  %203 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %af, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %204)
  %cmp.i208 = icmp eq i16 %204, 10
  %.str.22..str.23.i = select i1 %cmp.i208, ptr @.str.22, ptr @.str.23
  %call3.i210 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef 160, ptr noundef nonnull %.str.22..str.23.i, ptr noundef %daddr) #10
  %len.0.i = add i32 %call3.i210, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i)
  %cmp7.i = icmp ugt i32 %len.0.i, 161
  br i1 %cmp7.i, label %do.body10.i, label %ip_vs_dbg_addr.exit, !prof !84

do.body10.i:                                      ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #10, !srcloc !85
  unreachable

ip_vs_dbg_addr.exit:                              ; preds = %do.end82
  %af88 = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.0, i32 0, i32 2
  %205 = ptrtoint ptr %af88 to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %af88, align 8
  %addr = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.0, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %206)
  %cmp.i211 = icmp eq i16 %206, 10
  %arrayidx.i212 = getelementptr i8, ptr %ip_vs_dbg_buf, i32 %len.0.i
  %sub.i213 = sub nsw i32 159, %call3.i210
  %.str.22..str.23.i214 = select i1 %cmp.i211, ptr @.str.22, ptr @.str.23
  %call3.i215 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i212, i32 noundef %sub.i213, ptr noundef nonnull %.str.22..str.23.i214, ptr noundef %addr) #10
  %len.0.i216 = add nsw i32 %call3.i210, 2
  %add5.i217 = add i32 %len.0.i216, %call3.i215
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i217)
  %cmp7.i218 = icmp ugt i32 %add5.i217, 161
  br i1 %cmp7.i218, label %do.body10.i219, label %ip_vs_dbg_addr.exit221, !prof !84

do.body10.i219:                                   ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #10, !srcloc !85
  unreachable

ip_vs_dbg_addr.exit221:                           ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %port = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.0, i32 0, i32 3
  %207 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %port, align 2
  %conv92 = zext i16 %208 to i32
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull %ip_vs_dbg_buf, ptr noundef %arrayidx.i212, i32 noundef %conv92) #14
  br label %if.end94

if.end94:                                         ; preds = %ip_vs_dbg_addr.exit221, %do.body75.if.end94_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %do.end59, %do.body52.cleanup_crit_edge, %if.then40
  %retval.0 = phi ptr [ %dest.0, %if.end94 ], [ null, %if.then40 ], [ null, %do.end59 ], [ null, %do.body52.cleanup_crit_edge ]
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
define internal void @ip_vs_lblcr_check_expire(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %svc1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %svc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %svc1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %counter = getelementptr i8, ptr %t, i32 56
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
  %rover.i = getelementptr inbounds %struct.ip_vs_lblcr_table, ptr %6, i32 0, i32 6
  %8 = ptrtoint ptr %rover.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rover.i, align 4
  %sched_lock.i = getelementptr inbounds %struct.ip_vs_service, ptr %1, i32 0, i32 16
  %ipvs.i.i = getelementptr inbounds %struct.ip_vs_service, ptr %1, i32 0, i32 11
  %entries.i = getelementptr inbounds %struct.ip_vs_lblcr_table, ptr %6, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %if.then
  %i.044.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.end.i.for.body.i_crit_edge ]
  %j.043.i = phi i32 [ %9, %if.then ], [ %and.i, %for.end.i.for.body.i_crit_edge ]
  %add.i = add i32 %j.043.i, 1
  %and.i = and i32 %add.i, 1023
  tail call void @_raw_spin_lock(ptr noundef %sched_lock.i) #10
  %arrayidx.i = getelementptr %struct.ip_vs_lblcr_table, ptr %6, i32 0, i32 1, i32 %and.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not41.i = icmp eq ptr %11, null
  br i1 %tobool3.not41.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.land.rhs.i_crit_edge

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  br label %land.rhs.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %for.body.i.land.rhs.i_crit_edge
  %en.042.i = phi ptr [ %13, %for.inc.i.land.rhs.i_crit_edge ], [ %11, %for.body.i.land.rhs.i_crit_edge ]
  %12 = ptrtoint ptr %en.042.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %en.042.i, align 4
  %lastuse.i = getelementptr inbounds %struct.ip_vs_lblcr_entry, ptr %en.042.i, i32 0, i32 4
  %14 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lastuse.i, align 4
  %16 = ptrtoint ptr %ipvs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ipvs.i.i, align 4
  %sysctl_lblcr_expiration.i.i = getelementptr inbounds %struct.netns_ipvs, ptr %17, i32 0, i32 59
  %18 = ptrtoint ptr %sysctl_lblcr_expiration.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sysctl_lblcr_expiration.i.i, align 8
  %20 = add i32 %15, %19
  %sub.i = sub i32 %7, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp9.i = icmp slt i32 %sub.i, 0
  br i1 %cmp9.i, label %land.rhs.i.for.inc.i_crit_edge, label %if.end.i

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %tobool.not.i.i.i.i, label %if.end.i.hlist_del_rcu.exit.i.i_crit_edge, label %do.body13.i.i.i.i

if.end.i.hlist_del_rcu.exit.i.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del_rcu.exit.i.i

do.body13.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  %24 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %pprev14.i.i.i.i, align 4
  br label %hlist_del_rcu.exit.i.i

hlist_del_rcu.exit.i.i:                           ; preds = %do.body13.i.i.i.i, %if.end.i.hlist_del_rcu.exit.i.i_crit_edge
  %25 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i, align 4
  %list.i.i.i = getelementptr inbounds %struct.ip_vs_lblcr_entry, ptr %en.042.i, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %list.i.i.i, align 4
  %cmp.not19.i.i.i = icmp eq ptr %27, %list.i.i.i
  br i1 %cmp.not19.i.i.i, label %hlist_del_rcu.exit.i.i.ip_vs_lblcr_free.exit.i_crit_edge, label %hlist_del_rcu.exit.i.i.for.body.i.i.i_crit_edge

hlist_del_rcu.exit.i.i.for.body.i.i.i_crit_edge:  ; preds = %hlist_del_rcu.exit.i.i
  br label %for.body.i.i.i

hlist_del_rcu.exit.i.i.ip_vs_lblcr_free.exit.i_crit_edge: ; preds = %hlist_del_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ip_vs_lblcr_free.exit.i

for.body.i.i.i:                                   ; preds = %list_del_rcu.exit.i.i.i.for.body.i.i.i_crit_edge, %hlist_del_rcu.exit.i.i.for.body.i.i.i_crit_edge
  %e.020.i.i.i = phi ptr [ %ep.0.i.i.i, %list_del_rcu.exit.i.i.i.for.body.i.i.i_crit_edge ], [ %27, %hlist_del_rcu.exit.i.i.for.body.i.i.i_crit_edge ]
  %28 = ptrtoint ptr %e.020.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %ep.0.i.i.i = load ptr, ptr %e.020.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %e.020.i.i.i) #10
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %for.body.i.i.i.list_del_rcu.exit.i.i.i_crit_edge

for.body.i.i.i.list_del_rcu.exit.i.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %e.020.i.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %31 = ptrtoint ptr %e.020.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %e.020.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del_rcu.exit.i.i.i

list_del_rcu.exit.i.i.i:                          ; preds = %if.end.i.i.i.i.i, %for.body.i.i.i.list_del_rcu.exit.i.i.i_crit_edge
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %e.020.i.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  %callback_head.i.i.i = getelementptr inbounds %struct.ip_vs_dest_set_elem, ptr %e.020.i.i.i, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %callback_head.i.i.i, ptr noundef nonnull @ip_vs_lblcr_elem_rcu_free) #10
  %cmp.not.i.i.i = icmp eq ptr %ep.0.i.i.i, %list.i.i.i
  br i1 %cmp.not.i.i.i, label %list_del_rcu.exit.i.i.i.ip_vs_lblcr_free.exit.i_crit_edge, label %list_del_rcu.exit.i.i.i.for.body.i.i.i_crit_edge

list_del_rcu.exit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %list_del_rcu.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

list_del_rcu.exit.i.i.i.ip_vs_lblcr_free.exit.i_crit_edge: ; preds = %list_del_rcu.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ip_vs_lblcr_free.exit.i

ip_vs_lblcr_free.exit.i:                          ; preds = %list_del_rcu.exit.i.i.i.ip_vs_lblcr_free.exit.i_crit_edge, %hlist_del_rcu.exit.i.i.ip_vs_lblcr_free.exit.i_crit_edge
  %callback_head.i.i = getelementptr inbounds %struct.ip_vs_lblcr_entry, ptr %en.042.i, i32 0, i32 5
  tail call void @kvfree_call_rcu(ptr noundef %callback_head.i.i, ptr noundef nonnull inttoptr (i32 48 to ptr)) #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %entries.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %entries.i, i32 1, i32 3, i32 1) #10
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %entries.i, ptr %entries.i, i32 1, ptr elementtype(i32) %entries.i) #10, !srcloc !86
  br label %for.inc.i

for.inc.i:                                        ; preds = %ip_vs_lblcr_free.exit.i, %land.rhs.i.for.inc.i_crit_edge
  %tobool3.not.i = icmp eq ptr %13, null
  br i1 %tobool3.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sched_lock.i) #10
  %inc.i = add nuw nsw i32 %i.044.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %ip_vs_lblcr_full_check.exit, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

ip_vs_lblcr_full_check.exit:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %rover.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and.i, ptr %rover.i, align 4
  %38 = ptrtoint ptr %counter to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %counter, align 4
  br label %out

if.end:                                           ; preds = %entry
  %entries = getelementptr i8, ptr %t, i32 -8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %entries, i32 noundef 4) #10
  %39 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %entries, align 4
  %max_size = getelementptr i8, ptr %t, i32 -4
  %41 = ptrtoint ptr %max_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp3.not = icmp sgt i32 %40, %42
  br i1 %cmp3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %counter, align 4
  %inc = add i32 %44, 1
  store i32 %inc, ptr %counter, align 4
  br label %out

if.end6:                                          ; preds = %if.end
  %call.i.i83 = tail call zeroext i1 @__kasan_check_read(ptr noundef %entries, i32 noundef 4) #10
  %45 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %entries, align 4
  %47 = ptrtoint ptr %max_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_size, align 4
  %sub = sub i32 %46, %48
  %mul = shl i32 %sub, 2
  %div = sdiv i32 %mul, 3
  %div11 = sdiv i32 %48, 2
  %49 = tail call i32 @llvm.smin.i32(i32 %div, i32 %div11)
  %rover = getelementptr i8, ptr %t, i32 52
  %50 = ptrtoint ptr %rover to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rover, align 4
  %sched_lock = getelementptr inbounds %struct.ip_vs_service, ptr %1, i32 0, i32 16
  %bucket = getelementptr i8, ptr %t, i32 -4104
  %add28.neg = add i32 %2, -36000
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %if.end6
  %goal.196 = phi i32 [ %49, %if.end6 ], [ %goal.2.lcssa, %for.end.for.body_crit_edge ]
  %i.095 = phi i32 [ 0, %if.end6 ], [ %inc49, %for.end.for.body_crit_edge ]
  %j.094 = phi i32 [ %51, %if.end6 ], [ %and, %for.end.for.body_crit_edge ]
  %add = add i32 %j.094, 1
  %and = and i32 %add, 1023
  tail call void @_raw_spin_lock(ptr noundef %sched_lock) #10
  %arrayidx = getelementptr [1024 x %struct.hlist_head], ptr %bucket, i32 0, i32 %and
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx, align 4
  %tobool23.not91 = icmp eq ptr %53, null
  br i1 %tobool23.not91, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %goal.293 = phi i32 [ %goal.3, %for.inc.land.rhs_crit_edge ], [ %goal.196, %for.body.land.rhs_crit_edge ]
  %en.092 = phi ptr [ %55, %for.inc.land.rhs_crit_edge ], [ %53, %for.body.land.rhs_crit_edge ]
  %54 = ptrtoint ptr %en.092 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %en.092, align 4
  %lastuse = getelementptr inbounds %struct.ip_vs_lblcr_entry, ptr %en.092, i32 0, i32 4
  %56 = ptrtoint ptr %lastuse to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %lastuse, align 4
  %sub29 = sub i32 %add28.neg, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub29)
  %cmp30 = icmp slt i32 %sub29, 0
  br i1 %cmp30, label %land.rhs.for.inc_crit_edge, label %if.end32

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end32:                                         ; preds = %land.rhs
  %pprev2.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %en.092, i32 0, i32 1
  %58 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pprev2.i.i.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %55, ptr %59, align 4
  %tobool.not.i.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i.i, label %if.end32.hlist_del_rcu.exit.i_crit_edge, label %do.body13.i.i.i

if.end32.hlist_del_rcu.exit.i_crit_edge:          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del_rcu.exit.i

do.body13.i.i.i:                                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %55, i32 0, i32 1
  %61 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %59, ptr %pprev14.i.i.i, align 4
  br label %hlist_del_rcu.exit.i

hlist_del_rcu.exit.i:                             ; preds = %do.body13.i.i.i, %if.end32.hlist_del_rcu.exit.i_crit_edge
  %62 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %list.i.i = getelementptr inbounds %struct.ip_vs_lblcr_entry, ptr %en.092, i32 0, i32 3, i32 2
  %63 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %list.i.i, align 4
  %cmp.not19.i.i = icmp eq ptr %64, %list.i.i
  br i1 %cmp.not19.i.i, label %hlist_del_rcu.exit.i.ip_vs_lblcr_free.exit_crit_edge, label %hlist_del_rcu.exit.i.for.body.i.i_crit_edge

hlist_del_rcu.exit.i.for.body.i.i_crit_edge:      ; preds = %hlist_del_rcu.exit.i
  br label %for.body.i.i

hlist_del_rcu.exit.i.ip_vs_lblcr_free.exit_crit_edge: ; preds = %hlist_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ip_vs_lblcr_free.exit

for.body.i.i:                                     ; preds = %list_del_rcu.exit.i.i.for.body.i.i_crit_edge, %hlist_del_rcu.exit.i.for.body.i.i_crit_edge
  %e.020.i.i = phi ptr [ %ep.0.i.i, %list_del_rcu.exit.i.i.for.body.i.i_crit_edge ], [ %64, %hlist_del_rcu.exit.i.for.body.i.i_crit_edge ]
  %65 = ptrtoint ptr %e.020.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %ep.0.i.i = load ptr, ptr %e.020.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %e.020.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.i.list_del_rcu.exit.i.i_crit_edge

for.body.i.i.list_del_rcu.exit.i.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i85 = getelementptr inbounds %struct.list_head, ptr %e.020.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i.i.i.i85, align 4
  %68 = ptrtoint ptr %e.020.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %e.020.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev1.i.i.i.i.i, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %69, ptr %67, align 4
  br label %list_del_rcu.exit.i.i

list_del_rcu.exit.i.i:                            ; preds = %if.end.i.i.i.i, %for.body.i.i.list_del_rcu.exit.i.i_crit_edge
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %e.020.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %callback_head.i.i86 = getelementptr inbounds %struct.ip_vs_dest_set_elem, ptr %e.020.i.i, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %callback_head.i.i86, ptr noundef nonnull @ip_vs_lblcr_elem_rcu_free) #10
  %cmp.not.i.i = icmp eq ptr %ep.0.i.i, %list.i.i
  br i1 %cmp.not.i.i, label %list_del_rcu.exit.i.i.ip_vs_lblcr_free.exit_crit_edge, label %list_del_rcu.exit.i.i.for.body.i.i_crit_edge

list_del_rcu.exit.i.i.for.body.i.i_crit_edge:     ; preds = %list_del_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

list_del_rcu.exit.i.i.ip_vs_lblcr_free.exit_crit_edge: ; preds = %list_del_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ip_vs_lblcr_free.exit

ip_vs_lblcr_free.exit:                            ; preds = %list_del_rcu.exit.i.i.ip_vs_lblcr_free.exit_crit_edge, %hlist_del_rcu.exit.i.ip_vs_lblcr_free.exit_crit_edge
  %callback_head.i = getelementptr inbounds %struct.ip_vs_lblcr_entry, ptr %en.092, i32 0, i32 5
  tail call void @kvfree_call_rcu(ptr noundef %callback_head.i, ptr noundef nonnull inttoptr (i32 48 to ptr)) #10
  %call.i.i84 = tail call zeroext i1 @__kasan_check_write(ptr noundef %entries, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %entries, i32 1, i32 3, i32 1) #10
  %73 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %entries, ptr %entries, i32 1, ptr elementtype(i32) %entries) #10, !srcloc !86
  %dec = add i32 %goal.293, -1
  br label %for.inc

for.inc:                                          ; preds = %ip_vs_lblcr_free.exit, %land.rhs.for.inc_crit_edge
  %goal.3 = phi i32 [ %goal.293, %land.rhs.for.inc_crit_edge ], [ %dec, %ip_vs_lblcr_free.exit ]
  %tobool23.not = icmp eq ptr %55, null
  br i1 %tobool23.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %goal.2.lcssa = phi i32 [ %goal.196, %for.body.for.end_crit_edge ], [ %goal.3, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %sched_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %goal.2.lcssa)
  %cmp45 = icmp slt i32 %goal.2.lcssa, 1
  %inc49 = add nuw nsw i32 %i.095, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc49)
  %exitcond.not = icmp eq i32 %inc49, 1024
  %or.cond = select i1 %cmp45, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.end50, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end50:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %rover to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %and, ptr %rover, align 4
  br label %out

out:                                              ; preds = %for.end50, %if.then4, %ip_vs_lblcr_full_check.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %75 = load volatile i32, ptr @jiffies, align 128
  %add52 = add i32 %75, 6000
  %call53 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add52) #10
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
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip_vs_lblcr_elem_rcu_free(ptr noundef %head) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dest = getelementptr i8, ptr %head, i32 -4
  %0 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dest, align 4
  %refcnt.i = getelementptr inbounds %struct.ip_vs_dest, ptr %1, i32 0, i32 12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !90
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !91
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.ip_vs_dest_put_and_free.exit_crit_edge, label %if.then10.i.i.i.i, !prof !92

if.end5.i.i.i.i.ip_vs_dest_put_and_free.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ip_vs_dest_put_and_free.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #10
  br label %ip_vs_dest_put_and_free.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !93
  tail call void @kfree(ptr noundef %1) #10
  br label %ip_vs_dest_put_and_free.exit

ip_vs_dest_put_and_free.exit:                     ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.ip_vs_dest_put_and_free.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %head, i32 -12
  tail call void @kfree(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

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
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__ip_vs_lblcr_schedule(ptr noundef %svc) unnamed_addr #7 align 64 {
entry:
  %ip_vs_dbg_buf = alloca [160 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b116 = load i1, ptr @__ip_vs_lblcr_schedule.__warned, align 1
  br i1 %.b116, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__ip_vs_lblcr_schedule.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 580, ptr noundef nonnull @.str.16) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %destinations = getelementptr inbounds %struct.ip_vs_service, ptr %svc, i32 0, i32 12
  %0 = ptrtoint ptr %destinations to i32
  call void @__asan_load4_noabort(i32 %0)
  %dest.0131 = load volatile ptr, ptr %destinations, align 8
  %cmp.not132 = icmp eq ptr %dest.0131, %destinations
  br i1 %cmp.not132, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %dest.0133 = phi ptr [ %dest.0, %for.inc.for.body_crit_edge ], [ %dest.0131, %do.end.for.body_crit_edge ]
  %flags = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.0133, i32 0, i32 5
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end12, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end12:                                         ; preds = %for.body
  %weight = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.0133, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %weight, i32 noundef 4) #10
  %3 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %weight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp14 = icmp sgt i32 %4, 0
  br i1 %cmp14, label %if.then15, label %if.end12.for.inc_crit_edge

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then15:                                        ; preds = %if.end12
  %activeconns.i = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.0133, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %activeconns.i, i32 noundef 4) #10
  %5 = ptrtoint ptr %activeconns.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %activeconns.i, align 4
  %shl.i = shl i32 %6, 8
  %inactconns.i = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.0133, i32 0, i32 16
  %call.i.i3.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %inactconns.i, i32 noundef 4) #10
  %7 = ptrtoint ptr %inactconns.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %inactconns.i, align 4
  %add.i = add i32 %8, %shl.i
  %9 = ptrtoint ptr %dest.0133 to i32
  call void @__asan_load4_noabort(i32 %9)
  %dest.1134 = load volatile ptr, ptr %dest.0133, align 8
  %cmp39.not135 = icmp eq ptr %dest.1134, %destinations
  br i1 %cmp39.not135, label %if.then15.do.body70_crit_edge, label %if.then15.for.body40_crit_edge

if.then15.for.body40_crit_edge:                   ; preds = %if.then15
  br label %for.body40

if.then15.do.body70_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body70

for.inc:                                          ; preds = %if.end12.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %10 = ptrtoint ptr %dest.0133 to i32
  call void @__asan_load4_noabort(i32 %10)
  %dest.0 = load volatile ptr, ptr %dest.0133, align 8
  %cmp.not = icmp eq ptr %dest.0, %destinations
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body40:                                       ; preds = %for.inc59.for.body40_crit_edge, %if.then15.for.body40_crit_edge
  %dest.1138 = phi ptr [ %dest.1, %for.inc59.for.body40_crit_edge ], [ %dest.1134, %if.then15.for.body40_crit_edge ]
  %least.0137 = phi ptr [ %least.1, %for.inc59.for.body40_crit_edge ], [ %dest.0133, %if.then15.for.body40_crit_edge ]
  %loh.0136 = phi i32 [ %loh.1, %for.inc59.for.body40_crit_edge ], [ %add.i, %if.then15.for.body40_crit_edge ]
  %flags41 = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.1138, i32 0, i32 5
  %11 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags41, align 4
  %and42 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end45, label %for.body40.for.inc59_crit_edge

for.body40.for.inc59_crit_edge:                   ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc59

if.end45:                                         ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #12
  %activeconns.i122 = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.1138, i32 0, i32 15
  %call.i.i.i123 = tail call zeroext i1 @__kasan_check_read(ptr noundef %activeconns.i122, i32 noundef 4) #10
  %13 = ptrtoint ptr %activeconns.i122 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %activeconns.i122, align 4
  %shl.i124 = shl i32 %14, 8
  %inactconns.i125 = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.1138, i32 0, i32 16
  %call.i.i3.i126 = tail call zeroext i1 @__kasan_check_read(ptr noundef %inactconns.i125, i32 noundef 4) #10
  %15 = ptrtoint ptr %inactconns.i125 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %inactconns.i125, align 4
  %add.i127 = add i32 %16, %shl.i124
  %conv = sext i32 %loh.0136 to i64
  %weight47 = getelementptr inbounds %struct.ip_vs_dest, ptr %dest.1138, i32 0, i32 7
  %call.i.i118 = tail call zeroext i1 @__kasan_check_read(ptr noundef %weight47, i32 noundef 4) #10
  %17 = ptrtoint ptr %weight47 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %weight47, align 4
  %conv49 = sext i32 %18 to i64
  %mul = mul nsw i64 %conv49, %conv
  %conv50 = sext i32 %add.i127 to i64
  %weight51 = getelementptr inbounds %struct.ip_vs_dest, ptr %least.0137, i32 0, i32 7
  %call.i.i119 = tail call zeroext i1 @__kasan_check_read(ptr noundef %weight51, i32 noundef 4) #10
  %19 = ptrtoint ptr %weight51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %weight51, align 4
  %conv53 = sext i32 %20 to i64
  %mul54 = mul nsw i64 %conv53, %conv50
  call void @__sanitizer_cov_trace_cmp8(i64 %mul, i64 %mul54)
  %cmp55 = icmp sgt i64 %mul, %mul54
  %spec.select = select i1 %cmp55, i32 %add.i127, i32 %loh.0136
  %spec.select117 = select i1 %cmp55, ptr %dest.1138, ptr %least.0137
  br label %for.inc59

for.inc59:                                        ; preds = %if.end45, %for.body40.for.inc59_crit_edge
  %loh.1 = phi i32 [ %loh.0136, %for.body40.for.inc59_crit_edge ], [ %spec.select, %if.end45 ]
  %least.1 = phi ptr [ %least.0137, %for.body40.for.inc59_crit_edge ], [ %spec.select117, %if.end45 ]
  %21 = ptrtoint ptr %dest.1138 to i32
  call void @__asan_load4_noabort(i32 %21)
  %dest.1 = load volatile ptr, ptr %dest.1138, align 8
  %cmp39.not = icmp eq ptr %dest.1, %destinations
  br i1 %cmp39.not, label %for.inc59.do.body70_crit_edge, label %for.inc59.for.body40_crit_edge

for.inc59.for.body40_crit_edge:                   ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body40

for.inc59.do.body70_crit_edge:                    ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body70

do.body70:                                        ; preds = %for.inc59.do.body70_crit_edge, %if.then15.do.body70_crit_edge
  %loh.0.lcssa = phi i32 [ %add.i, %if.then15.do.body70_crit_edge ], [ %loh.1, %for.inc59.do.body70_crit_edge ]
  %least.0.lcssa = phi ptr [ %dest.0133, %if.then15.do.body70_crit_edge ], [ %least.1, %for.inc59.do.body70_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #10
  %22 = call ptr @memset(ptr %ip_vs_dbg_buf, i32 255, i32 160)
  %call71 = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call71)
  %cmp72 = icmp sgt i32 %call71, 5
  br i1 %cmp72, label %do.end77, label %do.body70.if.end87_crit_edge

do.body70.if.end87_crit_edge:                     ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

do.end77:                                         ; preds = %do.body70
  %af = getelementptr inbounds %struct.ip_vs_dest, ptr %least.0.lcssa, i32 0, i32 2
  %23 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %af, align 8
  %addr = getelementptr inbounds %struct.ip_vs_dest, ptr %least.0.lcssa, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %24)
  %cmp.i = icmp eq i16 %24, 10
  %.str.22..str.23.i = select i1 %cmp.i, ptr @.str.22, ptr @.str.23
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef 160, ptr noundef nonnull %.str.22..str.23.i, ptr noundef %addr) #10
  %25 = add i32 %call3.i, -161
  call void @__sanitizer_cov_trace_const_cmp4(i32 -162, i32 %25)
  %cmp7.i = icmp ult i32 %25, -162
  br i1 %cmp7.i, label %do.body10.i, label %ip_vs_dbg_addr.exit, !prof !84

do.body10.i:                                      ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #10, !srcloc !85
  unreachable

ip_vs_dbg_addr.exit:                              ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #12
  %port = getelementptr inbounds %struct.ip_vs_dest, ptr %least.0.lcssa, i32 0, i32 3
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %port, align 2
  %conv81 = zext i16 %27 to i32
  %activeconns = getelementptr inbounds %struct.ip_vs_dest, ptr %least.0.lcssa, i32 0, i32 15
  %call.i.i120 = tail call zeroext i1 @__kasan_check_read(ptr noundef %activeconns, i32 noundef 4) #10
  %28 = ptrtoint ptr %activeconns to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %activeconns, align 4
  %refcnt = getelementptr inbounds %struct.ip_vs_dest, ptr %least.0.lcssa, i32 0, i32 12
  %call.i.i.i128 = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #10
  %30 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %refcnt, align 4
  %weight84 = getelementptr inbounds %struct.ip_vs_dest, ptr %least.0.lcssa, i32 0, i32 7
  %call.i.i121 = tail call zeroext i1 @__kasan_check_read(ptr noundef %weight84, i32 noundef 4) #10
  %32 = ptrtoint ptr %weight84 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %weight84, align 4
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef %conv81, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %loh.0.lcssa) #14
  br label %if.end87

if.end87:                                         ; preds = %ip_vs_dbg_addr.exit, %do.body70.if.end87_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end87, %for.inc.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %least.0.lcssa, %if.end87 ], [ null, %do.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_scheduler_err(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip_vs_dest_set_insert(ptr noundef %set, ptr noundef %dest, i1 noundef zeroext %check) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %check, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then:                                          ; preds = %entry
  %list = getelementptr inbounds %struct.ip_vs_dest_set, ptr %set, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then
  %e.0.in = phi ptr [ %list, %if.then ], [ %e.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %e.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %e.0 = load ptr, ptr %e.0.in, align 4
  %cmp.not = icmp eq ptr %e.0, %list
  br i1 %cmp.not, label %for.cond.if.end11_crit_edge, label %for.body

for.cond.if.end11_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

for.body:                                         ; preds = %for.cond
  %dest3 = getelementptr inbounds %struct.ip_vs_dest_set_elem, ptr %e.0, i32 0, i32 1
  %1 = ptrtoint ptr %dest3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dest3, align 4
  %cmp4 = icmp eq ptr %2, %dest
  br i1 %cmp4, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %for.cond.if.end11_crit_edge, %entry.if.end11_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 2592, i32 noundef 20) #13
  %cmp12 = icmp eq ptr %call7.i, null
  br i1 %cmp12, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %refcnt.i = getelementptr inbounds %struct.ip_vs_dest, ptr %dest, i32 0, i32 12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !94
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end14.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !84

if.end14.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end14
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.ip_vs_dest_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !92

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.ip_vs_dest_hold.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ip_vs_dest_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end14.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end14.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #10
  br label %ip_vs_dest_hold.exit

ip_vs_dest_hold.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.ip_vs_dest_hold.exit_crit_edge
  %dest15 = getelementptr inbounds %struct.ip_vs_dest_set_elem, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %dest15 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dest, ptr %dest15, align 8
  %list17 = getelementptr inbounds %struct.ip_vs_dest_set, ptr %set, i32 0, i32 2
  %7 = ptrtoint ptr %list17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %list17, align 4
  %call.i.i29 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %list17, ptr noundef %8) #10
  br i1 %call.i.i29, label %if.end.i.i, label %ip_vs_dest_hold.exit.list_add_rcu.exit_crit_edge

ip_vs_dest_hold.exit.list_add_rcu.exit_crit_edge: ; preds = %ip_vs_dest_hold.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_rcu.exit

if.end.i.i:                                       ; preds = %ip_vs_dest_hold.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %call7.i, align 8
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list17, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !95
  %11 = ptrtoint ptr %list17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call7.i, ptr %list17, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i, ptr %prev37.i.i, align 4
  br label %list_add_rcu.exit

list_add_rcu.exit:                                ; preds = %if.end.i.i, %ip_vs_dest_hold.exit.list_add_rcu.exit_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %set, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %set, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %set, ptr %set, i32 1, ptr elementtype(i32) %set) #10, !srcloc !89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %lastmod = getelementptr inbounds %struct.ip_vs_dest_set, ptr %set, i32 0, i32 1
  %15 = ptrtoint ptr %lastmod to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %lastmod, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_add_rcu.exit, %if.end11.cleanup_crit_edge, %for.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__ip_vs_lblcr_init(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ipvs.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 48
  %0 = ptrtoint ptr %ipvs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipvs.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.i.not = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call ptr @kmemdup(ptr noundef nonnull @vs_vars_table, i32 noundef 72, i32 noundef 3264) #10
  %lblcr_ctl_table = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %lblcr_ctl_table to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %lblcr_ctl_table, align 8
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then3.cleanup_crit_edge, label %if.end7

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.then3
  %user_ns = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 11
  %3 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %user_ns, align 4
  %cmp8.not = icmp eq ptr %4, @init_user_ns
  br i1 %cmp8.not, label %if.end7.if.end13_crit_edge, label %if.then9

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %call4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %call4, align 4
  br label %if.end13

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %lblcr_ctl_table12 = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 61
  %6 = ptrtoint ptr %lblcr_ctl_table12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @vs_vars_table, ptr %lblcr_ctl_table12, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then9, %if.end7.if.end13_crit_edge
  %sysctl_lblcr_expiration = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 59
  %7 = ptrtoint ptr %sysctl_lblcr_expiration to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8640000, ptr %sysctl_lblcr_expiration, align 8
  %lblcr_ctl_table15 = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 61
  %8 = ptrtoint ptr %lblcr_ctl_table15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lblcr_ctl_table15, align 8
  %data = getelementptr inbounds %struct.ctl_table, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sysctl_lblcr_expiration, ptr %data, align 4
  %11 = load ptr, ptr %lblcr_ctl_table15, align 8
  %call18 = tail call ptr @register_net_sysctl(ptr noundef %net, ptr noundef nonnull @.str.24, ptr noundef %11) #10
  %lblcr_ctl_header = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %lblcr_ctl_header to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call18, ptr %lblcr_ctl_header, align 4
  %tobool20.not = icmp ne ptr %call18, null
  %brmerge = or i1 %cmp.i.not, %tobool20.not
  %.mux = select i1 %tobool20.not, i32 0, i32 -12
  br i1 %brmerge, label %if.end13.cleanup_crit_edge, label %if.then24

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then24:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %lblcr_ctl_table15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lblcr_ctl_table15, align 8
  tail call void @kfree(ptr noundef %14) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end13.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ -12, %if.then3.cleanup_crit_edge ], [ -12, %if.then24 ], [ %.mux, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__ip_vs_lblcr_exit(ptr noundef readonly %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ipvs.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 48
  %0 = ptrtoint ptr %ipvs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipvs.i, align 8
  %lblcr_ctl_header = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 60
  %2 = ptrtoint ptr %lblcr_ctl_header to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lblcr_ctl_header, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %3) #10
  %cmp.i.not = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %lblcr_ctl_table = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 61
  %4 = ptrtoint ptr %lblcr_ctl_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lblcr_ctl_table, align 8
  tail call void @kfree(ptr noundef %5) #10
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
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !34, !35, !36, !38, !39, !40, !42, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !58, !60, !61, !62, !63, !65, !67, !69, !71, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__initcall__kmod_ip_vs_lblcr__600_813_ip_vs_lblcr_init6, !1, !"__initcall__kmod_ip_vs_lblcr__600_813_ip_vs_lblcr_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipvs/ip_vs_lblcr.c", i32 813, i32 1}
!2 = !{ptr @__exitcall_ip_vs_lblcr_cleanup, !3, !"__exitcall_ip_vs_lblcr_cleanup", i1 false, i1 false}
!3 = !{!"../net/netfilter/ipvs/ip_vs_lblcr.c", i32 814, i32 1}
!4 = !{ptr @__UNIQUE_ID_file601, !5, !"__UNIQUE_ID_file601", i1 false, i1 false}
!5 = !{!"../net/netfilter/ipvs/ip_vs_lblcr.c", i32 815, i32 1}
!6 = !{ptr @__UNIQUE_ID_license602, !5, !"__UNIQUE_ID_license602", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/netfilter/ipvs/ip_vs_lblcr.c", i32 723, i32 12}
!9 = !{ptr @ip_vs_lblcr_scheduler, !10, !"ip_vs_lblcr_scheduler", i1 false, i1 false}
!10 = !{!"../net/netfilter/ipvs/ip_vs_lblcr.c", i32 721, i32 31}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/netfilter/ipvs/ip_vs_lblcr.c", i32 519, i32 2}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ip_vs_lblcr_init_svc._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @ip_vs_lblcr_init_svc._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @ip_vs_lblcr_init_svc.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../net/netfilter/ipvs/ip_vs_lblcr.c", i32 538, i32 2}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/netfilter/ipvs/ip_vs_lblcr.c", i32 557, i32 2}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ip_vs_lblcr_done_svc._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @ip_vs_lblcr_done_svc._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/netfilter/ipvs/ip_vs_lblcr.c", i32 652, i32 2}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ip_vs_lblcr_schedule._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @ip_vs_lblcr_schedule._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/netfilter/ipvs/ip_vs_lblcr.c", i32 684, i32 29}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/netfilter/ipvs/ip_vs_lblcr.c", i32 699, i32 3}
!34 = !{ptr @ip_vs_lblcr_schedule._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ip_vs_lblcr_schedule._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/netfilter/ipvs/ip_vs_lblcr.c", i32 710, i32 2}
!38 = !{ptr @ip_vs_lblcr_schedule._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ip_vs_lblcr_schedule._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../net/netfilter/ipvs/ip_vs_lblcr.c", i32 348, i32 2}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../net/netfilter/ipvs/ip_vs_lblcr.c", i32 168, i32 2}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/netfilter/ipvs/ip_vs_lblcr.c", i32 197, i32 2}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ip_vs_dest_set_min._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @ip_vs_dest_set_min._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/netfilter/ipvs/ip_vs_lblcr.c", i32 243, i32 2}
!52 = !{ptr @ip_vs_dest_set_max._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ip_vs_dest_set_max._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../net/netfilter/ipvs/ip_vs_lblcr.c", i32 630, i32 3}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../net/netfilter/ipvs/ip_vs_lblcr.c", i32 580, i32 2}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/netfilter/ipvs/ip_vs_lblcr.c", i32 608, i32 2}
!60 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @__ip_vs_lblcr_schedule._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @__ip_vs_lblcr_schedule._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/net/ip_vs.h", i32 196, i32 46}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/net/ip_vs.h", i32 200, i32 46}
!67 = !{ptr @ip_vs_lblcr_ops, !68, !"ip_vs_lblcr_ops", i1 false, i1 false}
!68 = !{!"../net/netfilter/ipvs/ip_vs_lblcr.c", i32 786, i32 33}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/netfilter/ipvs/ip_vs_lblcr.c", i32 759, i32 28}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/netfilter/ipvs/ip_vs_lblcr.c", i32 291, i32 15}
!73 = !{ptr @vs_vars_table, !74, !"vs_vars_table", i1 false, i1 false}
!74 = !{!"../net/netfilter/ipvs/ip_vs_lblcr.c", i32 289, i32 25}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{!"branch_weights", i32 1, i32 2000}
!85 = !{i64 2158049520, i64 2158050004, i64 2158049557, i64 2158049613, i64 2158049647, i64 2158049671, i64 2158049712, i64 2158049733, i64 2158049761, i64 2158049795}
!86 = !{i64 2148370645, i64 2148370671, i64 2148370700, i64 2148370734, i64 2148370765, i64 2148370788}
!87 = !{i8 0, i8 2}
!88 = !{i64 2149766428}
!89 = !{i64 2148368180, i64 2148368206, i64 2148368235, i64 2148368269, i64 2148368300, i64 2148368323}
!90 = !{i64 2148457711}
!91 = !{i64 2148372175, i64 2148372207, i64 2148372236, i64 2148372270, i64 2148372301, i64 2148372324}
!92 = !{!"branch_weights", i32 2000, i32 1}
!93 = !{i64 2150539364}
!94 = !{i64 2148369710, i64 2148369742, i64 2148369771, i64 2148369805, i64 2148369836, i64 2148369859}
!95 = !{i64 2149690209}
